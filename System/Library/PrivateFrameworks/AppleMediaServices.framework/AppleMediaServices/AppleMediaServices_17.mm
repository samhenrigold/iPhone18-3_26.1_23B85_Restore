uint64_t sub_1001A0678()
{
  sub_100003FC0();
  sub_1000051E0();
  sub_10000ACB4(v2, v3, v4);
  v5 = sub_100002AE0();
  sub_1001A4E00(v5, xmmword_1002329D0);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000C778();

  sub_100004118((v0 + 456));
  sub_100006354();
  sub_100004994();
  sub_100005190();
  sub_10000B7EC();
  (*(v8 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 488, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v9 = sub_100003EC4();
  v1(v9);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 1000) = v10;
  *v10 = v11;
  sub_100003A98(v10);
  sub_100003128();

  return sub_10017AECC(v12, v13);
}

uint64_t sub_1001A07DC()
{
  sub_100003FC0();
  sub_1000051E0();
  v2 = *(v0 + 752);

  sub_100004DD0();
  sub_1001A4830(v2, v3);
  sub_100006868();
  v4 = sub_100004118((v0 + 312));
  sub_10000ACB4(v4, v5, v6);
  v7 = sub_100002AE0();
  sub_1001A4E00(v7, xmmword_1002329D0);
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000C778();

  sub_100004118((v0 + 456));
  sub_100006354();
  sub_100004994();
  sub_100005190();
  sub_10000B7EC();
  (*(v10 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 488, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v11 = sub_100003EC4();
  v1(v11);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 1000) = v12;
  *v12 = v13;
  sub_100003A98(v12);
  sub_100003128();

  return sub_10017AECC(v14, v15);
}

uint64_t sub_1001A0968()
{

  sub_100002EF4();
  sub_1001A4DC0();
  v0 = sub_10000D4B8(26);
  sub_1001AC540(v0, v1, v2);

  sub_100002E08();

  return v3();
}

double sub_1001A0A90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = 48;
  *(&v13 + 1) = 0xE100000000000000;
  v10 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      AccountIdentity.DSID.init(_:)();
      sub_10000608C(v9);
      (*(v6 + 8))(v9, v4);
      return result;
    }
  }

  else
  {
    sub_100004E7C(v15, &unk_1002DFC10, &qword_10022E6D0);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1001A0C54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A4C7C;

  return sub_10019EFF4();
}

uint64_t sub_1001A0D18()
{
  sub_100004194();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  v3 = type metadata accessor for TSDataSyncEntryPoint(0);
  v1[21] = v3;
  sub_1000030B8(v3);
  v1[22] = sub_100003FA8();
  v4 = type metadata accessor for TSDataSyncExternalEvent(0);
  sub_1000030B8(v4);
  v1[23] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[24] = v5;
  sub_100003B78(v5);
  v1[25] = v6;
  v1[26] = sub_1000D3604();
  v1[27] = swift_task_alloc();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7);
}

uint64_t sub_1001A0E18()
{
  sub_100003FC0();
  sub_1000051E0();
  static Log.tsDataSync.getter();
  v1 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v0 + 224) = v1;
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 232) = *(v3 + 72);
  *(v0 + 304) = *(v4 + 80);
  sub_1001A4C84();
  sub_100010A24();
  sub_1001A4DE4(v5, xmmword_1002329F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D2C();

  sub_100004118(v1);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  sub_1001A4DB0();
  *(v0 + 240) = v6;
  *(v0 + 248) = v7;
  v8 = sub_100002CC0();
  v9(v8);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  *(v0 + 256) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000016, v10);
  type metadata accessor for TSDataSyncCoordinatorActor();
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_1001A101C;
  sub_1000D32C8();
  sub_100003128();

  return sub_10017AB18();
}

uint64_t sub_1001A101C()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 308) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v9);
}

uint64_t sub_1001A1128()
{
  if (*(v0 + 308) != 1)
  {
    v10 = sub_10000C130();
    sub_1001AC540(v10, v11, v12);

    sub_100003844();
    goto LABEL_10;
  }

  v3 = *(v0 + 272);
  v4 = sub_10011B1E4(*(v0 + 144), *(v0 + 184));
  if (v3)
  {
    sub_1001A4CDC(v4, v5, v6);
    *(sub_1001A4D64() + 16) = xmmword_1002329D0;
    *(v0 + 72) = v1;
    *(v0 + 48) = v2;
    v7 = v2;
    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 48));
    sub_1001A4D90();
    LogInterpolation.init(stringLiteral:)();
    sub_100008CF0();
    sub_1001A4E1C();
    sub_10000B7EC();
    (*(v19 + 16))();
    static LogInterpolation.sensitive(_:)();
    sub_100004E7C(v0 + 80, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v16(v17, v18);
    swift_willThrow();
    v20 = sub_10000C130();
    sub_1001AC540(v20, v21, v22);

    sub_100002E08();
LABEL_10:
    sub_100008A70();

    __asm { BRAA            X1, X16 }
  }

  sub_1001A47CC(*(v0 + 184), *(v0 + 176));
  swift_storeEnumTagMultiPayload();
  *(v0 + 280) = sub_10019EC38();
  v13 = swift_task_alloc();
  *(v0 + 288) = v13;
  *v13 = v0;
  sub_10000B140(v13);
  sub_100008A70();

  return sub_10017B18C();
}

uint64_t sub_1001A1420()
{
  sub_100007F3C();
  sub_1000077D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v0;

  sub_10000A688();

  return _swift_task_switch(v4);
}

uint64_t sub_1001A1540()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_100004DD0();
  sub_1001A4830(v0, v1);
  sub_100006868();
  v2 = sub_10000C130();
  sub_1001AC540(v2, v3, v4);

  sub_100003844();
  sub_10000AD14();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001A15E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001A4E64();
  sub_1001A4CDC(v23, v24, v25);
  v26 = sub_1001A4D64();
  *(v20 + 48) = v22;
  *(v26 + 16) = xmmword_1002329D0;
  *(v20 + 72) = v21;
  v27 = v22;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D04();
  v44 = v28;
  sub_1001A4D2C();

  sub_100004118((v20 + 48));
  sub_1001A4D90();
  LogInterpolation.init(stringLiteral:)();
  sub_100008CF0();
  sub_1001A4E1C();
  sub_10000B7EC();
  (*(v29 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v20 + 80, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v30 = sub_1001A4E50();
  v31(v30);
  swift_willThrow();
  v32 = sub_10000C130();
  sub_1001AC540(v32, v33, v34);

  sub_100002E08();
  sub_1000D3404();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, "Error during startup:", a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1001A179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001A4E64();
  sub_100004DD0();
  sub_1001A4830(v23, v24);
  v25 = sub_100006868();
  sub_1001A4CDC(v25, v26, v27);
  v28 = sub_1001A4D64();
  *(v20 + 48) = v22;
  *(v28 + 16) = xmmword_1002329D0;
  *(v20 + 72) = v21;
  v29 = v22;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D04();
  v46 = v30;
  sub_1001A4D2C();

  sub_100004118((v20 + 48));
  sub_1001A4D90();
  LogInterpolation.init(stringLiteral:)();
  sub_100008CF0();
  sub_1001A4E1C();
  sub_10000B7EC();
  (*(v31 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v20 + 80, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v32 = sub_1001A4E50();
  v33(v32);
  swift_willThrow();
  v34 = sub_10000C130();
  sub_1001AC540(v34, v35, v36);

  sub_100002E08();
  sub_1000D3404();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, "Error during startup:", a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1001A1980(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A4C7C;

  return sub_1001A0D18();
}

uint64_t sub_1001A1A44()
{
  sub_100004194();
  v1[18] = v0;
  v1[19] = swift_getObjectType();
  v2 = type metadata accessor for TSDataSyncEntryPoint(0);
  v1[20] = v2;
  sub_1000030B8(v2);
  v1[21] = sub_100003FA8();
  v3 = type metadata accessor for Log();
  v1[22] = v3;
  sub_100003B78(v3);
  v1[23] = v4;
  v1[24] = sub_1000D3604();
  v1[25] = swift_task_alloc();
  v5 = sub_10000EF80();

  return _swift_task_switch(v5);
}

uint64_t sub_1001A1B24()
{
  sub_100003FC0();
  sub_1000051E0();
  static Log.tsDataSync.getter();
  v1 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v0 + 208) = v1;
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 216) = *(v3 + 72);
  *(v0 + 288) = *(v4 + 80);
  sub_1001A4C84();
  sub_100010A24();
  sub_1001A4DE4(v5, xmmword_1002329F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D2C();

  sub_100004118(v1);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  sub_1001A4DB0();
  *(v0 + 224) = v6;
  *(v0 + 232) = v7;
  v8 = sub_100002CC0();
  v9(v8);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  *(v0 + 240) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000017, v10);
  type metadata accessor for TSDataSyncCoordinatorActor();
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_1001A1D34;
  sub_1000D32C8();
  sub_100003128();

  return sub_10017AB18();
}

uint64_t sub_1001A1D34()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 292) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v9);
}

uint64_t sub_1001A1E40()
{
  sub_100007F3C();
  if (*(v0 + 292) == 1)
  {
    swift_storeEnumTagMultiPayload();
    *(v0 + 264) = sub_10019EC38();
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_1001A1F64;
    sub_100005040(*(v0 + 168));
    sub_10000381C();

    return sub_10017B18C();
  }

  else
  {
    sub_100010EEC();
    sub_100002860();
    v3 = sub_10000D4B8(23);
    sub_1001AC540(v3, v4, v5);

    sub_100003844();

    return v6();
  }
}

uint64_t sub_1001A1F64()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1001A207C()
{
  sub_100007F3C();
  sub_100004DD0();
  sub_1001A4830(v0, v1);
  sub_100010EEC();
  sub_100002860();
  v2 = sub_10000D4B8(23);
  sub_1001AC540(v2, v3, v4);

  sub_100003844();

  return v5();
}

uint64_t sub_1001A247C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000CF47C;

  return sub_1001A1A44();
}

uint64_t sub_1001A2524()
{
  sub_100004194();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  v3 = type metadata accessor for TSDataSyncEntryPoint(0);
  v1[21] = v3;
  sub_1000030B8(v3);
  v1[22] = sub_100003FA8();
  v4 = type metadata accessor for AccountIdentity();
  v1[23] = v4;
  sub_100003B78(v4);
  v1[24] = v5;
  v1[25] = sub_100003FA8();
  v6 = type metadata accessor for Log();
  v1[26] = v6;
  sub_100003B78(v6);
  v1[27] = v7;
  v1[28] = sub_1000D3604();
  v1[29] = swift_task_alloc();
  v8 = sub_10000EF80();

  return _swift_task_switch(v8);
}

uint64_t sub_1001A2650()
{
  sub_100003FC0();
  sub_1000051E0();
  static Log.tsDataSync.getter();
  v1 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  *(v0 + 240) = v1;
  v2 = type metadata accessor for LogInterpolation();
  sub_100003B78(v2);
  *(v0 + 248) = *(v3 + 72);
  *(v0 + 344) = *(v4 + 80);
  sub_1001A4C84();
  sub_100010A24();
  sub_1001A4DE4(v5, xmmword_1002329F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100003624();
  }

  else
  {
    sub_1000033C0();
  }

  sub_1001A4D2C();

  sub_100004118(v1);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  sub_1001A4DB0();
  *(v0 + 256) = v6;
  *(v0 + 264) = v7;
  v8 = sub_100002CC0();
  v9(v8);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v10 = *(v0 + 144);
  *(v0 + 272) = qword_1003106E8;
  v11 = sub_100003324();
  sub_100008F38(v11, v12);
  *(v0 + 280) = sub_10019EC38();
  v13 = v10;
  AccountIdentity.init(amsAccountID:)();
  v14 = swift_task_alloc();
  *(v0 + 288) = v14;
  *v14 = v0;
  v14[1] = sub_1001A2864;
  sub_100005040(*(v0 + 200));
  sub_100003128();

  return sub_1001813FC();
}

uint64_t sub_1001A2864()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 296) = v0;

  v7 = sub_100003EC4();
  v8(v7);

  sub_10000381C();
  sub_10000AD14();

  return _swift_task_switch(v9);
}

uint64_t sub_1001A29D4()
{
  sub_100004194();
  type metadata accessor for TSDataSyncCoordinatorActor();
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A78;
  sub_1000D32C8();

  return sub_10017AB18();
}

uint64_t sub_1001A2A78()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v5 + 312) = v0;

  if (!v0)
  {
    *(v5 + 348) = v3 & 1;
  }

  sub_10000A688();

  return _swift_task_switch(v9);
}

uint64_t sub_1001A2B84()
{
  sub_1000D354C();
  sub_10000DB4C();
  if (*(v0 + 348) == 1)
  {
    swift_storeEnumTagMultiPayload();
    *(v0 + 320) = sub_10019EC38();
    v1 = swift_task_alloc();
    *(v0 + 328) = v1;
    *v1 = v0;
    sub_10000B140(v1);
    sub_10000AD14();

    return sub_10017B18C();
  }

  else
  {
    sub_100008464();
    v4 = sub_100003324();
    sub_1001AC540(v4, v5, 2);

    sub_100003844();
    sub_10000AD14();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1001A2CA0()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 336) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1001A2DB8()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_100004DD0();
  sub_1001A4830(v0, v1);
  sub_100008464();
  v2 = sub_100003324();
  sub_1001AC540(v2, v3, 2);

  sub_100003844();
  sub_10000AD14();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001A3294(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A4C7C;

  return sub_1001A2524();
}

uint64_t sub_1001A3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v6[17] = swift_getObjectType();
  v7 = type metadata accessor for Log();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for TSDataSyncEntryPoint(0);
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001A3458);
}

uint64_t sub_1001A3458()
{
  sub_100004194();
  v1 = v0[22];
  v2 = v0[15];
  *v1 = v0[14];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v0[23] = sub_10019EC38();
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  sub_10000B140(v3);

  return sub_10017B18C();
}

uint64_t sub_1001A3508()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1001A3620()
{
  sub_100004194();
  sub_100004DD0();
  sub_1001A4830(v0, v1);

  sub_100002E08();

  return v2();
}

uint64_t sub_1001A3690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = v12[16];
  sub_100004DD0();
  sub_1001A4830(v14, v15);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v16 = type metadata accessor for LogInterpolation();
  sub_100003B78(v16);
  v17 = swift_allocObject();
  v12[2] = v13;
  sub_1001A4D84(v17, xmmword_1002329D0);
  v18 = v13;
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001A4DCC();
  }

  else
  {
    sub_1000D339C();
  }

  v20 = v12[19];
  v19 = v12[20];
  v31 = v12[18];
  sub_100008F00();

  sub_100004118(v12 + 2);
  sub_1001A4DA0();
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v12[9] = v12[11];
  sub_100007914(v12 + 6);
  sub_10000EF38();
  sub_100003594();
  v21();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v12 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v20 + 8))(v19, v31);

  sub_100002E08();
  sub_100003128();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_1001A38AC()
{
  sub_100004194();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity();
  v1[13] = v3;
  sub_100003B78(v3);
  v1[14] = v4;
  v1[15] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[16] = v5;
  sub_100003B78(v5);
  v1[17] = v6;
  v1[18] = sub_100003FA8();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7);
}

uint64_t sub_1001A39A8()
{
  sub_10000A504();
  sub_100008B30();
  v2 = v0[11];
  v1 = v0[12];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  v4 = swift_allocObject();
  v0[2] = v2;
  *(v4 + 16) = xmmword_1002329D0;
  v0[5] = v1;
  v5 = v2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[10];
  v16 = v0[16];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  v0[9] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v0[6] = v10;
  v11 = v10;
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v9 + 8))(v8, v16);
  v0[19] = sub_10019EC38();
  v12 = v11;
  AccountIdentity.init(amsAccountID:)();
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1001A3C04;
  sub_100005040(v0[15]);
  sub_100003BBC();

  return sub_1001875F4();
}

uint64_t sub_1001A3C04()
{
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  *(v3 + 168) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    sub_10000A688();

    return _swift_task_switch(v11);
  }

  else
  {

    v12 = *(v9 + 8);

    return v12();
  }
}

uint64_t sub_1001A3DD0()
{
  sub_100004194();

  sub_100002E08();

  return v0();
}

uint64_t sub_1001A3E58(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_100004754(a6, v10);
}

