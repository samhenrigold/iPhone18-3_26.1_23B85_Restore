id sub_1000C9EDC(uint64_t a1)
{
  v2 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012F41C(a1, v7);
  v8 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v10 = [v8 ams_iTunesAccountWithDSID:isa];

  if (!v10)
  {
    type metadata accessor for AccountDataNetworkingCore.Errors(0);
    sub_1000CA3B8(&qword_1002DB9F0, type metadata accessor for AccountDataNetworkingCore.Errors, byte_100239234);
    swift_allocError();
    (*(v4 + 16))(v11, v7, v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  (*(v4 + 8))(v7, v2);
  return v10;
}

uint64_t sub_1000CA0A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000CA15C;

  return sub_1000C8834();
}

uint64_t sub_1000CA15C()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_10000452C();
  *v2 = v1;

  sub_100002E08();

  return v3();
}

uint64_t sub_1000CA240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA35C(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataServerRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CA3B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000CA408@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v8 = type metadata accessor for URL();
  sub_100003724();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v23 - v15;
  v17 = [objc_opt_self() ams_dataVaultDirectory];
  if (v17)
  {
    v18 = v17;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_100002728(v4, v19, 1, v8);
  sub_1000CAE2C(v4, v7);
  if (sub_100004DFC(v7, 1, v8) == 1)
  {
    sub_100004E24(v7, &qword_1002DB318, &qword_10023F230);
    type metadata accessor for AccountDataFileSystemStore.Errors(0);
    sub_1000CAD7C();
    swift_allocError();
    *v20 = 0xD000000000000016;
    v20[1] = 0x8000000100272EB0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v22 = *(v10 + 8);
    v22(v7, v8);
    URL.appendingPathComponent(_:isDirectory:)();
    v22(v13, v8);
    return (*(v10 + 32))(a1, v16, v8);
  }
}

uint64_t sub_1000CA6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v32[1] = a2;
  v3 = type metadata accessor for AccountDataStoreFilesystemCore(0);
  sub_10000307C();
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = (v6 - v5);
  v8 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for AMPAccount(0);
  sub_10000307C();
  __chkstk_darwin(v12);
  sub_10000306C();
  v15 = v14 - v13;
  v16 = type metadata accessor for URL();
  sub_100003724();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10000306C();
  v22 = v21 - v20;
  result = sub_1000CA408(v21 - v20);
  if (!v2)
  {
    v32[0] = v18;
    AccountIdentity.altDSID.getter();
    sub_10009AB58();
    if (sub_100004DFC(v10, 1, v11) == 1)
    {
      sub_100004E24(v10, &qword_1002DA6C0, &unk_100232C60);
      type metadata accessor for AccountDataFileSystemStore.Errors(0);
      sub_1000CAD7C();
      swift_allocError();
      v25 = v24;
      type metadata accessor for AccountIdentity();
      sub_10000307C();
      (*(v26 + 16))(v25, v33);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v27 = v32[0];
    }

    else
    {
      sub_100007078(v10, v15);
      v7[3] = type metadata accessor for LiveFileStore();
      v7[4] = &protocol witness table for LiveFileStore;
      sub_100007914(v7);
      LiveFileStore.init()();
      v27 = v32[0];
      (*(v32[0] + 16))(v7 + *(v3 + 20), v22, v16);
      v28 = (v7 + *(v3 + 24));
      v28[3] = v11;
      v28[4] = &off_1002B4510;
      v29 = sub_100007914(v28);
      sub_10009BA48(v15, v29);
      sub_100131960();
      sub_100006614();
      sub_1000CADD4(v7, v30);
      sub_100006CB4();
      sub_1000CADD4(v15, v31);
    }

    return (*(v27 + 8))(v22, v16);
  }

  return result;
}

uint64_t sub_1000CA9F4(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for AccountDataStoreFilesystemCore(0);
  sub_10000307C();
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = (v7 - v6);
  v9 = type metadata accessor for URL();
  sub_100003724();
  v34 = v10;
  __chkstk_darwin(v11);
  sub_10000306C();
  v14 = v13 - v12;
  v15 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = type metadata accessor for AMPAccount(0);
  sub_10000307C();
  __chkstk_darwin(v19);
  sub_10000306C();
  v22 = v21 - v20;
  AccountIdentity.altDSID.getter();
  sub_10009AB58();
  if (sub_100004DFC(v17, 1, v18) == 1)
  {
    sub_100004E24(v17, &qword_1002DA6C0, &unk_100232C60);
    type metadata accessor for AccountDataFileSystemStore.Errors(0);
    sub_1000CAD7C();
    swift_allocError();
    v24 = v23;
    type metadata accessor for AccountIdentity();
    sub_10000307C();
    (*(v25 + 16))(v24, a2);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_100007078(v17, v22);
    sub_1000CA408(v14);
    if (!v2)
    {
      v8[3] = type metadata accessor for LiveFileStore();
      v8[4] = &protocol witness table for LiveFileStore;
      sub_100007914(v8);
      LiveFileStore.init()();
      v27 = v34;
      (*(v34 + 16))(v8 + *(v4 + 20), v14, v9);
      v28 = (v8 + *(v4 + 24));
      v28[3] = v18;
      v28[4] = &off_1002B4510;
      v29 = sub_100007914(v28);
      sub_10009BA48(v22, v29);
      sub_100131BD8(v33);
      sub_100006614();
      sub_1000CADD4(v8, v30);
      (*(v27 + 8))(v14, v9);
    }

    sub_100006CB4();
    return sub_1000CADD4(v22, v31);
  }
}

uint64_t type metadata accessor for AccountDataFileSystemStore.Errors(uint64_t a1)
{
  result = qword_1002DBA70;
  if (!qword_1002DBA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000CAD7C()
{
  result = qword_1002DB9F8;
  if (!qword_1002DB9F8)
  {
    v3 = type metadata accessor for AccountDataFileSystemStore.Errors(255);
    result = swift_getWitnessTable(byte_100232C9C, v3, v0, v1);
    atomic_store(result, &qword_1002DB9F8);
  }

  return result;
}

uint64_t sub_1000CADD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000CAE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CAEA4(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CAF20(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v64 = a2;
  v65 = a3;
  v67 = a1;
  v5 = *a4;
  v58 = a4[1];
  v59 = v5;
  v6 = *(a4 + 4);
  v56 = *(a4 + 5);
  v57 = v6;
  v55 = *(a4 + 12);
  v7 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v68 = v8;
  __chkstk_darwin(v9);
  v61 = v10;
  v62 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  sub_1000037D4();
  v54 = v12;
  __chkstk_darwin(v13);
  v60 = type metadata accessor for Log();
  sub_100003724();
  v66 = v14;
  __chkstk_darwin(v15);
  sub_1000037D4();
  v53 = v16;
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  static Log.accountsDataSync.getter();
  v20 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v21 = *(type metadata accessor for LogInterpolation() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v51[0] = *(v21 + 80);
  v52 = v20;
  *(swift_allocObject() + 16) = xmmword_1002329E0;
  v51[1] = v23;
  v24 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();
  v25 = v22;

  LogInterpolation.init(stringLiteral:)();
  v70 = v7;
  v26 = sub_100007914(v69);
  v27 = *(v68 + 16);
  v63 = v7;
  v27(v26, v67, v7);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009DF4(v69);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 8250;
  v28._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
  v29 = *a4;
  if (*a4 == 2)
  {
    v30 = 0;
    v31 = 0;
    v69[1] = 0;
    v69[2] = 0;
  }

  else
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = *(a4 + 8);
    *(v30 + 40) = *(a4 + 24);
    *(v30 + 52) = *(a4 + 36);
    v31 = &unk_1002BC0A8;
  }

  v69[0] = v30;
  v70 = v31;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100009DF4(v69);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v33 = v66 + 8;
  v34 = *(v66 + 8);
  v35 = v60;
  v34(v19, v60);
  if (*a4 != 2)
  {
    v66 = v33;
    v36 = v53;
    static Log.accountsDataSync.getter();
    v37 = swift_allocObject();
    v51[0] = v25;
    *(v37 + 16) = xmmword_1002329F0;
    v52 = v27;
    v38 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._object = 0x8000000100272EF0;
    v39._countAndFlagsBits = 0xD000000000000045;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
    v70 = &unk_1002BC0A8;
    v40 = swift_allocObject();
    v69[0] = v40;
    v41 = v58;
    *(v40 + 16) = v59;
    *(v40 + 32) = v41;
    v42 = v56;
    *(v40 + 48) = v57;
    *(v40 + 56) = v42;
    *(v40 + 64) = v55;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100009DF4(v69);
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
    v27 = v52;
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v34(v36, v35);
    v44 = String.utf8CString.getter();
    xpc_activity_unregister((v44 + 32));
  }

  v46 = v62;
  v45 = v63;
  v27(v62, v67, v63);
  v47 = v68;
  v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v49 = swift_allocObject();
  (*(v47 + 32))(v49 + v48, v46, v45);
  sub_1001AE964(v64, v65, a4, &unk_100232D08, v49);
}

uint64_t sub_1000CB544(uint64_t a1, uint64_t a2)
{
  v2 = String.utf8CString.getter();
  xpc_activity_unregister((v2 + 32));
}

uint64_t sub_1000CB5A4()
{
  sub_1000CB7C4(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CB604()
{
  v2 = *(type metadata accessor for AccountIdentity() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000CB6D0;

  return sub_1000CB584(v0 + v3);
}

uint64_t sub_1000CB6D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1000CB7C4(uint64_t a1)
{
  v1 = type metadata accessor for Log();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  type metadata accessor for LogInterpolation();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v3 + 8))(v6, v1);
  if (qword_1002DA598 != -1)
  {
    swift_once();
  }

  sub_1000CBA68();
}

void sub_1000CBA00()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  if (AMSAccountCachedServerDataUpdatedNotification)
  {
    v1 = v0;
    CFNotificationCenterPostNotification(v0, AMSAccountCachedServerDataUpdatedNotification, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CBA68()
{
  sub_100004168();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  __chkstk_darwin(v3);
  sub_10000306C();
  v4 = type metadata accessor for Log();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v11 = type metadata accessor for LogInterpolation();
  sub_100003B78(v11);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v23[3] = ObjectType;
  v23[0] = v1;
  v1;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v23);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v6 + 8))(v10, v4);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  sub_100008F38(0xD00000000000001CLL, 0x8000000100273380);
  AccountIdentity.dsid.getter();
  sub_100005DB0();
  v14 = sub_1000048DC();
  v15(v14, v20);
  if (v22)
  {
    sub_10000601C(&v21, v23);
    sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10022E400;
    sub_100007974(v23, v16 + 32);
    sub_1000D0D14();

    sub_100004118(v23);
  }

  else
  {
    sub_100004E7C(&v21, &qword_1002DB958, &qword_100232B60);
  }

  v17 = sub_10000D4B8(28);
  sub_1001AC540(v17, v18, v19);
  sub_1000027F8();
}

id sub_1000CBDD0(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for CachedServerDataService()) init];
  qword_100310610 = result;
  return result;
}

void sub_1000CBE00()
{
  sub_100004168();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Log();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  type metadata accessor for AccountDataCollection();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for AccountIdentity();
  v11 = sub_1000D33A8();
  type metadata accessor for AccountDataAccessActor(v11);
  sub_100006034();
  *(v10 + 112) = Dictionary.init(dictionaryLiteral:)();
  *&v1[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_accountDataActors] = v10;
  v12 = [objc_opt_self() defaultBag];
  sub_100003F9C();
  v13 = objc_allocWithZone(type metadata accessor for SendableBag());
  v14 = SendableBag.init(wrappedBag:)();
  *&v1[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_bag] = v14;
  v22 = type metadata accessor for MetricsOnInternalBuilds();
  v23 = &protocol witness table for MetricsOnInternalBuilds;
  sub_100007914(&v21);
  v15 = v14;
  MetricsOnInternalBuilds.init(bag:)();
  sub_10000601C(&v21, &v1[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "init");
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  sub_10000A1F0();
  *(sub_1000D3384() + 16) = xmmword_1002329F0;
  v22 = ObjectType;
  *&v21 = v16;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v21);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v5 + 8))(v9, v3);
  sub_1000027F8();
}

uint64_t sub_1000CC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  v26 = *(v23 + 464);
  sub_100004538();
  sub_1001252AC(v26, &v25[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  static Log.accountsDataSync.getter();
  sub_1000D34AC();
  sub_1000D33E4();
  *(v27 + 16) = xmmword_1002329D0;
  v22[3] = v24;
  v28 = v25;
  v29 = AMSLogKey();
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100007238();
  sub_10000EF90();

  sub_100004118(v22);
  sub_1000D32D4();
  sub_1000D3364();
  sub_100003E6C();
  sub_10000B7EC();
  sub_100003594();
  v31();
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v23 + 200, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v32 = sub_1000D33D4();
  v33(v32);
  swift_willThrow();
  v34 = sub_10000A520();
  sub_1001AC540(v34, v35, v36);

  sub_100003118();
  sub_1000D3574();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000CC2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();
  sub_100004118((v23 + 64));
  v26 = *(v23 + 512);
  sub_100004538();
  sub_1001252AC(v26, &v25[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  static Log.accountsDataSync.getter();
  sub_1000D34AC();
  sub_1000D33E4();
  *(v27 + 16) = xmmword_1002329D0;
  v22[3] = v24;
  v28 = v25;
  v29 = AMSLogKey();
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100007238();
  sub_10000EF90();

  sub_100004118(v22);
  sub_1000D32D4();
  sub_1000D3364();
  sub_100003E6C();
  sub_10000B7EC();
  sub_100003594();
  v31();
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v23 + 200, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v32 = sub_1000D33D4();
  v33(v32);
  swift_willThrow();
  v34 = sub_10000A520();
  sub_1001AC540(v34, v35, v36);

  sub_100003118();
  sub_1000D3574();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000CC45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D35AC();

  sub_100004118((v23 + 64));
  v26 = *(v23 + 520);
  sub_100004538();
  sub_1001252AC(v26, &v25[OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics]);
  static Log.accountsDataSync.getter();
  sub_1000D34AC();
  sub_1000D33E4();
  *(v27 + 16) = xmmword_1002329D0;
  v22[3] = v24;
  v28 = v25;
  v29 = AMSLogKey();
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  sub_100007238();
  sub_10000EF90();

  sub_100004118(v22);
  sub_1000D32D4();
  sub_1000D3364();
  sub_100003E6C();
  sub_10000B7EC();
  sub_100003594();
  v31();
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v23 + 200, &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v32 = sub_1000D33D4();
  v33(v32);
  swift_willThrow();
  v34 = sub_10000A520();
  sub_1001AC540(v34, v35, v36);

  sub_100003118();
  sub_1000D3574();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000CC614()
{
  sub_100004194();

  sub_100002E08();

  return v0();
}

uint64_t sub_1000CC670()
{
  sub_100004194();
  *(v1 + 377) = v2;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;
  *(v1 + 376) = v4;
  *(v1 + 208) = swift_getObjectType();
  v5 = type metadata accessor for Date();
  *(v1 + 216) = v5;
  sub_100003B78(v5);
  *(v1 + 224) = v6;
  *(v1 + 232) = sub_100003FA8();
  v7 = type metadata accessor for AccountIdentity();
  *(v1 + 240) = v7;
  sub_100003B78(v7);
  *(v1 + 248) = v8;
  *(v1 + 256) = sub_100003FA8();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v9);
  *(v1 + 264) = sub_100003FA8();
  v10 = type metadata accessor for Log();
  *(v1 + 272) = v10;
  sub_100003B78(v10);
  *(v1 + 280) = v11;
  *(v1 + 288) = sub_100003FA8();
  v12 = sub_10000EF80();

  return _swift_task_switch(v12);
}

uint64_t sub_1000CC7E0()
{
  sub_100008C70();
  sub_1000D34EC();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  sub_10000AA9C();
  v4 = sub_10000DB58();
  *(v0 + 64) = v2;
  *(v4 + 16) = xmmword_1002329D0;
  *(v0 + 88) = v1;
  v5 = v2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v30 = *(v0 + 288);
  v31 = *(v0 + 280);
  v32 = *(v0 + 272);
  v8 = *(v0 + 248);
  v29 = *(v0 + 240);
  v28 = *(v0 + 377);
  v9 = *(v0 + 192);
  v10 = *(v0 + 376);
  sub_1000D34E0();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 64));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20676E6974746553;
  v11._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 120) = &type metadata for AccountDataChange.CodingKeys;
  *(v0 + 96) = v10 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_1000D34E0();
  sub_100004E7C(v12, v13, v14);
  v15._countAndFlagsBits = 544175136;
  v15._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 152) = &type metadata for Bool;
  *(v0 + 128) = v28;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_1000D34E0();
  sub_100004E7C(v16, v17, v18);
  sub_100013C28();
  LogInterpolation.init(stringInterpolation:)();
  sub_10000C4FC(v9, v9[3]);
  *(v0 + 184) = v29;
  sub_100007914((v0 + 160));
  *(v0 + 296) = *(v8 + 16);
  *(v0 + 304) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_100003594();
  v19();
  static LogInterpolation.traceableSensitive(_:)();
  sub_1000D34E0();
  sub_100004E7C(v20, v21, v22);
  Log.default(_:)();

  (*(v31 + 8))(v30, v32);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  *(v0 + 312) = qword_1003106E8;
  sub_100002860();
  sub_100008F38(0xD000000000000016, v23);
  v24 = swift_task_alloc();
  *(v0 + 320) = v24;
  *v24 = v0;
  v24[1] = sub_1000CCAFC;
  sub_100008A70();

  return sub_10000D3F0(v25);
}