uint64_t sub_1001A3EDC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001A3FA0;

  return sub_1001A38AC();
}

uint64_t sub_1001A3FA0()
{
  sub_10000DB4C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[4];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_1001A41B8()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A4248()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A4288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1001A491C(a3, v22 - v10, &qword_1002DB950, &qword_100232E50);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100004DFC(v11, 1, v12) == 1)
  {
    sub_100004E7C(v11, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1001A4564()
{
  sub_100007F3C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v1[1] = sub_1000C6A64;
  v3 = sub_10000DFBC();

  return v4(v3);
}

uint64_t sub_1001A460C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A469C()
{
  sub_100007F3C();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_100005C94(v2);
  *v3 = v4;
  v3[1] = sub_100013D70;
  v5 = sub_1000D32C8();

  return v6(v5, v1);
}

uint64_t sub_1001A473C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A47CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncExternalEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A4830(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000B7EC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001A488C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1001A491C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100099DF4(a3, a4);
  sub_10000B7EC();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1001A4980()
{
  result = qword_1002DFB38;
  if (!qword_1002DFB38)
  {
    result = swift_getWitnessTable(byte_10023FE38, &type metadata for TSDataSyncService.Errors, v0, v1);
    atomic_store(result, &qword_1002DFB38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncService.Errors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TSDataSyncService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001A4A6C()
{
  result = qword_1002DFB48;
  if (!qword_1002DFB48)
  {
    result = swift_getWitnessTable(aQ_9, &type metadata for TSDataSyncService.Errors, v0, v1);
    atomic_store(result, &qword_1002DFB48);
  }

  return result;
}

unint64_t sub_1001A4AC4()
{
  result = qword_1002DFB50;
  if (!qword_1002DFB50)
  {
    result = swift_getWitnessTable(aI_3, &type metadata for TSDataSyncService.Errors, v0, v1);
    atomic_store(result, &qword_1002DFB50);
  }

  return result;
}

unint64_t sub_1001A4B1C()
{
  result = qword_1002DFB58;
  if (!qword_1002DFB58)
  {
    result = swift_getWitnessTable(byte_10023FD50, &type metadata for TSDataSyncService.Errors, v0, v1);
    atomic_store(result, &qword_1002DFB58);
  }

  return result;
}

uint64_t sub_1001A4B70()
{
  sub_10000DB4C();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_100005C94(v5);
  *v6 = v7;
  v6[1] = sub_100013D70;
  v8 = sub_10000DFBC();

  return sub_1001A3358(v8, v9, v1, v2, v3, v4);
}

unint64_t sub_1001A4C28()
{
  result = qword_1002DFB60;
  if (!qword_1002DFB60)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for TSDataSyncService.Errors, v0, v1);
    atomic_store(result, &qword_1002DFB60);
  }

  return result;
}

uint64_t sub_1001A4C84()
{

  return swift_allocObject();
}

uint64_t sub_1001A4CBC()
{

  return swift_allocObject();
}

uint64_t sub_1001A4CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static Log.tsDataSync.getter();
}

uint64_t sub_1001A4D2C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t *sub_1001A4D48()
{
  v0[13] = v0[15];

  return sub_100007914(v0 + 10);
}

uint64_t sub_1001A4D64()
{

  return swift_allocObject();
}

__n128 *sub_1001A4D84(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 + 24) = v3;
  return result;
}

void sub_1001A4DCC()
{
}

id sub_1001A4DE4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v4;

  return v3;
}

id sub_1001A4E00(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 480) = v3;
  *(v2 + 456) = v4;

  return v4;
}

uint64_t *sub_1001A4E1C()
{
  v0[13] = v0[15];

  return sub_100007914(v0 + 10);
}

uint64_t sub_1001A4E38()
{

  return static LogInterpolation.sensitive(_:)();
}

void sub_1001A4E80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_1001A4F18(a1, a2, a3, a4, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1001A4F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v8 = v6;
  type metadata accessor for Avro(0);
  static Avro.decodeSchema(schema:)(a1, a2);
  if (v81 >> 8 == 0xFFFFFFFF && v83 <= 1 && (v85 & 0xFCFE) == 0)
  {
    sub_1001A5AD0();
    v8 = swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000100275D00;
    result = swift_willThrow();
    goto LABEL_68;
  }

  v60 = a6;
  v61 = a5;
  __src[0] = v79[0];
  __src[1] = v79[1];
  __src[2] = v79[2];
  v87 = v80;
  v88 = v81;
  v89 = v82;
  v90 = v83;
  v91 = v84;
  v16 = a4 >> 62;
  v92 = v85;
  v17 = 0;
  v62 = a3;
  switch(a4 >> 62)
  {
    case 1uLL:
      v17 = v62;
      break;
    case 2uLL:
      v17 = *(a3 + 16);
      break;
    default:
      break;
  }

  v64 = a3 >> 32;
  v68 = BYTE6(a4);
  v66 = _swiftEmptyArrayStorage;
  v67 = v16;
  v65 = a4 >> 62;
  v63 = a3;
  while (2)
  {
    v20 = v68;
    switch(v67)
    {
      case 1:
        v20 = v64;
        goto LABEL_16;
      case 2:
        v20 = *(a3 + 24);
        goto LABEL_16;
      case 3:
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_60;
        }

        v26 = objc_autoreleasePoolPush();
        memset(v71, 0, 14);
        v27 = -v17;
        if (__OFSUB__(0, v17))
        {
          goto LABEL_70;
        }

        v28 = v26;
        type metadata accessor for AvroBinaryDecoder();
        swift_allocObject();
        sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
        v29 = sub_100148604(__src, v71 + v17, -v17);
        if (v6)
        {
          goto LABEL_62;
        }

        v30 = v29;
        sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
        sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
        sub_100147074(__src, &v72);
        v69 = v28;
        v70 = &v60;
        v76 = v72;
        v77 = v73;
        v31 = *(*sub_10000C4FC(v30 + 4, v30[7]) + 24);

        v32 = v27 - v31;
        a3 = v63;
        if (!__OFSUB__(v27, v31))
        {
          goto LABEL_48;
        }

        goto LABEL_76;
      default:
LABEL_16:
        if (v17 >= v20)
        {
LABEL_60:
          result = sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
          *v60 = v66;
          return result;
        }

        v21 = objc_autoreleasePoolPush();
        v69 = v21;
        v70 = &v60;
        if (v16 == 2)
        {
          v33 = *(a3 + 16);

          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_10000FF98(a3, a4);
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_10000FF98(a3, a4);
          v34 = __DataStorage._bytes.getter();
          if (v34)
          {
            v35 = v34;
            v36 = __DataStorage._offset.getter();
            if (__OFSUB__(v33, v36))
            {
              goto LABEL_79;
            }

            v37 = v33 - v36 + v35;
          }

          else
          {
            v37 = 0;
          }

          __DataStorage._length.getter();
          if (!v37)
          {
LABEL_63:
            sub_1001A5AD0();
            v8 = swift_allocError();
            *v59 = 0xD00000000000001ALL;
            v59[1] = 0x8000000100275D20;
            swift_willThrow();
            sub_10000D170(a3, a4);
            sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
            sub_10000D170(a3, a4);
            goto LABEL_65;
          }

          v42 = *(a3 + 24);
          v43 = v42 - v17;
          if (__OFSUB__(v42, v17))
          {
            goto LABEL_73;
          }

          type metadata accessor for AvroBinaryDecoder();
          swift_initStackObject();
          v44 = sub_100148604(__src, v37 + v17, v43);
          if (v6)
          {
            goto LABEL_64;
          }

          v45 = v44;
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_100147074(__src, &v72);
          v76 = v72;
          v77 = v73;
          v46 = *(*sub_10000C4FC(v45 + 4, v45[7]) + 24);

          sub_10000D170(a3, a4);
          sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
          v32 = v43 - v46;
          if (__OFSUB__(v43, v46))
          {
            goto LABEL_77;
          }

          goto LABEL_48;
        }

        if (v16 != 1)
        {
          v71[0] = a3;
          LOWORD(v71[1]) = a4;
          BYTE2(v71[1]) = BYTE2(a4);
          BYTE3(v71[1]) = BYTE3(a4);
          BYTE4(v71[1]) = BYTE4(a4);
          BYTE5(v71[1]) = BYTE5(a4);
          v38 = v68 - v17;
          if (__OFSUB__(v68, v17))
          {
            goto LABEL_71;
          }

          v28 = v21;
          type metadata accessor for AvroBinaryDecoder();
          swift_allocObject();
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          v39 = sub_100148604(__src, v71 + v17, v38);
          if (v6)
          {
LABEL_62:
            sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
            sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
            a3 = v63;
            sub_10000D170(v63, a4);
            sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
            a5 = v61;
            goto LABEL_66;
          }

          v40 = v39;
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_100147074(__src, &v72);
          v76 = v72;
          v77 = v73;
          v41 = *(*sub_10000C4FC(v40 + 4, v40[7]) + 24);

          v32 = v38 - v41;
          a3 = v63;
          if (__OFSUB__(v38, v41))
          {
            goto LABEL_75;
          }

LABEL_48:
          sub_10000D170(a3, a4);
          sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
          sub_10000D170(a3, a4);
          sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
          v78[0] = v76;
          v78[1] = v77;
          v28 = v69;
          if (!v32)
          {
            sub_1001A5AD0();
            v8 = swift_allocError();
            *v58 = 0xD000000000000014;
            v58[1] = 0x8000000100275D40;
            swift_willThrow();
            sub_10003CD48(v78, &unk_1002DFC10, &qword_10022E6D0);
            a5 = v61;
            goto LABEL_67;
          }

          v51 = __OFADD__(v17, v32);
          v17 += v32;
          if (v51)
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
          }

          sub_100012C2C(v78, &v74, &unk_1002DFC10, &qword_10022E6D0);
          if (v75)
          {
            v52 = sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
            v53 = swift_dynamicCast();
            LODWORD(v16) = v65;
            if (v53)
            {
              v75 = v52;
              *&v74 = v76;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10013C578();
                v66 = v56;
              }

              v54 = v66[2];
              if (v54 >= v66[3] >> 1)
              {
                sub_10013C578();
                v66 = v57;
              }

              sub_10003CD48(v78, &unk_1002DFC10, &qword_10022E6D0);
              v55 = v66;
              v66[2] = v54 + 1;
              sub_1001514B8(&v74, &v55[4 * v54 + 4]);
            }

            else
            {
              sub_10003CD48(v78, &unk_1002DFC10, &qword_10022E6D0);
            }
          }

          else
          {
            sub_10003CD48(v78, &unk_1002DFC10, &qword_10022E6D0);
            sub_10003CD48(&v74, &unk_1002DFC10, &qword_10022E6D0);
            LODWORD(v16) = v65;
          }

          objc_autoreleasePoolPop(v28);
          continue;
        }

        if (v64 < v62)
        {
          goto LABEL_72;
        }

        sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
        sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
        sub_10000FF98(a3, a4);
        sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
        sub_10000FF98(a3, a4);
        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = v22;
          v24 = __DataStorage._offset.getter();
          if (__OFSUB__(v62, v24))
          {
            goto LABEL_80;
          }

          v25 = v62 - v24 + v23;
        }

        else
        {
          v25 = 0;
        }

        __DataStorage._length.getter();
        if (!v25)
        {
          goto LABEL_63;
        }

        v47 = v64 - v17;
        if (__OFSUB__(v64, v17))
        {
          goto LABEL_74;
        }

        type metadata accessor for AvroBinaryDecoder();
        swift_allocObject();
        v48 = sub_100148604(__src, v25 + v17, v47);
        if (!v6)
        {
          v49 = v48;
          sub_100012C2C(v79, &v74, &qword_1002DE960, &qword_10023B918);
          sub_100147074(__src, &v72);
          v76 = v72;
          v77 = v73;
          v50 = *(*sub_10000C4FC(v49 + 4, v49[7]) + 24);

          sub_10000D170(a3, a4);
          sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
          v32 = v47 - v50;
          if (__OFSUB__(v47, v50))
          {
            goto LABEL_78;
          }

          goto LABEL_48;
        }

LABEL_64:
        sub_10000D170(a3, a4);
        sub_10000D170(a3, a4);
LABEL_65:
        sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
        a5 = v61;
        v28 = v69;
LABEL_66:
        sub_10000D170(a3, a4);
        sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);
        swift_willThrow();
LABEL_67:
        objc_autoreleasePoolPop(v28);
        sub_10003CD48(v79, &qword_1002DE960, &qword_10023B918);

LABEL_68:
        *a5 = v8;
        return result;
    }
  }
}

unint64_t sub_1001A5AD0()
{
  result = qword_1002DFB68;
  if (!qword_1002DFB68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroError, &type metadata for AvroError, v0, v1);
    atomic_store(result, &qword_1002DFB68);
  }

  return result;
}

uint64_t static DictionaryCoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v3 = [objc_opt_self() dataWithJSONObject:a2 options:0 error:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000D170(v5, v7);
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t static DictionaryCoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  if (!v3)
  {
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v14[0] = 0;
    v10 = [v8 JSONObjectWithData:isa options:0 error:v14];

    v11 = *&v14[0];
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10000D170(v4, v6);
      swift_unknownObjectRelease();
      sub_1001514B8(&v15, v14);
      sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
      if (swift_dynamicCast())
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10000D170(v4, v6);
    }
  }

  return result;
}

uint64_t sub_1001A5E34(uint64_t a1, uint64_t a2)
{
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1001A5EC0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return _swift_continuation_throwingResume();
}

uint64_t *sub_1001A5F04(uint64_t a1, void *a2, char a3, void *a4)
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_1001A5E34(v8, a4);
  }

  if (a2)
  {
    v9 = a2;

    return sub_1001A5EC0(v8, v9, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSString sub_1001A5F90()
{
  result = String._bridgeToObjectiveC()();
  qword_1002DFB70 = result;
  return result;
}

uint64_t sub_1001A5FC8@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003724();
  v53 = v2;
  v54 = v1;
  __chkstk_darwin(v1);
  sub_10000306C();
  v52 = v4 - v3;
  v50 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v50);
  sub_10000306C();
  v51 = v6 - v5;
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_10000306C();
  v8 = type metadata accessor for URL();
  sub_100003724();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000306C();
  v14 = v13 - v12;
  v15 = type metadata accessor for Logger();
  sub_100003724();
  v58 = v16;
  __chkstk_darwin(v17);
  v55 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = v44 - v20;
  __chkstk_darwin(v21);
  v23 = v44 - v22;
  static Log.amsSubsystem.getter();
  Logger.init(subsystem:category:)();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Starting up Private Identifiers XPC server", v26, 2u);
  }

  v27 = v57;
  sub_1001A6730();
  if (v27)
  {
    sub_1001A668C(v23);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to initialize Private Identifiers XPC Server: %@", v33, 0xCu);
      sub_1001A7228(v34);
    }

    swift_willThrow();
    return (*(v58 + 8))(v23, v15);
  }

  else
  {
    sub_1001A68F0(v14);
    v47 = v10;
    v48 = v8;
    v57 = v15;
    v45 = "com.apple.amsprivateidentifiers";
    v46 = "private-identifiers-server";
    v44[1] = sub_100003AE0(0, &qword_1002DFBA8, OS_dispatch_queue_serial_ptr);
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_1001A7290();
    sub_100099DF4(&qword_1002DFBB8, &qword_10023FEA8);
    sub_1001A72E8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v53 + 104))(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v54);
    v28 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static Log.amsSubsystem.getter();
    v29 = v56;
    Logger.init(subsystem:category:)();
    static Log.amsSubsystem.getter();
    v30 = v55;
    Logger.init(subsystem:category:)();
    v36 = static XPCServer.createListener(machServiceName:requiredEntitlement:persistenceAccessQueue:xpcServerLogger:persistenceDirectoryURL:persistenceLogger:cloudKitContainerEnvironment:apsMachServiceName:syncEngineLogger:shouldCreateSyncEngine:)(0xD00000000000001FLL, v46 | 0x8000000000000000, 0xD000000000000024, v45 | 0x8000000000000000, v28, v23, v14, v29, 1, 0xD000000000000023, 0x8000000100275E80, v30, &unk_10023FEB0, 0);

    v37 = *(v58 + 8);
    v38 = v30;
    v39 = v57;
    v37(v38, v57);
    v37(v29, v39);
    v40 = type metadata accessor for XPCListener();
    v41 = v48;
    v42 = v49;
    v49[3] = v40;
    *v42 = v36;
    (*(v47 + 8))(v14, v41);
    sub_1001A668C(v23);
    return (v37)(v23, v39);
  }
}

void sub_1001A668C(uint64_t a1)
{
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Started Private Identifiers XPC server", v2, 2u);
  }
}

uint64_t sub_1001A6730()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() ams_cachesDirectory];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v6, v3, v0);
    URL.appendingPathComponent(_:)();
    return (*(v1 + 8))(v6, v0);
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    AMSError();

    return swift_willThrow();
  }
}

uint64_t sub_1001A68F0(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLResourceValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    __break(1u);
  }

  v19[0] = v7;
  v19[1] = v1;
  v11 = [objc_allocWithZone(NSFileManager) init];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v20 = 0;
  v15 = [v11 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v20];

  if (v15)
  {
    v16 = v20;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    (*(v4 + 16))(v6, a1, v3);
    URL.setResourceValues(_:)();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v19[0]);
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1001A6B70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A6BFC;

  return sub_1001A6D04();
}

uint64_t sub_1001A6BFC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1001A6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_opt_self() defaultBag];
  if (qword_1002DA5B0 != -1)
  {
    swift_once();
  }

  v16 = [v15 BOOLForKey:qword_1002DFB70];
  v14[20] = v16;

  v14[2] = v14;
  v14[7] = v14 + 18;
  v14[3] = sub_1001A6EBC;
  v17 = swift_continuation_init();
  v14[17] = sub_100099DF4(&qword_1002DFBC8, &unk_10023FEC0);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1001A5F04;
  v14[13] = &unk_1002BBB68;
  v14[14] = v17;
  [v16 valueWithCompletion:v14 + 10];

  return _swift_continuation_await(v14 + 2, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001A6EBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001A7058;
  }

  else
  {
    v2 = sub_1001A6FCC;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001A6FCC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1001A7058(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

AMSDPrivateIdentifiersXPCServerCreator __swiftcall AMSDPrivateIdentifiersXPCServerCreator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1001A7228(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A7290()
{
  result = qword_1002DFBB0;
  if (!qword_1002DFBB0)
  {
    v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_queue_serial.Attributes, v3, v0, v1);
    atomic_store(result, &qword_1002DFBB0);
  }

  return result;
}

unint64_t sub_1001A72E8()
{
  result = qword_1002DFBC0;
  if (!qword_1002DFBC0)
  {
    v3 = sub_10009A468(&qword_1002DFBB8, &qword_10023FEA8);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002DFBC0);
  }

  return result;
}

uint64_t sub_1001A7354(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v4 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v4 - 8);
  v64 = &v55 - v5;
  sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  sub_100003724();
  v65 = v7;
  v66 = v6;
  __chkstk_darwin(v6);
  v61 = v8;
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v55 - v10;
  v72 = type metadata accessor for Log();
  sub_100003724();
  v12 = v11;
  __chkstk_darwin(v13);
  v67 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v73 = a1;
  v19 = [a1 logKey];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = AMSSetLogKey();

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v24 = type metadata accessor for LogInterpolation();
  sub_100003B78(v24);
  v68 = 2 * *(v25 + 72);
  sub_100006890();
  v58 = v26;
  v27 = swift_allocObject();
  v57 = xmmword_1002329F0;
  *(v27 + 16) = xmmword_1002329F0;

  v71 = v21;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v29 = *(v12 + 8);
  v28 = v12 + 8;
  v30 = v72;
  v69 = v29;
  v29(v18, v72);
  v70 = [v73 account];
  if (v70)
  {
    v67 = v23;
    v59 = v28;
    v31 = v73;
    v56 = sub_1001A813C(v73);
    if (v32)
    {
      v33 = v32;
      static Log.accountsDaemon.getter();
      sub_100006890();
      *(swift_allocObject() + 16) = xmmword_10023EF50;
      static LogInterpolation.prefix<A>(_:_:)();

      sub_100007010();
      v78 = sub_100003AE0(0, &qword_1002DFC20, ACAccount_ptr);
      v75 = v70;
      v58 = v70;
      static LogInterpolation.traceableSensitive(_:)();
      sub_100009DF4(&v75);
      LogInterpolation.init(stringLiteral:)();
      v78 = &type metadata for String;
      v75 = v56;
      v76 = v33;

      static LogInterpolation.traceableSensitive(_:)();
      sub_100009DF4(&v75);
      LogInterpolation.init(stringLiteral:)();
      v78 = sub_100003AE0(0, &qword_1002DFC28, AMSPushPayload_ptr);
      v75 = v31;
      v34 = v31;
      static LogInterpolation.traceableSensitive(_:)();
      sub_100009DF4(&v75);
      Log.default(_:)();

      v35 = sub_100007E78();
      v36(v35);
      type metadata accessor for SendableBag();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
      }

      sub_100003AE0(0, &qword_1002DFC30, ACAccountStore_ptr);
      sub_1001A81A0(&qword_1002DFC38, &protocol conformance descriptor for ACAccountStore);
      sub_1001A81A0(&unk_1002DFC40, &protocol conformance descriptor for ACAccountStore);
      v37 = v58;
      v38 = v63;
      DeveloperSilentAuthTokenManager.init(bundleId:account:mediaType:bag:)();
      v39 = type metadata accessor for TaskPriority();
      v40 = v64;
      sub_100002728(v64, 1, 1, v39);
      v42 = v65;
      v41 = v66;
      v43 = v62;
      (*(v65 + 16))(v62, v38, v66);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = (v61 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      (*(v42 + 32))(v46 + v44, v43, v41);
      *(v46 + v45) = v74;
      v47 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
      v48 = v67;
      *v47 = v71;
      v47[1] = v48;
      sub_10013ABD4(0, 0, v40, &unk_10023FF00, v46);

      return (*(v42 + 8))(v38, v41);
    }

    else
    {

      static Log.accountsDaemon.getter();
      sub_100006890();
      *(swift_allocObject() + 16) = v57;
      static LogInterpolation.prefix<A>(_:_:)();

      sub_100007010();
      Log.error(_:)();

      v53 = sub_100007E78();
      return v54(v53);
    }
  }

  else
  {

    v50 = v67;
    static Log.accountsDaemon.getter();
    sub_100006890();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v51 = [v73 accountIdentifier];
    v52 = v51;
    if (v51)
    {
      v51 = sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    }

    else
    {
      v76 = 0;
      v77 = 0;
    }

    v75 = v52;
    v78 = v51;
    static LogInterpolation.traceableSensitive(_:)();
    sub_100009DF4(&v75);
    Log.error(_:)();

    return v69(v50, v30);
  }
}

uint64_t sub_1001A7BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[15] = a5;
  v8 = type metadata accessor for Log();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[21] = v9;
  v10 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  *v9 = v7;
  v9[1] = sub_1001A7D04;

  return DeveloperSilentAuthTokenManager.fetchToken(cachePolicy:)(v7 + 2, 1, v10);
}