uint64_t sub_1000CCAFC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v4;
  *(v2 + 336) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1000CCBFC()
{
  sub_100004194();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 344) = v1;
  *v1 = v2;
  v3 = sub_10000BFD4(v1);

  return sub_10000ACF8(v3, v4);
}

uint64_t sub_1000CCC90()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 352) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CCD88()
{
  sub_10000DB4C();
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_10000C4FC(*(v0 + 192), *(*(v0 + 192) + 24));
  v1(v2, v4, v3);
  static Date.now.getter();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 360) = v5;
  *v5 = v6;
  v5[1] = sub_1000CCE6C;

  return sub_1000C1950();
}

uint64_t sub_1000CCE6C()
{
  sub_10000DB4C();
  v2 = *v1;
  sub_10000452C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = v2[32];
  v6 = v2[31];
  v7 = v2[30];
  (*(v2[28] + 8))(v2[29], v2[27]);
  (*(v6 + 8))(v5, v7);
  sub_10000381C();

  return _swift_task_switch(v8);
}

uint64_t sub_1000CD024()
{
  sub_1000D354C();
  sub_10000DB4C();

  sub_100002860();
  v0 = sub_10000D4B8(22);
  sub_1001AC540(v0, v1, v2);

  sub_100003844();
  sub_10000AD14();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000CD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000D35C8();
  sub_1000051E0();
  sub_1000D32B0();
  sub_1000D3494(v12);
  swift_willThrow();
  v13 = sub_10000D4B8(22);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000050D8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1000CD17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000D35C8();
  sub_1000051E0();

  sub_1000D32B0();
  sub_1000D3494(v12);
  swift_willThrow();
  v13 = sub_10000D4B8(22);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000050D8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1000CD234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000D35C8();
  sub_1000051E0();

  sub_1000D32B0();
  sub_1000D3494(v12);
  swift_willThrow();
  v13 = sub_10000D4B8(22);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000050D8();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1000CD2EC()
{
  sub_100004194();
  v1[16] = v2;
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v1[19] = v3;
  sub_100003B78(v3);
  v1[20] = v4;
  v1[21] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[22] = v5;
  sub_100003B78(v5);
  v1[23] = v6;
  v1[24] = sub_100003FA8();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CD3E8()
{
  sub_100003FC0();
  sub_1000051E0();
  v2 = v0[17];
  v1 = v0[18];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  sub_10000A1F0();
  v4 = sub_1000D3384();
  v0[8] = v2;
  *(v4 + 16) = xmmword_1002329D0;
  v0[11] = v1;
  v5 = v2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  v9 = v0[23];
  v8 = v0[24];
  v18 = v0[22];
  v10 = v0[16];
  sub_100008754();

  sub_100004118(v0 + 8);
  LogInterpolation.init(stringLiteral:)();
  sub_10000C4FC(v10, v10[3]);
  v0[15] = type metadata accessor for AccountIdentity();
  sub_100007914(v0 + 12);
  sub_10000B7EC();
  sub_100003594();
  v11();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 12), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v9 + 8))(v8, v18);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v0[25] = qword_1003106E8;
  v12 = sub_100004A58();
  sub_100008F38(v12, v13);
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  sub_100010F88(v14);
  sub_100003128();

  return sub_10000D3F0(v15);
}

uint64_t sub_1000CD650()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1000CD750()
{
  sub_100004194();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v3 = sub_10000BFD4(v1);

  return sub_10000ACF8(v3, v4);
}

uint64_t sub_1000CD7E4()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CD8DC()
{
  sub_100004194();
  static Date.now.getter();
  v0 = sub_10000AA8C();

  return _swift_task_switch(v0);
}

uint64_t sub_1000CD93C()
{
  sub_100007F3C();
  sub_1000D3538();
  sub_1000BCBCC();
  v0 = sub_1000D3524();
  v1(v0);
  sub_10000381C();

  return _swift_task_switch(v2);
}

uint64_t sub_1000CD9CC()
{
  sub_100007F3C();

  v0 = sub_100004A58();
  sub_1001AC540(v0, v1, 2);

  sub_100003844();

  return v2();
}

uint64_t sub_1000CDA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();

  sub_100002E08();
  sub_1000041E0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1000CDB00()
{
  sub_100004194();
  *(v1 + 288) = v2;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;
  *(v1 + 208) = swift_getObjectType();
  v4 = type metadata accessor for AccountIdentity.DSID();
  *(v1 + 216) = v4;
  sub_100003B78(v4);
  *(v1 + 224) = v5;
  *(v1 + 232) = sub_100003FA8();
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v6);
  *(v1 + 240) = sub_100003FA8();
  v7 = type metadata accessor for Log();
  *(v1 + 248) = v7;
  sub_100003B78(v7);
  *(v1 + 256) = v8;
  *(v1 + 264) = sub_100003FA8();
  v9 = sub_10000EF80();

  return _swift_task_switch(v9);
}

uint64_t sub_1000CDC20(uint64_t a1)
{
  v5 = *(v2 + 208);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v6 = type metadata accessor for LogInterpolation();
  sub_100003B78(v6);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3420(v7, xmmword_1002329D0);
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000D32FC();

  sub_100004118(v1);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  *(v2 + 152) = &type metadata for Bool;
  *(v2 + 128) = v4;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10000AE08();
  sub_100004E7C(v11, v12, v13);
  sub_100013C28();
  LogInterpolation.init(stringInterpolation:)();
  *(v2 + 184) = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  *(v2 + 160) = v5;
  v14 = v5;
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000AE08();
  sub_100004E7C(v15, v16, v17);
  Log.default(_:)();

  (*(v3 + 8))();
  v18 = [v14 dsid];
  v19 = [v18 unsignedLongLongValue];

  AccountIdentity.DSID.init(_:)();
  sub_1000D35E4();
  v20 = sub_1000048DC();
  v21(v20);
  if (!*(v2 + 80))
  {
    sub_100004E7C(v19, &qword_1002DB958, &qword_100232B60);

    sub_100003844();
    sub_1000D3404();

    __asm { BRAA            X1, X16 }
  }

  sub_100004F24();
  v22 = swift_task_alloc();
  *(v2 + 272) = v22;
  *v22 = v2;
  sub_1000D34F8(v22);
  sub_1000D3404();

  return sub_1000CC670();
}

uint64_t sub_1000CDF30()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CE028()
{
  sub_100004194();
  sub_100004118((v0 + 16));

  sub_100003844();

  return v1();
}

uint64_t sub_1000CE09C()
{
  sub_100007F3C();
  sub_100004118((v0 + 16));

  sub_100002E08();

  return v1();
}

uint64_t sub_1000CE140(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000D3280;

  return sub_1000CDB00();
}

uint64_t sub_1000CE20C()
{
  sub_100004194();
  *(v1 + 288) = v2;
  *(v1 + 192) = v3;
  *(v1 + 200) = v0;
  *(v1 + 208) = swift_getObjectType();
  v4 = type metadata accessor for AccountIdentity.DSID();
  *(v1 + 216) = v4;
  sub_100003B78(v4);
  *(v1 + 224) = v5;
  *(v1 + 232) = sub_100003FA8();
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v6);
  *(v1 + 240) = sub_100003FA8();
  v7 = type metadata accessor for Log();
  *(v1 + 248) = v7;
  sub_100003B78(v7);
  *(v1 + 256) = v8;
  *(v1 + 264) = sub_100003FA8();
  v9 = sub_10000EF80();

  return _swift_task_switch(v9);
}

uint64_t sub_1000CE32C(uint64_t a1)
{
  v5 = *(v2 + 208);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v6 = type metadata accessor for LogInterpolation();
  sub_100003B78(v6);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3420(v7, xmmword_1002329D0);
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000D32FC();

  sub_100004118(v1);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v10._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  *(v2 + 152) = &type metadata for Bool;
  *(v2 + 128) = v4;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10000AE08();
  sub_100004E7C(v11, v12, v13);
  sub_100013C28();
  LogInterpolation.init(stringInterpolation:)();
  *(v2 + 184) = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  *(v2 + 160) = v5;
  v14 = v5;
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000AE08();
  sub_100004E7C(v15, v16, v17);
  Log.default(_:)();

  (*(v3 + 8))();
  v18 = [v14 dsid];
  v19 = [v18 unsignedLongLongValue];

  AccountIdentity.DSID.init(_:)();
  sub_1000D35E4();
  v20 = sub_1000048DC();
  v21(v20);
  if (!*(v2 + 80))
  {
    sub_100004E7C(v19, &qword_1002DB958, &qword_100232B60);

    sub_100003844();
    sub_1000D3404();

    __asm { BRAA            X1, X16 }
  }

  sub_100004F24();
  v22 = swift_task_alloc();
  *(v2 + 272) = v22;
  *v22 = v2;
  sub_1000D34F8(v22);
  sub_1000D3404();

  return sub_1000CC670();
}

uint64_t sub_1000CE63C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CE754(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000D3280;

  return sub_1000CE20C();
}

uint64_t sub_1000CE820()
{
  sub_100004194();
  v1[26] = v2;
  v1[27] = v0;
  v1[28] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v1[29] = v3;
  sub_100003B78(v3);
  v1[30] = v4;
  v1[31] = sub_100003FA8();
  v5 = type metadata accessor for AccountIdentity.DSID();
  v1[32] = v5;
  sub_100003B78(v5);
  v1[33] = v6;
  v1[34] = sub_100003FA8();
  v7 = type metadata accessor for Log();
  v1[35] = v7;
  sub_100003B78(v7);
  v1[36] = v8;
  v1[37] = sub_100003FA8();
  v9 = sub_10000EF80();

  return _swift_task_switch(v9);
}

uint64_t sub_1000CE968(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[28];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v4 = type metadata accessor for LogInterpolation();
  sub_100003B78(v4);
  sub_10000AA9C();
  v5 = sub_10000DB58();
  v1[18] = v2;
  v22 = (v1 + 13);
  *(v5 + 16) = xmmword_1002329D0;
  v1[21] = v3;
  v6 = v2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = v1[36];
  v10 = v1[37];
  v21 = v1[35];
  v11 = v1[26];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v1 + 18);
  LogInterpolation.init(stringLiteral:)();
  v1[25] = &type metadata for UInt64;
  v1[22] = v11;
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v1 + 22), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v9 + 8))(v10, v21);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v12 = v1[33];
  v13 = v1[34];
  v14 = v1[32];
  v1[38] = qword_1003106E8;
  sub_100008F38(0xD00000000000001BLL, 0x8000000100273490);
  AccountIdentity.DSID.init(_:)();
  sub_100005DB0();
  (*(v12 + 8))(v13, v14);
  if (v1[16])
  {
    sub_10000601C(v22, (v1 + 8));
    v15 = swift_task_alloc();
    v1[39] = v15;
    *v15 = v1;
    v15[1] = sub_1000CECCC;

    return sub_10000D3F0((v1 + 8));
  }

  else
  {
    sub_100004E7C(v22, &qword_1002DB958, &qword_100232B60);
    v17 = sub_10000D4B8(27);
    sub_1001AC540(v17, v18, v19);

    sub_100003844();

    return v20();
  }
}

uint64_t sub_1000CECCC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 320) = v4;
  *(v2 + 328) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1000CEDCC()
{
  sub_100004194();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 336) = v1;
  *v1 = v2;
  v3 = sub_10000BFD4(v1);

  return sub_10000ACF8(v3, v4);
}

uint64_t sub_1000CEE60()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 344) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CEF58()
{
  sub_100004194();
  static Date.now.getter();
  v0 = sub_10000AA8C();

  return _swift_task_switch(v0);
}

uint64_t sub_1000CEFB8()
{
  sub_100007F3C();
  v1 = v0[43];
  sub_1000BCBCC();
  v0[44] = v1;
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_10000381C();

  return _swift_task_switch(v2);
}

uint64_t sub_1000CF060()
{
  sub_100007F3C();

  sub_100004118((v0 + 64));
  sub_100002860();
  v1 = sub_10000D4B8(27);
  sub_1001AC540(v1, v2, v3);

  sub_100003844();

  return v4();
}