uint64_t sub_1001A7D04()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1001A7E80;
  }

  else
  {
    sub_100004118((v2 + 16));
    v3 = sub_1001A7E20;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1001A7E20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A7E80(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v10 = v1[18];
  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  type metadata accessor for PushParsableDSATCache();
  static LogInterpolation.prefix<A>(_:_:)();
  sub_100007010();
  swift_getErrorValue();
  v5 = v1[11];
  v6 = v1[12];
  v1[10] = v6;
  v7 = sub_100007914(v1 + 7);
  (*(*(v6 - 8) + 16))(v7, v5, v6);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009DF4((v1 + 7));
  Log.error(_:)();

  (*(v3 + 8))(v2, v10);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1001A813C(void *a1)
{
  v1 = [a1 clientIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001A81A0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_100003AE0(255, &qword_1002DFC30, ACAccountStore_ptr);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A81F4(uint64_t a1)
{
  v3 = v2;
  v5 = sub_100099DF4(&unk_1002DFC00, &qword_10023FEF0);
  sub_100003B78(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000CB6D0;

  return sub_1001A7BE8(a1, v12, v13, v1 + v7, v11, v14, v15);
}

uint64_t sub_1001A833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1001A8364);
}

uint64_t sub_1001A8364@<X0>(NSURL *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 168);
  URL._bridgeToObjectiveC()(a1);
  v10 = v9;
  if (v8)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v12 = [*(v7 + 184) requestWithMethod:*(v7 + 152) URL:v10 headers:v11.super.isa parameters:*(v7 + 176)];
  *(v7 + 192) = v12;

  *(v7 + 16) = v7;
  *(v7 + 56) = v7 + 144;
  *(v7 + 24) = sub_1001A84EC;
  v13 = swift_continuation_init();
  *(v7 + 136) = sub_100099DF4(&unk_1002DFD10, &qword_10023FF60);
  *(v7 + 80) = _NSConcreteStackBlock;
  *(v7 + 88) = 1107296256;
  *(v7 + 96) = sub_1000C5D24;
  *(v7 + 104) = &unk_1002BBBD0;
  *(v7 + 112) = v13;
  [v12 resultWithCompletion:v7 + 80];

  return _swift_continuation_await(v7 + 16, v14, v15, v16, v17, v18, v19, v20, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1001A84EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1001A8668;
  }

  else
  {
    v2 = sub_1001A85FC;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001A85FC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001A8668(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void *String.amsd_dataFromBase64EncodedGzippedString()(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  Data.init(base64Encoded:options:)();
  if (v4 >> 60 == 15)
  {
    sub_1000B2EE8();
    swift_allocError();
    *v5 = 1;
    *(v5 + 8) = 0;
    swift_willThrow();
  }

  else
  {
    v2 = objc_opt_self();
    sub_1000049C0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v2 decompressedDataWithGzippedData:isa];

    if (v7)
    {
      v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = sub_1000049C0();
      sub_10009A7A0(v8, v9);
    }

    else
    {
      sub_1000B2EE8();
      swift_allocError();
      *v10 = 2;
      *(v10 + 8) = 1;
      swift_willThrow();
      v11 = sub_1000049C0();
      sub_10009A7A0(v11, v12);
    }
  }

  return v2;
}

uint64_t sub_1001A882C(uint64_t a1)
{
  v2 = sub_1001A8C1C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A8868(uint64_t a1)
{
  v2 = sub_1001A8C1C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001A88C0(uint64_t a1)
{
  v2 = sub_1001A8E7C();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1001A88FC(uint64_t a1)
{
  v2 = sub_1001A8E7C();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001A8944(uint64_t a1)
{
  v2 = sub_1001A8D24();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001A8980(uint64_t a1)
{
  v2 = sub_1001A8D24();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001A89D8(uint64_t a1)
{
  v2 = sub_1001A8E28();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1001A8A14(uint64_t a1)
{
  v2 = sub_1001A8E28();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.amsd_base64EncodedGzippedString()()
{
  v0 = objc_opt_self();
  sub_1000049C0();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = [v0 compressedGzippedDataWithData:isa];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = Data.base64EncodedString(options:)(0);
    sub_10000D170(v3, v5);
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
  }

  else
  {
    sub_1001A8B50();
    swift_allocError();
    *v9 = 1;
    countAndFlagsBits = swift_willThrow();
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t sub_1001A8B50()
{
  result = qword_1002DFD20;
  if (!qword_1002DFD20)
  {
    result = swift_getWitnessTable(aQ_10, &_s11amsd_ErrorsON, v0, v1);
    atomic_store(result, &qword_1002DFD20);
  }

  return result;
}

uint64_t _s11amsd_ErrorsOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11amsd_ErrorsOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1001A8C1C()
{
  result = qword_1002DFD28;
  if (!qword_1002DFD28)
  {
    result = swift_getWitnessTable(asc_10023FFE8, &_s11amsd_ErrorsON_0, v0, v1);
    atomic_store(result, &qword_1002DFD28);
  }

  return result;
}

unint64_t sub_1001A8C74()
{
  result = qword_1002DFD30;
  if (!qword_1002DFD30)
  {
    result = swift_getWitnessTable(aA_4, &_s11amsd_ErrorsON_0, v0, v1);
    atomic_store(result, &qword_1002DFD30);
  }

  return result;
}

unint64_t sub_1001A8CCC()
{
  result = qword_1002DFD38;
  if (!qword_1002DFD38)
  {
    result = swift_getWitnessTable(byte_10023FF78, &_s11amsd_ErrorsON_0, v0, v1);
    atomic_store(result, &qword_1002DFD38);
  }

  return result;
}

unint64_t sub_1001A8D24()
{
  result = qword_1002DFD40;
  if (!qword_1002DFD40)
  {
    result = swift_getWitnessTable(aA_5, &_s11amsd_ErrorsON, v0, v1);
    atomic_store(result, &qword_1002DFD40);
  }

  return result;
}

unint64_t sub_1001A8D7C()
{
  result = qword_1002DFD48;
  if (!qword_1002DFD48)
  {
    result = swift_getWitnessTable(aY_5, &_s11amsd_ErrorsON, v0, v1);
    atomic_store(result, &qword_1002DFD48);
  }

  return result;
}

unint64_t sub_1001A8DD4()
{
  result = qword_1002DFD50;
  if (!qword_1002DFD50)
  {
    result = swift_getWitnessTable(byte_100240060, &_s11amsd_ErrorsON, v0, v1);
    atomic_store(result, &qword_1002DFD50);
  }

  return result;
}

unint64_t sub_1001A8E28()
{
  result = qword_1002DFD58;
  if (!qword_1002DFD58)
  {
    result = swift_getWitnessTable(asc_100240110, &_s11amsd_ErrorsON, v0, v1);
    atomic_store(result, &qword_1002DFD58);
  }

  return result;
}

unint64_t sub_1001A8E7C()
{
  result = qword_1002DFD60;
  if (!qword_1002DFD60)
  {
    result = swift_getWitnessTable(byte_100240028, &_s11amsd_ErrorsON_0, v0, v1);
    atomic_store(result, &qword_1002DFD60);
  }

  return result;
}

uint64_t sub_1001A8ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000197D8(a1, &v13);
    sub_100008494(&v13, v14);
    sub_1000038DC();
    __chkstk_darwin(v3);
    sub_10000306C();
    (*(v6 + 16))(v5 - v4);
    sub_10000B15C();
    sub_1001ABA14(v7, v8, v9, v10, v11);
    sub_100004118(&v13);
  }

  else
  {
    sub_100005460(a1);
    sub_1001AE380();

    return sub_100005460(&v13);
  }
}

uint64_t sub_1001A9008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100122C8C(a1, &v15);
    v3 = v17;
    v4 = v18;
    sub_100008494(&v15, v16);
    sub_1000038DC();
    __chkstk_darwin(v5);
    sub_10000306C();
    (*(v8 + 16))(v7 - v6);
    sub_10000B15C();
    sub_1001AB5C0(v9, v10, v11, v12, v13, v3, v4);
    sub_100004118(&v15);
  }

  else
  {
    sub_100005460(a1);
    sub_1001AE438();

    return sub_100005460(&v15);
  }
}

uint64_t sub_1001A914C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000197D8(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100150088(v15, a2, isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, v13, *v2, v15[0], v15[1]);
    *v2 = v14;
    type metadata accessor for CodingUserInfoKey();
    sub_10000307C();
    return (*(v10 + 8))(a2);
  }

  else
  {
    sub_100005460(a1);
    sub_1001AE4F8(v15);
    type metadata accessor for CodingUserInfoKey();
    sub_10000307C();
    (*(v12 + 8))(a2);
    return sub_100005460(v15);
  }
}

uint64_t sub_1001A9254(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000197D8(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100150578(v15, a2, isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, v13, *v2, v15[0], v15[1]);
    *v2 = v14;
    v10 = type metadata accessor for CodingUserInfoKey();
    return (*(*(v10 - 8) + 8))(a2, v10);
  }

  else
  {
    sub_100004E24(a1, &qword_1002DFF40, &qword_10024AB00);
    sub_1001AE5EC();
    v12 = type metadata accessor for CodingUserInfoKey();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100004E24(v15, &qword_1002DFF40, &qword_10024AB00);
  }
}

void *static Avro.decodeSchema(schema:)(uint64_t a1, uint64_t a2)
{
  sub_10000309C();
  type metadata accessor for JSONDecoder();
  sub_1000074F8();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100157420();
  sub_100008F20(&type metadata for AvroSchema, a1, a2);
  if (a2)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_10000ACE8();
    sub_100004DE8();
    result = _assertionFailure(_:_:file:line:flags:)(v6, v7, v8, v9, v10, v11, v12, v13, 80);
    __break(1u);
  }

  else
  {

    return sub_1000046EC(v4, v14);
  }

  return result;
}

void static Avro.decodeFromContinue(from:startIndex:schema:)()
{
  sub_100004868();
  v5 = v0;
  v7 = v6;
  v8 = v4;
  v9 = v2;
  v10 = v1;
  switch(v3 >> 62)
  {
    case 1uLL:
      v130 = v1;
      v42 = v2 >> 32;
      if (v2 >> 32 < v2)
      {
        goto LABEL_41;
      }

      sub_100008478();
      sub_100008478();
      v43 = sub_100007B1C();
      sub_10000FF98(v43, v44);
      sub_100008478();
      v45 = sub_100007B1C();
      sub_10000FF98(v45, v46);
      v47 = __DataStorage._bytes.getter();
      if (!v47)
      {
        v41 = 0;
LABEL_25:
        __DataStorage._length.getter();
        if (v41)
        {
          v40 = v42 - v8;
          if (!__OFSUB__(v42, v8))
          {
            type metadata accessor for AvroBinaryDecoder();
            swift_initStackObject();
            sub_10000C144();
            v10 = v130;
            if (v0)
            {
              goto LABEL_28;
            }

            v95 = sub_100007820();
            sub_100003DF8(v95, v96, v97, v98, v99, v100, v101, v102, v130, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
            goto LABEL_36;
          }

          goto LABEL_45;
        }

LABEL_29:
        v93 = sub_1001A5AD0();
        sub_100007F60(&type metadata for AvroError, v93);
        *v94 = 0xD00000000000001ALL;
        v94[1] = 0x8000000100275D20;
        swift_willThrow();
        v111 = sub_100007B1C();
        sub_10000D170(v111, v112);
        sub_1001441C8(v7);
        goto LABEL_31;
      }

      v48 = v47;
      v49 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v49))
      {
        v41 = (v9 - v49 + v48);
        goto LABEL_25;
      }

      goto LABEL_44;
    case 2uLL:
      goto LABEL_7;
    case 3uLL:
      *(&v134 + 6) = 0;
      *&v134 = 0;
      v40 = -v4;
      if (__OFSUB__(0, v4))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v41 = &v134;
      type metadata accessor for AvroBinaryDecoder();
      swift_allocObject();
      sub_100007820();
      sub_10000C144();
      if (!v0)
      {
        sub_100007820();
        v75 = sub_100008478();
        sub_100003DF8(v75, v76, v77, v78, v79, v80, v81, v82, v128, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        v117 = sub_10000689C(v83, v84, v85, v86, v87, v88, v89, v90, v132, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        v103 = sub_100006BF8(v117, v118);
        if (!__OFSUB__(v40, &v134))
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_36:
        v119 = sub_10000689C(v103, v104, v105, v106, v107, v108, v109, v110, v133, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        sub_100006BF8(v119, v120);
        v121 = sub_100007B1C();
        sub_10000D170(v121, v122);
        sub_1001441C8(v7);
        if (!__OFSUB__(v40, v41))
        {
LABEL_37:
          v123 = sub_100007B1C();
          sub_10000D170(v123, v124);
          sub_1001441C8(v7);
          goto LABEL_38;
        }

LABEL_47:
        __break(1u);
      }

LABEL_12:
      sub_100008478();
      sub_100008478();
LABEL_31:
      v113 = sub_100007B1C();
      sub_10000D170(v113, v114);
      sub_1001441C8(v7);
      v115 = sub_100007B1C();
      sub_10000D170(v115, v116);
      sub_1001441C8(v7);
      swift_willThrow();
LABEL_32:
      sub_100005074();
      return;
    default:
      *&v134 = v2;
      WORD4(v134) = v3;
      BYTE10(v134) = BYTE2(v3);
      BYTE11(v134) = BYTE3(v3);
      BYTE12(v134) = BYTE4(v3);
      BYTE13(v134) = BYTE5(v3);
      v11 = BYTE6(v3) - v4;
      if (__OFSUB__(BYTE6(v3), v4))
      {
        goto LABEL_40;
      }

      type metadata accessor for AvroBinaryDecoder();
      swift_initStackObject();
      sub_100007820();
      sub_10000C144();
      if (v0)
      {
        goto LABEL_12;
      }

      sub_100007820();
      v12 = sub_100008478();
      sub_100003DF8(v12, v13, v14, v15, v16, v17, v18, v19, v128, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
      v5 = 0;
      v28 = sub_10000689C(v20, v21, v22, v23, v24, v25, v26, v27, v129, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
      sub_100006BF8(v28, v29);
      if (!__OFSUB__(v11, &v134))
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_7:
      v30 = v10;
      v31 = *(v9 + 16);

      sub_100008478();
      sub_100008478();
      v32 = sub_100007B1C();
      sub_10000FF98(v32, v33);
      sub_100008478();
      v34 = sub_100007B1C();
      sub_10000FF98(v34, v35);
      v36 = __DataStorage._bytes.getter();
      if (v36)
      {
        v37 = v36;
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v31, v38))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v39 = v31 - v38 + v37;
      }

      else
      {
        v39 = 0;
      }

      __DataStorage._length.getter();
      if (!v39)
      {
        goto LABEL_29;
      }

      v50 = *(v9 + 24);
      v51 = v50 - v8;
      if (!__OFSUB__(v50, v8))
      {
        type metadata accessor for AvroBinaryDecoder();
        inited = swift_initStackObject();
        sub_100148604(v7, v8 + v39, v51);
        if (v5)
        {
LABEL_28:
          v91 = sub_100007B1C();
          sub_10000D170(v91, v92);
          goto LABEL_31;
        }

        v53 = sub_100007820();
        sub_100003DF8(v53, v54, v55, v56, v57, v58, v59, v60, v128, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        v180[0] = sub_10000689C(v61, v62, v63, v64, v65, v66, v67, v68, v131, v134, *(&v134 + 1), v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
        v180[1] = v69;
        v70 = *(*sub_10000C4FC((inited + 32), *(inited + 56)) + 24);

        v71 = sub_100007B1C();
        sub_10000D170(v71, v72);
        sub_1001441C8(v7);
        if (!__OFSUB__(v51, v70))
        {
          v73 = sub_100007B1C();
          sub_10000D170(v73, v74);
          sub_1001441C8(v7);
          v10 = v30;
          v8 = v180;
LABEL_38:
          v125 = sub_100007B1C();
          sub_10000D170(v125, v126);
          sub_1001441C8(v7);
          v127 = v8[1];
          *v10 = *v8;
          v10[1] = v127;
          goto LABEL_32;
        }

        goto LABEL_46;
      }

      goto LABEL_43;
  }
}

uint64_t Avro.__allocating_init()()
{
  v0 = swift_allocObject();
  Avro.init()();
  return v0;
}

uint64_t Avro.init()()
{
  v1 = sub_100099DF4(&qword_1002DA5E0, &qword_10022E420);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xFFFFFFFF00;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  CodingUserInfoKey.init(rawValue:)();
  v4 = type metadata accessor for CodingUserInfoKey();
  result = sub_100004DFC(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v4 - 8) + 32))(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_infoKey, v3, v4);
    *(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_stream) = xmmword_10022E410;
    return v0;
  }

  return result;
}

uint64_t Avro.setSchema(schema:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_10000A698(a1, a2, a3, a4, a5, a6, a7, a8, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v15[0]);
  memcpy(v10, v11, v12);
  memcpy((v8 + 16), a1, 0x62uLL);
  sub_10014416C(a1, v14);
  return sub_100004E24(v15, &qword_1002DE960, &qword_10023B918);
}

void *Avro.getSchema()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_10000A698(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v14[0]);
  memcpy(v8, v9, v10);
  v11 = sub_100012C94(v14, v13, &qword_1002DE960, &qword_10023B918);
  return sub_1000046EC(v11, v14);
}

void *Avro.decodeSchema(schema:)@<X0>(void *a3@<X8>)
{
  v5 = type metadata accessor for String.Encoding();
  sub_1000038DC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  type metadata accessor for JSONDecoder();
  sub_1000074F8();
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v12 = String.data(using:allowLossyConversion:)();
  v14 = v13;
  (*(v7 + 8))(v11, v5);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_100157420();
    sub_100008F20(&type metadata for AvroSchema, v12, v14);
    if (!v5)
    {

      sub_10009A7A0(v12, v14);
      memcpy(v25, (v3 + 16), 0x62uLL);
      memcpy((v3 + 16), __src, 0x62uLL);
      sub_100004E24(v25, &qword_1002DE960, &qword_10023B918);
      memcpy(v26, (v3 + 16), 0x62uLL);
      sub_100012C94(v26, &v24, &qword_1002DE960, &qword_10023B918);
      return memcpy(a3, v26, 0x62uLL);
    }
  }

  sub_10009A7A0(v12, v14);
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10000338C();
  sub_100004DE8();
  result = _assertionFailure(_:_:file:line:flags:)(v16, v17, v18, v19, v20, v21, v22, v23, 60);
  __break(1u);
  return result;
}

void *Avro.decodeSchema(schema:)(uint64_t a1, uint64_t a2)
{
  sub_10000309C();
  type metadata accessor for JSONDecoder();
  sub_1000074F8();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100157420();
  sub_100008F20(&type metadata for AvroSchema, a1, a2);
  if (a2)
  {
    swift_getErrorValue();
    Error.localizedDescription.getter();
    sub_10000ACE8();
    sub_100004DE8();
    result = _assertionFailure(_:_:file:line:flags:)(v7, v8, v9, v10, v11, v12, v13, v14, 70);
    __break(1u);
  }

  else
  {

    memcpy(__dst, (v2 + 16), 0x62uLL);
    memcpy((v2 + 16), __src, 0x62uLL);
    sub_100004E24(__dst, &qword_1002DE960, &qword_10023B918);
    memcpy(v17, (v2 + 16), 0x62uLL);
    v5 = sub_100012C94(v17, v15, &qword_1002DE960, &qword_10023B918);
    return sub_1000046EC(v5, v17);
  }

  return result;
}

uint64_t Avro.encodeSchema()()
{
  v2 = memcpy(__dst, (v0 + 16), 0x62uLL);
  if (__dst[7] >> 8 == 0xFFFFFFFFLL && __dst[10] <= 1uLL && (__dst[12] & 0xFCFE) == 0)
  {
    return 0;
  }

  v12 = *(v0 + 32);
  v39[0] = *(v0 + 16);
  v39[1] = v12;
  v39[2] = *(v0 + 48);
  v40 = *(v0 + 64);
  v41 = __dst[7];
  v42 = *(v0 + 80);
  v43 = __dst[10];
  v44 = __dst[11];
  v45 = __dst[12];
  v13 = sub_10000A698(v2, v3, v4, v5, v6, v7, v8, v9, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38[0]);
  memcpy(v13, v14, v15);
  sub_10014416C(v38, &v25);
  Avro.encodeSchema(schema:)(v39, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  if (!v1)
  {
    v0 = v23;
  }

  sub_100004E24(__dst, &qword_1002DE960, &qword_10023B918);
  return v0;
}

void Avro.encodeSchema(schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  v22 = type metadata accessor for CodingUserInfoKey();
  sub_1000038DC();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_10000306C();
  v28 = v27 - v26;
  type metadata accessor for JSONEncoder.OutputFormatting();
  sub_10000307C();
  __chkstk_darwin(v29);
  sub_10000306C();
  type metadata accessor for JSONEncoder();
  sub_1000074F8();
  swift_allocObject();
  JSONEncoder.init()();
  if (*(v20 + 114))
  {
    if (*(v20 + 114) == 1)
    {
      v49[0] = 0;
      sub_10000BC04();
      v32 = sub_1001ABE4C(v30, v31, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
      sub_1001ABED0(v32);
    }

    else
    {
      static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    }

    dispatch thunk of JSONEncoder.outputFormatting.setter();
    (*(v24 + 16))(v28, v20 + OBJC_IVAR____TtC12amsaccountsd4Avro_infoKey, v22);
    v36 = *(v20 + 114);
    v49[3] = &type metadata for AvroSchemaEncodingOption;
    LOBYTE(v49[0]) = v36;
    v37 = dispatch thunk of JSONEncoder.userInfo.modify();
    sub_1001A9254(v49, v28);
    v37(&v48, 0);
  }

  else
  {
    v49[0] = 0;
    sub_10000BC04();
    v35 = sub_1001ABE4C(v33, v34, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
    sub_1001ABED0(v35);
    dispatch thunk of JSONEncoder.outputFormatting.setter();
  }

  AvroSchema.encode(jsonEncoder:)();
  if (!v21)
  {
    if (v38 >> 60 != 15)
    {

      sub_100005074();
      return;
    }

    v39 = sub_10015BEC8();
    sub_100007F60(&type metadata for AvroSchemaEncodingError, v39);
    swift_willThrow();
  }

  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10000338C();
  sub_100004DE8();
  _assertionFailure(_:_:file:line:flags:)(v40, v41, v42, v43, v44, v45, v46, v47, 110);
  __break(1u);
}

uint64_t Avro.decode<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 72);
  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  if (v5 >> 8 == 0xFFFFFFFF && v6 <= 1 && (v7 & 0xFCFE) == 0)
  {
    v17 = sub_100151350();
    sub_100007F60(&type metadata for BinaryEncodingError, v17);
    *v18 = 0;
    return swift_willThrow();
  }

  v11 = *(v3 + 104);
  v12 = *(v3 + 32);
  v29 = *(v3 + 16);
  v30 = v12;
  v31 = *(v3 + 48);
  v13 = *(v3 + 64);
  v34 = *(v3 + 80);
  v32 = v13;
  v33 = v5;
  v35 = v6;
  v36 = v11;
  v37 = v7;
  v38 = v4;
  type metadata accessor for AvroDecoder(0);
  sub_1000074F8();
  swift_allocObject();
  v14 = *(v3 + 32);
  v22[0] = *(v3 + 16);
  v22[1] = v14;
  v22[2] = *(v3 + 48);
  v23 = *(v3 + 64);
  v24 = v5;
  v25 = *(v3 + 80);
  v26 = v6;
  v27 = v11;
  v28 = v7;
  sub_10014416C(v22, v21);
  sub_100146AE8();
  v15 = v38;
  sub_100146CD0(a3, a1, a2, a3);

  if (v15)
  {
    return swift_willThrow();
  }

  return result;
}

void Avro.decode(from:)()
{
  sub_100004868();
  v2 = *(v0 + 72);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  if (v2 >> 8 == 0xFFFFFFFF && v3 <= 1 && (v4 & 0xFCFE) == 0)
  {
    v12 = sub_100151350();
    sub_100007F60(&type metadata for BinaryEncodingError, v12);
    *v13 = 0;
  }

  else
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 32);
    v22 = *(v0 + 16);
    v23 = v8;
    v24 = *(v0 + 48);
    v9 = *(v0 + 64);
    v27 = *(v0 + 80);
    v25 = v9;
    v26 = v2;
    v28 = v3;
    v29 = v7;
    v30 = v4;
    type metadata accessor for AvroDecoder(0);
    sub_1000074F8();
    swift_allocObject();
    v10 = *(v0 + 32);
    v15[0] = *(v0 + 16);
    v15[1] = v10;
    v15[2] = *(v0 + 48);
    v16 = *(v0 + 64);
    v17 = v2;
    v18 = *(v0 + 80);
    v19 = v3;
    v20 = v7;
    v21 = v4;
    sub_10014416C(v15, &v14);
    sub_100146AE8();
    __chkstk_darwin(v11);
    sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
    Data.withUnsafeBytes<A, B>(_:)();

    if (!v1)
    {
      goto LABEL_12;
    }
  }

  swift_willThrow();
LABEL_12:
  sub_100005074();
}

double sub_1001AA53C(_OWORD *a1)
{
  sub_100099DF4(&unk_1002DFF50, &qword_1002403F8);
  Data.withUnsafeBytes<A, B>(_:)();
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    result = *&v4;
    *a1 = v4;
    a1[1] = v5;
  }

  return result;
}

void sub_1001AA5EC()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v18 = v13;
  swift_getTupleTypeMetadata2();
  sub_10000307C();
  __chkstk_darwin(v14);
  v16 = v17 - v15;
  v17[2] = v2;
  v17[3] = v8;
  v17[4] = v12;
  v17[5] = v10;
  v17[6] = v6;
  v17[7] = v4;
  Data.withUnsafeBytes<A, B>(_:)();
  if (v0)
  {
    swift_willThrow();
  }

  else
  {
    (*(*(v2 - 8) + 32))(v18, v16, v2);
  }

  sub_100005074();
}

uint64_t sub_1001AA734@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a5)(void *__return_ptr, void *)@<X4>, uint64_t a6@<X8>)
{
  v11 = Data.count.getter();
  type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();
  v12 = sub_100148604(a2, a1, v11);
  if (v6)
  {
    return sub_10014416C(a2, v18);
  }

  v14 = v12;
  sub_10014416C(a2, v18);
  a5(v17, v14);
  sub_100012C94(v17, a6, &unk_1002DFC10, &qword_10022E6D0);
  v15 = Data.count.getter();
  sub_100004E24(v17, &unk_1002DFC10, &qword_10022E6D0);
  v16 = *(*sub_10000C4FC(v14 + 4, v14[7]) + 24);

  if (__OFSUB__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    *(a6 + 32) = v15 - v16;
  }

  return result;
}

uint64_t sub_1001AA8A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a8;
  v25 = a6;
  v27 = a5;
  v13 = *(a7 - 8);
  __chkstk_darwin(a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Data.count.getter();
  type metadata accessor for AvroBinaryDecoder();
  swift_allocObject();
  v17 = sub_100148604(a2, a1, v16);
  if (v8)
  {
    return sub_10014416C(a2, v26);
  }

  v19 = v17;
  v23 = a3;
  v20 = v24;
  sub_10014416C(a2, v26);
  v27(v19);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v13 + 16))(v20, v15, a7);
  v21 = Data.count.getter();
  (*(v13 + 8))(v15, a7);
  v22 = *(*sub_10000C4FC(v19 + 4, v19[7]) + 24);

  if (__OFSUB__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    *(v27 + v20) = v21 - v22;
  }

  return result;
}