uint64_t sub_1000CF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v12 = *(v11 + 328);
  sub_10000A7FC();
  sub_100004118((v11 + 64));
  sub_1001252AC(v12, (v10 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();
  v13 = sub_10000D4B8(27);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000041E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1000CF1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();

  v12 = *(v11 + 344);
  sub_10000A7FC();
  sub_100004118((v11 + 64));
  sub_1001252AC(v12, (v10 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();
  v13 = sub_10000D4B8(27);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000041E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1000CF27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();

  v12 = *(v11 + 352);
  sub_10000A7FC();
  sub_100004118((v11 + 64));
  sub_1001252AC(v12, (v10 + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();
  v13 = sub_10000D4B8(27);
  sub_1001AC540(v13, v14, v15);

  sub_100003118();
  sub_1000041E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1000CF3C0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000CF47C;

  return sub_1000CE820();
}

uint64_t sub_1000CF47C()
{
  sub_1000D354C();
  sub_10000DB4C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_1000D32C8();

    (*(v7 + 16))(v7, v1);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  sub_10000AD14();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000CF5E8()
{
  sub_100004194();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity.DSID();
  v1[23] = v3;
  sub_100003B78(v3);
  v1[24] = v4;
  v1[25] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[26] = v5;
  sub_100003B78(v5);
  v1[27] = v6;
  v1[28] = sub_100003FA8();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CF6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100008C70();
  sub_1000D34EC();
  v20 = v19[22];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v21 = type metadata accessor for LogInterpolation();
  sub_100003B78(v21);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3340(v22, xmmword_1002329D0);
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  sub_100008290();

  sub_100004118(v18);
  sub_100008B84();
  LogInterpolation.init(stringLiteral:)();
  v19[19] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v19[16] = v20;
  v27 = v20;
  sub_1000D3478();
  sub_100004E7C((v18 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v28 = sub_1000D33B4();
  v29(v28);
  v30 = [v26 dsid];
  v31 = [v30 unsignedLongLongValue];

  sub_1000D345C();
  sub_1000029C8();
  v32 = sub_1000048DC();
  v33(v32);
  if (v19[10])
  {
    sub_100004F24();
    v34 = swift_task_alloc();
    v19[29] = v34;
    *v34 = v19;
    sub_1000D350C(v34);
    sub_1000D32C8();
    sub_100008A70();

    return sub_1000CFB2C();
  }

  else
  {
    sub_100004E7C(v31, &qword_1002DB958, &qword_100232B60);
    sub_1000D3444();

    sub_100003844();
    sub_100008A70();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1000CF95C()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000CFA54()
{
  sub_100004194();
  sub_100004118((v0 + 16));
  sub_1000D3444();

  sub_100003844();

  return v1();
}

uint64_t sub_1000CFAB8()
{
  sub_100004194();
  sub_100004118((v0 + 16));

  sub_100002E08();

  return v1();
}

uint64_t sub_1000CFB2C()
{
  sub_100004194();
  v1[10] = v2;
  v1[11] = v0;
  v1[12] = swift_getObjectType();
  v3 = type metadata accessor for Log();
  v1[13] = v3;
  sub_100003B78(v3);
  v1[14] = v4;
  v1[15] = sub_100003FA8();
  v5 = sub_10000EF80();

  return _swift_task_switch(v5);
}

uint64_t sub_1000CFBDC()
{
  sub_100003FC0();
  sub_1000051E0();
  v2 = v0[11];
  v1 = v0[12];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  sub_10000A1F0();
  v4 = sub_1000D3384();
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

  v9 = v0[14];
  v8 = v0[15];
  v16 = v0[13];
  v10 = v0[10];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  sub_10000C4FC(v10, v10[3]);
  sub_1000D33A8();
  v0[9] = type metadata accessor for AccountIdentity();
  sub_100007914(v0 + 6);
  sub_10000B7EC();
  (*(v11 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C((v0 + 6), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v9 + 8))(v8, v16);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1000CFE30;
  sub_100003128();

  return sub_10000D3F0(v13);
}

uint64_t sub_1000CFE30()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_1000037E8();
  *v5 = v4;
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 136) = v3;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_1000D00B4;
  }

  else
  {
    v9 = sub_1000CFF38;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_1000CFF38()
{
  sub_100007F3C();
  v1 = *(v0 + 144);
  sub_1000C282C(*(v0 + 80));
  *(v0 + 152) = v1;
  sub_10000381C();

  return _swift_task_switch(v2);
}

uint64_t sub_1000CFFE4()
{
  sub_100004194();
  v1 = *(v0 + 160);
  v2 = sub_10000C4FC(*(v0 + 80), *(*(v0 + 80) + 24));
  sub_1000D2E14(v2, v1);
  v3 = sub_10000EF80();

  return _swift_task_switch(v3);
}

uint64_t sub_1000D0050()
{
  sub_100004194();

  sub_100003844();

  return v0();
}

uint64_t sub_1000D00B4()
{
  sub_100007F3C();
  sub_1001252AC(*(v0 + 144), (*(v0 + 88) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();

  sub_100002E08();

  return v1();
}

uint64_t sub_1000D013C()
{
  sub_100007F3C();

  sub_1001252AC(*(v0 + 152), (*(v0 + 88) + OBJC_IVAR____TtC12amsaccountsd23CachedServerDataService_metrics));
  swift_willThrow();

  sub_100002E08();

  return v1();
}

uint64_t sub_1000D01EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000D02B0;

  return sub_1000CF5E8();
}

uint64_t sub_1000D02B0()
{
  sub_10000DB4C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_100008D64();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_100008D64();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 32));
  sub_1000D33F4();

  return v13();
}

uint64_t sub_1000D0428()
{
  sub_100004194();
  *(v1 + 280) = v2;
  *(v1 + 160) = v3;
  *(v1 + 168) = v0;
  *(v1 + 176) = swift_getObjectType();
  v4 = type metadata accessor for AccountIdentity.DSID();
  *(v1 + 184) = v4;
  sub_100003B78(v4);
  *(v1 + 192) = v5;
  *(v1 + 200) = sub_100003FA8();
  v6 = type metadata accessor for Log();
  *(v1 + 208) = v6;
  sub_100003B78(v6);
  *(v1 + 216) = v7;
  *(v1 + 224) = sub_100003FA8();
  v8 = sub_10000EF80();

  return _swift_task_switch(v8);
}

uint64_t sub_1000D0528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100008C70();
  sub_1000D34EC();
  v20 = v19[22];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v21 = type metadata accessor for LogInterpolation();
  sub_100003B78(v21);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3340(v22, xmmword_1002329D0);
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  sub_100008290();

  sub_100004118(v18);
  sub_100008B84();
  LogInterpolation.init(stringLiteral:)();
  v19[19] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v19[16] = v20;
  v27 = v20;
  sub_1000D3478();
  sub_100004E7C((v18 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v28 = sub_1000D33B4();
  v29(v28);
  v30 = [v26 dsid];
  v31 = [v30 unsignedLongLongValue];

  sub_1000D345C();
  sub_1000029C8();
  v32 = sub_1000048DC();
  v33(v32);
  if (v19[10])
  {
    sub_100004F24();
    v34 = swift_task_alloc();
    v19[29] = v34;
    *v34 = v19;
    sub_1000D350C(v34);
    sub_1000D32C8();
    sub_100008A70();

    return sub_10000D3F0(v35);
  }

  else
  {
    sub_100004E7C(v31, &qword_1002DB958, &qword_100232B60);
    sub_1000D3444();

    sub_100003844();
    sub_100008A70();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1000D07A0()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_1000037E8();
  *v5 = v4;
  v6 = *v1;
  sub_100004504();
  *v7 = v6;
  *(v8 + 240) = v3;
  *(v8 + 248) = v0;

  if (v0)
  {
    v9 = sub_1000D0BCC;
  }

  else
  {
    v9 = sub_1000D08A8;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_1000D08A8()
{
  sub_100007F3C();
  v1 = *(v0 + 248);
  sub_1000C2330();
  *(v0 + 256) = v1;
  sub_10000381C();

  return _swift_task_switch(v2);
}

uint64_t sub_1000D0928()
{
  sub_100007F3C();
  if (*(v0 + 280) == 1)
  {
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 264) = v1;
    *v1 = v2;
    sub_1000D350C(v1);

    return sub_1000CD2EC();
  }

  else
  {
    sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10022E400;
    sub_100007974(v0 + 16, v4 + 32);
    sub_1000D0D14();

    sub_100004118((v0 + 16));
    sub_1000D3444();

    sub_100003844();

    return v5();
  }
}

uint64_t sub_1000D0A68()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 272) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000D0B60()
{
  sub_100004194();

  sub_100004118((v0 + 16));
  sub_1000D3444();

  sub_100003844();

  return v1();
}

uint64_t sub_1000D0BCC()
{
  sub_100007F3C();
  sub_1000041AC();

  sub_100002E08();

  return v0();
}

uint64_t sub_1000D0C34()
{
  sub_100007F3C();

  sub_1000041AC();

  sub_100002E08();

  return v0();
}

uint64_t sub_1000D0CA4()
{
  sub_100007F3C();

  sub_1000041AC();

  sub_100002E08();

  return v0();
}

void sub_1000D0D14()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v6 = sub_1000030B8(v5);
  __chkstk_darwin(v6);
  v23 = &v22 - v7;
  v22 = type metadata accessor for Log();
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000306C();
  v13 = v12 - v11;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_1000D33A8();
  v14 = type metadata accessor for LogInterpolation();
  sub_100003B78(v14);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v25 = ObjectType;
  v24[0] = v1;
  v15 = v1;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008A8C();
  }

  else
  {
    sub_1000D339C();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v24);
  LogInterpolation.init(stringLiteral:)();
  v25 = sub_100099DF4(&qword_1002DBBD0, &qword_100232E58);
  v24[0] = v3;

  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C(v24, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v9 + 8))(v13, v22);
  v18 = type metadata accessor for TaskPriority();
  v19 = v23;
  sub_100002728(v23, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v15;
  v20[5] = v3;
  v21 = v15;

  sub_1000D12F8(0, 0, v19, &unk_100232E68, v20);

  sub_1000027F8();
}

uint64_t sub_1000D1020(void *a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_10000F3C0();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a3;
  v11 = a1;
  v12 = sub_1000050CC();

  return sub_100004754(v12, v13);
}

uint64_t sub_1000D10A0(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1000D3280;

  return sub_1000D0428();
}

uint64_t sub_1000D116C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000D1208;

  return sub_100008590();
}

uint64_t sub_1000D1208()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *v1;
  sub_100004504();
  *v3 = v2;

  if (!v0)
  {
  }

  sub_100002E08();

  return v4();
}

uint64_t sub_1000D12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_1000D31EC(a3, v21 - v9, &qword_1002DB950, &qword_100232E50);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100004DFC(v10, 1, v11);

  if (v12 == 1)
  {
    sub_100004E7C(v10, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004E7C(a3, &qword_1002DB950, &qword_100232E50);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1000D1588()
{
  sub_100004168();
  ObjectType = swift_getObjectType();
  v47 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v43 = v2;
  __chkstk_darwin(v3);
  sub_10000306C();
  v46 = v5 - v4;
  v45 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v42 = v6;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v44 = type metadata accessor for Log();
  sub_100003724();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000306C();
  v16 = v15 - v14;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_1000D33A8();
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v57[0] = ObjectType;
  v55 = v0;
  v0;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(&v55);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v12 + 8))(v16, v44);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC(&qword_1002DA5B8);
  }

  v20 = qword_1003106E8;
  sub_100008F38(0xD000000000000011, 0x8000000100273280);
  sub_10009AD10();
  v22 = *(v21 + 16);
  if (v22)
  {
    v55 = 2;
    v23 = v21 + 32;
    v56 = 0u;
    memset(v57, 0, 28);
    do
    {
      sub_100007974(v23, v53);
      sub_10000C4FC(v53, v54);
      v24 = sub_100003F9C();
      v25 = type metadata accessor for AMPAccount(v24);
      v51 = v25;
      v52 = &off_1002B4510;
      sub_100007914(v50);
      sub_100005C78();
      sub_10000F1A0(v20, v26);
      LODWORD(v25) = [*(sub_10000C4FC(v50 v51) + *(v25 + 20))];
      AccountIdentity.dsid.getter();
      AccountIdentity.DSID.value.getter();
      (*(v42 + 8))(v10, v45);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      if (v25)
      {
        v48 = v27;
        v49 = v28;

        v30._countAndFlagsBits = 0x786F62646E61732ELL;
        v30._object = 0xE800000000000000;
        String.append(_:)(v30);

        v27 = v48;
        v29 = v49;
      }

      sub_10000F598(v27, v29);
      v32 = v31;
      v34 = v33;

      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v20 = sub_1000102EC(0xD000000000000027, 0x80000001002732A0);
      v37 = v36;
      sub_100004118(v50);
      v38 = sub_10000C4FC(v53, v54);
      (*(v43 + 16))(v46, v38, v47);
      sub_1000CAF20(v46, v20, v37, &v55);

      (*(v43 + 8))(v46, v47);
      sub_100004118(v53);
      v23 += 40;
      --v22;
    }

    while (v22);
  }

  sub_1000D0D14();

  v39 = sub_10000D4B8(17);
  sub_1001AC540(v39, v40, v41);
  sub_1000027F8();
}

uint64_t sub_1000D1B7C()
{
  sub_100004194();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = swift_getObjectType();
  v3 = type metadata accessor for AccountIdentity.DSID();
  v1[23] = v3;
  sub_100003B78(v3);
  v1[24] = v4;
  v1[25] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[26] = v5;
  sub_100003B78(v5);
  v1[27] = v6;
  v1[28] = sub_100003FA8();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7);
}

uint64_t sub_1000D1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100008C70();
  sub_1000D34EC();
  v20 = v19[22];
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100003F9C();
  v21 = type metadata accessor for LogInterpolation();
  sub_100003B78(v21);
  sub_10000AA9C();
  sub_10000DB58();
  sub_1000D32A0();
  sub_1000D3340(v22, xmmword_1002329D0);
  v23 = AMSLogKey();
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  sub_100008290();

  sub_100004118(v18);
  sub_100008B84();
  LogInterpolation.init(stringLiteral:)();
  v19[19] = sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
  v19[16] = v20;
  v27 = v20;
  sub_1000D3478();
  sub_100004E7C((v18 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v28 = sub_1000D33B4();
  v29(v28);
  v30 = [v26 dsid];
  v31 = [v30 unsignedLongLongValue];

  sub_1000D345C();
  sub_1000029C8();
  v32 = sub_1000048DC();
  v33(v32);
  if (v19[10])
  {
    sub_100004F24();
    v34 = swift_task_alloc();
    v19[29] = v34;
    *v34 = v19;
    sub_1000D350C(v34);
    sub_1000D32C8();
    sub_100008A70();

    return sub_1000D1FE8();
  }

  else
  {
    sub_100004E7C(v31, &qword_1002DB958, &qword_100232B60);
    sub_1000D3444();

    sub_100003844();
    sub_100008A70();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1000D1EF0()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000D1FE8()
{
  sub_100004194();
  v1[16] = v2;
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v1[19] = v3;
  sub_100003B78(v3);
  v1[20] = v4;
  v1[21] = sub_100003FA8();
  v5 = type metadata accessor for Log();
  v1[22] = v5;
  sub_100003B78(v5);
  v1[23] = v6;
  v1[24] = sub_100003FA8();
  v7 = sub_10000EF80();

  return _swift_task_switch(v7);
}

uint64_t sub_1000D20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  if (static DeviceDetails.deviceIsRunningInternalBuild()())
  {
    v14 = v12[17];
    v13 = v12[18];
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v15 = type metadata accessor for LogInterpolation();
    sub_100003B78(v15);
    sub_10000A1F0();
    *(sub_1000D3384() + 16) = xmmword_1002329D0;
    v12[11] = v13;
    v12[8] = v14;
    v16 = v14;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v29 = v12[23];
    v28 = v12[24];
    v30 = v12[22];
    v31 = v12[16];
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v12 + 8);
    LogInterpolation.init(stringLiteral:)();
    sub_10000C4FC(v31, v31[3]);
    sub_1000D33A8();
    v12[15] = type metadata accessor for AccountIdentity();
    sub_100007914(v12 + 12);
    sub_10000B7EC();
    (*(v32 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E7C((v12 + 12), &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v29 + 8))(v28, v30);
    if (qword_1002DA5B8 != -1)
    {
      sub_100006CCC(&qword_1002DA5B8);
    }

    v12[25] = qword_1003106E8;
    v33 = sub_100004A58();
    sub_100008F38(v33, v34);
    v35 = swift_task_alloc();
    v12[26] = v35;
    *v35 = v12;
    sub_100010F88(v35);
    sub_100003128();

    return sub_10000D3F0(v36);
  }

  else
  {

    sub_100003844();
    sub_100003128();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1000D23A4()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1000D24A4()
{
  sub_100004194();
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v3 = sub_10000BFD4(v1);

  return sub_10000ACF8(v3, v4);
}

uint64_t sub_1000D2538()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000D2630()
{
  sub_100004194();
  static Date.now.getter();
  v0 = sub_10000AA8C();

  return _swift_task_switch(v0);
}

uint64_t sub_1000D2690()
{
  sub_100007F3C();
  sub_1000D3538();
  sub_1000BD95C();
  v0 = sub_1000D3524();
  v1(v0);
  sub_10000381C();

  return _swift_task_switch(v2);
}

uint64_t sub_1000D2724()
{
  sub_100004194();

  v0 = sub_100004A58();
  sub_1001AC540(v0, v1, 2);

  sub_100003844();

  return v2();
}

uint64_t sub_1000D27A0()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000109C4();
  sub_1000D3494(v0);
  swift_willThrow();
  v1 = sub_100004A58();
  sub_1001AC540(v1, v2, 2);

  sub_100003118();
  sub_10000AD14();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D2830()
{
  sub_1000D354C();
  sub_10000DB4C();

  sub_1000109C4();
  sub_1000D3494(v0);
  swift_willThrow();
  v1 = sub_100004A58();
  sub_1001AC540(v1, v2, 2);

  sub_100003118();
  sub_10000AD14();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D28C8()
{
  sub_1000D354C();
  sub_10000DB4C();

  sub_1000109C4();
  sub_1000D3494(v0);
  swift_willThrow();
  v1 = sub_100004A58();
  sub_1001AC540(v1, v2, 2);

  sub_100003118();
  sub_10000AD14();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D2980(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000D3280;

  return sub_1000D1B7C();
}

id DaemonAutoBugCaptureServiceTrampoline.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D2AF0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D2B4C()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1000D2BDC(uint64_t a1)
{
  sub_1000D354C();
  sub_10000DB4C();
  swift_task_alloc();
  sub_10000DEA0();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1000C6A64;
  sub_10000AD14();

  return sub_1000D116C();
}

uint64_t sub_1000D2C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D2CF0()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000D33C4();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000BEC8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D2D84()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1000D2E14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AccountIdentity();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AMPAccount(0);
  v13 = &off_1002B4510;
  v7 = sub_100007914(v11);
  sub_10000F1A0(a1, v7);
  v8 = sub_10000C4FC(v11, v12);
  (*(v4 + 16))(v6, v8, v3);
  swift_beginAccess();
  sub_1001AE250();
  (*(v4 + 8))(v6, v3);
  swift_endAccess();

  return sub_100004118(v11);
}

uint64_t sub_1000D2F84()
{
  sub_100007F3C();
  sub_10000D41C();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  v3 = sub_10000B9E4(v1);

  return v4(v3);
}

uint64_t sub_1000D3014()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000D33C4();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000BEC8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D30A8()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10000F3C0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000D30E8()
{
  sub_1000D354C();
  sub_10000DB4C();
  sub_1000D33C4();
  v0 = swift_task_alloc();
  v1 = sub_100005C94(v0);
  *v1 = v2;
  sub_100003BD8(v1);
  sub_10000BEC8();
  sub_10000AD14();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D317C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB970, &qword_100232F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D31EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000048AC(a1, a2, a3, a4);
  sub_100003BF0();
  v5 = sub_1000050CC();
  v6(v5);
  return v4;
}

uint64_t sub_1000D3234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000048AC(a1, a2, a3, a4);
  sub_100003BF0();
  v5 = sub_1000050CC();
  v6(v5);
  return v4;
}

uint64_t sub_1000D32D4()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_1000D32FC()
{

  return static LogInterpolation.prefix(_:_:)();
}

id sub_1000D3340(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v4;

  return v3;
}

uint64_t sub_1000D3364()
{

  return swift_getErrorValue();
}

uint64_t sub_1000D3384()
{

  return swift_allocObject();
}

id sub_1000D3420(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v4;

  return v3;
}

uint64_t sub_1000D3444()
{
}

uint64_t sub_1000D345C()
{

  return AccountIdentity.DSID.init(_:)();
}

uint64_t sub_1000D3478()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_1000D3494@<X0>(uint64_t a1@<X8>)
{

  return sub_1001252AC(v2, (a1 + v1));
}

uint64_t sub_1000D34AC()
{

  return swift_allocObject();
}

void sub_1000D35E4()
{

  sub_100005DB0();
}

uint64_t sub_1000D3604()
{

  return swift_task_alloc();
}

__n128 sub_1000D361C@<Q0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000D64D8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    result = v7;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 40) = v9;
  }

  return result;
}

uint64_t sub_1000D36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v235 = a5;
  v231 = a4;
  v225 = a2;
  v209 = a1;
  v210 = a6;
  v243 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  sub_100003724();
  v242 = v7;
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = sub_100008280(v10 - v9);
  v12 = type metadata accessor for TSDataSyncDatasetSchedule(v11);
  sub_10000307C();
  __chkstk_darwin(v13);
  sub_10000306C();
  sub_100008280(v15 - v14);
  v16 = type metadata accessor for Date();
  sub_100003724();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10000306C();
  sub_10000A1C0(v21 - v20);
  v22 = sub_100099DF4(&qword_1002DBC18, &qword_100232F68);
  v23 = sub_1000030B8(v22);
  __chkstk_darwin(v23);
  sub_10000308C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_10000690C();
  __chkstk_darwin(v28);
  sub_10000D478();
  sub_10000A1C0(v29);
  v30 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  v31 = sub_1000030B8(v30);
  __chkstk_darwin(v31);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_10000D478();
  v34 = sub_100008280(v33);
  v35 = type metadata accessor for TSDataSyncTriggerEvent(v34);
  sub_10000307C();
  __chkstk_darwin(v36);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_10000D478();
  sub_10000A1C0(v39);
  v40 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v41 = sub_1000030B8(v40);
  __chkstk_darwin(v41);
  v43 = sub_100008280(&v199 - v42);
  v233 = type metadata accessor for TSDataSyncDatasetState(v43);
  sub_10000307C();
  __chkstk_darwin(v44);
  sub_10000306C();
  sub_100008280(v46 - v45);
  v208 = type metadata accessor for URL();
  sub_100003724();
  v207 = v47;
  __chkstk_darwin(v48);
  sub_10000306C();
  v51 = sub_100008280(v50 - v49);
  v52 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v51);
  v53 = sub_1000030B8(v52);
  __chkstk_darwin(v53);
  sub_10000306C();
  sub_10000A1C0(v55 - v54);
  sub_1000D6484();
  v56 = sub_100013C58();
  v58 = sub_1000DBA68(v56, v57);
  v59 = sub_100003C04(v58, &v255);
  v61 = sub_1000DBA68(v59, v60);
  sub_100003C04(v61, &v256);
  v222 = v35;
  v214 = Dictionary.init(dictionaryLiteral:)();
  sub_100013C58();
  v62 = Dictionary.init(dictionaryLiteral:)();
  sub_100013C58();
  v63 = Dictionary.init(dictionaryLiteral:)();
  v64 = sub_100003C04(v63, &v250 + 8);
  v66 = sub_1000DBA68(v64, v65);
  v67 = sub_100003C04(v66, &v250);
  v213 = sub_1000DBA68(v67, v68);
  sub_100013C58();
  v223 = Dictionary.init(dictionaryLiteral:)();
  sub_100013C58();
  v69 = Dictionary.init(dictionaryLiteral:)();
  sub_100003C04(v69, &v244);
  v70 = v26;
  v204 = v16;
  v71 = v235;
  v211 = Dictionary.init(dictionaryLiteral:)();
  v227 = a3 + 56;
  sub_1000DB9A4();
  v244 = v73 & v72;
  v226 = (v74 + 63) >> 6;
  v199 = (v18 + 16);
  v224 = a3;

  v75 = 0;
  v221 = v12;
  v230 = v26;
LABEL_2:
  v76 = v244;
  if (v244)
  {
    v77 = v12;
    v78 = v75;
    v79 = v229;
    v80 = v228;
LABEL_9:
    v244 = v76;
    v81 = *(v224 + 48);
    v234 = v78;
    v82 = (v81 + ((v78 << 10) | (16 * __clz(__rbit64(v76)))));
    v83 = *v82;
    v84 = v82[1];

    swift_isUniquelyReferenced_nonNull_native();
    sub_10000CFBC();
    sub_1000029E8();
    v85 = v252;
    sub_10000B358(&v256);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000CFBC();
    sub_1000029E8();
    v86 = v252;
    type metadata accessor for TSDataSyncDatasetGroupState(0);
    v87 = sub_1000DBA50();
    sub_1001ABF58(v87, v88, v89, v90);
    v91 = sub_100013DDC();
    v93 = sub_100004DFC(v91, v92, v233);
    v245 = v84;
    v247 = v83;
    if (v93 == 1)
    {
      v236 = v85;
      sub_100004E24(v80, &qword_1002DBC28, &qword_100232F70);
      v94 = v77;
      goto LABEL_25;
    }

    sub_1000D6584(v80, v232);

    swift_isUniquelyReferenced_nonNull_native();
    *&v252 = v85;
    v95 = v86;
    v86 = &v252;
    sub_1000DB968();
    v236 = v252;

    swift_isUniquelyReferenced_nonNull_native();
    *&v252 = v95;
    sub_1000DB968();
    v239 = v252;
    v96 = *(v231 + *(type metadata accessor for TSDataSyncDatasetGroupSchedule(0) + 20));
    v97 = v217;
    v98 = sub_1000DBA50();
    sub_1001ABF74(v98, v99, v96, v100);
    v101 = sub_100013DDC();
    v94 = v77;
    if (sub_100004DFC(v101, v102, v77) == 1)
    {
      sub_100004E24(v97, &qword_1002DBC18, &qword_100232F68);
      v103 = sub_10000B358(&v247);
      sub_100002728(v103, 1, 1, v222);
    }

    else
    {
      v86 = v215;
      sub_1000D6980(v97 + *(v77 + 32), v215, &qword_1002DBC20, &unk_100234B00);
      sub_100003854();
      sub_1000D65DC(v97, v104);
      if (sub_100004DFC(v86, 1, v222) != 1)
      {
        sub_10000AF7C();
        v105 = v200;
        sub_1000D6584(v86, v200);
        sub_1000D652C(v105, v201);

        sub_10000B358(&v246);
        swift_isUniquelyReferenced_nonNull_native();
        sub_10000BFE8();
        sub_10014FD08();

        sub_100004558(v252);
        sub_1000D65DC(v105, v106);
LABEL_16:
        v71 = v233;
        v107 = v232;
        v108 = *(v232 + *(v233 + 44));
        if (v108)
        {
          sub_10000B358(&v250 + 8);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10000BFE8();
          v109 = v245;
          sub_10014FC3C();
          v220 = v252;
          *&v252 = 0;
          *(&v252 + 1) = 0xE000000000000000;
          v249 = *(v107 + *(v71 + 60));
          DefaultStringInterpolation.appendInterpolation<A>(optional:)();
          v110._countAndFlagsBits = 45;
          v110._object = 0xE100000000000000;
          String.append(_:)(v110);
          v111 = v107 + *(v71 + 56);
          v84 = v109;
          v112 = *v111;
          LOBYTE(v111) = *(v111 + 8);
          *&v249 = v112;
          BYTE8(v249) = v111;
          DefaultStringInterpolation.appendInterpolation<A>(optional:)();
          v71 = *(&v252 + 1);
          v108 = v252;
          sub_10000B358(&v250);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10000BFE8();
          sub_10014FE48();
          v219 = v252;
          sub_1000DB9C0();
        }

        else
        {
          sub_1000DB9C0();
          v84 = v245;
        }

        v113 = sub_1000DBA50();
        sub_1001ABF74(v113, v114, v96, v115);
        if (sub_100004DFC(v79, 1, v77) == 1)
        {
          sub_10000697C();
          sub_100004E24(v79, &qword_1002DBC18, &qword_100232F68);
          v116 = v216;
          sub_100002728(v216, 1, 1, v108);
          v70 = v230;
        }

        else
        {
          v116 = v216;
          sub_1000D6980(v79 + *(v77 + 32), v216, &qword_1002DBC20, &unk_100234B00);
          sub_100003854();
          sub_1000D65DC(v79, v117);
          v118 = sub_100004DFC(v116, 1, v108);
          v70 = v230;
          if (v118 != 1)
          {
            sub_10000AF7C();
            v119 = v116;
            v120 = v202;
            sub_1000D6584(v119, v202);

            sub_10000B358(&v245);
            swift_isUniquelyReferenced_nonNull_native();
            sub_10000BFE8();
            v71 = v235;
            v121 = v247;
            sub_10014FE48();
            v213 = v252;
            v122 = *(v120 + *(v108 + 20));
            sub_10000B358(&v244);
            swift_isUniquelyReferenced_nonNull_native();
            sub_10000CFBC();
            sub_10014FB48(v122, v121, v84, v123);
            v212 = v252;
            (*v199)(v203, v120, v204);

            sub_10000B358(&v243);
            swift_isUniquelyReferenced_nonNull_native();
            v124 = sub_10000BFE8();
            sub_10014FA20(v124, v121, v84, v125, v126, v127, v128, v129, v199, v200);
            v86 = v239;

            sub_100004558(v252);
            sub_1000D65DC(v120, v130);
            sub_10000697C();
LABEL_25:
            type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
            v131 = v247;
            v132 = sub_1000DBA50();
            sub_1001ABF74(v132, v133, v134, v135);
            v136 = sub_100004DFC(v70, 1, v94);
            v239 = v86;
            if (v136 == 1)
            {
              sub_100004E24(v70, &qword_1002DBC18, &qword_100232F68);
            }

            else
            {
              v137 = v218;
              sub_1000D6584(v70, v218);
              v138 = *(v137 + *(v94 + 28));
              sub_10000B358(&v251[16]);
              swift_isUniquelyReferenced_nonNull_native();
              sub_10000CFBC();
              sub_10014FA0C(v138, v131, v84, v139);
              sub_100003854();
              sub_1000D65DC(v137, v140);
              v223 = v252;
            }

            v244 &= v244 - 1;
            v141 = *v71;
            v142 = v141 + 56;
            sub_1000DB9A4();
            v145 = v144 & v143;
            v147 = (v146 + 63) >> 6;

            v148 = 0;
            v149 = v247;
            while (1)
            {
              v150 = v148;
              if (!v145)
              {
                break;
              }

LABEL_33:
              v151 = __clz(__rbit64(v145));
              v145 &= v145 - 1;
              v152 = v241;
              sub_1000D652C(*(v141 + 48) + *(v242 + 72) * (v151 | (v148 << 6)), v241);
              v153 = *(v152 + *(v243 + 24));

              sub_1000D65DC(v152, type metadata accessor for TSDataSyncDatasetGroupConfig);
              v154 = *(v153 + 16);
              if (v154)
              {
                v155 = 0;
                v240 = v154 - 1;
                v156 = 32;
                v237 = v141;
                v238 = v153;
                while (v155 < v154)
                {
                  v246 = v156;
                  v158 = *(v153 + v156 + 16);
                  v157 = *(v153 + v156 + 32);
                  v159 = *(v153 + v156);
                  *&v254[9] = *(v153 + v156 + 41);
                  v253 = v158;
                  *v254 = v157;
                  v252 = v159;
                  v160 = v159 == v149 && *(&v159 + 1) == v84;
                  if (v160 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    v161 = v142;
                    v162 = v147;
                    v163 = v155;
                    sub_1000BA2CC(&v252, &v249);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v248 = v62;
                    v165 = sub_10014EB30(v149, v84);
                    v167 = v62[2];
                    v168 = (v166 & 1) == 0;
                    v169 = v167 + v168;
                    if (__OFADD__(v167, v168))
                    {
                      goto LABEL_62;
                    }

                    v170 = v165;
                    v171 = v166;
                    sub_100099DF4(&qword_1002DBC38, &qword_100232F78);
                    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v169))
                    {
                      v172 = sub_10014EB30(v247, v245);
                      if ((v171 & 1) != (v173 & 1))
                      {
                        goto LABEL_64;
                      }

                      v170 = v172;
                      v155 = v163;
                      v149 = v247;
                    }

                    else
                    {
                      v149 = v247;
                      v155 = v163;
                    }

                    v147 = v162;
                    v142 = v161;
                    if (v171)
                    {
                      v62 = v248;
                      v174 = (v248[7] + (v170 << 6));
                      v176 = v174[1];
                      v175 = v174[2];
                      v177 = *v174;
                      *&v251[9] = *(v174 + 41);
                      v250 = v176;
                      *v251 = v175;
                      v249 = v177;
                      v178 = v252;
                      v179 = v253;
                      v180 = *v254;
                      *(v174 + 41) = *&v254[9];
                      v174[1] = v179;
                      v174[2] = v180;
                      *v174 = v178;
                      sub_1000BA304(&v249);
                      v84 = v245;
                      v153 = v238;
                    }

                    else
                    {
                      v62 = v248;
                      v248[(v170 >> 6) + 8] |= 1 << v170;
                      v181 = (v62[6] + 16 * v170);
                      v84 = v245;
                      *v181 = v149;
                      v181[1] = v84;
                      v182 = (v62[7] + (v170 << 6));
                      v183 = *&v254[9];
                      v185 = v253;
                      v184 = *v254;
                      *v182 = v252;
                      v182[1] = v185;
                      v182[2] = v184;
                      *(v182 + 41) = v183;
                      v186 = v62[2];
                      v187 = __OFADD__(v186, 1);
                      v188 = v186 + 1;
                      v153 = v238;
                      if (v187)
                      {
                        goto LABEL_63;
                      }

                      v62[2] = v188;
                    }

                    v141 = v237;
                  }

                  if (v240 == v155)
                  {
                    goto LABEL_34;
                  }

                  v154 = *(v153 + 16);
                  v156 = v246 + 64;
                  ++v155;
                }

                goto LABEL_61;
              }

LABEL_34:
            }

            while (1)
            {
              v148 = v150 + 1;
              if (__OFADD__(v150, 1))
              {
                break;
              }

              if (v148 >= v147)
              {

                v75 = v234;
                v71 = v235;
                v12 = v221;
                v70 = v230;
                goto LABEL_2;
              }

              v145 = *(v142 + 8 * v148);
              ++v150;
              if (v145)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
            goto LABEL_60;
          }

          sub_10000697C();
        }

        sub_100004E24(v116, &qword_1002DBC20, &unk_100234B00);
        goto LABEL_25;
      }
    }

    sub_100004E24(v86, &qword_1002DBC20, &unk_100234B00);
    goto LABEL_16;
  }

  v79 = v229;
  v80 = v228;
  while (1)
  {
    v78 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v78 >= v226)
    {

      v189 = v205;
      sub_1000D652C(v225, v205);
      v190 = v207;
      v191 = v206;
      v192 = v208;
      (*(v207 + 16))(v206, v209, v208);
      if (*(v71 + 16))
      {
        v193 = *(v71 + 8);
        v194 = *(v71 + 16);
      }

      else
      {
        v193 = 0;
        v194 = 0xE000000000000000;
      }

      v195 = v210;
      sub_1000D6584(v189, v210);
      v196 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
      (*(v190 + 32))(v195 + v196[5], v191, v192);
      v197 = (v195 + v196[6]);
      *v197 = v193;
      v197[1] = v194;
      sub_1000DB94C(v196[7]);
      sub_1000DB94C(v196[8]);
      sub_1000DB94C(v196[9]);
      *(v195 + v196[10]) = v62;
      sub_1000DB94C(v196[11]);
      sub_1000DB94C(v196[12]);
      sub_1000DB94C(v196[13]);
      sub_1000DB94C(v196[14]);
      sub_1000DB94C(v196[15]);
      sub_1000DB94C(v196[16]);
    }

    v76 = *(v227 + 8 * v78);
    ++v75;
    if (v76)
    {
      v77 = v12;
      goto LABEL_9;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D4850(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v2[4] = v3;
  sub_1000030B8(v3);
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  sub_1000030B8(v4);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4908);
}

uint64_t sub_1000D4908()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_100006CEC();
  sub_1000D652C(v5, v2);
  sub_100007F48();
  sub_1000D6584(v2, v1);
  v6 = *(v3 + 20);
  type metadata accessor for URL();
  sub_10000307C();
  (*(v7 + 16))(v4, v1 + v6);
  sub_100004A7C();
  sub_1000D65DC(v1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D49E8()
{
  v1 = sub_100003F9C();
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(v1);
  v3 = sub_1000030B8(v2);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = Dictionary.init(dictionaryLiteral:)();
  sub_100006CEC();
  sub_1000D652C(v0, v11);
  sub_100007F48();
  sub_1000D6584(v11, v6);

  swift_isUniquelyReferenced_nonNull_native();
  sub_10014F648();
  sub_100004A7C();
  sub_1000D65DC(v6, v13);
  return v12;
}

uint64_t sub_1000D4B24()
{
  v243 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  sub_100003724();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_10000308C();
  v242 = (v3 - v4);
  __chkstk_darwin(v5);
  sub_10000D478();
  v241 = v6;
  v7 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  sub_100003724();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = (&v231 - v11);
  v13 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  sub_10000307C();
  __chkstk_darwin(v14);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v19 = sub_1000030B8(v18);
  __chkstk_darwin(v19);
  sub_10000306C();
  v22 = v21 - v20;
  v23 = Dictionary.init(dictionaryLiteral:)();
  sub_100006CEC();
  v24 = sub_1000050CC();
  sub_1000D652C(v24, v25);
  sub_100007F48();
  sub_1000D6584(v22, v17);
  v238 = v13;
  sub_100120DB0();
  v27 = sub_10000D4C4(v26);
  sub_1000D6914(v27);
  v244 = 0;
  v233 = v7;
  v234 = v9;
  v232 = v1;
  v28 = v246;
  v29 = v246[2];
  v235 = v17;
  v240 = v12;
  if (v29)
  {
    v30 = v23;
    v248 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v31 = v248;
    v32 = (v28 + 56);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      sub_10000DEAC(*(v32 - 3));

      sub_10000EFC4();
      v35._countAndFlagsBits = v34;
      v35._object = v33;
      String.append(_:)(v35);

      v36 = v246;
      v37 = v247;
      v248 = v31;
      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        sub_100007628(v38);
        sub_1000DBA44();
        sub_1001070D0(v41, v42, v43);
        v31 = v248;
      }

      v31[2] = v39 + 1;
      v40 = &v31[2 * v39];
      v40[4] = v36;
      v40[5] = v37;
      v32 += 4;
      --v29;
    }

    while (v29);

    v17 = v235;
    v23 = v30;
    v12 = v240;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v246 = v31;
  v44 = sub_100099DF4(&qword_1002DA600, &qword_10022E490);
  sub_100010288();
  sub_10000BA04();
  v236 = v45;
  v237 = v44;
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v246 = v23;
    sub_10014F648();
    v23 = v246;
  }

  else
  {

    sub_10014EB30(0xD00000000000001ALL, 0x8000000100273620);
    if (v50)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v246 = v23;
      v52 = *(v23 + 24);
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v52);
      sub_100004F40();
      _NativeDictionary._delete(at:)();
    }
  }

  sub_100120DB0();
  v54 = sub_10000D4C4(v53);
  v55 = v244;
  sub_1000D6914(v54);
  if (v55)
  {
    goto LABEL_125;
  }

  v56 = v246;
  v57 = v246[2];
  if (v57)
  {
    v244 = 0;
    v58 = v23;
    v248 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v59 = v248;
    v60 = (v56 + 56);
    do
    {
      v62 = *(v60 - 1);
      v61 = *v60;
      sub_10000DEAC(*(v60 - 3));

      sub_10000EFC4();
      v63._countAndFlagsBits = v62;
      v63._object = v61;
      String.append(_:)(v63);

      v64 = v246;
      v65 = v247;
      v248 = v59;
      v67 = v59[2];
      v66 = v59[3];
      if (v67 >= v66 >> 1)
      {
        sub_100007628(v66);
        sub_1000DBA44();
        sub_1001070D0(v69, v70, v71);
        v59 = v248;
      }

      v59[2] = v67 + 1;
      v68 = &v59[2 * v67];
      v68[4] = v64;
      v68[5] = v65;
      v60 += 4;
      --v57;
    }

    while (v57);

    v17 = v235;
    v23 = v58;
    v12 = v240;
    v55 = v244;
  }

  else
  {

    v59 = _swiftEmptyArrayStorage;
  }

  v246 = v59;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v72)
  {
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v246 = v23;
    sub_10000529C(v73, v74, 0xD000000000000020);
    v23 = v246;
  }

  else
  {

    sub_10014EB30(0xD000000000000020, 0x8000000100273640);
    if (v75)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v246 = v23;
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      sub_1000050F4();
      sub_100004F40();
      _NativeDictionary._delete(at:)();
    }
  }

  sub_100120CB4(*(v17 + v238[9]), v75, v76, v77, v78, v79, v80, v81, v231, v232, v233, v234, v235, v236, v237, v238, v23, v240, v241, v242, v243, v244, v245, v246, v247, v248);
  v83 = sub_10000D4C4(v82);
  sub_1000D6828(v83);
  if (v55)
  {
    goto LABEL_125;
  }

  v84 = v246;
  v85 = v246[2];
  if (v85)
  {
    v231 = 0;
    v86 = v12 + *(v233 + 48);
    v87 = &v86[*(type metadata accessor for TSDataSyncTriggerEvent(0) + 28)];
    v88 = *(v234 + 80);
    v233 = v84;
    v89 = v84 + ((v88 + 32) & ~v88);
    v244 = v234[9];
    v90 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000D6980(v89, v12, &qword_1002DBC50, &unk_10023B350);
      v91 = v87[1];
      if (v91)
      {
        v92 = *v87;
        v93 = v12[1];
        v246 = *v12;
        v247 = v93;

        sub_10000EFC4();
        v94._countAndFlagsBits = v92;
        v94._object = v91;
        String.append(_:)(v94);
        v95 = v246;
        v96 = v247;
        sub_100004E24(v12, &qword_1002DBC50, &unk_10023B350);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000657C();
          sub_1000101B8();
          v90 = v99;
        }

        v97 = v90[2];
        if (v97 >= v90[3] >> 1)
        {
          sub_1000101B8();
          v90 = v100;
        }

        v90[2] = v97 + 1;
        v98 = &v90[2 * v97];
        v98[4] = v95;
        v98[5] = v96;
        v12 = v240;
      }

      else
      {
        sub_100004E24(v12, &qword_1002DBC50, &unk_10023B350);
      }

      v89 += v244;
      --v85;
    }

    while (v85);

    v17 = v235;
    v55 = v231;
  }

  else
  {

    v90 = _swiftEmptyArrayStorage;
  }

  v246 = v90;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  v101 = v239;
  if (v102)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_100013FE4();
    sub_10000529C(v103, v104, 0xD000000000000014);
    v101 = v246;
  }

  else
  {
  }

  v239 = v101;
  sub_100120C18(*(v17 + v238[11]));
  v106 = sub_10000D4C4(v105);
  sub_1000D67BC(v106);
  if (v55)
  {
    goto LABEL_125;
  }

  v107 = 0;
  v108 = v246;
  v109 = (v246 + 6);
  v110 = _swiftEmptyArrayStorage;
  v111 = v246[2];
  v112 = &type metadata for UInt64;
LABEL_44:
  v113 = (v109 + 24 * v107);
  while (v111 != v107)
  {
    if (v107 >= *(v108 + 16))
    {
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    ++v107;
    v114 = v113 + 3;
    v115 = *v113;
    v113 += 3;
    if (v115)
    {
      v244 = v109;
      v116 = *(v114 - 4);
      v246 = *(v114 - 5);
      v247 = v116;
      swift_bridgeObjectRetain_n();
      sub_10000EFC4();
      v248 = v115;
      v117._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v117);

      v118 = v246;
      v119 = v247;
      v120 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000657C();
        sub_1000101B8();
        v110 = v124;
      }

      v122 = v110[2];
      v121 = v110[3];
      if (v122 >= v121 >> 1)
      {
        sub_1000DBA1C(v121);
        sub_1000101B8();
        v110 = v125;
      }

      v110[2] = v122 + 1;
      v123 = &v110[2 * v122];
      v123[4] = v118;
      v123[5] = v119;
      v112 = v120;
      v109 = v244;
      goto LABEL_44;
    }
  }

  v246 = v110;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();

  sub_1000DBA30();
  if (v126)
  {
    v127 = v239;
    swift_isUniquelyReferenced_nonNull_native();
    v246 = v127;
    sub_10014F648();
    v128 = v246;
  }

  else
  {

    v128 = v239;
  }

  v239 = v128;
  sub_100120DB0();
  v130 = sub_10000D4C4(v129);
  sub_1000D6914(v130);
  v240 = 0;
  v131 = 0;
  v132 = v246;
  v133 = v246[2];
  v134 = (v246 + 7);
  v244 = _swiftEmptyArrayStorage;
  v234 = v246 + 7;