uint64_t sub_1001AAB78(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1001ABE4C(&qword_1002DEA68, type metadata accessor for AvroBinaryDecoder, byte_10023B8CC);

  return dispatch thunk of Decodable.init(from:)();
}

void *Avro.newSchema(schema:)(uint64_t a1, uint64_t a2)
{
  sub_10000309C();
  v2 = type metadata accessor for String.Encoding();
  sub_1000038DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  type metadata accessor for JSONDecoder();
  sub_1000074F8();
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_100157420();
    sub_100008F20(&type metadata for AvroSchema, v9, v11);
    if (!v2)
    {

      v12 = sub_100007B1C();
      v14 = sub_10009A7A0(v12, v13);
      return sub_1000046EC(v14, v26);
    }
  }

  v16 = sub_100007B1C();
  sub_10009A7A0(v16, v17);
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10000338C();
  sub_100004DE8();
  result = _assertionFailure(_:_:file:line:flags:)(v18, v19, v20, v21, v22, v23, v24, v25, 205);
  __break(1u);
  return result;
}

void *Avro.newSchema(schema:)(uint64_t a1, unint64_t a2)
{
  sub_10000309C();
  type metadata accessor for JSONDecoder();
  sub_1000074F8();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10000FF98(a1, a2);

  sub_100154604(a1, a2, v6);

  return sub_1000046EC(v4, v6);
}