LABEL_57:
  v135 = (v134 + 32 * v131);
  while (v133 != v131)
  {
    if (v131 >= *(v132 + 16))
    {
      goto LABEL_124;
    }

    v137 = *(v135 - 1);
    v136 = *v135;
    v138 = v137 == 0x6C696E2D6C696ELL && v136 == 0xE700000000000000;
    if (!v138)
    {
      v112 = *(v135 - 3);
      v139 = *(v135 - 2);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v246 = v112;
        v247 = v139;
        swift_bridgeObjectRetain_n();

        sub_10000EFC4();
        v140._countAndFlagsBits = v137;
        v140._object = v136;
        String.append(_:)(v140);

        v141 = v246;
        v142 = v247;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000657C();
          sub_1000101B8();
          v244 = v146;
        }

        v112 = *(v244 + 16);
        v143 = *(v244 + 24);
        if (v112 >= v143 >> 1)
        {
          sub_1000DBA1C(v143);
          sub_1000101B8();
          v244 = v147;
        }

        v131 = (v131 + 1);
        v144 = v244;
        *(v244 + 16) = v112 + 1;
        v145 = v144 + 16 * v112;
        *(v145 + 32) = v141;
        *(v145 + 40) = v142;
        v134 = v234;
        goto LABEL_57;
      }
    }

    v135 += 4;
    v131 = (v131 + 1);
  }

  v246 = v244;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();

  sub_1000DBA30();
  if (v148)
  {
    v149 = v239;
    swift_isUniquelyReferenced_nonNull_native();
    v246 = v149;
    v112 = 0xD00000000000001ALL;
    sub_10000C620();
    sub_10014F648();
    sub_1000DBA5C();
    v133 = v235;
  }

  else
  {

    sub_1000DB958();
  }

  sub_100120B98(*(v133 + v238[14]));
  v246 = v150;
  v151 = v240;
  sub_1000D6720(&v246, sub_100122BD0, &qword_1002DBC78, &unk_100238320, sub_10013CF04);
  if (v151)
  {
    goto LABEL_128;
  }

  v152 = v246;
  if (v246[2])
  {
    v244 = 0;
    v248 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v153 = v248;
    v240 = v152;
    v133 = (v152 + 48);
    do
    {
      sub_10000DB74();
      v154._countAndFlagsBits = v152;
      v154._object = 0;
      String.append(_:)(v154);
      v155._countAndFlagsBits = 61;
      v155._object = 0xE100000000000000;
      String.append(_:)(v155);
      HIBYTE(v245) = v112;
      _print_unlocked<A, B>(_:_:)();

      sub_100010DA4();
      if (v157)
      {
        v158 = sub_100007628(v156);
        sub_1001070D0(v158, v152, 1);
        v153 = v248;
      }

      sub_100005CA0();
    }

    while (!v138);

    sub_1000DB958();
    v151 = v244;
  }

  else
  {

    v153 = _swiftEmptyArrayStorage;
  }

  v246 = v153;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v159)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_100013FE4();
    sub_10000529C(v160, v161, v112 - 4);
    sub_1000DBA5C();
  }

  else
  {

    v162 = v239;
    sub_10014EB30(v112 - 4, 0x80000001002736B0);
    if (v163)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v246 = v162;
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      sub_1000050F4();
      v164 = v246;

      v239 = v164;
      _NativeDictionary._delete(at:)();
    }
  }

  sub_100120DB0();
  v166 = sub_10000D4C4(v165);
  sub_1000D6914(v166);
  if (v151)
  {
    goto LABEL_128;
  }

  v167 = v246;
  v168 = v246[2];
  if (v168)
  {
    v248 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v169 = v248;
    v133 = (v167 + 56);
    do
    {
      v170 = *(v133 - 1);
      v171 = *v133;
      sub_10000DEAC(*(v133 - 3));

      sub_10000EFC4();
      v172._countAndFlagsBits = v170;
      v172._object = v171;
      String.append(_:)(v172);

      v112 = v246;
      v173 = v247;
      v248 = v169;
      v175 = v169[2];
      v174 = v169[3];
      if (v175 >= v174 >> 1)
      {
        sub_100007628(v174);
        sub_1000DBA44();
        sub_1001070D0(v177, v178, v179);
        v169 = v248;
      }

      v169[2] = v175 + 1;
      v176 = &v169[2 * v175];
      v176[4] = v112;
      v176[5] = v173;
      v133 += 4;
      --v168;
    }

    while (v168);

    sub_1000DB958();
  }

  else
  {

    v169 = _swiftEmptyArrayStorage;
  }

  v246 = v169;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v180)
  {
    sub_1000DB9EC();
    sub_100013FE4();
    sub_10000529C(v181, v182, v112 - 7);
    sub_1000DBA5C();
  }

  else
  {
  }

  sub_100120B80(*(v133 + v238[15]));
  v246 = v183;
  sub_1000D6720(&v246, sub_100122BB8, &qword_1002DBC68, &qword_100238300, sub_10013CF04);
  v184 = v246;
  if (v246[2])
  {
    v244 = 0;
    v248 = _swiftEmptyArrayStorage;
    sub_10000AAAC();
    v185 = v248;
    v240 = v184;
    v133 = (v184 + 48);
    do
    {
      sub_10000DB74();
      v186._countAndFlagsBits = v184;
      v186._object = 0;
      String.append(_:)(v186);
      v187._countAndFlagsBits = 61;
      v187._object = 0xE100000000000000;
      String.append(_:)(v187);
      HIBYTE(v245) = v112;
      _print_unlocked<A, B>(_:_:)();

      sub_100010DA4();
      if (v157)
      {
        v189 = sub_100007628(v188);
        sub_1001070D0(v189, v184, 1);
        v185 = v248;
      }

      sub_100005CA0();
    }

    while (!v138);

    sub_1000DB958();
    v151 = v244;
  }

  else
  {

    v185 = _swiftEmptyArrayStorage;
  }

  v246 = v185;
  sub_10000BA04();
  BidirectionalCollection<>.joined(separator:)();
  sub_10000A1FC();
  sub_100003144();
  if (v190)
  {
    sub_1000DB9EC();
    sub_100013FE4();
    sub_10000529C(v191, v192, v112 - 5);
    sub_1000DBA5C();
  }

  else
  {
  }

  sub_100120B44(*(v133 + v238[16]), v193, v194, v195, v196, v197, v198, v199, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248);
  v201 = sub_10000D4C4(v200);
  sub_1000D6634(v201);
  if (v151)
  {
LABEL_128:
    while (1)
    {
LABEL_125:

      __break(1u);
    }
  }

  v202 = v246;
  v203 = v246[2];
  if (v203)
  {
    v248 = _swiftEmptyArrayStorage;
    sub_1001070D0(0, v203, 0);
    v204 = v248;
    v205 = *(v232 + 80);
    v240 = v202;
    v206 = v202 + ((v205 + 32) & ~v205);
    v244 = *(v232 + 72);
    do
    {
      v207 = v241;
      sub_1000D6980(v206, v241, &qword_1002DBC48, &qword_100232F80);
      v208 = v242;
      sub_1000D6980(v207, v242, &qword_1002DBC48, &qword_100232F80);
      v209 = v208[1];
      v210 = *(v243 + 48);
      v246 = *v208;
      v247 = v209;
      v211 = type metadata accessor for Date();
      sub_10000307C();
      (*(v212 + 8))(v208 + v210, v211);
      sub_10000EFC4();
      sub_1000D69CC();
      v213._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v213);

      v215 = v246;
      v214 = v247;
      sub_100004E24(v207, &qword_1002DBC48, &qword_100232F80);
      v248 = v204;
      v217 = v204[2];
      v216 = v204[3];
      if (v217 >= v216 >> 1)
      {
        v219 = sub_100007628(v216);
        sub_1001070D0(v219, v217 + 1, 1);
        v204 = v248;
      }

      v204[2] = v217 + 1;
      v218 = &v204[2 * v217];
      v218[4] = v215;
      v218[5] = v214;
      v206 += v244;
      --v203;
    }

    while (v203);
  }

  else
  {

    v204 = _swiftEmptyArrayStorage;
  }

  v246 = v204;
  sub_10000BA04();
  v220 = BidirectionalCollection<>.joined(separator:)();
  v222 = v221;

  v223 = HIBYTE(v222) & 0xF;
  if ((v222 & 0x2000000000000000) == 0)
  {
    v223 = v220 & 0xFFFFFFFFFFFFLL;
  }

  v224 = v235;
  if (v223)
  {
    sub_1000DB9EC();
    sub_100013FE4();
    sub_10000C620();
    sub_10014F648();
  }

  else
  {
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_100013FE4();
  sub_10000C620();
  sub_10014F648();
  v225 = v246;
  swift_isUniquelyReferenced_nonNull_native();
  v246 = v225;
  sub_10000C620();
  sub_10014F648();
  v226 = v246;

  swift_isUniquelyReferenced_nonNull_native();
  v246 = v226;
  sub_10000C620();
  sub_10014F648();
  v227 = v246;

  swift_isUniquelyReferenced_nonNull_native();
  v246 = v227;
  sub_10014F648();
  v228 = v246;
  sub_100004A7C();
  sub_1000D65DC(v224, v229);
  return v228;
}

uint64_t sub_1000D5EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  __chkstk_darwin(v4);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = (v16 - v8);
  sub_1000D6980(a1, v16 - v8, &qword_1002DBC50, &unk_10023B350);
  v11 = *v9;
  v10 = v9[1];
  sub_1000D6980(a2, v6, &qword_1002DBC50, &unk_10023B350);
  if (v11 == *v6 && v10 == v6[1])
  {
    v13 = 0;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v14 = *(v4 + 48);
  sub_1000D65DC(v6 + v14, type metadata accessor for TSDataSyncTriggerEvent);
  sub_1000D65DC(v9 + v14, type metadata accessor for TSDataSyncTriggerEvent);
  return v13 & 1;
}

uint64_t sub_1000D6058(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1000D6980(a1, v18 - v8, &qword_1002DBC48, &qword_100232F80);
  v11 = *v9;
  v10 = *(v9 + 1);
  sub_1000D6980(a2, v6, &qword_1002DBC48, &qword_100232F80);
  if (v11 == *v6 && v10 == *(v6 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v14 = *(v4 + 48);
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 8);
  v16(&v6[v14], v15);
  v16(&v9[v14], v15);
  return v13 & 1;
}

uint64_t sub_1000D61EC()
{
  v1 = sub_100003F9C();
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(v1);
  v3 = sub_1000030B8(v2);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v8 = sub_1000030B8(v7);
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  sub_100006CEC();
  sub_1000D652C(v0, v11);
  sub_100007F48();
  sub_1000D6584(v11, v6);
  if (*(v6 + 16))
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v12 = 1;
  }

  sub_100004A7C();
  sub_1000D65DC(v6, v13);
  return v12 & 1;
}

uint64_t sub_1000D631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100099DF4(&qword_1002DBC10, &unk_10023F6E0);
  sub_10000307C();
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  sub_1000D6980(a1, &v17 - v5, &qword_1002DBC10, &unk_10023F6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = static HTTPHelpers.isAuthError(error:)();

    v8 = type metadata accessor for Date();
    if (v7)
    {
      v9 = sub_1000050CC();
      v10(v9);
      v11 = a2;
      v12 = 0;
    }

    else
    {
      v11 = sub_100013DDC();
    }

    return sub_100002728(v11, v12, 1, v8);
  }

  else
  {
    type metadata accessor for Date();
    v13 = sub_100013DDC();
    sub_100002728(v13, v14, 1, v15);
    return sub_100004E24(v6, &qword_1002DBC10, &unk_10023F6E0);
  }
}

unint64_t sub_1000D6484()
{
  result = qword_1002DBC30;
  if (!qword_1002DBC30)
  {
    result = swift_getWitnessTable(byte_100236C3C, &type metadata for TSDataSyncDatasetIdentifier, v0, v1);
    atomic_store(result, &qword_1002DBC30);
  }

  return result;
}

unint64_t sub_1000D64D8()
{
  result = qword_1002DBC40;
  if (!qword_1002DBC40)
  {
    result = swift_getWitnessTable(aI_25, &type metadata for TSDataSyncServerDatasetGroupResponseBodyWrapper, v0, v1);
    atomic_store(result, &qword_1002DBC40);
  }

  return result;
}