uint64_t Avro.decodeFrom<A>(from:schema:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AvroDecoder(0);
  sub_1000074F8();
  swift_allocObject();
  sub_10014416C(a3, v10);
  sub_100146AE8();
  sub_100146CD0(a4, a1, a2, a4);

  if (v4)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t Avro.decodeFrom(from:schema:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AvroDecoder(0);
  sub_1000074F8();
  swift_allocObject();
  sub_10014416C(a3, v6);
  sub_100146AE8();
  sub_100099DF4(&unk_1002DFC10, &qword_10022E6D0);
  Data.withUnsafeBytes<A, B>(_:)();

  if (v3)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t Avro.deinit()
{
  sub_1001AB128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = OBJC_IVAR____TtC12amsaccountsd4Avro_infoKey;
  type metadata accessor for CodingUserInfoKey();
  sub_10000307C();
  (*(v2 + 8))(v0 + v1);
  sub_10000D170(*(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_stream), *(v0 + OBJC_IVAR____TtC12amsaccountsd4Avro_stream + 8));
  return v0;
}

uint64_t sub_1001AB128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unsigned __int16 a13)
{
  if (a8 >> 8 != 0xFFFFFFFF || a11 > 1 || (a13 & 0xFCFE) != 0)
  {
    return sub_10014E7B4(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }

  return result;
}

uint64_t Avro.__deallocating_deinit()
{
  Avro.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

amsaccountsd::AvroEncodingOption_optional __swiftcall AvroEncodingOption.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = amsaccountsd_AvroEncodingOption_AvroJson;
  }

  else
  {
    v1.value = amsaccountsd_AvroEncodingOption_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001AB1E8()
{
  result = qword_1002DFD78;
  if (!qword_1002DFD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroSchemaEncodingOption, &type metadata for AvroSchemaEncodingOption, v0, v1);
    atomic_store(result, &qword_1002DFD78);
  }

  return result;
}

unint64_t sub_1001AB240()
{
  result = qword_1002DFD80;
  if (!qword_1002DFD80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvroEncodingOption, &type metadata for AvroEncodingOption, v0, v1);
    atomic_store(result, &qword_1002DFD80);
  }

  return result;
}

amsaccountsd::AvroEncodingOption_optional sub_1001AB2A4@<W0>(Swift::Int *a1@<X0>, amsaccountsd::AvroEncodingOption_optional *a2@<X8>)
{
  result.value = AvroEncodingOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001AB2D0@<X0>(uint64_t *a1@<X8>)
{
  result = AvroEncodingOption.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for Avro(uint64_t a1)
{
  result = qword_1002DFDB0;
  if (!qword_1002DFDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AB350(uint64_t a1)
{
  result = type metadata accessor for CodingUserInfoKey();
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

_BYTE *storeEnumTagSinglePayload for AvroSchemaEncodingOption(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for AvroEncodingOption(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1001AB5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a5 - 8);
  __chkstk_darwin(a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a4;
  (*(v14 + 16))(v16, a1, a5);
  sub_1001AB704(v16, a2, a3, isUniquelyReferenced_nonNull_native, &v20, a5, a6, a7);
  result = (*(v14 + 8))(a1, a5);
  *a4 = v20;
  return result;
}

_OWORD *sub_1001AB704(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v16 = sub_100007914(&v35);
  (*(*(a6 - 8) + 32))(v16, a1, a6);
  v17 = *a5;
  v18 = sub_10014EB30(a2, a3);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = v18;
  v24 = v19;
  sub_100099DF4(&unk_1002E0030, &qword_1002403F0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v22))
  {
    goto LABEL_5;
  }

  v25 = sub_10014EB30(a2, a3);
  if ((v24 & 1) != (v26 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v23 = v25;
LABEL_5:
  v27 = *a5;
  if (v24)
  {
    v28 = (v27[7] + 48 * v23);
    sub_100004118(v28);
    return sub_100122C8C(&v35, v28);
  }

  else
  {
    v30 = sub_100008494(&v35, v36);
    v31 = __chkstk_darwin(v30);
    v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33, v31);
    sub_1001AB938(v23, a2, a3, v33, v27, a6, a7, a8);
    sub_100004118(&v35);
  }
}

_OWORD *sub_1001AB938(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v14 = sub_100007914(&v20);
  (*(*(a6 - 8) + 32))(v14, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_100122C8C(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_1001ABA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a4;
  (*(v10 + 16))(v12, a1, a5);
  sub_1001ABB40(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v16, a5);
  result = (*(v10 + 8))(a1, a5);
  *a4 = v16;
  return result;
}

_OWORD *sub_1001ABB40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v32 = a6;
  v12 = sub_100007914(&v31);
  (*(*(a6 - 8) + 32))(v12, a1, a6);
  v13 = *a5;
  v14 = sub_10014EB30(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v14;
  v20 = v15;
  sub_100099DF4(&unk_1002E0020, &qword_1002403E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = sub_10014EB30(a2, a3);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  v23 = *a5;
  if (v20)
  {
    v24 = (v23[7] + 32 * v19);
    sub_100004118(v24);
    return sub_1000197D8(&v31, v24);
  }

  else
  {
    v26 = sub_100008494(&v31, v32);
    v27 = __chkstk_darwin(v26);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29, v27);
    sub_1001ABD54(v19, a2, a3, v29, v23, a6);
    sub_100004118(&v31);
  }
}

_OWORD *sub_1001ABD54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  v12 = sub_100007914(&v18);
  (*(*(a6 - 8) + 32))(v12, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1000197D8(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1001ABE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001ABED0(uint64_t a1)
{

  return dispatch thunk of OptionSet.init(rawValue:)(v2 - 136, v1, a1);
}

double sub_1001ABEF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10014EB30(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100009F20(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1001ABF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_10014EB30(a1, a2), (a2 & 1) != 0))
  {
    v11 = v10;
    v12 = *(a3 + 56);
    v13 = a4(0);
    sub_10000307C();
    sub_1001AE8FC(v12 + *(v14 + 72) * v11, a6, a5);
    v15 = a6;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v17 = (a4)(0, a2);
    v15 = a6;
    v16 = 1;
  }

  return sub_100002728(v15, v16, 1, v17);
}

uint64_t sub_1001AC070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10014EB30(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AC0C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_10014EC40();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1001AC118@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10014ECA8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_100009F20(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AC17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10014EB30(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1001AC1D4(uint64_t a1)
{
  v1 = a1;
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v2 = sub_1001AC240(v1);
  sub_100008F38(v2, v3);
}

uint64_t sub_1001AC240(char a1)
{
  result = 0x44746E756F636361;
  switch(a1)
  {
    case 1:
      sub_100007504();
      result = v10 - 6;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      sub_100007504();
      result = v8 + 5;
      break;
    case 4:
      sub_100007504();
      result = v6 + 6;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7669746341736164;
      break;
    case 7:
    case 12:
      sub_100007504();
      result = v9 + 4;
      break;
    case 8:
      sub_100007504();
      result = v13 - 1;
      break;
    case 9:
      sub_100007504();
      result = v7 - 3;
      break;
    case 10:
    case 15:
      sub_100007504();
      result = v12 | 1;
      break;
    case 11:
      sub_100007504();
      result = v5 - 2;
      break;
    case 13:
    case 18:
      sub_100007504();
      result = v11 + 2;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 16:
      sub_100007504();
      result = v4 + 7;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    default:
      sub_100007504();
      result = v3 - 5;
      break;
  }

  return result;
}

id sub_1001AC49C()
{
  result = [objc_allocWithZone(type metadata accessor for LiveTransactionStore(0)) init];
  qword_1003106E8 = result;
  return result;
}

uint64_t sub_1001AC4D0(char a1)
{
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v2 = sub_1001AC240(a1);
  sub_1001AC540(v2, v3, 2);
}

uint64_t sub_1001AC540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v45 = a1;
  v46 = a2;
  ObjectType = swift_getObjectType();
  v48 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003724();
  v50 = v5;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v49 = type metadata accessor for DispatchQoS();
  sub_100003724();
  v47 = v10;
  __chkstk_darwin(v11);
  sub_10000306C();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchTimeInterval();
  sub_100003724();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000306C();
  v21 = (v20 - v19);
  v22 = type metadata accessor for DispatchTime();
  v42 = v22;
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v40 - v27;
  v43 = *&v4[OBJC_IVAR___AMSLiveTransactionStore_queue];
  static DispatchTime.now()();
  *v21 = v41;
  (*(v17 + 104))(v21, enum case for DispatchTimeInterval.seconds(_:), v15);
  + infix(_:_:)();
  (*(v17 + 8))(v21, v15);
  v29 = *(v23 + 8);
  v29(v25, v22);
  v30 = swift_allocObject();
  v31 = v45;
  v32 = v46;
  v30[2] = v4;
  v30[3] = v31;
  v33 = ObjectType;
  v30[4] = v32;
  v30[5] = v33;
  aBlock[4] = sub_1001ADE98;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AD40C;
  aBlock[3] = &unk_1002BBE78;
  v34 = _Block_copy(aBlock);
  v35 = v4;

  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_100003AC8();
  sub_100010FEC(v36, v37, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100099DF4(&qword_1002DFFD0, &qword_100240478);
  sub_100011034(&qword_1002DFFD8, &qword_1002DFFD0, &qword_100240478);
  v38 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v34);
  (*(v50 + 8))(v9, v38);
  (*(v47 + 8))(v14, v49);
  v29(v28, v42);
}

uint64_t sub_1001AC988(char *a1, void *a2, uint64_t a3, void *a4)
{
  v89 = a4;
  v7 = type metadata accessor for OSSignpostError();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v87 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Log();
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  __chkstk_darwin(v23);
  v25 = &v73 - v24;
  v86 = a1;
  v26 = *&a1[OBJC_IVAR___AMSLiveTransactionStore_transactionSet];
  v27 = String._bridgeToObjectiveC()();
  [v26 removeObject:v27];

  v91 = a2;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v26 countForObject:v28];

  v88 = v17;
  if (v29)
  {
    v82 = a3;
    static Log.accountsDaemon.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v94 = v89;
    v92 = v86;
    v86;
    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v92);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._object = 0x8000000100276250;
    v40._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v40);
    v94 = &type metadata for String;
    v92 = v91;
    v93 = v82;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009DF4(&v92);
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
    LogInterpolation.init(stringInterpolation:)();
    Log.info(_:)();

    (*(v90 + 8))(v19, v88);
    String._bridgeToObjectiveC()();
    OSSignposter.logHandle.getter();
    v42 = v83;
    OSSignpostID.init(log:object:)();
    v43 = OSSignposter.logHandle.getter();
    v44 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v46, "Transaction", "Transaction left", v45, 2u);
    }

    return (*(v84 + 8))(v42, v85);
  }

  else
  {
    v80 = v22;
    v74 = v9;
    v79 = v14;
    v83 = v25;
    static Log.accountsDaemon.getter();
    v32 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v33 = *(type metadata accessor for LogInterpolation() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v78 = v32;
    v76 = v35 + 2 * v34;
    v36 = swift_allocObject();
    v75 = xmmword_1002329F0;
    *(v36 + 16) = xmmword_1002329F0;
    v77 = v35;
    v94 = v89;
    v92 = v86;
    v37 = v86;
    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v92);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v48._countAndFlagsBits = 0xD000000000000013;
    v48._object = 0x8000000100276270;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
    v94 = &type metadata for String;
    v49 = v91;
    v92 = v91;
    v93 = a3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009DF4(&v92);
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
    LogInterpolation.init(stringInterpolation:)();
    v51 = v83;
    Log.info(_:)();

    v52 = v90 + 8;
    v53 = *(v90 + 8);
    v54 = v88;
    v53(v51, v88);
    v55 = OBJC_IVAR___AMSLiveTransactionStore_transactionSignpostStateStore;
    swift_beginAccess();
    if (sub_10000A07C(v49, a3, *&v37[v55]))
    {
      v56 = a3;
      swift_endAccess();
      v57 = OSSignposter.logHandle.getter();
      v58 = v79;
      OSSignpostIntervalState.signpostID.getter();
      v59 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        v60 = v74;
        checkForErrorAndConsumeState(state:)();

        v62 = v81;
        v61 = v82;
        if ((*(v81 + 88))(v60, v82) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v63 = "[Error] Interval already ended";
        }

        else
        {
          (*(v62 + 8))(v60, v61);
          v63 = "";
        }

        v67 = swift_slowAlloc();
        *v67 = 0;
        v68 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, v59, v68, "Transaction", v63, v67, 2u);
      }

      (*(v84 + 8))(v58, v85);
      swift_beginAccess();
      v69 = v91;
      sub_1001AE7B8(v91, v56);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1001AE6DC(v69, v56);
      swift_endAccess();
    }

    else
    {
      v86 = v34;
      v90 = v52;
      swift_endAccess();
      static Log.accountsDaemon.getter();
      *(swift_allocObject() + 16) = v75;
      v94 = v89;
      v92 = v37;
      v64 = v37;
      v65 = AMSLogKey();
      if (v65)
      {
        v66 = v65;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v92);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v70._countAndFlagsBits = 0xD000000000000038;
      v70._object = 0x8000000100276290;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
      v94 = &type metadata for String;
      v92 = v91;
      v93 = a3;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009DF4(&v92);
      v71._countAndFlagsBits = 0x6361736E61727420;
      v71._object = 0xEC0000006E6F6974;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v71);
      LogInterpolation.init(stringInterpolation:)();
      v72 = v80;
      Log.fault(_:)();

      return (v53)(v72, v54);
    }
  }
}

uint64_t sub_1001AD40C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1001AD450()
{
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  return sub_1001AD498();
}

uint64_t sub_1001AD498()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003724();
  v30 = v3;
  v31 = v2;
  __chkstk_darwin(v2);
  sub_10000306C();
  v29 = v5 - v4;
  type metadata accessor for DispatchQoS();
  sub_100003724();
  v27 = v7;
  v28 = v6;
  __chkstk_darwin(v6);
  sub_10000306C();
  v26 = v9 - v8;
  v10 = type metadata accessor for Log();
  sub_100003724();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000306C();
  v16 = v15 - v14;
  static Log.accountsDaemon.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v33 = ObjectType;
  aBlock[0] = v0;
  v17 = v0;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(aBlock);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v12 + 8))(v16, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v34 = sub_1001AE8E4;
  v35 = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AD40C;
  v33 = &unk_1002BBF40;
  v21 = _Block_copy(aBlock);
  v22 = v17;
  static DispatchQoS.unspecified.getter();
  sub_100003AC8();
  sub_100010FEC(v23, v24, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100099DF4(&qword_1002DFFD0, &qword_100240478);
  sub_100011034(&qword_1002DFFD8, &qword_1002DFFD0, &qword_100240478);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v29, v31);
  (*(v27 + 8))(v26, v28);
}

id sub_1001AD8F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  type metadata accessor for Log();
  sub_100003724();
  v21 = v3;
  v22 = v2;
  __chkstk_darwin(v2);
  sub_10000306C();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000307C();
  __chkstk_darwin(v7);
  sub_10000306C();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_10000306C();
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003724();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  v20 = OBJC_IVAR___AMSLiveTransactionStore_queue;
  sub_1001AE8A0();
  (*(v11 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100010FEC(&qword_1002E0008, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100099DF4(&qword_1002E0010, &unk_1002404A0);
  sub_100011034(&qword_1002E0018, &qword_1002E0010, &unk_1002404A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static Log.accountsDaemon.getter();
  Log.osLog.getter();
  (*(v21 + 8))(v6, v22);
  OSSignposter.init(logHandle:)();
  v16 = OBJC_IVAR___AMSLiveTransactionStore_transactionSet;
  *&v1[v16] = [objc_allocWithZone(NSCountedSet) init];
  v17 = OBJC_IVAR___AMSLiveTransactionStore_transactionSignpostStateStore;
  type metadata accessor for OSSignpostIntervalState();
  *&v1[v17] = Dictionary.init(dictionaryLiteral:)();
  v1[OBJC_IVAR___AMSLiveTransactionStore_isShuttingDown] = 0;
  v18 = OBJC_IVAR___AMSLiveTransactionStore_transactionStore;
  sub_100099DF4(&unk_1002DFFF0, &unk_100240490);
  *&v1[v18] = Dictionary.init(dictionaryLiteral:)();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t type metadata accessor for LiveTransactionStore(uint64_t a1)
{
  result = qword_1002DFFB8;
  if (!qword_1002DFFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001ADDAC(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
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

void *sub_1001ADEA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1001ADEF0(a1, a2);
  sub_1001AE008(&off_1002B4428);
  return v3;
}

void *sub_1001ADEF0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_1001AE0EC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001AE008(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1001AE15C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001AE0EC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100099DF4(&qword_1002E2760, &qword_10023CBF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1001AE15C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100099DF4(&qword_1002E2760, &qword_10023CBF8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1001AE250()
{
  v2 = v0;
  sub_10000DA08();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10000783C();
  v11 = *v0;
  v5 = *(*v0 + 24);
  sub_100099DF4(&unk_1002E0040, &qword_10023B9A8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(v4, v5);
  v6 = *(v11 + 48);
  v7 = type metadata accessor for AccountIdentity();
  sub_10000307C();
  (*(v8 + 8))(v6 + *(v8 + 72) * v1, v7);
  v9 = *(*(v11 + 56) + 8 * v1);
  type metadata accessor for AccountDataAccessActor(0);
  sub_100010FEC(&qword_1002DE9E0, &type metadata accessor for AccountIdentity, &protocol conformance descriptor for AccountIdentity);
  _NativeDictionary._delete(at:)();
  *v2 = v11;
  return v9;
}

double sub_1001AE380()
{
  sub_10000BC1C();
  sub_10014EB30(v4, v5);
  if (v6)
  {
    sub_10000783C();
    sub_100007E8C();
    v7 = sub_100099DF4(&unk_1002E0020, &qword_1002403E0);
    v15 = sub_100006B48(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26);
    sub_1000033A0(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    sub_1000197D8((*(v1 + 56) + 32 * v2), v3);
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    _NativeDictionary._delete(at:)();
    *v0 = v1;
  }

  else
  {
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return result;
}

double sub_1001AE438()
{
  sub_10000BC1C();
  sub_10014EB30(v4, v5);
  if (v6)
  {
    sub_10000783C();
    sub_100007E8C();
    v7 = sub_100099DF4(&unk_1002E0030, &qword_1002403F0);
    v15 = sub_100006B48(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26);
    sub_1000033A0(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
    sub_100122C8C((*(v1 + 56) + 48 * v2), v3);
    sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
    _NativeDictionary._delete(at:)();
    *v0 = v1;
  }

  else
  {
    result = 0.0;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return result;
}

double sub_1001AE4F8@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_10014ECA8();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100007E8C();
    v6 = sub_100099DF4(&qword_1002E0050, &qword_1002404C0);
    sub_100006B48(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19);
    v14 = *(v20 + 48);
    v15 = type metadata accessor for CodingUserInfoKey();
    sub_10000307C();
    (*(v16 + 8))(v14 + *(v16 + 72) * v5, v15);
    sub_1000197D8((*(v20 + 56) + 32 * v5), a1);
    _NativeDictionary._delete(at:)();
    *v1 = v20;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_1001AE5EC()
{
  sub_10000BC1C();
  sub_10014ECA8();
  if (v3)
  {
    sub_10000783C();
    sub_100007E8C();
    v4 = sub_100099DF4(&unk_1002DEA70, &unk_10023B9B0);
    sub_100006B48(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17);
    v12 = *(v18 + 48);
    v13 = type metadata accessor for CodingUserInfoKey();
    sub_10000307C();
    (*(v14 + 8))(v12 + *(v14 + 72) * v1, v13);
    sub_1000197D8((*(v18 + 56) + 32 * v1), v2);
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    _NativeDictionary._delete(at:)();
    *v0 = v18;
  }

  else
  {
    result = 0.0;
    *v2 = 0u;
    v2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001AE6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10014EB30(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_100099DF4(&unk_1002DFFE0, &unk_100240480);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  type metadata accessor for OSSignpostIntervalState();
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

uint64_t sub_1001AE7B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10014EB30(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_100099DF4(&unk_1002DE9D0, &unk_10023B930);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  sub_100099DF4(&unk_1002DFFF0, &unk_100240490);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

unint64_t sub_1001AE8A0()
{
  result = qword_1002E0000;
  if (!qword_1002E0000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E0000);
  }

  return result;
}

uint64_t sub_1001AE8FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000307C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1001AE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 32);
  *(v8 + 80) = *(a3 + 48);
  v12[4] = sub_1001AEFE4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001AF954;
  v12[3] = &unk_1002BBF90;
  v10 = _Block_copy(v12);

  v11 = String.utf8CString.getter();
  xpc_activity_register((v11 + 32), XPC_ACTIVITY_CHECK_IN, v10);

  _Block_release(v10);
}

xpc_activity_state_t sub_1001AEA90(_xpc_activity_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for Log();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result)
  {
    if (result == 2)
    {
      v26 = a2;
      v27 = a3;
      static Log.dasActivity.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      v25 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
      v28 = v12;
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      v17 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._object = 0x80000001002764D0;
      v18._countAndFlagsBits = 0xD000000000000014;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
      ObjectType = swift_getObjectType();
      v29[0] = a1;
      swift_unknownObjectRetain();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_100009DF4(v29);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      (*(v13 + 8))(v15, v28);
      if (qword_1002DA5B8 != -1)
      {
        swift_once();
      }

      sub_100008F38(0x7669746341736164, 0xEB00000000797469);
      v20 = type metadata accessor for TaskPriority();
      sub_100002728(v10, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v26;
      v21[5] = v27;

      sub_10013ABD4(0, 0, v10, &unk_1002404F8, v21);
    }
  }

  else
  {
    static Log.dasActivity.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v28 = v12;
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v22 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = a4;

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0xD000000000000015;
    v23._object = 0x80000001002764B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    ObjectType = swift_getObjectType();
    v29[0] = a1;
    swift_unknownObjectRetain();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v29);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v13 + 8))(v15, v28);
    return sub_1001AF288(v27, a1);
  }

  return result;
}

uint64_t sub_1001AEFF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1001AF0D8;

  return v7();
}

uint64_t sub_1001AF0D8()
{

  return _swift_task_switch(sub_1001AF1D4);
}

uint64_t sub_1001AF1D4()
{
  if (qword_1002DA5B8 != -1)
  {
    swift_once();
  }

  sub_1001AC540(0x7669746341736164, 0xEB00000000797469, 2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001AF288(uint64_t a1, _xpc_activity_s *a2)
{
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Log();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = xpc_activity_copy_criteria(a2);
  v10 = *v2;
  if (v9)
  {
    if (v10 != 2)
    {
      static Log.dasActivity.getter();
      sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
      sub_100003F9C();
      v11 = type metadata accessor for LogInterpolation();
      sub_100003B78(v11);
      v38 = v5;
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      v12 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0xD000000000000017;
      v13._object = 0x8000000100276560;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
      *&v41[24] = swift_getObjectType();
      *v41 = v9;
      swift_unknownObjectRetain();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_100009DF4(v41);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();
      swift_unknownObjectRelease();

      return (*(v6 + 8))(v8, v38);
    }
  }

  else if (v10 != 2)
  {
    *v41 = *v2;
    *&v41[8] = *(v2 + 8);
    *&v41[24] = *(v2 + 24);
    *&v41[36] = *(v2 + 36);
    static Log.dasActivity.getter();
    v36 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v18 = type metadata accessor for LogInterpolation();
    sub_100003B78(v18);
    v37 = *(v19 + 72);
    v21 = *(v20 + 80);
    v35 = ((v21 + 32) & ~v21) + 2 * v37;
    v33[1] = (v21 + 32) & ~v21;
    v22 = swift_allocObject();
    v34 = xmmword_1002329F0;
    *(v22 + 16) = xmmword_1002329F0;
    v38 = v5;
    v23 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0xD00000000000001ELL;
    v24._object = 0x8000000100276520;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    ObjectType = &unk_1002BC0A8;
    v25 = swift_allocObject();
    v39[0] = v25;
    v26 = *&v41[16];
    *(v25 + 16) = *v41;
    *(v25 + 32) = v26;
    *(v25 + 48) = *&v41[32];
    *(v25 + 64) = *&v41[48];
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v39);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v33[0] = *(v6 + 8);
    (v33[0])(v8, v38);
    sub_1001AFA74();
    v29 = v28;
    static Log.dasActivity.getter();
    *(swift_allocObject() + 16) = v34;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._object = 0x8000000100276540;
    v31._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    ObjectType = swift_getObjectType();
    v39[0] = v29;
    swift_unknownObjectRetain();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v39);
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (v33[0])(v8, v38);
    xpc_activity_set_criteria(a2, v29);
    return swift_unknownObjectRelease();
  }

  static Log.dasActivity.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v16 = type metadata accessor for LogInterpolation();
  sub_100003B78(v16);
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v17 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();
  swift_unknownObjectRelease();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001AF954(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001AF9B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000CB6D0;

  return sub_1001AEFF0(a1, v4, v5, v6);
}

void sub_1001AFA74()
{
  v1 = sub_100003F9C();
  v2 = xpc_dictionary_create(v1, 0, 0);
  v3 = v2;
  if (*(v0 + 50))
  {
    v4 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  else
  {
    v4 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  }

  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, *v4);
  if (!*(v0 + 49))
  {
    if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v7 = 1;
    sub_1000068B0(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
    v6 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
    if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
    {
      goto LABEL_52;
    }

    goto LABEL_11;
  }

  if (*(v0 + 49) != 1)
  {
LABEL_12:
    switch(*(v0 + 1))
    {
      case 1:
        v8 = XPC_ACTIVITY_REQUIRES_CLASS_A;
        if (XPC_ACTIVITY_REQUIRES_CLASS_A)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_15;
      case 2:
LABEL_15:
        v8 = XPC_ACTIVITY_REQUIRES_CLASS_B;
        if (XPC_ACTIVITY_REQUIRES_CLASS_B)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_17:
        v8 = XPC_ACTIVITY_REQUIRES_CLASS_C;
        if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
        {
          goto LABEL_53;
        }

LABEL_18:
        sub_1000068B0(v5, v8);
LABEL_19:
        sub_1000068B0(v5, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP);
        xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, *(v0 + 51));
        if (!XPC_ACTIVITY_EXPECTED_DURATION)
        {
          goto LABEL_48;
        }

        xpc_dictionary_set_int64(v3, XPC_ACTIVITY_EXPECTED_DURATION, qword_100240520[*(v0 + 17)]);
        xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, *v0);
        if (*(v0 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v0 + 8);
        if ((~*&v9 & 0x7FF0000000000000) != 0)
        {
          if (v9 > -9.22337204e18)
          {
            sub_100008234();
            if (!v11)
            {
              goto LABEL_42;
            }

            xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v10);
LABEL_26:
            if (*(v0 + 48))
            {
              goto LABEL_32;
            }

            v12 = *(v0 + 40);
            if ((~*&v12 & 0x7FF0000000000000) != 0)
            {
              if (v12 <= -9.22337204e18)
              {
LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

              sub_100008234();
              if (!v11)
              {
                goto LABEL_45;
              }

              xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v13);
LABEL_32:
              if (*(v0 + 32))
              {
                return;
              }

              v14 = *(v0 + 24);
              if ((~*&v14 & 0x7FF0000000000000) == 0)
              {
                goto LABEL_44;
              }

              if (v14 <= -9.22337204e18)
              {
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

              sub_100008234();
              if (v11)
              {
                xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, v15);
                return;
              }

LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_41;
      case 3:
        goto LABEL_17;
      default:
        goto LABEL_19;
    }
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1000068B0(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  v6 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  if (XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
    v7 = 0;
LABEL_11:
    xpc_dictionary_set_BOOL(v3, v6, v7);
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1001AFD44(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[52])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AFD90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001AFE30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001AFEB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100099DF4(&qword_1002E0078, &qword_100240748);
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_10000C4FC(a1, a1[3]);
  sub_1001B07E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

Swift::Int sub_1001AFFEC(uint64_t a1)
{
  sub_100005BE8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1001B0034(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E0068, &qword_100240740);
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_10000C4FC(a1, a1[3]);
  sub_1001B07E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100004118(a1);
  return v9;
}

uint64_t sub_1001B0188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001AFE30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001B01B4(uint64_t a1)
{
  v2 = sub_1001B07E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B01F0(uint64_t a1)
{
  v2 = sub_1001B07E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001B023C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001B0034(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1001B0288()
{
  result = qword_1002E0058;
  if (!qword_1002E0058)
  {
    result = swift_getWitnessTable(asc_1002405F4, &unk_1002BC148, v0, v1);
    atomic_store(result, &qword_1002E0058);
  }

  return result;
}

uint64_t sub_1001B02F4(double a1)
{
  if (a1 == 60.0)
  {
    return 0;
  }

  if (a1 == 300.0)
  {
    return 1;
  }

  if (a1 == 900.0)
  {
    return 2;
  }

  if (a1 == 1800.0)
  {
    return 3;
  }

  if (a1 == 3600.0)
  {
    return 4;
  }

  if (a1 == 14400.0)
  {
    return 5;
  }

  if (a1 == 28800.0)
  {
    return 6;
  }

  if (a1 == 86400.0)
  {
    return 7;
  }

  if (a1 == 604800.0)
  {
    return 8;
  }

  return 9;
}

uint64_t sub_1001B03D0(double *a1, double *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v2 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*(a2 + 16))
  {
LABEL_11:
    v4 = *(a1 + 17);
    switch(*(a2 + 17))
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_9;
        }

        break;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_9;
        }

        break;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_9;
        }

        break;
      case 4:
        if (v4 != 4)
        {
          goto LABEL_9;
        }

        break;
      case 5:
        if (v4 != 5)
        {
          goto LABEL_9;
        }

        break;
      case 6:
        if (v4 != 6)
        {
          goto LABEL_9;
        }

        break;
      case 7:
        if (v4 != 7)
        {
          goto LABEL_9;
        }

        break;
      case 8:
        if (v4 != 8)
        {
          goto LABEL_9;
        }

        break;
      default:
        if (*(a1 + 17))
        {
          goto LABEL_9;
        }

        break;
    }

    v2 = *(a2 + 32);
    if (a1[4])
    {
      if (!*(a2 + 32))
      {
        return v2 & 1;
      }
    }

    else
    {
      if (a1[3] != a2[3])
      {
        v2 = 1;
      }

      if (v2)
      {
        goto LABEL_9;
      }
    }

    v2 = *(a2 + 48);
    if (a1[6])
    {
      if (!*(a2 + 48))
      {
        return v2 & 1;
      }

      goto LABEL_41;
    }

    if (a1[5] != a2[5])
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
LABEL_41:
      if (*(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50))
      {
        v2 = *(a1 + 51) ^ *(a2 + 51) ^ 1;
        return v2 & 1;
      }
    }

LABEL_9:
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1001B0534(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2 & 1);
  Hasher._combine(_:)(*(v2 + 1));
  if (*(v2 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  sub_10015E0A0(a1, *(v2 + 17));
  if (*(v2 + 32) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v2 + 24);
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  if (*(v2 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *(v2 + 40);
    Hasher._combine(_:)(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }

  Hasher._combine(_:)(*(v2 + 49));
  Hasher._combine(_:)(*(v2 + 50));
  Hasher._combine(_:)(*(v2 + 51) & 1);
}

Swift::Int sub_1001B062C()
{
  sub_100005BE8();
  sub_1001B0534(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B067C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1001B06EC@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B02F4(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1001B074C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001B0534(v2);
  return Hasher._finalize()();
}

unint64_t sub_1001B0790()
{
  result = qword_1002E0060;
  if (!qword_1002E0060)
  {
    result = swift_getWitnessTable(asc_1002406D4, &unk_1002BC0A8, v0, v1);
    atomic_store(result, &qword_1002E0060);
  }

  return result;
}

unint64_t sub_1001B07E4()
{
  result = qword_1002E0070;
  if (!qword_1002E0070)
  {
    result = swift_getWitnessTable(byte_100240A28, &type metadata for XPCActivityTaskID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCActivityTaskID.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1001B08E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1001B09BC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *sub_1001B0A94(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001B0B6C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1001B0C48()
{
  result = qword_1002E0080;
  if (!qword_1002E0080)
  {
    result = swift_getWitnessTable(asc_1002407D8, &unk_1002BC420, v0, v1);
    atomic_store(result, &qword_1002E0080);
  }

  return result;
}

unint64_t sub_1001B0CA0()
{
  result = qword_1002E0088;
  if (!qword_1002E0088)
  {
    result = swift_getWitnessTable(byte_100240878, &unk_1002BC390, v0, v1);
    atomic_store(result, &qword_1002E0088);
  }

  return result;
}

unint64_t sub_1001B0CF8()
{
  result = qword_1002E0090;
  if (!qword_1002E0090)
  {
    result = swift_getWitnessTable(asc_1002408E0, &unk_1002BC300, v0, v1);
    atomic_store(result, &qword_1002E0090);
  }

  return result;
}

unint64_t sub_1001B0D50()
{
  result = qword_1002E0098;
  if (!qword_1002E0098)
  {
    result = swift_getWitnessTable(byte_100240948, &unk_1002BC270, v0, v1);
    atomic_store(result, &qword_1002E0098);
  }

  return result;
}

unint64_t sub_1001B0DA8()
{
  result = qword_1002E00A0;
  if (!qword_1002E00A0)
  {
    result = swift_getWitnessTable(byte_100240A00, &type metadata for XPCActivityTaskID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E00A0);
  }

  return result;
}

unint64_t sub_1001B0E00()
{
  result = qword_1002E00A8;
  if (!qword_1002E00A8)
  {
    result = swift_getWitnessTable(aA_6, &type metadata for XPCActivityTaskID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E00A8);
  }

  return result;
}

unint64_t sub_1001B0E58()
{
  result = qword_1002E00B0;
  if (!qword_1002E00B0)
  {
    result = swift_getWitnessTable(aI_4, &type metadata for XPCActivityTaskID.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E00B0);
  }

  return result;
}

void sub_1001B1774(id a1)
{
  qword_1003040C0 = [[ktSeAkOyXkmyQNgH alloc] initWithServiceName:@"com.apple.asd.scoring"];

  _objc_release_x1();
}

void sub_1001B1924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B1944(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained uTtwJoGUgL3N0GVz];
}

void sub_1001B1B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B1B80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B1E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B1E74(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B20B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B20EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B234C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1001B26D4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v14 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B291C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B2954(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B2C98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B2CD8(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B2ED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B2F0C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B34C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = objc_retainBlock(*(a1 + 48));
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

id sub_1001B35EC(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;

  v3 = a1[5];
  v4 = *(a1[4] + 16);

  return [v4 removeObjectForKey:v3];
}

void sub_1001B36C0(uint64_t a1)
{
  v2 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
  v3 = [NSError errorWithDomain:v2 code:-31 userInfo:0];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [*(*(a1 + 32) + 16) allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
}

uint64_t sub_1001B3AB8(uint64_t a1)
{
  *(*(a1 + 32) + 24) = os_log_create("com.apple.CoreAS", "libCoreAS");

  return _objc_release_x1();
}

void sub_1001B4060(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B4118;
  v6[3] = &unk_1002BC758;
  v6[4] = a1[6];
  v7 = v2;
  v5 = v2;
  [v3 JI0A3nkqsab9cUj8:v4 completion:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1001B4118(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  objc_storeStrong((*(a1 + 32) + 72), a4);
  if (v10)
  {
    [*(*(a1 + 32) + 16) setObject:v8 forKey:v10];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_1001B42B8(void *result)
{
  v1 = result[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    v2 = *(result[4] + 40);
    if (v2)
    {
      return (*(v2 + 16))(*(result[4] + 40), result[5], result[6], result[7]);
    }
  }

  return result;
}

void sub_1001B44D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {

    [v2 _safeCallbackWithMessage:0 uuid:0 error:?];
    return;
  }

  v3 = [*(v2 + 32) serverEndpointIdentifier];
  if ([v3 isEqualToString:@"enable"])
  {
    v4 = [*(a1 + 40) nonce];

    if (!v4)
    {
      v5 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
      v6 = v5;
      v7 = -701;
LABEL_24:
      v20 = [NSError errorWithDomain:v6 code:v7 userInfo:0];

      [*(a1 + 32) _safeCallbackWithMessage:0 uuid:0 error:v20];

      return;
    }
  }

  else
  {
  }

  v8 = *(a1 + 32);
  if (!*(v8 + 64))
  {
    v5 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
    v6 = v5;
    v7 = -710;
    goto LABEL_24;
  }

  v9 = [*(v8 + 16) objectForKey:?];
  v19 = *(a1 + 48);
  v10 = *(*(a1 + 32) + 64);
  v11 = [*(a1 + 40) hostChallenge];
  v12 = v11;
  if (!v11)
  {
    v12 = [*(*(a1 + 32) + 32) hostChallenge];
  }

  v13 = [*(a1 + 40) challengeResponse];
  v14 = v13;
  if (!v13)
  {
    v14 = [*(*(a1 + 32) + 32) challengeResponse];
  }

  v15 = [*(a1 + 40) seid];
  v16 = v15;
  if (!v15)
  {
    v16 = [*(*(a1 + 32) + 32) seid];
  }

  v17 = [*(a1 + 40) nonce];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001B47D0;
  v21[3] = &unk_1002BC7D0;
  v21[4] = *(a1 + 32);
  v22 = v9;
  v18 = v9;
  [v19 QeMnG23X94qgz7jT:v10 hostChallenge:v12 challengeResponse:v14 seid:v16 nonce:v17 completion:v21];

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
  {
  }
}

void sub_1001B47D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2 || a3)
  {
    v7 = *(a1 + 40);

    [v4 _safeCallbackWithMessage:a2 uuid:v7 error:a3];
  }

  else
  {
    v8 = 0;
    v5 = [v4 VkBISyFszEu5z9lr:a2 error:&v8];
    v6 = v8;
    [*(a1 + 32) _safeCallbackWithMessage:v5 uuid:*(a1 + 40) error:v6];
  }
}

uint64_t sub_1001B4FD8@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for P384.Signing.PrivateKey();
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  result = P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
  if (!v3)
  {
    return (*(v7 + 32))(a3, v11, v5);
  }

  return result;
}

BOOL sub_1001B50D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCBE8, v2);

  return v3 != 0;
}

BOOL sub_1001B512C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B50D8(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1001B51AC@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B50D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001B51D8(uint64_t a1)
{
  v2 = sub_1001B5778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B5214(uint64_t a1)
{
  v2 = sub_1001B5778();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PIAccountKeypair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = type metadata accessor for P384.Signing.PrivateKey();
  sub_100003724();
  v25 = v4;
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for PIAccountKeypair(0);
  __chkstk_darwin(v9 - 8);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = sub_100099DF4(&qword_1002E01E8, &qword_100243990);
  sub_100003724();
  v24 = v14;
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  sub_10000C4FC(a1, a1[3]);
  sub_1001B5778();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = v24;
    v19 = v25;
    sub_1001B57CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
    (*(v19 + 32))(v12, v8, v22);
    (*(v18 + 8))(v17, v13);
    sub_1001B5820(v12, v23);
  }

  return sub_100004118(a1);
}

uint64_t PIAccountKeypair.encode(to:)(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E0200, &qword_100243998);
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_10000C4FC(a1, a1[3]);
  sub_1001B5778();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = P384.Signing.PrivateKey.rawRepresentation.getter();
  v11 = v8;
  sub_1001B5884();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000D170(v10, v11);
  return (*(v4 + 8))(v7, v2);
}

unint64_t PIAccountKeypair.description.getter()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for P384.Signing.PrivateKey();
  sub_100099DF4(&qword_1002E0210, &qword_1002439A0);
  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD00000000000001DLL;
}

uint64_t type metadata accessor for PIAccountKeypair(uint64_t a1)
{
  result = qword_1002E0270;
  if (!qword_1002E0270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001B5778()
{
  result = qword_1002E01F0;
  if (!qword_1002E01F0)
  {
    result = swift_getWitnessTable(byte_100243B84, &type metadata for PIAccountKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E01F0);
  }

  return result;
}

unint64_t sub_1001B57CC()
{
  result = qword_1002E01F8;
  if (!qword_1002E01F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1002E01F8);
  }

  return result;
}

uint64_t sub_1001B5820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PIAccountKeypair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B5884()
{
  result = qword_1002E0208;
  if (!qword_1002E0208)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Data, &type metadata for Data, v0, v1);
    atomic_store(result, &qword_1002E0208);
  }

  return result;
}

uint64_t sub_1001B5900(uint64_t a1)
{
  result = type metadata accessor for P384.Signing.PrivateKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PIAccountKeypair.CodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1001B5A30()
{
  result = qword_1002E02B0;
  if (!qword_1002E02B0)
  {
    result = swift_getWitnessTable(byte_100243B5C, &type metadata for PIAccountKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E02B0);
  }

  return result;
}

unint64_t sub_1001B5A88()
{
  result = qword_1002E02B8;
  if (!qword_1002E02B8)
  {
    result = swift_getWitnessTable(byte_100243A94, &type metadata for PIAccountKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E02B8);
  }

  return result;
}

unint64_t sub_1001B5AE0()
{
  result = qword_1002E02C0;
  if (!qword_1002E02C0)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for PIAccountKeypair.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E02C0);
  }

  return result;
}

uint64_t sub_1001B5B44(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E02F0, type metadata accessor for CKError, byte_100243D68);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001B5BB0(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E02F0, type metadata accessor for CKError, byte_100243D68);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001B5C1C(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001B5C9C(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001B5D08(uint64_t a1)
{
  v2 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001B5D74(void *a1, uint64_t a2)
{
  v4 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001B5E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001B5E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001B5EE8(uint64_t a2@<X8>)
{
  sub_1001B5F1C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1001B5F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002E9DC(&qword_1002E0328, type metadata accessor for CKError, byte_100243DAC);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1001B61D8()
{
  result = qword_1002E0318;
  if (!qword_1002E0318)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_1002E0318);
  }

  return result;
}

uint64_t sub_1001B62E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701080931 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001002768E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000100276900 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706972637365645FLL && a2 == 0xEC0000006E6F6974;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x8000000100276920 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x8000000100276940 == a2)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001B651C(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 1701080931;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x706972637365645FLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B6608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B62E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B6630(uint64_t a1)
{
  v2 = sub_1001B6BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B666C(uint64_t a1)
{
  v2 = sub_1001B6BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static PICodableError.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = a1[5] == a2[5] && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[9] == a2[9] && a1[10] == a2[10];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = a1[11];
  v12 = a2[11];

  return sub_1001B67C0(v11, v12);
}

uint64_t sub_1001B67C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 96)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v15, i, sizeof(v15));
      v5 = __dst[0] == v15[0] && __dst[1] == v15[1];
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (__dst[2] != v15[2])
      {
        break;
      }

      v6 = __dst[3] == v15[3] && __dst[4] == v15[4];
      if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (__dst[6])
      {
        if (!v15[6])
        {
          return 0;
        }

        v7 = __dst[5] == v15[5] && __dst[6] == v15[6];
        if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15[6])
      {
        return 0;
      }

      v8 = __dst[7] == v15[7] && __dst[8] == v15[8];
      if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v9 = __dst[9] == v15[9] && __dst[10] == v15[10];
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v10 = __dst[11];
      v11 = v15[11];
      sub_1001B7C00(__dst, v13);
      sub_1001B7C00(v15, v13);
      LOBYTE(v10) = sub_1001B67C0(v10, v11);
      sub_1001B7C38(v15);
      sub_1001B7C38(__dst);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      v3 += 96;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t PICodableError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002E0338, &qword_100243EE0);
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_10000C4FC(a1, a1[3]);
  sub_1001B6BBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  sub_1000083D8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    sub_1000083D8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 3;
    sub_1000083D8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 4;
    sub_1000083D8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 5;
    sub_1000083D8();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 88);
    v12[15] = 6;
    sub_100099DF4(&qword_1002E0348, &qword_100243EE8);
    sub_10002EA88(&qword_1002E0350, sub_1001B6C10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1001B6BBC()
{
  result = qword_1002E0340;
  if (!qword_1002E0340)
  {
    result = swift_getWitnessTable(byte_1002441D8, &type metadata for PICodableError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0340);
  }

  return result;
}

unint64_t sub_1001B6C10()
{
  result = qword_1002E0358;
  if (!qword_1002E0358)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PICodableError, &type metadata for PICodableError, v0, v1);
    atomic_store(result, &qword_1002E0358);
  }

  return result;
}

void PICodableError.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  Hasher._combine(_:)(v2[2]);
  String.hash(into:)();
  if (v2[6])
  {
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  v4 = v2[11];

  sub_1001B7A40(a1, v4);
}

Swift::Int PICodableError.hashValue.getter()
{
  Hasher.init(_seed:)();
  PICodableError.hash(into:)(v1);
  return Hasher._finalize()();
}

void *PICodableError.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100099DF4(&qword_1002E0360, &unk_100243EF0);
  sub_100003724();
  __chkstk_darwin(v5);
  sub_10000C4FC(a1, a1[3]);
  sub_1001B6BBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  LOBYTE(v28[0]) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  sub_10002EB84(1);
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10002EB84(2);
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v9;
  sub_10002EB84(3);
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = v11;
  v20 = v10;
  sub_10002EB84(4);
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v12;
  sub_10002EB84(5);
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v13;
  sub_100099DF4(&qword_1002E0348, &qword_100243EE8);
  v29 = 6;
  sub_10002EA88(&qword_1002E0368, sub_1001B7BAC);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = sub_10002EB9C();
  v15(v14);
  v17 = v30;
  __src[0] = v6;
  __src[1] = v8;
  __src[2] = v23;
  __src[3] = v21;
  __src[4] = v26;
  __src[5] = v20;
  __src[6] = v22;
  __src[7] = v19;
  __src[8] = v25;
  __src[9] = v18;
  __src[10] = v24;
  __src[11] = v30;
  sub_1001B7C00(__src, v28);
  sub_100004118(a1);
  v28[0] = v6;
  v28[1] = v8;
  v28[2] = v23;
  v28[3] = v21;
  v28[4] = v26;
  v28[5] = v20;
  v28[6] = v22;
  v28[7] = v19;
  v28[8] = v25;
  v28[9] = v18;
  v28[10] = v24;
  v28[11] = v17;
  sub_1001B7C38(v28);
  return memcpy(a2, __src, 0x60uLL);
}

uint64_t sub_1001B71D0(uint64_t a1)
{
  v2 = sub_1001B7FA4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001B720C(uint64_t a1)
{
  v2 = sub_1001B7FA4();

  return Error<>._code.getter(a1, v2);
}

Swift::Int sub_1001B7250(uint64_t a1)
{
  Hasher.init(_seed:)();
  PICodableError.hash(into:)(v2);
  return Hasher._finalize()();
}

void *sub_1001B728C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = PICodableError.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

id sub_1001B72F4()
{
  v1 = v0;
  sub_100099DF4(&qword_1002DCC30, &qword_100236608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  sub_10000DBC0();
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = *(v1 + 88);
  v37 = v7;
  if (*(v7 + 16))
  {
    v31 = v7;
    memcpy(__dst, (v7 + 32), sizeof(__dst));
    sub_100012C2C(&v37, &v34, &qword_1002E0348, &qword_100243EE8);
    sub_1001B7C00(__dst, &v34);
    sub_1001B7FF8(0, 1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v35 + 1) = &type metadata for PICodableError;
    *&v34 = swift_allocObject();
    memcpy((v34 + 16), __dst, 0x60uLL);
    sub_1001514B8(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10002EBAC(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12);

    v6 = v32;
    if (*(v31 + 16))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v35 + 1) = sub_100099DF4(&qword_1002E0348, &qword_100243EE8);
      *&v34 = v31;
      sub_1001514B8(&v34, v33);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_10002EBAC(v13, v14, v15, v16, v17);

      v6 = v32;
    }

    else
    {
    }
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v33[0] = *(v1 + 40);
  if (*(&v33[0] + 1))
  {
    *(&__dst[1] + 1) = &type metadata for String;
    __dst[0] = v33[0];
    sub_1001514B8(__dst, &v34);
    sub_100012C2C(v33, &v31, &qword_1002DCC48, &qword_100238200);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v6;
    sub_1001B788C(&v34, v18, v20, v21);

    v6 = v31;
  }

  else
  {
    memset(__dst, 0, 32);
    sub_100012C2C(v33, &v34, &qword_1002DCC48, &qword_100238200);
    sub_100009DF4(__dst);
    v22 = sub_10014EB30(v18, v20);
    if (v23)
    {
      v24 = v22;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      v26 = *(v6 + 24);
      sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v25, v26);
      v6 = v31;

      sub_1001514B8((*(v31 + 56) + 32 * v24), &v34);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    sub_100009DF4(&v34);
  }

  v27 = *(v1 + 16);
  objc_allocWithZone(NSError);

  v28 = sub_10000DBC0();
  return sub_100106FE0(v28, v29, v27, v6);
}

uint64_t PICodableError.errorUserInfo.getter()
{
  sub_100099DF4(&qword_1002DCC30, &qword_100236608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  sub_1001B72F4();
  swift_getErrorValue();
  *(inited + 72) = v4;
  v2 = sub_100007914((inited + 48));
  (*(*(v4 - 8) + 16))(v2);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t PICodableError.description.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PICodableError.debugDescription.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PICodableError.customMirror.getter()
{
  sub_1001B72F4();
  swift_getErrorValue();
  v0 = v4[4];
  v1 = v5;
  v4[3] = v5;
  v2 = sub_100007914(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);

  return Mirror.init(reflecting:)();
}

_OWORD *sub_1001B788C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10014EB30(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100099DF4(&unk_1002DEA80, &unk_10023B9C0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10014EB30(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100004118(v21);

    return sub_1001514B8(a1, v21);
  }

  else
  {
    sub_1001B79D4(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_1001B79D4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1001514B8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1001B7A40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 120);
    do
    {
      v8 = *(v5 - 9);
      v6 = *(v5 - 5);
      v7 = *v5;

      String.hash(into:)();
      Hasher._combine(_:)(v8);
      String.hash(into:)();
      if (v6)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v5 += 12;
      String.hash(into:)();
      String.hash(into:)();
      sub_1001B7A40(a1, v7);

      --v4;
    }

    while (v4);
  }
}

unint64_t sub_1001B7BAC()
{
  result = qword_1002E0370;
  if (!qword_1002E0370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PICodableError, &type metadata for PICodableError, v0, v1);
    atomic_store(result, &qword_1002E0370);
  }

  return result;
}

unint64_t sub_1001B7C6C()
{
  result = qword_1002E0378;
  if (!qword_1002E0378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PICodableError, &type metadata for PICodableError, v0, v1);
    atomic_store(result, &qword_1002E0378);
  }

  return result;
}

unint64_t sub_1001B7CC4()
{
  result = qword_1002E0380;
  if (!qword_1002E0380)
  {
    result = swift_getWitnessTable("ђ\a", &type metadata for PICodableError, v0, v1);
    atomic_store(result, &qword_1002E0380);
  }

  return result;
}

uint64_t sub_1001B7D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1001B7D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PICodableError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B7EA0()
{
  result = qword_1002E0388;
  if (!qword_1002E0388)
  {
    result = swift_getWitnessTable(byte_1002441B0, &type metadata for PICodableError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0388);
  }

  return result;
}

unint64_t sub_1001B7EF8()
{
  result = qword_1002E0390;
  if (!qword_1002E0390)
  {
    result = swift_getWitnessTable(aI_5, &type metadata for PICodableError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0390);
  }

  return result;
}

unint64_t sub_1001B7F50()
{
  result = qword_1002E0398;
  if (!qword_1002E0398)
  {
    result = swift_getWitnessTable(a1_2, &type metadata for PICodableError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002E0398);
  }

  return result;
}

unint64_t sub_1001B7FA4()
{
  result = qword_1002E03A0[0];
  if (!qword_1002E03A0[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PICodableError, &type metadata for PICodableError, v0, v1);
    atomic_store(result, qword_1002E03A0);
  }

  return result;
}

uint64_t sub_1001B7FF8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1001DF1E0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 96 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1001DF080((v9 + 96 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001B80DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001B81AC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

Swift::Int sub_1001B8228(uint64_t a1)
{
  Hasher.init(_seed:)();
  AvroMessageError.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1001B8288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B80DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B82E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009CF64();
  *a1 = result;
  return result;
}

uint64_t sub_1001B831C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aI_6, a1);

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001B8370(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aI_6, a1);

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001B8410@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001B8448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("ɏ\a", a1);

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001B849C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("ɏ\a", a1);

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1001B84F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_100244650, a1);

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001B8544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_100244650, a1);

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t PICodableResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for PICodableResult.FailureCodingKeys(255, v4, v5, v6);
  v8 = sub_10002EE90();
  swift_getWitnessTable(v8, v7);
  sub_10002EEE4();
  v57 = v7;
  v56 = v9;
  v61 = type metadata accessor for KeyedEncodingContainer();
  sub_100003724();
  v59 = v10;
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100003018();
  v13 = sub_10002EEA8(v12);
  v15 = type metadata accessor for PICodableResult.SuccessCodingKeys(v13, v14, v5, v6);
  v16 = sub_10002EE60();
  swift_getWitnessTable(v16, v15);
  sub_10002EEE4();
  v52 = v15;
  v50 = v17;
  v55 = type metadata accessor for KeyedEncodingContainer();
  sub_100003724();
  v54 = v18;
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003018();
  v51 = v20;
  sub_1000038DC();
  v53 = v21;
  __chkstk_darwin(v22);
  sub_10000306C();
  v63 = v24 - v23;
  sub_1000038DC();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_10000306C();
  v30 = (v29 - v28);
  v62 = v4;
  v60 = v6;
  v31 = type metadata accessor for PICodableResult.CodingKeys(255, v4, v5, v6);
  v32 = sub_10002EE78();
  swift_getWitnessTable(v32, v31, v50);
  v66 = type metadata accessor for KeyedEncodingContainer();
  sub_100003724();
  v65 = v33;
  sub_100003774();
  __chkstk_darwin(v34);
  v36 = &v50 - v35;
  sub_10000C4FC(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v26 + 16))(v30, v64, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v30, sizeof(__dst));
    v67[0] = 1;
    v37 = v58;
    v38 = v66;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    memcpy(v67, __dst, sizeof(v67));
    sub_1001B6C10();
    v39 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000EDE8();
    v40(v37, v39);
    sub_10000EDE8();
    v41(v36, v38);
    return sub_1001B7C38(__dst);
  }

  else
  {
    v43 = v53;
    v44 = v62;
    (*(v53 + 32))(v63, v30, v62);
    __dst[0] = 0;
    v45 = v51;
    v46 = v66;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000EDE8();
    v48(v45, v47);
    (*(v43 + 8))(v63, v44);
    sub_10000EDE8();
    return v49(v36, v46);
  }
}

uint64_t PICodableResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a5;
  v9 = type metadata accessor for PICodableResult.FailureCodingKeys(255, a2, a3, a4);
  v10 = sub_10002EE90();
  swift_getWitnessTable(v10, v9);
  sub_10002EEE4();
  v80 = v9;
  v79 = v11;
  v74 = type metadata accessor for KeyedDecodingContainer();
  sub_100003724();
  v73 = v12;
  sub_100003774();
  __chkstk_darwin(v13);
  sub_100003018();
  v15 = sub_10002EEA8(v14);
  v17 = type metadata accessor for PICodableResult.SuccessCodingKeys(v15, v16, a3, a4);
  v18 = sub_10002EE60();
  swift_getWitnessTable(v18, v17);
  sub_10002EEE4();
  v77 = v17;
  v76 = v19;
  v72 = type metadata accessor for KeyedDecodingContainer();
  sub_100003724();
  v71 = v20;
  sub_100003774();
  __chkstk_darwin(v21);
  sub_100003018();
  v23 = sub_10002EEA8(v22);
  v25 = type metadata accessor for PICodableResult.CodingKeys(v23, v24, a3, a4);
  v26 = sub_10002EE78();
  WitnessTable = swift_getWitnessTable(v26, v25);
  sub_10002EEFC();
  v83 = type metadata accessor for KeyedDecodingContainer();
  sub_100003724();
  v86 = v27;
  sub_100003774();
  __chkstk_darwin(v28);
  v30 = &v68 - v29;
  v75 = a2;
  v85 = a3;
  v31 = type metadata accessor for PICodableResult(0, a2, a3, a4);
  sub_100003724();
  v70 = v32;
  __chkstk_darwin(v33);
  v35 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v68 - v37;
  __chkstk_darwin(v39);
  v41 = &v68 - v40;
  v42 = a1[3];
  v92 = a1;
  sub_10000C4FC(a1, v42);
  v84 = v30;
  v43 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v43)
  {
    v88 = v38;
    v69 = v35;
    WitnessTable = v41;
    v44 = v83;
    v45 = v84;
    *&__src[0] = KeyedDecodingContainer.allKeys.getter();
    sub_10002EEFC();
    v46 = type metadata accessor for Array();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v46);
    *&v90 = ArraySlice.init<A>(_:)();
    *(&v90 + 1) = v47;
    *&v91 = v48;
    *(&v91 + 1) = v49;
    sub_10002EEFC();
    v50 = type metadata accessor for ArraySlice();
    swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v50);
    Collection<>.popFirst()();
    v51 = __src[0];
    if (LOBYTE(__src[0]) == 2 || (v68 = v90, __src[0] = v90, __src[1] = v91, (Collection.isEmpty.getter() & 1) == 0))
    {
      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
      *v56 = v31;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.typeMismatch(_:), v54);
      swift_willThrow();
      (*(v86 + 8))(v45, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v51)
      {
        LOBYTE(__src[0]) = 1;
        v52 = v81;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v53 = v82;
        sub_1001B7BAC();
        v59 = v74;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v60 = (v86 + 8);
        (*(v73 + 8))(v52, v59);
        (*v60)(v45, v44);
        sub_10002EEBC();
        swift_unknownObjectRelease();
        v64 = v69;
        memcpy(v69, __src, 0x60uLL);
        swift_storeEnumTagMultiPayload();
        sub_10002EECC();
        v65 = WitnessTable;
        v60(WitnessTable, v64, v31);
      }

      else
      {
        LOBYTE(__src[0]) = 0;
        v57 = v78;
        v60 = v44;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v61 = v88;
        v62 = v72;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v63 = v86;
        sub_10000EDE8();
        v66(v57, v62);
        (*(v63 + 8))(v45, v60);
        sub_10002EEBC();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        sub_10002EECC();
        v67 = v61;
        v65 = WitnessTable;
        v60(WitnessTable, v67, v31);
        v53 = v82;
      }

      v60(v53, v65, v31);
    }
  }

  return sub_100004118(v92);
}

uint64_t static PICodableResult<>.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v46 = a2;
  v45 = a1;
  sub_1000038DC();
  v44 = v7;
  __chkstk_darwin(v8);
  sub_10000306C();
  v41 = v10 - v9;
  v14 = type metadata accessor for PICodableResult(0, v11, v12, v13);
  sub_100003724();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  sub_10002EEFC();
  swift_getTupleTypeMetadata2();
  sub_100003724();
  v43 = v23;
  sub_100003774();
  v25 = __chkstk_darwin(v24);
  v27 = &v40 - v26;
  v29 = *(v28 + 48);
  v30 = *(v16 + 16);
  v30(&v40 - v26, v45, v14, v25);
  (v30)(&v27[v29], v46, v14);
  sub_10002EEF0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v30)(v22, v27, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = v44;
      v34 = &v27[v29];
      v35 = v41;
      (*(v44 + 32))(v41, v34, a3);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v33 + 8);
      v36(v35, a3);
      v36(v22, a3);
      goto LABEL_9;
    }

    sub_10000EDE8();
    v32(v22, a3);
    goto LABEL_7;
  }

  (v30)(v19, v27, v14);
  memcpy(__dst, v19, sizeof(__dst));
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001B7C38(__dst);
LABEL_7:
    v31 = 0;
    goto LABEL_9;
  }

  memcpy(v48, &v27[v29], 0x60uLL);
  v31 = static PICodableError.__derived_struct_equals(_:_:)(__dst, v48);
  sub_1001B7C38(v48);
  sub_1001B7C38(__dst);
LABEL_9:
  v37 = sub_10002EEF0();
  v38(v37);
  return v31 & 1;
}

uint64_t PICodableResult<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &__dst[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v12 = &__dst[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v14, a2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v12, sizeof(__dst));
    Hasher._combine(_:)(1uLL);
    PICodableError.hash(into:)(a1);
    return sub_1001B7C38(__dst);
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    Hasher._combine(_:)(0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v8, v5);
  }
}

Swift::Int PICodableResult<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  PICodableResult<>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001B9934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  PICodableResult<>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t PICodableResult.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1000038DC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  sub_100003724();
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    String.append(_:)(*(v11 + 56));

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    return 0x286572756C696166;
  }

  else
  {
    (*(v3 + 32))(v7, v11, v1);
    v15._countAndFlagsBits = 0x2873736563637573;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);
    sub_10002EEF0();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v16._countAndFlagsBits = 41;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v14 = 0;
    v17 = sub_10002EEF0();
    v18(v17);
  }

  return v14;
}

uint64_t sub_1001B9BF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B9C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 96;
  if (*(v3 + 64) > 0x60uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1001B9D88(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x60)
  {
    v5 = 96;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}