uint64_t sub_1000D652C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_1000D6584(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_1000D65DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Int sub_1000D6634(uint64_t *a1)
{
  v2 = *(sub_100099DF4(&qword_1002DBC48, &qword_100232F80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100122BA0();
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000D6C24(v6, &qword_1002DBC48, &qword_100232F80, sub_1000D7828, sub_1000D6E5C);
  *a1 = v3;
  return result;
}

void *sub_1000D6720(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1000D6A24(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

Swift::Int sub_1000D67BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100122BE8();
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000D6B20(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000D6828(uint64_t *a1)
{
  v2 = *(sub_100099DF4(&qword_1002DBC50, &unk_10023B350) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100122C00();
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000D6C24(v6, &qword_1002DBC50, &unk_10023B350, sub_1000D8F50, sub_1000D7394);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000D6914(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100122C18();
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000D6D60(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1000D6980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return v4;
}

unint64_t sub_1000D69CC()
{
  result = qword_1002DBC58;
  if (!qword_1002DBC58)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_1002DBC58);
  }

  return result;
}

void *sub_1000D6A24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v16 = v7 / 2;
      if (v7 <= 1)
      {
        v17 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100099DF4(a2, a3);
        result = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v17 = result;
        result[2] = v16;
      }

      v22 = sub_10000BCA0(result, v9, v10, v11, v12, v13, v14, v15, v26, v17 + 32);
      sub_1000D84B4(v22, v23, v24, v25, a4);
      v17[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1000DB9DC();
    return sub_1000D71DC(v18, v19, v20, v21);
  }

  return result;
}

Swift::Int sub_1000D6B20(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        sub_100099DF4(&qword_1002DBC80, &unk_100238330);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1000D8A00(v7, v8, a1, v4);
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
    return sub_1000D72BC(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1000D6C24(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *), uint64_t (*a5)(void))
{
  v9 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v9);
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = v9 / 2;
      if (v9 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100099DF4(a2, a3);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = sub_100099DF4(a2, a3);
      v14 = sub_1000030B8(v13);
      v23 = sub_10000BCA0(v14, v16, v17, v18, v19, v20, v21, v22, v24, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
      a4(v23);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    sub_1000DB9DC();
    return a5();
  }

  return result;
}

Swift::Int sub_1000D6D60(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        sub_100099DF4(&qword_1002DBC70, &qword_100238310);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v11[0] = (v6 + 4);
      v11[1] = v5;
      sub_1000D9C00(v11, v12, a1, v4);
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
    sub_1000DB9DC();
    return sub_1000D7760(v7, v8, v9, v10);
  }

  return result;
}

void sub_1000D6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  __chkstk_darwin(v51);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = (&v39 - v10);
  __chkstk_darwin(v11);
  v13 = (&v39 - v12);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v41 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v46 = -v22;
    v47 = v21;
    v24 = a1 - a3;
    v40 = v22;
    v25 = v21 + v22 * a3;
    v49 = &v39 - v19;
    v50 = v16;
    while (2)
    {
      v44 = v23;
      v45 = a3;
      v42 = v25;
      v43 = v24;
      v26 = v23;
      do
      {
        sub_1000D6980(v25, v20, &qword_1002DBC48, &qword_100232F80);
        sub_1000D6980(v26, v16, &qword_1002DBC48, &qword_100232F80);
        sub_1000D6980(v20, v13, &qword_1002DBC48, &qword_100232F80);
        v27 = *v13;
        v28 = v13[1];
        v29 = v13;
        v30 = v52;
        sub_1000D6980(v16, v52, &qword_1002DBC48, &qword_100232F80);
        if (v27 == *v30 && v28 == v30[1])
        {
          v32 = 0;
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v33 = *(v51 + 48);
        v34 = type metadata accessor for Date();
        v35 = *(*(v34 - 8) + 8);
        v35(v52 + v33, v34);
        v36 = v29 + v33;
        v13 = v29;
        v35(v36, v34);
        v16 = v50;
        sub_100004E24(v50, &qword_1002DBC48, &qword_100232F80);
        v20 = v49;
        sub_100004E24(v49, &qword_1002DBC48, &qword_100232F80);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v37 = v48;
        sub_1000DB900(v25, v48, &qword_1002DBC48, &qword_100232F80);
        swift_arrayInitWithTakeFrontToBack();
        sub_1000DB900(v37, v26, &qword_1002DBC48, &qword_100232F80);
        v26 += v46;
        v25 += v46;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v45 + 1;
      v23 = v44 + v40;
      v24 = v43 - 1;
      v25 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1000D71DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 24);
        if (result == *v10 && *(v10 + 32) == *(v10 + 8))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 24);
        v12 = *(v10 + 32);
        v14 = *(v10 + 40);
        v15 = *(v10 + 16);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v15;
        *v10 = v13;
        *(v10 + 8) = v12;
        *(v10 + 16) = v14;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000D72BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000D7394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  __chkstk_darwin(v57);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v45 - v10);
  __chkstk_darwin(v12);
  v14 = (&v45 - v13);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  __chkstk_darwin(v18);
  v59 = &v45 - v20;
  v47 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v52 = -v22;
    v53 = v21;
    v24 = a1 - a3;
    v46 = v22;
    v25 = v21 + v22 * a3;
    v26 = &qword_1002DBC50;
    v55 = v17;
    while (2)
    {
      v50 = v23;
      v51 = a3;
      v48 = v25;
      v49 = v24;
      v27 = v23;
      while (1)
      {
        v58 = v24;
        v28 = v26;
        v29 = v59;
        sub_1000D6980(v25, v59, v28, &unk_10023B350);
        sub_1000D6980(v27, v17, v28, &unk_10023B350);
        sub_1000D6980(v29, v14, v28, &unk_10023B350);
        v30 = v17;
        v32 = *v14;
        v31 = v14[1];
        sub_1000D6980(v30, v11, v28, &unk_10023B350);
        v33 = v14;
        v34 = v11;
        v35 = *v11;
        v36 = v11[1];
        if (v32 == v35 && v31 == v36)
        {
          break;
        }

        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v38 = *(v57 + 48);
        sub_1000D65DC(v34 + v38, type metadata accessor for TSDataSyncTriggerEvent);
        sub_1000D65DC(v33 + v38, type metadata accessor for TSDataSyncTriggerEvent);
        v17 = v55;
        sub_100004E24(v55, v28, &unk_10023B350);
        sub_100004E24(v59, v28, &unk_10023B350);
        v11 = v34;
        v14 = v33;
        v26 = v28;
        v39 = v58;
        if (v56)
        {
          if (!v53)
          {
            __break(1u);
            return;
          }

          v40 = v17;
          v41 = v54;
          sub_1000DB900(v25, v54, v26, &unk_10023B350);
          swift_arrayInitWithTakeFrontToBack();
          v42 = v41;
          v17 = v40;
          sub_1000DB900(v42, v27, v26, &unk_10023B350);
          v27 += v52;
          v25 += v52;
          v43 = __CFADD__(v39, 1);
          v24 = v39 + 1;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v44 = *(v57 + 48);
      sub_1000D65DC(v34 + v44, type metadata accessor for TSDataSyncTriggerEvent);
      sub_1000D65DC(v33 + v44, type metadata accessor for TSDataSyncTriggerEvent);
      v17 = v55;
      sub_100004E24(v55, v28, &unk_10023B350);
      sub_100004E24(v59, v28, &unk_10023B350);
      v11 = v34;
      v14 = v33;
      v26 = v28;
LABEL_14:
      a3 = v51 + 1;
      v23 = v50 + v46;
      v24 = v49 - 1;
      v25 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1000D7760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v10 = *(v12 + 40);
        v14 = *(v12 + 48);
        v15 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000D7828(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v153 = a4;
  v150 = a1;
  v7 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v161 = *(v7 - 8);
  __chkstk_darwin(v7);
  v156 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v169 = &v147 - v10;
  __chkstk_darwin(v11);
  v174 = &v147 - v12;
  __chkstk_darwin(v13);
  v173 = (&v147 - v14);
  __chkstk_darwin(v15);
  v172 = &v147 - v16;
  __chkstk_darwin(v17);
  v171 = &v147 - v18;
  __chkstk_darwin(v19);
  v166 = (&v147 - v20);
  __chkstk_darwin(v21);
  v165 = (&v147 - v22);
  __chkstk_darwin(v23);
  v164 = &v147 - v24;
  __chkstk_darwin(v25);
  v163 = &v147 - v26;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v162 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_117:
    v174 = *v150;
    if (!v174)
    {
      goto LABEL_160;
    }

    v137 = v33;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v138 = v137;
      goto LABEL_120;
    }

LABEL_154:
    v138 = sub_100121DB8();
LABEL_120:
    v139 = v138 + 16;
    v140 = *(v138 + 2);
    while (v140 >= 2)
    {
      if (!*v162)
      {
        goto LABEL_157;
      }

      v141 = v138;
      v142 = &v138[16 * v140];
      v143 = *v142;
      v144 = &v139[2 * v140];
      v145 = *(v144 + 1);
      sub_1000DA4B8(*v162 + *(v161 + 72) * *v142, *v162 + *(v161 + 72) * *v144, *v162 + *(v161 + 72) * v145, v174);
      if (v5)
      {
        break;
      }

      if (v145 < v143)
      {
        goto LABEL_145;
      }

      if (v140 - 2 >= *v139)
      {
        goto LABEL_146;
      }

      *v142 = v143;
      *(v142 + 1) = v145;
      v146 = *v139 - v140;
      if (*v139 < v140)
      {
        goto LABEL_147;
      }

      v140 = *v139 - 1;
      sub_100121DD0(v144 + 16, v146, v144);
      *v139 = v140;
      v138 = v141;
    }

    goto LABEL_128;
  }

  v147 = &v147 - v29;
  v148 = v30;
  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v170 = v7;
  while (1)
  {
    v151 = v33;
    v34 = v32;
    v35 = v32 + 1;
    if (v32 + 1 >= v31)
    {
      v62 = v153;
    }

    else
    {
      v159 = v31;
      v160 = v32 + 1;
      v36 = *v162;
      v37 = v32;
      v38 = *(v161 + 72);
      v39 = *v162 + v38 * v35;
      v40 = v147;
      sub_1000D6980(v39, v147, &qword_1002DBC48, &qword_100232F80);
      v168 = v36;
      v41 = v36 + v38 * v37;
      v42 = v148;
      sub_1000D6980(v41, v148, &qword_1002DBC48, &qword_100232F80);
      LODWORD(v158) = sub_1000D6058(v40, v42);
      if (v5)
      {
        sub_100004E24(v42, &qword_1002DBC48, &qword_100232F80);
        sub_100004E24(v40, &qword_1002DBC48, &qword_100232F80);
LABEL_128:

        return;
      }

      v152 = 0;
      sub_100004E24(v42, &qword_1002DBC48, &qword_100232F80);
      sub_100004E24(v40, &qword_1002DBC48, &qword_100232F80);
      v149 = v37;
      v43 = v37 + 2;
      v5 = v168 + v38 * (v37 + 2);
      v44 = v159;
      v35 = v160;
      v45 = v38;
      v167 = v38;
      while (1)
      {
        v46 = v43;
        if (v35 + 1 >= v44)
        {
          break;
        }

        v168 = v43;
        v47 = v163;
        sub_1000D6980(v5, v163, &qword_1002DBC48, &qword_100232F80);
        v48 = v164;
        sub_1000D6980(v39, v164, &qword_1002DBC48, &qword_100232F80);
        v49 = v47;
        v50 = v165;
        sub_1000D6980(v49, v165, &qword_1002DBC48, &qword_100232F80);
        v51 = *v50;
        v52 = v50[1];
        v53 = v166;
        sub_1000D6980(v48, v166, &qword_1002DBC48, &qword_100232F80);
        v54 = *v53;
        v55 = v53[1];
        v56 = v35;
        if (v51 == v54 && v52 == v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v59 = *(v7 + 48);
        v60 = type metadata accessor for Date();
        v61 = *(*(v60 - 8) + 8);
        v61(v166 + v59, v60);
        v61(v165 + v59, v60);
        sub_100004E24(v164, &qword_1002DBC48, &qword_100232F80);
        sub_100004E24(v163, &qword_1002DBC48, &qword_100232F80);
        v45 = v167;
        v46 = v168;
        v5 += v167;
        v39 += v167;
        v35 = v56 + 1;
        v43 = v168 + 1;
        v44 = v159;
        if ((v158 ^ v58))
        {
          goto LABEL_17;
        }
      }

      v35 = v44;
LABEL_17:
      if (v158)
      {
        v34 = v149;
        v62 = v153;
        if (v35 < v149)
        {
          goto LABEL_153;
        }

        v5 = v152;
        if (v149 < v35)
        {
          if (v44 >= v46)
          {
            v63 = v46;
          }

          else
          {
            v63 = v44;
          }

          v64 = v45 * (v63 - 1);
          v65 = v45 * v63;
          v66 = v35;
          v67 = v149 * v45;
          v160 = v66;
          v68 = v149;
          do
          {
            if (v68 != --v66)
            {
              v69 = *v162;
              if (!*v162)
              {
                goto LABEL_158;
              }

              sub_1000DB900(v69 + v67, v156, &qword_1002DBC48, &qword_100232F80);
              v70 = v67 < v64 || v69 + v67 >= v69 + v65;
              if (v70)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v67 != v64)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1000DB900(v156, v69 + v64, &qword_1002DBC48, &qword_100232F80);
              v5 = v152;
              v62 = v153;
              v45 = v167;
            }

            ++v68;
            v64 -= v45;
            v65 -= v45;
            v67 += v45;
          }

          while (v68 < v66);
          v35 = v160;
        }
      }

      else
      {
        v5 = v152;
        v62 = v153;
        v34 = v149;
      }
    }

    v71 = v162[1];
    if (v35 < v71)
    {
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_150;
      }

      if (v35 - v34 < v62)
      {
        break;
      }
    }

LABEL_62:
    if (v35 < v34)
    {
      goto LABEL_149;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v33 = v151;
    }

    else
    {
      sub_10013BF14();
      v33 = v135;
    }

    v93 = v33[2];
    v94 = v93 + 1;
    if (v93 >= v33[3] >> 1)
    {
      sub_10013BF14();
      v33 = v136;
    }

    v33[2] = v94;
    v95 = v33 + 4;
    v96 = &v33[2 * v93 + 4];
    *v96 = v34;
    v96[1] = v35;
    v168 = *v150;
    if (!v168)
    {
      goto LABEL_159;
    }

    v160 = v35;
    if (v93)
    {
      v97 = v33;
      while (1)
      {
        v98 = v94 - 1;
        v99 = &v95[2 * v94 - 2];
        v100 = &v33[2 * v94];
        if (v94 >= 4)
        {
          break;
        }

        if (v94 == 3)
        {
          v101 = v33[4];
          v102 = v33[5];
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_83:
          if (v104)
          {
            goto LABEL_136;
          }

          v116 = *v100;
          v115 = v100[1];
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_139;
          }

          v120 = v99[1];
          v121 = v120 - *v99;
          if (__OFSUB__(v120, *v99))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v118, v121))
          {
            goto LABEL_144;
          }

          if (v118 + v121 >= v103)
          {
            if (v103 < v121)
            {
              v98 = v94 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v94 < 2)
        {
          goto LABEL_138;
        }

        v123 = *v100;
        v122 = v100[1];
        v111 = __OFSUB__(v122, v123);
        v118 = v122 - v123;
        v119 = v111;
LABEL_98:
        if (v119)
        {
          goto LABEL_141;
        }

        v125 = *v99;
        v124 = v99[1];
        v111 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v111)
        {
          goto LABEL_143;
        }

        if (v126 < v118)
        {
          v33 = v97;
          goto LABEL_112;
        }

LABEL_105:
        if (v98 - 1 >= v94)
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v162)
        {
          goto LABEL_156;
        }

        v130 = &v95[2 * v98 - 2];
        v131 = *v130;
        v132 = &v95[2 * v98];
        v133 = *(v132 + 1);
        sub_1000DA4B8(*v162 + *(v161 + 72) * *v130, *v162 + *(v161 + 72) * *v132, *v162 + *(v161 + 72) * v133, v168);
        if (v5)
        {
          goto LABEL_128;
        }

        if (v133 < v131)
        {
          goto LABEL_131;
        }

        v5 = v97[2];
        if (v98 > v5)
        {
          goto LABEL_132;
        }

        *v130 = v131;
        v130[1] = v133;
        if (v98 >= v5)
        {
          goto LABEL_133;
        }

        v94 = v5 - 1;
        sub_100121DD0(v132 + 16, v5 - 1 - v98, &v95[2 * v98]);
        v33 = v97;
        v97[2] = v5 - 1;
        v134 = v5 > 2;
        v5 = 0;
        if (!v134)
        {
          goto LABEL_112;
        }
      }

      v105 = &v95[2 * v94];
      v106 = *(v105 - 8);
      v107 = *(v105 - 7);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_134;
      }

      v110 = *(v105 - 6);
      v109 = *(v105 - 5);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_135;
      }

      v112 = v100[1];
      v113 = v112 - *v100;
      if (__OFSUB__(v112, *v100))
      {
        goto LABEL_137;
      }

      v111 = __OFADD__(v103, v113);
      v114 = v103 + v113;
      if (v111)
      {
        goto LABEL_140;
      }

      if (v114 >= v108)
      {
        v128 = *v99;
        v127 = v99[1];
        v111 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v111)
        {
          goto LABEL_148;
        }

        if (v103 < v129)
        {
          v98 = v94 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v31 = v162[1];
    v32 = v160;
    v7 = v170;
    if (v160 >= v31)
    {
      goto LABEL_117;
    }
  }

  v72 = v34 + v62;
  if (__OFADD__(v34, v62))
  {
    goto LABEL_151;
  }

  if (v72 >= v71)
  {
    v72 = v162[1];
  }

  if (v72 < v34)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v35 == v72)
  {
    goto LABEL_62;
  }

  v152 = v5;
  v73 = *v162;
  v74 = *(v161 + 72);
  v75 = *v162 + v74 * (v35 - 1);
  v167 = -v74;
  v149 = v34;
  v76 = v34 - v35;
  v168 = v73;
  v154 = v74;
  v155 = v72;
  v77 = v73 + v35 * v74;
LABEL_47:
  v159 = v75;
  v160 = v35;
  v157 = v77;
  v158 = v76;
  v78 = v76;
  while (1)
  {
    v79 = v7;
    v80 = v171;
    sub_1000D6980(v77, v171, &qword_1002DBC48, &qword_100232F80);
    v81 = v172;
    sub_1000D6980(v75, v172, &qword_1002DBC48, &qword_100232F80);
    v82 = v80;
    v83 = v173;
    sub_1000D6980(v82, v173, &qword_1002DBC48, &qword_100232F80);
    v84 = *v83;
    v85 = v83[1];
    v86 = v174;
    sub_1000D6980(v81, v174, &qword_1002DBC48, &qword_100232F80);
    if (v84 == *v86 && v85 == v86[1])
    {
      v88 = 0;
    }

    else
    {
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v89 = *(v79 + 48);
    v90 = type metadata accessor for Date();
    v91 = *(*(v90 - 8) + 8);
    v91(v174 + v89, v90);
    v91(v173 + v89, v90);
    sub_100004E24(v172, &qword_1002DBC48, &qword_100232F80);
    sub_100004E24(v171, &qword_1002DBC48, &qword_100232F80);
    if ((v88 & 1) == 0)
    {
      v7 = v170;
LABEL_60:
      v35 = v160 + 1;
      v75 = v159 + v154;
      v76 = v158 - 1;
      v77 = v157 + v154;
      if (v160 + 1 == v155)
      {
        v35 = v155;
        v5 = v152;
        v34 = v149;
        goto LABEL_62;
      }

      goto LABEL_47;
    }

    if (!v168)
    {
      break;
    }

    v92 = v169;
    sub_1000DB900(v77, v169, &qword_1002DBC48, &qword_100232F80);
    v7 = v170;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000DB900(v92, v75, &qword_1002DBC48, &qword_100232F80);
    v75 += v167;
    v77 += v167;
    v70 = __CFADD__(v78++, 1);
    if (v70)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

void sub_1000D84B4(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  v96 = _swiftEmptyArrayStorage;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v12 = *a3;
        v13 = (*a3 + 24 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = (*a3 + 24 * v10);
        if (v14 == *v16 && v15 == v16[1])
        {
          v18 = 0;
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v11 = v10 + 2;
        v19 = 24 * v10;
        v20 = (v12 + 24 * v10 + 56);
        while (v11 < v7)
        {
          if (*(v20 - 1) == *(v20 - 4) && *v20 == *(v20 - 3))
          {
            if (v18)
            {
              goto LABEL_21;
            }
          }

          else if ((v18 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v11;
          v20 += 3;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v11 < v10)
        {
          goto LABEL_122;
        }

        if (v10 < v11)
        {
          v22 = 24 * v11 - 8;
          v23 = v11;
          v24 = v10;
          do
          {
            if (v24 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v26 = (v25 + v19);
              v27 = (v25 + v22);
              v28 = *v26;
              v29 = v26[1];
              v30 = *(v26 + 16);
              v31 = *v27;
              *v26 = *(v27 - 1);
              v26[2] = v31;
              *(v27 - 2) = v28;
              *(v27 - 1) = v29;
              *v27 = v30;
            }

            ++v24;
            v22 -= 24;
            v19 += 24;
          }

          while (v24 < v23);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v11 < v32)
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_121;
        }

        if (v11 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_123;
          }

          v94 = v6;
          if (v10 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v10 + a4;
          }

          if (v33 < v10)
          {
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
            __break(1u);
            return;
          }

          if (v11 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 24 * v11 - 24;
            v92 = v10;
            v36 = v10 - v11;
            do
            {
              v37 = v36;
              v38 = v35;
              do
              {
                v39 = *(v38 + 24) == *v38 && *(v38 + 32) == *(v38 + 8);
                if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v41 = *(v38 + 24);
                v40 = *(v38 + 32);
                v42 = *(v38 + 40);
                v43 = *(v38 + 16);
                *(v38 + 24) = *v38;
                *(v38 + 40) = v43;
                *v38 = v41;
                *(v38 + 8) = v40;
                *(v38 + 16) = v42;
                v38 -= 24;
              }

              while (!__CFADD__(v37++, 1));
              ++v11;
              v35 += 24;
              --v36;
            }

            while (v11 != v33);
            v11 = v33;
            v10 = v92;
          }

          v6 = v94;
        }
      }

      if (v11 < v10)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000657C();
        sub_10013BF14();
        v9 = v88;
      }

      v45 = v9[2];
      v46 = v45 + 1;
      if (v45 >= v9[3] >> 1)
      {
        sub_10013BF14();
        v9 = v89;
      }

      v9[2] = v46;
      v47 = v9 + 4;
      v48 = &v9[2 * v45 + 4];
      *v48 = v10;
      v48[1] = v11;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v9[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v9[4];
            v53 = v9[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_1000DABFC();
          if (v6)
          {
            goto LABEL_103;
          }

          if (v84 < v82)
          {
            goto LABEL_105;
          }

          v85 = v9;
          v86 = v9[2];
          if (v49 > v86)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_107;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v9 = v85;
          v6 = 0;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v7 = a3[1];
      v8 = v11;
      if (v11 >= v7)
      {
        v96 = v9;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1000DA11C(&v96, *result, a3, a5);
LABEL_103:
}

void sub_1000D8A00(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013BF14();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_10013BF14();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1000DADB0((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1000DA254(&v96, *result, a3);
LABEL_103:
}

void sub_1000D8F50(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v144 = a1;
  v169 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v152 = *(v169 - 8);
  __chkstk_darwin(v169);
  v148 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v164 = &v140 - v8;
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v140 - v12;
  __chkstk_darwin(v14);
  v16 = &v140 - v15;
  __chkstk_darwin(v17);
  v158 = (&v140 - v18);
  __chkstk_darwin(v19);
  v157 = (&v140 - v20);
  __chkstk_darwin(v21);
  v156 = &v140 - v22;
  __chkstk_darwin(v23);
  v155 = &v140 - v24;
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v154 = a3;
  v31 = *(a3 + 8);
  if (v31 < 1)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_114:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v143 = &v140 - v27;
  v142 = v30;
  v166 = v28;
  v141 = a4;
  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v34 = v29;
  v153 = v13;
  v167 = v16;
  while (1)
  {
    v35 = v32++;
    v159 = v33;
    if (v32 < v31)
    {
      v163 = v31;
      v145 = v35;
      v36 = *v154;
      v37 = *(v152 + 72);
      a3 = *v154 + v37 * v32;
      v38 = v143;
      sub_1000D6980(a3, v143, &qword_1002DBC50, &unk_10023B350);
      v168 = v36;
      v39 = v36 + v37 * v145;
      v40 = v142;
      sub_1000D6980(v39, v142, &qword_1002DBC50, &unk_10023B350);
      v41 = v160;
      LODWORD(v162) = sub_1000D5EE8(v38, v40);
      v160 = v41;
      if (v41)
      {
        sub_100004E24(v40, &qword_1002DBC50, &unk_10023B350);
        sub_100004E24(v143, &qword_1002DBC50, &unk_10023B350);
LABEL_125:

        return;
      }

      sub_100004E24(v40, &qword_1002DBC50, &unk_10023B350);
      sub_100004E24(v143, &qword_1002DBC50, &unk_10023B350);
      v42 = v145 + 2;
      v151 = v37;
      v43 = v168 + v37 * (v145 + 2);
      v44 = v163;
      while (1)
      {
        v45 = v42;
        if (v32 + 1 >= v44)
        {
          break;
        }

        v168 = v42;
        v161 = v32;
        v46 = v155;
        sub_1000D6980(v43, v155, &qword_1002DBC50, &unk_10023B350);
        v47 = v156;
        sub_1000D6980(a3, v156, &qword_1002DBC50, &unk_10023B350);
        v48 = v46;
        v49 = v157;
        sub_1000D6980(v48, v157, &qword_1002DBC50, &unk_10023B350);
        v50 = *v49;
        v51 = v49[1];
        v52 = v158;
        sub_1000D6980(v47, v158, &qword_1002DBC50, &unk_10023B350);
        v53 = *v52;
        v54 = v52[1];
        if (v50 == v53 && v51 == v54)
        {
          v56 = 0;
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v57 = v151;

        v58 = *(v169 + 48);
        sub_1000D65DC(v158 + v58, type metadata accessor for TSDataSyncTriggerEvent);
        sub_1000D65DC(v157 + v58, type metadata accessor for TSDataSyncTriggerEvent);
        sub_100004E24(v156, &qword_1002DBC50, &unk_10023B350);
        sub_100004E24(v155, &qword_1002DBC50, &unk_10023B350);
        v59 = v162 ^ v56;
        v43 += v57;
        a3 += v57;
        v32 = v161 + 1;
        v16 = v167;
        v45 = v168;
        v42 = v168 + 1;
        v13 = v153;
        v44 = v163;
        if (v59)
        {
          goto LABEL_16;
        }
      }

      v32 = v44;
LABEL_16:
      if ((v162 & 1) == 0)
      {
        v33 = v159;
LABEL_37:
        v35 = v145;
        goto LABEL_38;
      }

      v35 = v145;
      if (v32 < v145)
      {
        goto LABEL_149;
      }

      v33 = v159;
      if (v145 < v32)
      {
        if (v44 >= v45)
        {
          v60 = v45;
        }

        else
        {
          v60 = v44;
        }

        v61 = v151;
        v62 = v151 * (v60 - 1);
        v63 = v151 * v60;
        v64 = v145 * v151;
        v161 = v32;
        v65 = v32;
        v66 = v145;
        do
        {
          if (v66 != --v65)
          {
            v67 = *v154;
            if (!*v154)
            {
              goto LABEL_154;
            }

            a3 = v67 + v64;
            sub_1000DB900(v67 + v64, v148, &qword_1002DBC50, &unk_10023B350);
            v68 = v64 < v62 || a3 >= v67 + v63;
            if (v68)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v64 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1000DB900(v148, v67 + v62, &qword_1002DBC50, &unk_10023B350);
            v33 = v159;
          }

          ++v66;
          v62 -= v61;
          v63 -= v61;
          v64 += v61;
        }

        while (v66 < v65);
        v13 = v153;
        v16 = v167;
        v32 = v161;
        goto LABEL_37;
      }
    }

LABEL_38:
    v69 = v154[1];
    if (v32 < v69)
    {
      if (__OFSUB__(v32, v35))
      {
        goto LABEL_146;
      }

      if (v32 - v35 < v141)
      {
        break;
      }
    }

LABEL_60:
    if (v32 < v35)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10013BF14();
      v33 = v130;
    }

    v85 = *(v33 + 2);
    a3 = v85 + 1;
    if (v85 >= *(v33 + 3) >> 1)
    {
      sub_10013BF14();
      v33 = v131;
    }

    *(v33 + 2) = a3;
    v86 = v33 + 32;
    v87 = &v33[16 * v85 + 32];
    *v87 = v35;
    *(v87 + 1) = v32;
    v168 = *v144;
    if (!v168)
    {
      goto LABEL_155;
    }

    if (v85)
    {
      v159 = v33;
      while (1)
      {
        v88 = a3 - 1;
        v89 = &v86[16 * a3 - 16];
        v90 = &v33[16 * a3];
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v91 = *(v33 + 4);
          v92 = *(v33 + 5);
          v101 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          v94 = v101;
LABEL_81:
          if (v94)
          {
            goto LABEL_132;
          }

          v106 = *v90;
          v105 = *(v90 + 1);
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_135;
          }

          v110 = *(v89 + 1);
          v111 = v110 - *v89;
          if (__OFSUB__(v110, *v89))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v108, v111))
          {
            goto LABEL_140;
          }

          if (v108 + v111 >= v93)
          {
            if (v93 < v111)
            {
              v88 = a3 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (a3 < 2)
        {
          goto LABEL_134;
        }

        v113 = *v90;
        v112 = *(v90 + 1);
        v101 = __OFSUB__(v112, v113);
        v108 = v112 - v113;
        v109 = v101;
LABEL_96:
        if (v109)
        {
          goto LABEL_137;
        }

        v115 = *v89;
        v114 = *(v89 + 1);
        v101 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v101)
        {
          goto LABEL_139;
        }

        if (v116 < v108)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v88 - 1 >= a3)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v154)
        {
          goto LABEL_152;
        }

        a3 = &v86[16 * v88 - 16];
        v120 = *a3;
        v121 = v88;
        v122 = &v86[16 * v88];
        v123 = *(v122 + 1);
        v124 = v160;
        sub_1000DAF78(*v154 + *(v152 + 72) * *a3, *v154 + *(v152 + 72) * *v122, *v154 + *(v152 + 72) * v123, v168);
        v160 = v124;
        if (v124)
        {
          goto LABEL_125;
        }

        if (v123 < v120)
        {
          goto LABEL_127;
        }

        v125 = v34;
        v126 = v86;
        v127 = v32;
        v128 = *(v159 + 2);
        if (v121 > v128)
        {
          goto LABEL_128;
        }

        *a3 = v120;
        *(a3 + 8) = v123;
        if (v121 >= v128)
        {
          goto LABEL_129;
        }

        a3 = v128 - 1;
        sub_100121DD0(v122 + 16, v128 - 1 - v121, v122);
        v33 = v159;
        *(v159 + 2) = v128 - 1;
        v129 = v128 > 2;
        v13 = v153;
        v16 = v167;
        v32 = v127;
        v86 = v126;
        v34 = v125;
        if (!v129)
        {
          goto LABEL_110;
        }
      }

      v95 = &v86[16 * a3];
      v96 = *(v95 - 8);
      v97 = *(v95 - 7);
      v101 = __OFSUB__(v97, v96);
      v98 = v97 - v96;
      if (v101)
      {
        goto LABEL_130;
      }

      v100 = *(v95 - 6);
      v99 = *(v95 - 5);
      v101 = __OFSUB__(v99, v100);
      v93 = v99 - v100;
      v94 = v101;
      if (v101)
      {
        goto LABEL_131;
      }

      v102 = *(v90 + 1);
      v103 = v102 - *v90;
      if (__OFSUB__(v102, *v90))
      {
        goto LABEL_133;
      }

      v101 = __OFADD__(v93, v103);
      v104 = v93 + v103;
      if (v101)
      {
        goto LABEL_136;
      }

      if (v104 >= v98)
      {
        v118 = *v89;
        v117 = *(v89 + 1);
        v101 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v101)
        {
          goto LABEL_144;
        }

        if (v93 < v119)
        {
          v88 = a3 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v31 = v154[1];
    if (v32 >= v31)
    {
      goto LABEL_114;
    }
  }

  v70 = v35 + v141;
  if (__OFADD__(v35, v141))
  {
    goto LABEL_147;
  }

  if (v70 >= v69)
  {
    v70 = v154[1];
  }

  if (v70 < v35)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v33 = sub_100121DB8();
LABEL_116:
    v132 = (v33 + 16);
    for (i = *(v33 + 2); i >= 2; *v132 = i)
    {
      if (!*v154)
      {
        goto LABEL_153;
      }

      v134 = &v33[16 * i];
      v135 = *v134;
      v136 = &v132[2 * i];
      v137 = *(v136 + 1);
      v138 = v160;
      sub_1000DAF78(*v154 + *(v152 + 72) * *v134, *v154 + *(v152 + 72) * *v136, *v154 + *(v152 + 72) * v137, a3);
      v160 = v138;
      if (v138)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_141;
      }

      if (i - 2 >= *v132)
      {
        goto LABEL_142;
      }

      *v134 = v135;
      *(v134 + 1) = v137;
      v139 = *v132 - i;
      if (*v132 < i)
      {
        goto LABEL_143;
      }

      i = *v132 - 1;
      sub_100121DD0(v136 + 16, v139, v136);
    }

    goto LABEL_125;
  }

  if (v32 == v70)
  {
    goto LABEL_60;
  }

  v71 = *v154;
  v72 = *(v152 + 72);
  v73 = *v154 + v72 * (v32 - 1);
  v162 = -v72;
  v145 = v35;
  v74 = v35 - v32;
  v163 = v71;
  v146 = v72;
  a3 = v71 + v32 * v72;
  v147 = v70;
  v165 = v34;
LABEL_47:
  v161 = v32;
  v149 = a3;
  v150 = v74;
  v75 = v74;
  v151 = v73;
  while (1)
  {
    v168 = v75;
    sub_1000D6980(a3, v16, &qword_1002DBC50, &unk_10023B350);
    sub_1000D6980(v73, v13, &qword_1002DBC50, &unk_10023B350);
    sub_1000D6980(v16, v34, &qword_1002DBC50, &unk_10023B350);
    v77 = *v34;
    v76 = v34[1];
    v78 = v166;
    sub_1000D6980(v13, v166, &qword_1002DBC50, &unk_10023B350);
    if (v77 == *v78 && v76 == v78[1])
    {

      v84 = *(v169 + 48);
      sub_1000D65DC(v78 + v84, type metadata accessor for TSDataSyncTriggerEvent);
      v34 = v165;
      sub_1000D65DC(v165 + v84, type metadata accessor for TSDataSyncTriggerEvent);
      sub_100004E24(v13, &qword_1002DBC50, &unk_10023B350);
      v16 = v167;
      sub_100004E24(v167, &qword_1002DBC50, &unk_10023B350);
LABEL_58:
      v32 = v161 + 1;
      v73 = v151 + v146;
      v74 = v150 - 1;
      a3 = v149 + v146;
      if (v161 + 1 == v147)
      {
        v32 = v147;
        v33 = v159;
        v35 = v145;
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v81 = *(v169 + 48);
    sub_1000D65DC(v78 + v81, type metadata accessor for TSDataSyncTriggerEvent);
    v34 = v165;
    sub_1000D65DC(v165 + v81, type metadata accessor for TSDataSyncTriggerEvent);
    sub_100004E24(v13, &qword_1002DBC50, &unk_10023B350);
    v16 = v167;
    sub_100004E24(v167, &qword_1002DBC50, &unk_10023B350);
    if ((v80 & 1) == 0)
    {
      goto LABEL_58;
    }

    v82 = v168;
    if (!v163)
    {
      break;
    }

    v83 = v164;
    sub_1000DB900(a3, v164, &qword_1002DBC50, &unk_10023B350);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000DB900(v83, v73, &qword_1002DBC50, &unk_10023B350);
    v73 += v162;
    a3 += v162;
    v68 = __CFADD__(v82, 1);
    v75 = v82 + 1;
    if (v68)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1000D9C00(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v92 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v92;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v91 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000657C();
        sub_10013BF14();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1000DBA44();
        sub_10013BF14();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v91;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_1000DB6A0();
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v91;
      if (v91 >= v6)
      {
        v94 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1000DA38C(&v94, *result, a3);
LABEL_102:
}

uint64_t sub_1000DA11C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  i = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8();
    v15 = result;
  }

  v13 = i;
  *i = v15;
  v7 = (v15 + 16);
  for (i = *(v15 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v15 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    sub_1000DABFC();
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1000DA254(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1000DADB0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1000DA38C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1000DB6A0();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

void sub_1000DA4B8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v91 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  __chkstk_darwin(v91);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = (&v79 - v10);
  __chkstk_darwin(v11);
  v82 = &v79 - v12;
  __chkstk_darwin(v13);
  v81 = &v79 - v14;
  __chkstk_darwin(v15);
  v89 = &v79 - v16;
  __chkstk_darwin(v17);
  v86 = (&v79 - v18);
  __chkstk_darwin(v19);
  v88 = &v79 - v20;
  __chkstk_darwin(v21);
  v87 = &v79 - v22;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v25 = a2 - a1;
  v26 = a2 - a1 == 0x8000000000000000 && v24 == -1;
  if (v26)
  {
    goto LABEL_73;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_74;
  }

  v85 = a3;
  v29 = v25 / v24;
  v94 = a1;
  v93 = a4;
  v30 = v27 / v24;
  if (v25 / v24 >= v27 / v24)
  {
    sub_10013CB20(a2, v27 / v24, a4);
    v87 = a4;
    v53 = a4 + v30 * v24;
    v54 = a2;
    v55 = -v24;
    v56 = v53;
    v57 = v85;
    v80 = a1;
LABEL_43:
    v58 = v54 + v55;
    v59 = v57;
    v79 = v56;
    v60 = v56;
    v86 = (v54 + v55);
    v90 = v54;
    while (1)
    {
      if (v53 <= v87)
      {
        v94 = v54;
        v92 = v60;
        goto LABEL_71;
      }

      if (v54 <= a1)
      {
        break;
      }

      v88 = v59;
      v89 = v53;
      v85 = v60;
      v61 = v53 + v55;
      v62 = v81;
      sub_1000D6980(v53 + v55, v81, &qword_1002DBC48, &qword_100232F80);
      v63 = v82;
      sub_1000D6980(v58, v82, &qword_1002DBC48, &qword_100232F80);
      v64 = v62;
      v65 = v83;
      sub_1000D6980(v64, v83, &qword_1002DBC48, &qword_100232F80);
      v67 = *v65;
      v66 = v65[1];
      v68 = v84;
      sub_1000D6980(v63, v84, &qword_1002DBC48, &qword_100232F80);
      if (v67 == *v68 && v66 == v68[1])
      {
        v70 = 0;
      }

      else
      {
        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v71 = v88;
      v57 = v88 + v55;
      v72 = *(v91 + 48);
      v73 = type metadata accessor for Date();
      v74 = *(*(v73 - 8) + 8);
      v74(v84 + v72, v73);
      v74(v83 + v72, v73);
      sub_100004E24(v82, &qword_1002DBC48, &qword_100232F80);
      sub_100004E24(v81, &qword_1002DBC48, &qword_100232F80);
      if (v70)
      {
        v53 = v89;
        v76 = v71 < v90 || v57 >= v90;
        a1 = v80;
        if (v76)
        {
          v54 = v86;
          swift_arrayInitWithTakeFrontToBack();
          v56 = v85;
        }

        else
        {
          v77 = v86;
          v56 = v85;
          v54 = v86;
          if (v71 != v90)
          {
            v78 = v85;
            swift_arrayInitWithTakeBackToFront();
            v54 = v77;
            v56 = v78;
          }
        }

        goto LABEL_43;
      }

      v54 = v90;
      v75 = v71 < v89 || v57 >= v89;
      a1 = v80;
      if (v75)
      {
        swift_arrayInitWithTakeFrontToBack();
        v59 = v57;
        v53 = v61;
        v60 = v61;
        v58 = v86;
      }

      else
      {
        v60 = v61;
        v26 = v89 == v71;
        v59 = v57;
        v53 = v61;
        v58 = v86;
        if (!v26)
        {
          swift_arrayInitWithTakeBackToFront();
          v59 = v57;
          v53 = v61;
          v60 = v61;
        }
      }
    }

    v94 = v54;
    v92 = v79;
  }

  else
  {
    sub_10013CB20(a1, v25 / v24, a4);
    v84 = a4 + v29 * v24;
    v92 = v84;
    v31 = a2;
    v32 = v85;
    while (a4 < v84 && v31 < v32)
    {
      v34 = a1;
      v90 = v31;
      v35 = v87;
      sub_1000D6980(v31, v87, &qword_1002DBC48, &qword_100232F80);
      v36 = v88;
      sub_1000D6980(a4, v88, &qword_1002DBC48, &qword_100232F80);
      v37 = v35;
      v38 = v86;
      sub_1000D6980(v37, v86, &qword_1002DBC48, &qword_100232F80);
      v39 = *v38;
      v40 = v38[1];
      v41 = v36;
      v42 = v89;
      sub_1000D6980(v41, v89, &qword_1002DBC48, &qword_100232F80);
      v43 = a4;
      if (v39 == *v42 && v40 == v42[1])
      {
        v45 = 0;
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v46 = *(v91 + 48);
      v47 = type metadata accessor for Date();
      v48 = *(*(v47 - 8) + 8);
      v48(v89 + v46, v47);
      v48(v86 + v46, v47);
      sub_100004E24(v88, &qword_1002DBC48, &qword_100232F80);
      sub_100004E24(v87, &qword_1002DBC48, &qword_100232F80);
      if (v45)
      {
        v49 = v90 + v24;
        v50 = v34;
        v51 = v34 < v90 || v34 >= v49;
        a4 = v43;
        if (v51)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v49;
          v32 = v85;
        }

        else
        {
          v32 = v85;
          if (v34 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = v49;
        }
      }

      else
      {
        a4 = v43 + v24;
        v50 = v34;
        if (v34 < v43 || v34 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v85;
        }

        else
        {
          v32 = v85;
          if (v34 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v93 = v43 + v24;
        v31 = v90;
      }

      a1 = v50 + v24;
      v94 = a1;
    }
  }

LABEL_71:
  sub_1000DB824(&v94, &v93, &v92, &qword_1002DBC48, &qword_100232F80);
}

uint64_t sub_1000DABFC()
{
  sub_1000DB988();
  sub_1000DBA08();
  if (v7 != v8)
  {
    v6(v2, v4, v0);
    v13 = &v0[24 * v4];
    while (1)
    {
      if (v0 >= v13 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v10 = *v1 == *v0 && *(v1 + 1) == *(v0 + 1);
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v11 = v1;
      v10 = v2 == v1;
      v1 += 24;
      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 24;
    }

    v11 = v0;
    v10 = v2 == v0;
    v0 += 24;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v11;
    *(v2 + 2) = *(v11 + 2);
    *v2 = v12;
    goto LABEL_18;
  }

  v6(v1, v5, v0);
  v13 = &v0[24 * v5];
LABEL_19:
  v14 = v1 - 24;
  for (v3 -= 24; v13 > v0 && v1 > v2; v3 -= 24)
  {
    v16 = *(v13 - 3) == *(v1 - 3) && *(v13 - 2) == *(v1 - 2);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v10 = v3 + 24 == v1;
      v1 -= 24;
      if (!v10)
      {
        v18 = *v14;
        *(v3 + 16) = *(v14 + 2);
        *v3 = v18;
        v1 = v14;
      }

      goto LABEL_19;
    }

    if (v13 != (v3 + 24))
    {
      v17 = *(v13 - 24);
      *(v3 + 16) = *(v13 - 1);
      *v3 = v17;
    }

    v13 -= 24;
  }

LABEL_36:
  v19 = 24 * ((v13 - v0) / 24);
  if (v1 != v0 || v1 >= &v0[v19])
  {
    memmove(v1, v0, v19);
  }

  return 1;
}

uint64_t sub_1000DADB0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_10013CB34(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_10013CB34(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void sub_1000DAF78(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v90 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  __chkstk_darwin(v90);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v84 = &v78 - v10;
  __chkstk_darwin(v11);
  v83 = &v78 - v12;
  __chkstk_darwin(v13);
  v82 = (&v78 - v14);
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  __chkstk_darwin(v18);
  v20 = (&v78 - v19);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v27 = a2 - a1;
  v28 = a2 - a1 == 0x8000000000000000 && v26 == -1;
  if (v28)
  {
    goto LABEL_73;
  }

  v29 = &v78 - v23;
  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_74;
  }

  v32 = a2;
  v33 = v27 / v26;
  v93 = a1;
  v92 = a4;
  v34 = v30 / v26;
  if (v27 / v26 < v30 / v26)
  {
    v82 = v17;
    v83 = v24;
    v85 = a3;
    sub_10013CB5C(a1, v27 / v26, a4);
    v84 = a4 + v33 * v26;
    v91 = v84;
    v35 = v32;
    v86 = v26;
    while (1)
    {
      if (a4 >= v84 || v35 >= v85)
      {
        goto LABEL_71;
      }

      v89 = a1;
      v87 = v35;
      sub_1000D6980(v35, v29, &qword_1002DBC50, &unk_10023B350);
      v88 = a4;
      v37 = v83;
      sub_1000D6980(a4, v83, &qword_1002DBC50, &unk_10023B350);
      sub_1000D6980(v29, v20, &qword_1002DBC50, &unk_10023B350);
      v38 = *v20;
      v39 = v20[1];
      v40 = v20;
      v41 = v82;
      sub_1000D6980(v37, v82, &qword_1002DBC50, &unk_10023B350);
      if (v38 == *v41 && v39 == v41[1])
      {

        v48 = *(v90 + 48);
        sub_1000D65DC(v41 + v48, type metadata accessor for TSDataSyncTriggerEvent);
        sub_1000D65DC(v40 + v48, type metadata accessor for TSDataSyncTriggerEvent);
        sub_100004E24(v37, &qword_1002DBC50, &unk_10023B350);
        sub_100004E24(v29, &qword_1002DBC50, &unk_10023B350);
        v20 = v40;
LABEL_28:
        v46 = v89;
        v45 = v86;
        v35 = v87;
        a4 = v88 + v86;
        if (v89 >= v88 && v89 < a4)
        {
          if (v89 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_36:
            v45 = v86;
          }

          v92 = a4;
          goto LABEL_41;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_36;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v44 = *(v90 + 48);
      sub_1000D65DC(v41 + v44, type metadata accessor for TSDataSyncTriggerEvent);
      sub_1000D65DC(v40 + v44, type metadata accessor for TSDataSyncTriggerEvent);
      sub_100004E24(v37, &qword_1002DBC50, &unk_10023B350);
      sub_100004E24(v29, &qword_1002DBC50, &unk_10023B350);
      v20 = v40;
      if ((v43 & 1) == 0)
      {
        goto LABEL_28;
      }

      v45 = v86;
      v35 = v87 + v86;
      a4 = v88;
      v46 = v89;
      if (v89 < v87 || v89 >= v35)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v89 == v87)
        {
          goto LABEL_41;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v45 = v86;
LABEL_41:
      a1 = v46 + v45;
      v93 = a1;
    }
  }

  v50 = a3;
  v89 = a1;
  sub_10013CB5C(v32, v30 / v26, a4);
  v51 = a4 + v34 * v26;
  v52 = -v26;
  v53 = v51;
  v88 = a4;
  v86 = -v26;
LABEL_43:
  v54 = v32 + v52;
  v87 = v50;
  v79 = v53;
  v55 = v53;
  v81 = v32 + v52;
  while (1)
  {
    if (v51 <= a4)
    {
      v93 = v32;
      v91 = v55;
      goto LABEL_71;
    }

    if (v32 <= v89)
    {
      break;
    }

    v80 = v55;
    v56 = v51 + v52;
    v57 = v82;
    sub_1000D6980(v51 + v52, v82, &qword_1002DBC50, &unk_10023B350);
    v58 = v54;
    v59 = v83;
    sub_1000D6980(v58, v83, &qword_1002DBC50, &unk_10023B350);
    v60 = v84;
    sub_1000D6980(v57, v84, &qword_1002DBC50, &unk_10023B350);
    v61 = *v60;
    v62 = v60[1];
    v63 = v85;
    sub_1000D6980(v59, v85, &qword_1002DBC50, &unk_10023B350);
    v64 = *v63;
    v65 = v63[1];
    if (v61 == v64 && v62 == v65)
    {
      v67 = 0;
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v68 = v87;
    v69 = v87 + v86;
    v70 = *(v90 + 48);
    sub_1000D65DC(v85 + v70, type metadata accessor for TSDataSyncTriggerEvent);
    sub_1000D65DC(v84 + v70, type metadata accessor for TSDataSyncTriggerEvent);
    sub_100004E24(v83, &qword_1002DBC50, &unk_10023B350);
    sub_100004E24(v82, &qword_1002DBC50, &unk_10023B350);
    if (v67)
    {
      v74 = v68 < v32 || v69 >= v32;
      v75 = v68;
      a4 = v88;
      if (v74)
      {
        v50 = v69;
        v32 = v81;
        swift_arrayInitWithTakeFrontToBack();
        v53 = v80;
        v52 = v86;
      }

      else
      {
        v50 = v69;
        v76 = v81;
        v53 = v80;
        v28 = v75 == v32;
        v32 = v81;
        v52 = v86;
        if (!v28)
        {
          v77 = v80;
          swift_arrayInitWithTakeBackToFront();
          v32 = v76;
          v53 = v77;
        }
      }

      goto LABEL_43;
    }

    v71 = v68 < v51 || v69 >= v51;
    v72 = v68;
    a4 = v88;
    v73 = v69;
    if (v71)
    {
      swift_arrayInitWithTakeFrontToBack();
      v87 = v69;
      v51 = v56;
      v55 = v56;
      v52 = v86;
      v54 = v81;
    }

    else
    {
      v55 = v56;
      v28 = v51 == v72;
      v87 = v69;
      v51 = v56;
      v52 = v86;
      v54 = v81;
      if (!v28)
      {
        swift_arrayInitWithTakeBackToFront();
        v87 = v73;
        v51 = v56;
        v55 = v56;
      }
    }
  }

  v93 = v32;
  v91 = v79;
LABEL_71:
  sub_1000DB824(&v93, &v92, &v91, &qword_1002DBC50, &unk_10023B350);
}

uint64_t sub_1000DB6A0()
{
  sub_1000DB988();
  sub_1000DBA08();
  if (v6 != v7)
  {
    sub_10013CC38(v2, v4, v0);
    v12 = (v0 + 32 * v4);
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v9 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v1;
      v9 = v2 == v1;
      v1 += 32;
      if (!v9)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 32;
    }

    v10 = v0;
    v9 = v2 == v0;
    v0 += 32;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v10[1];
    *v2 = *v10;
    *(v2 + 16) = v11;
    goto LABEL_18;
  }

  sub_10013CC38(v1, v5, v0);
  v12 = (v0 + 32 * v5);
LABEL_19:
  v13 = (v1 - 32);
  for (v3 -= 2; v12 > v0 && v1 > v2; v3 -= 2)
  {
    v15 = *(v12 - 4) == *(v1 - 32) && *(v12 - 3) == *(v1 - 24);
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v3 + 2 == v1;
      v1 -= 32;
      if (!v9)
      {
        v17 = v13[1];
        *v3 = *v13;
        v3[1] = v17;
        v1 = v13;
      }

      goto LABEL_19;
    }

    if (v12 != v3 + 2)
    {
      v16 = *(v12 - 1);
      *v3 = *(v12 - 2);
      v3[1] = v16;
    }

    v12 -= 2;
  }

LABEL_36:
  v18 = (v12 - v0) / 32;
  if (v1 != v0 || v1 >= v0 + 32 * v18)
  {
    memmove(v1, v0, 32 * v18);
  }

  return 1;
}

void sub_1000DB824(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_100099DF4(a4, a5);
  sub_10000307C();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  v11 = v6 + (v7 - v6) / v9 * v9;
  if (v5 < v6 || v5 >= v11)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1000DB900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return v4;
}

uint64_t sub_1000DB968()
{

  return sub_10014FE48();
}

uint64_t sub_1000DB9EC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000DBA68(uint64_t a1, uint64_t a2)
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000DBA88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000DBAC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DBB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1000DBB78(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1000DBC28(uint64_t a1)
{
  sub_1000A1F0C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000DBCE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000DBD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_10001666C);
}

uint64_t sub_1000DBD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100016670);
}

uint64_t sub_1000DBE10(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1000DBECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000071F8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for URL();
    sub_1000071F8();
    if (*(v11 + 84) != a2)
    {
      return sub_100002840(*(a1 + *(a3 + 24) + 8));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_100004DFC(v9, a2, v8);
}

void sub_1000DBFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000071F8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for URL();
    sub_1000071F8();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_100002728(v11, a2, a2, v10);
}