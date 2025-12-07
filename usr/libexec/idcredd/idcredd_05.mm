uint64_t sub_10009B96C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009BB10(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_100004E70(&qword_100202100, &qword_1001ACD18);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for PresentmentRequestInterpretation(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10009BCC0, 0, 0);
}

uint64_t sub_10009BCC0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow interpretCredentialRequest", v4, 2u);
  }

  v6 = v1[15];
  v5 = v1[16];
  v7 = v1[14];
  v8 = v1[6];

  (*(v6 + 8))(v5, v7);
  v1[17] = *(v8 + 104);

  v9 = swift_task_alloc();
  v1[18] = v9;
  *v9 = v1;
  v9[1] = sub_10009BE18;
  v10 = v1[13];
  v11 = v1[5];

  return sub_1000A5360(v10, v11);
}

uint64_t sub_10009BE18()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10009C0B8;
  }

  else
  {

    v2 = sub_10009BF34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009BF34()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[6];
  sub_10009DE88(v1, v3, type metadata accessor for PresentmentRequestInterpretation);
  (*(v2 + 56))(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  swift_beginAccess();
  sub_10009DE18(v3, v5 + v6);
  swift_endAccess();
  v7._countAndFlagsBits = 0x6639646364353638;
  v8._object = 0x80000001001B7930;
  v7._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0xD000000000000062;
  logMilestone(tag:description:)(v7, v8);

  v10 = sub_10009AB90(v9);

  sub_10009DEF0(v1, type metadata accessor for PresentmentRequestInterpretation);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10009C0B8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 104))(v1, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009C240(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_100004E70(&qword_100202100, &qword_1001ACD18);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for PresentmentRequestInterpretation(0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10009C3F0, 0, 0);
}

uint64_t sub_10009C3F0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow buildCredentialResponse", v4, 2u);
  }

  v6 = v1[15];
  v5 = v1[16];
  v7 = v1[14];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[10];
  v11 = v1[6];

  (*(v6 + 8))(v5, v7);
  v12 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  swift_beginAccess();
  sub_10009DDA8(v11 + v12, v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v13 = v1[9];
    v14 = v1[7];
    v15 = v1[8];
    sub_10000A0D4(v1[10], &qword_100202100, &qword_1001ACD18);
    v22 = *(v15 + 104);
    v22(v13, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v14);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v22(v1[9], enum case for DIPError.Code.internalError(_:), v1[7]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = v1[1];

    return v16();
  }

  else
  {
    v18 = v1[6];
    sub_10009DF50(v1[10], v1[13], type metadata accessor for PresentmentRequestInterpretation);
    v1[17] = *(v18 + 112);

    v19 = swift_task_alloc();
    v1[18] = v19;
    *v19 = v1;
    v19[1] = sub_10009C7E4;
    v20 = v1[13];
    v21 = v1[5];

    return sub_1000C0A7C(v21, v20);
  }
}

uint64_t sub_10009C7E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_10009C9D8;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_10009C928;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10009C928()
{
  sub_10009DEF0(v0[13], type metadata accessor for PresentmentRequestInterpretation);

  v1 = v0[1];
  v2 = v0[20];

  return v1(v2);
}

uint64_t sub_10009C9D8()
{
  v1 = v0[8];
  sub_10009DEF0(v0[13], type metadata accessor for PresentmentRequestInterpretation);
  (*(v1 + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10009CB78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10009CC94, 0, 0);
}

uint64_t sub_10009CC94(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow buildErrorResponse", v4, 2u);
  }

  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  v8 = v1[3];

  (*(v6 + 8))(v5, v7);
  v1[10] = *(v8 + 112);

  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_10009CDE8;
  v10 = v1[2];

  return sub_1000C61BC(v10);
}

uint64_t sub_10009CDE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 96) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009CF58, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10009CF58()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009D0BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009D1DC, 0, 0);
}

uint64_t sub_10009D1DC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow interpretGenericDataRequest", v4, 2u);
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  v8 = v1[4];

  (*(v6 + 8))(v5, v7);
  v1[11] = *(v8 + 104);

  v9 = swift_task_alloc();
  v1[12] = v9;
  *v9 = v1;
  v9[1] = sub_10009D330;
  v11 = v1[2];
  v10 = v1[3];

  return sub_1000B9620(v11, v10);
}

uint64_t sub_10009D330(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 104) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009D4A0, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10009D4A0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009D60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009D72C, 0, 0);
}

uint64_t sub_10009D72C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow buildGenericDataResponse", v4, 2u);
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  v8 = v1[4];

  (*(v6 + 8))(v5, v7);
  v1[11] = *(v8 + 112);

  v9 = swift_task_alloc();
  v1[12] = v9;
  *v9 = v1;
  v9[1] = sub_10009D880;
  v11 = v1[2];
  v10 = v1[3];

  return sub_1000C72A8(v11, v10);
}

uint64_t sub_10009D880(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 104) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009D9F0, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10009D9F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void *sub_10009DB54()
{

  sub_10000A0D4(v0 + OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation, &qword_100202100, &qword_1001ACD18);

  return v0;
}

uint64_t sub_10009DBD4()
{
  sub_10009DB54();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PresentmentFlow(uint64_t a1)
{
  result = qword_100201F88;
  if (!qword_100201F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009DC80(uint64_t a1)
{
  sub_10009DD50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10009DD50(uint64_t a1)
{
  if (!qword_100201F98)
  {
    type metadata accessor for PresentmentRequestInterpretation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100201F98);
    }
  }
}

uint64_t sub_10009DDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202100, &qword_1001ACD18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202100, &qword_1001ACD18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009DF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202108, &qword_1001ACD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E028(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v120 = a6;
  v121 = a7;
  v115 = a4;
  v116 = a5;
  v114 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v118 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v112 - v15;
  v17 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  v18 = type metadata accessor for PresentmentRequestInterpretation(0);
  (*(*(v18 - 8) + 56))(v8 + v17, 1, 1, v18);
  defaultLogger()();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  *&v119 = a2;
  v117 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *&v113 = swift_slowAlloc();
    *&v122 = v113;
    *v22 = 136315394;
    v23 = Array.description.getter();
    v25 = sub_10010150C(v23, v24, &v122);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = DCPresentmentTypeToString();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = a1;
    v29 = v11;
    v31 = v30;

    v32 = v27;
    a2 = v119;
    v33 = sub_10010150C(v32, v31, &v122);
    v11 = v29;
    a1 = v28;

    *(v22 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v19, v20, "PresentmentFlow init with partitions = %s, type = %s", v22, 0x16u);
    swift_arrayDestroy();

    v12 = v117;
  }

  v34 = *(v12 + 8);
  v34(v16, v11);
  v35 = v114;
  if (v114)
  {
    v36 = v114;
    defaultLogger()();
    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v35;
      v43 = v11;
      v44 = v41;
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v42;
      v45 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Presentment session options: %@", v40, 0xCu);
      sub_10000A0D4(v44, &qword_1002003B8, &unk_1001AB850);
      v11 = v43;
    }

    v34(v118, v11);
    v46 = [v37 sessionEncryptionMode];
    v47 = [v37 readerAuthenticationPolicy];
    v48 = [v37 elementFallbackModes];
    v49 = [v37 messageEncodingFormat];

    *(v8 + 56) = v46;
    *(v8 + 64) = v47;
    *(v8 + 72) = v48;
    *(v8 + 80) = v49;
    *(v8 + 88) = 0;
  }

  else
  {
    *(v8 + 72) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 88) = 1;
  }

  v50 = sub_10010D640(a1);

  *(v8 + 16) = v50;
  *(v8 + 24) = a2;
  v51 = v115;
  v52 = v116;
  *(v8 + 32) = v115;
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v54 = v51;
    swift_retain_n();
    v55 = sub_10009AE54();
    type metadata accessor for BiometricsHelper();
    swift_allocObject();
    v56 = BiometricsHelper.init()();
    v123 = type metadata accessor for DeviceInformationProvider();
    v124 = &protocol witness table for DeviceInformationProvider;
    sub_10001A9A4(&v122);
    DeviceInformationProvider.init()();
    type metadata accessor for BiometricStorage();
    v53 = swift_allocObject();
    v53[2] = v54;
    v53[8] = v55;
    type metadata accessor for AppleIDVManager();
    sub_1000215BC(v53 + 3);
    v53[9] = v56;
    sub_10001AA08(&v122, (v53 + 10));
  }

  *(v8 + 40) = v53;
  type metadata accessor for ACLFetcher();
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  type metadata accessor for AppleIDVManager();
  swift_retain_n();
  sub_1000215BC((v57 + 24));
  *(v8 + 48) = v57;
  v58 = *(v8 + 24);
  v59 = *(v8 + 56);
  v60 = *(v8 + 64);
  v61 = *(v8 + 72);
  v62 = *(v8 + 80);
  v63 = *(v8 + 88);
  type metadata accessor for PresentmentSessionCryptor();
  v64 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v64 + 160) = 0;
  *(v64 + 112) = v58;
  *(v64 + 120) = v59;
  *(v64 + 128) = v60;
  *(v64 + 136) = v61;
  *(v64 + 144) = v62;
  *(v64 + 152) = v63;
  *(v8 + 96) = v64;
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v65 = v121;

  v66 = SEPairingManager.init()();
  v67 = type metadata accessor for GenericPasswordKeychainWrapper();
  v68 = swift_allocObject();
  v123 = v67;
  v124 = &off_1001F4DE8;
  *&v122 = v68;
  v69 = type metadata accessor for SyncableKeyStoreProvider();
  v70 = swift_allocObject();
  v71 = sub_1000129AC(&v122, v67);
  __chkstk_darwin(v71);
  v73 = (&v112 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v73;
  v70[5] = v67;
  v70[6] = &off_1001F4DE8;
  v70[2] = v75;
  sub_100005090(&v122);
  v123 = v69;
  v124 = &off_1001F5068;
  *&v122 = v70;
  type metadata accessor for CredentialKeyManager();
  v76 = swift_allocObject();
  v77 = sub_1000129AC(&v122, v69);
  __chkstk_darwin(v77);
  v79 = (&v112 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79);
  v81 = sub_1000F20BC(v65, v66, *v79, v76);
  sub_100005090(&v122);
  *(v8 + OBJC_IVAR____TtC7idcredd15PresentmentFlow_credentialKeyManager) = v81;
  v82 = *(v8 + 16);
  LODWORD(v118) = *(v8 + 88);
  v83 = *(v8 + 32);
  v84 = *(v8 + 96);
  v85 = *(v8 + 48);
  type metadata accessor for PresentmentKeySelectionProvider();
  v116 = swift_allocObject();
  v117 = type metadata accessor for ReaderMetadataProvider(0);
  v86 = type metadata accessor for PayloadProcessorBuilder();
  v123 = v86;
  v124 = &off_1001F78E8;
  *&v122 = v120;
  type metadata accessor for PresentmentRequestInterpreter(0);
  v87 = swift_allocObject();
  v88 = *(v8 + 56);
  v112 = *(v8 + 72);
  v113 = v88;
  v89 = sub_1000129AC(&v122, v86);
  v114 = &v112;
  v115 = v86;
  __chkstk_darwin(v89);
  v91 = (&v112 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  v93 = *v91;
  v94 = (v87 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_payloadProcessorBuilder);
  v94[3] = v86;
  v94[4] = &off_1001F78E8;
  *v94 = v93;
  v95 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  v96 = type metadata accessor for IdentityReaderAuthenticator(0);
  (*(*(v96 - 8) + 56))(v87 + v95, 1, 1, v96);
  v97 = v119;
  *(v87 + 24) = v84;
  *(v87 + 32) = v97;
  *(v87 + 16) = v82;
  v98 = v113;
  *(v87 + 56) = v112;
  *(v87 + 40) = v98;
  *(v87 + 72) = v118;
  *(v87 + 80) = v83;
  *(v87 + 88) = v85;
  *(v87 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_credentialKeyManager) = v81;
  v99 = v117;
  *(v87 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_presentmentKeySelectionProvider) = v116;
  v100 = (v87 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider);
  *v100 = v99;
  v100[1] = &off_1001F7740;

  v101 = v120;

  sub_100005090(&v122);
  *(v8 + 104) = v87;
  v119 = *(v8 + 56);
  v102 = *(v8 + 72);
  v103 = *(v8 + 80);
  LOBYTE(v95) = *(v8 + 88);
  v105 = *(v8 + 24);
  v104 = *(v8 + 32);
  v106 = *(v8 + 96);
  v108 = *(v8 + 40);
  v107 = *(v8 + 48);
  type metadata accessor for PresentmentResponseBuilder();
  v109 = swift_allocObject();
  *(v109 + 16) = v105;
  *(v109 + 24) = v119;
  *(v109 + 40) = v102;
  *(v109 + 48) = v103;
  *(v109 + 56) = v95;
  *(v109 + 64) = v104;
  *(v109 + 72) = v106;
  *(v109 + 112) = v115;
  *(v109 + 80) = v107;
  *(v109 + 88) = v101;
  *(v109 + 136) = v108;
  v110 = v121;
  *(v109 + 120) = &off_1001F78E8;
  *(v109 + 128) = v110;
  *(v8 + 112) = v109;

  return v8;
}

uint64_t sub_10009EA7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009EB9C, 0, 0);
}

uint64_t sub_10009EB9C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow generateTransportKey", v4, 2u);
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  v8 = v1[4];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 96);
  v1[11] = v9;

  return _swift_task_switch(sub_10009ECBC, v9, 0);
}

uint64_t sub_10009ECBC()
{
  v1 = sub_1000DFA34(v0[2], v0[3]);
  v0[12] = 0;
  v2 = v1;
  v4 = v3;

  v0[13] = v4;
  v0[14] = v2;

  return _swift_task_switch(sub_10009ED60, 0, 0);
}

uint64_t sub_10009ED60()
{
  v1._countAndFlagsBits = 0x6165306264333232;
  v2._object = 0x80000001001B7A50;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000004BLL;
  logMilestone(tag:description:)(v1, v2);

  v3 = v0[1];
  v5 = v0[13];
  v4 = v0[14];

  return v3(v4, v5);
}

uint64_t sub_10009EE08()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

unint64_t sub_10009EF98(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009F024(char *a1, NSObject *a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v194 = a4;
  v191 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v187 = v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v192 = v184 - v15;
  v16 = __chkstk_darwin(v14);
  v189 = v184 - v17;
  v18 = __chkstk_darwin(v16);
  v193 = v184 - v19;
  v20 = __chkstk_darwin(v18);
  v190 = v184 - v21;
  v22 = __chkstk_darwin(v20);
  v185 = v184 - v23;
  v24 = __chkstk_darwin(v22);
  v188 = v184 - v25;
  v26 = __chkstk_darwin(v24);
  v186 = v184 - v27;
  __chkstk_darwin(v26);
  v29 = v184 - v28;
  defaultLogger()();

  v30 = a6;
  sub_100032EBC(a2, a3);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v200 = a5;

  v202 = a2;
  sub_10001C120(a2, a3);
  LODWORD(isa) = v32;
  v33 = os_log_type_enabled(v31, v32);
  v196 = a3;
  v197 = v11;
  v34 = a3 >> 60;
  v198 = v10;
  v199 = v30;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v205 = v36;
    *v35 = 136315650;
    v37 = [v30 credentialIdentifier];
    v184[1] = v36;
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    countAndFlagsBits = 0x3E6C696E3CLL;
    v44 = sub_10010150C(v39, v41, &v205);

    *(v35 + 4) = v44;
    *(v35 + 12) = 2080;
    if (v200)
    {
      v45 = v194;
    }

    else
    {
      v45 = 0x3E6C696E3CLL;
    }

    object = 0xE500000000000000;
    if (v200)
    {
      v47 = v200;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = sub_10010150C(v45, v47, &v205);

    *(v35 + 14) = v48;
    *(v35 + 22) = 2080;
    v42 = v196;
    if (v34 <= 0xE)
    {
      v49 = Data.base16EncodedString()();
      countAndFlagsBits = v49._countAndFlagsBits;
      object = v49._object;
    }

    v50 = sub_10010150C(countAndFlagsBits, object, &v205);

    *(v35 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v31, isa, "PresentmentKeySelectionProvider selectPresentmentKey credential = %s, relyingPartyIdentifier = %s, requiredPublicKeyIdentifier = %s", v35, 0x20u);
    swift_arrayDestroy();

    v10 = v198;
    isa = v197[1].isa;
    isa(v29, v198);
  }

  else
  {

    isa = v11[1].isa;
    isa(v29, v10);
    v42 = v196;
  }

  v52 = v201;
  v51 = v202;
  if (v34 <= 0xE)
  {
    v73 = v10;
    sub_100009708(v202, v42);
    sub_10005A084();
    if (v52)
    {
      sub_10001C120(v51, v42);
      return v31;
    }

    v75 = v74;
    if (!(v74 >> 62))
    {
      v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
      v53 = v202;
      v201 = v52;
      if (!v31)
      {
LABEL_103:

        v108 = v188;
        defaultLogger()();
        sub_100032EBC(v53, v42);
        v109 = v53;
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        sub_10001C120(v109, v42);
        if (os_log_type_enabled(v110, v111))
        {
          v112 = v42;
          v113 = swift_slowAlloc();
          v114 = v108;
          v115 = swift_slowAlloc();
          *&v205 = v115;
          *v113 = 136315138;
          v116 = Data.base16EncodedString()();
          v117 = sub_10010150C(v116._countAndFlagsBits, v116._object, &v205);

          *(v113 + 4) = v117;
          _os_log_impl(&_mh_execute_header, v110, v111, "No key was found with matching public key identifier %s", v113, 0xCu);
          sub_100005090(v115);

          sub_10001C120(v109, v112);
          v118 = v198;
          v119 = v114;
        }

        else
        {
          sub_10001C120(v109, v42);

          v119 = v108;
          v118 = v73;
        }

        isa(v119, v118);
        return 0;
      }

      v52 = 0;
      v200 = v75 & 0xC000000000000001;
      if (v202)
      {
        v76 = 0;
      }

      else
      {
        v76 = v42 == 0xC000000000000000;
      }

      v77 = !v76;
      LODWORD(v192) = v77;
      v193 = (v75 & 0xFFFFFFFFFFFFFF8);
      v194 = v42 >> 62;
      v78 = __OFSUB__(HIDWORD(v202), v202);
      LODWORD(v190) = v78;
      v189 = (HIDWORD(v202) - v202);
      v191 = BYTE6(v42);
      v199 = v75;
      while (1)
      {
        if (v200)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *(v193 + 2))
          {
            goto LABEL_182;
          }

          v79 = *(v75 + 8 * v52 + 32);
        }

        v80 = v79;
        v10 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_178;
        }

        v81 = [v79 publicKeyIdentifier];
        if (v81)
        {
          v82 = v81;
          v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v83;

          if (v75 >> 60 != 15)
          {
            v84 = v75 >> 62;
            if (v75 >> 62 == 3)
            {
              if (v51)
              {
                v85 = 0;
              }

              else
              {
                v85 = v75 == 0xC000000000000000;
              }

              v87 = !v85 || v194 < 3;
              if (((v87 | v192) & 1) == 0)
              {
                sub_100032EBC(0, 0xC000000000000000);
                sub_10001C120(0, 0xC000000000000000);
                v51 = 0;
                goto LABEL_155;
              }

              v88 = 0;
              v89 = v202;
            }

            else if (v84 > 1)
            {
              v89 = v202;
              if (v84 == 2)
              {
                v91 = *(v51 + 16);
                v90 = *(v51 + 24);
                v92 = __OFSUB__(v90, v91);
                v88 = v90 - v91;
                if (v92)
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v88 = 0;
              }
            }

            else
            {
              v89 = v202;
              if (v84)
              {
                LODWORD(v88) = HIDWORD(v51) - v51;
                if (__OFSUB__(HIDWORD(v51), v51))
                {
                  goto LABEL_233;
                }

                v88 = v88;
              }

              else
              {
                v88 = BYTE6(v75);
              }
            }

            if (v194 > 1)
            {
              if (v194 == 2)
              {
                v95 = *(v89 + 16);
                v94 = *(v89 + 24);
                v92 = __OFSUB__(v94, v95);
                v93 = (v94 - v95);
                if (v92)
                {
                  goto LABEL_186;
                }

                goto LABEL_77;
              }

              if (!v88)
              {
LABEL_153:
                sub_100032EBC(v89, v42);
                sub_10001C120(v89, v42);
LABEL_155:
                sub_10001C120(v51, v75);
LABEL_156:

                v135 = v186;
                defaultLogger()();
                v136 = v202;
                sub_100032EBC(v202, v42);
                v31 = v80;
                v137 = Logger.logObject.getter();
                v138 = static os_log_type_t.debug.getter();

                sub_10001C120(v136, v42);
                if (!os_log_type_enabled(v137, v138))
                {
                  sub_10001C120(v136, v42);

                  v145 = v135;
                  v146 = v73;
                  goto LABEL_173;
                }

                v139 = swift_slowAlloc();
                *&v205 = swift_slowAlloc();
                *v139 = 136315394;
                v140 = [v31 identifier];
                if (v140)
                {
                  v141 = v140;
                  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v144 = v143;
                }

                else
                {
                  v142 = 0x3E6C696E3CLL;
                  v144 = 0xE500000000000000;
                }

                v154 = sub_10010150C(v142, v144, &v205);

                *(v139 + 4) = v154;
                *(v139 + 12) = 2080;
                v155 = v202;
                v156 = v196;
                v157 = Data.base16EncodedString()();
                v158 = sub_10010150C(v157._countAndFlagsBits, v157._object, &v205);

                *(v139 + 14) = v158;
                _os_log_impl(&_mh_execute_header, v137, v138, "Found key %s with matching public key identifier %s", v139, 0x16u);
                swift_arrayDestroy();

                sub_10001C120(v155, v156);
                v145 = v186;
                goto LABEL_172;
              }
            }

            else
            {
              v93 = v191;
              if (v194)
              {
                v93 = v189;
                if (v190)
                {
                  goto LABEL_185;
                }
              }

LABEL_77:
              if (v88 == v93)
              {
                if (v88 < 1)
                {
                  goto LABEL_153;
                }

                if (v84 > 1)
                {
                  if (v84 != 2)
                  {
                    *(&v205 + 6) = 0;
                    *&v205 = 0;
                    sub_100032EBC(v89, v42);
                    sub_100032EBC(v89, v42);
                    sub_100032EBC(v51, v75);
LABEL_99:
                    v107 = v201;
                    sub_100100058(&v205, v89, v42, &v203);
                    v201 = v107;
                    if (v107)
                    {
                      goto LABEL_239;
                    }

                    sub_10001C120(v89, v42);
                    sub_10001C120(v51, v75);
                    sub_10001C120(v89, v42);
                    v106 = v203;
                    goto LABEL_101;
                  }

                  v96 = *(v51 + 16);
                  v187 = *(v51 + 24);
                  sub_100032EBC(v89, v42);
                  sub_100032EBC(v89, v42);
                  sub_100032EBC(v51, v75);
                  v97 = __DataStorage._bytes.getter();
                  if (v97)
                  {
                    v98 = __DataStorage._offset.getter();
                    if (__OFSUB__(v96, v98))
                    {
                      goto LABEL_236;
                    }

                    v97 += v96 - v98;
                  }

                  if (__OFSUB__(v187, v96))
                  {
                    goto LABEL_235;
                  }

                  __DataStorage._length.getter();
                  v99 = v97;
                  v100 = v201;
                  v89 = v202;
                  v42 = v196;
                  sub_100100058(v99, v202, v196, &v205);
                  v201 = v100;
                  if (v100)
                  {
                    goto LABEL_239;
                  }

                  sub_10001C120(v89, v42);
                  sub_10001C120(v51, v75);
                  sub_10001C120(v89, v42);
                  v101 = v205;
                  sub_10001C120(v51, v75);
                  v73 = v198;
                  if (v101)
                  {
                    goto LABEL_156;
                  }
                }

                else
                {
                  if (!v84)
                  {
                    *&v205 = v51;
                    WORD4(v205) = v75;
                    BYTE10(v205) = BYTE2(v75);
                    BYTE11(v205) = BYTE3(v75);
                    BYTE12(v205) = BYTE4(v75);
                    BYTE13(v205) = BYTE5(v75);
                    sub_100032EBC(v202, v42);
                    sub_100032EBC(v202, v42);
                    sub_100032EBC(v51, v75);
                    v89 = v202;
                    goto LABEL_99;
                  }

                  v187 = ((v51 >> 32) - v51);
                  if (v51 >> 32 < v51)
                  {
                    goto LABEL_234;
                  }

                  sub_100032EBC(v89, v42);
                  sub_100032EBC(v89, v42);
                  sub_100032EBC(v51, v75);
                  v102 = __DataStorage._bytes.getter();
                  if (v102)
                  {
                    v103 = __DataStorage._offset.getter();
                    if (__OFSUB__(v51, v103))
                    {
                      goto LABEL_237;
                    }

                    v102 += v51 - v103;
                  }

                  v73 = v198;
                  __DataStorage._length.getter();
                  v104 = v102;
                  v105 = v201;
                  v89 = v202;
                  v42 = v196;
                  sub_100100058(v104, v202, v196, &v205);
                  v201 = v105;
                  if (v105)
                  {
                    goto LABEL_239;
                  }

                  sub_10001C120(v89, v42);
                  sub_10001C120(v51, v75);
                  sub_10001C120(v89, v42);
                  v106 = v205;
LABEL_101:
                  sub_10001C120(v51, v75);
                  if (v106)
                  {
                    goto LABEL_156;
                  }
                }

LABEL_102:

                v53 = v202;
                goto LABEL_40;
              }
            }

            sub_100032EBC(v89, v42);
            sub_10001C120(v89, v42);
            sub_10001C120(v51, v75);
            goto LABEL_102;
          }

          v53 = v202;
        }

        else
        {
          v51 = 0;
          v75 = 0xF000000000000000;
        }

        sub_100032EBC(v53, v42);

        sub_10001C120(v51, v75);
        sub_10001C120(v53, v42);
LABEL_40:
        v75 = v199;
        ++v52;
        if (v10 == v31)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_187:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_27;
  }

  v42 = v200;
  if (v200)
  {
    v53 = v199;
    v54 = [v199 credentialIdentifier];
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      *&v205 = v57;
      *(&v205 + 1) = v59;
      v60._countAndFlagsBits = 11565;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = v194;
      v61._object = v42;
      String.append(_:)(v61);
      v62 = v205;
      v63 = sub_100056960(v205, *(&v205 + 1));
      if (v52)
      {
        *&v205 = 0;
        *(&v205 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        *&v205 = 0xD00000000000001DLL;
        *(&v205 + 1) = 0x80000001001B4DB0;
        String.append(_:)(v62);

        v64 = v187;
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        v65 = v64;
        v66 = v198;
        isa(v65, v198);
        v31 = 0;
        v52 = 0;
      }

      else
      {
        v31 = v63;

        if (v31)
        {
          v51 = v31;
          v126 = [v51 presentmentKeys];
          if (v126)
          {
            v127 = v126;
            v128 = [v126 anyObject];

            if (v128)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v203 = 0u;
              v204 = 0u;
            }

            v66 = v198;
            v205 = v203;
            v206 = v204;
            if (*(&v204 + 1))
            {
              type metadata accessor for StoredCryptoKey();
              if (swift_dynamicCast())
              {
                v147 = v203;
                v148 = [v203 payload];
                if (v148)
                {

                  v75 = v185;
                  defaultLogger()();

                  v31 = v147;
                  v53 = Logger.logObject.getter();
                  LOBYTE(v73) = static os_log_type_t.debug.getter();

                  if (!os_log_type_enabled(v53, v73))
                  {

                    isa(v75, v198);
                    return v31;
                  }

                  v201 = 0;
                  v10 = swift_slowAlloc();
                  *&v205 = swift_slowAlloc();
                  *v10 = 136315394;
                  v149 = [v31 identifier];
                  if (v149)
                  {
                    v150 = v149;
                    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v153 = v152;

                    v75 = v185;
                    goto LABEL_180;
                  }

LABEL_179:
                  v151 = 0x3E6C696E3CLL;
                  v153 = 0xE500000000000000;
LABEL_180:
                  v159 = sub_10010150C(v151, v153, &v205);

                  *(v10 + 4) = v159;
                  *(v10 + 12) = 2080;
                  *(v10 + 14) = sub_10010150C(v194, v200, &v205);
                  _os_log_impl(&_mh_execute_header, v53, v73, "Found key %s with relying party identifier %s", v10, 0x16u);
                  swift_arrayDestroy();

                  v145 = v75;
LABEL_172:
                  v146 = v198;
LABEL_173:
                  isa(v145, v146);
                  return v31;
                }
              }

              else
              {
              }

              goto LABEL_20;
            }
          }

          else
          {

            v205 = 0u;
            v206 = 0u;
            v66 = v198;
          }

          sub_10000B5B4(&v205);
        }

        else
        {
          v66 = v198;
        }
      }

LABEL_20:
      v67 = v190;
      defaultLogger()();

      v51 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v68))
      {
        v69 = swift_slowAlloc();
        v10 = 0;
        v70 = swift_slowAlloc();
        *&v205 = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_10010150C(v194, v42, &v205);
        _os_log_impl(&_mh_execute_header, v51, v68, "No existing RP found for relying party identifier %s", v69, 0xCu);
        sub_100005090(v70);
        v52 = 0;

        v71 = v198;
        v72 = v67;
      }

      else
      {

        v72 = v67;
        v71 = v66;
      }

      isa(v72, v71);
      v53 = v55;
    }
  }

  else
  {
    v53 = v199;
  }

  sub_10005A084();
  if (v52)
  {
    return v31;
  }

  v31 = v120;
  *&v205 = _swiftEmptyArrayStorage;
  if (v120 >> 62)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = _swiftEmptyArrayStorage;
  v201 = 0;
  if (!v73)
  {
    v73 = _swiftEmptyArrayStorage;
    goto LABEL_130;
  }

  v123 = 0;
  v75 = v31 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v123 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v124 = *(v31 + 8 * v123 + 32);
    }

    v10 = v124;
    v51 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v125 = [v124 payload];
    if (v125)
    {

      v53 = &v205;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = *(v205 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v123;
  }

  while (v51 != v73);
  v73 = v205;
  v122 = _swiftEmptyArrayStorage;
LABEL_130:

  if (v73 < 0 || (v73 & 0x4000000000000000) != 0)
  {
    v129 = _CocoaArrayWrapper.endIndex.getter();
    if (!v129)
    {
      goto LABEL_190;
    }

LABEL_133:
    v75 = v73 & 0xC000000000000001;
    if ((v73 & 0xC000000000000001) != 0)
    {
      v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v73 + 16))
      {
        __break(1u);
        goto LABEL_229;
      }

      v130 = *(v73 + 32);
    }

    v131 = v130;
    if (v129 == 1)
    {
LABEL_137:
      v132 = v131;
LABEL_138:
      v133 = [v132 timesUsed];

      v122 = _swiftEmptyArrayStorage;
      goto LABEL_191;
    }

    v52 = 1;
    while (1)
    {
      if (v75)
      {
        v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        if (v52 >= *(v73 + 16))
        {
          goto LABEL_184;
        }

        v134 = *(v73 + 8 * v52 + 32);
      }

      v132 = v134;
      v51 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v42 = [v134 timesUsed];
      if (v42 < [v131 timesUsed])
      {

        v131 = v132;
        ++v52;
        if (v51 == v129)
        {
          goto LABEL_138;
        }
      }

      else
      {

        ++v52;
        if (v51 == v129)
        {
          goto LABEL_137;
        }
      }
    }

    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v129 = *(v73 + 16);
  if (v129)
  {
    goto LABEL_133;
  }

LABEL_190:
  v133 = 0;
LABEL_191:
  defaultLogger()();
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    *(v42 + 4) = v133;
    _os_log_impl(&_mh_execute_header, v160, v161, "Minimum key times used is %lld", v42, 0xCu);
  }

  v202 = v197 + 1;
  isa(v193, v198);
  *&v205 = _swiftEmptyArrayStorage;
  if (!v129)
  {
LABEL_205:

    v51 = v192;
    v161 = v189;
    if (v122 < 0 || (v122 & 0x4000000000000000) != 0)
    {
      goto LABEL_220;
    }

    v164 = *(v122 + 16);
    v73 = v198;
    if (v164)
    {
      goto LABEL_208;
    }

    goto LABEL_224;
  }

  v162 = 0;
  while (1)
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v162 >= *(v73 + 16))
      {
        goto LABEL_219;
      }

      v163 = *(v73 + 8 * v162 + 32);
    }

    v161 = v163;
    v122 = v162 + 1;
    if (__OFADD__(v162, 1))
    {
      break;
    }

    if ([v163 timesUsed] == v133)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = *(v205 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v162;
    if (v122 == v129)
    {
      v122 = v205;
      goto LABEL_205;
    }
  }

  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  v180 = _CocoaArrayWrapper.endIndex.getter();
  v73 = v198;
  if (!v180)
  {
LABEL_224:

    defaultLogger()();
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&_mh_execute_header, v181, v182, "No keys have minimum times used; this should not happen", v183, 2u);
    }

    isa(v161, v73);
    return 0;
  }

  v89 = v122;
  v164 = _CocoaArrayWrapper.endIndex.getter();
  if ((v164 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_239:
    result = sub_10001C120(v89, v42);
    __break(1u);
    return result;
  }

  v73 = v198;
  v51 = v192;
  if (!v164)
  {
    __break(1u);
    goto LABEL_224;
  }

LABEL_208:
  v165 = sub_10009EF98(v164);
  if ((v122 & 0xC000000000000001) != 0)
  {
LABEL_229:
    v166 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_212;
  }

  if ((v165 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
  }

  if (v165 >= *(v122 + 16))
  {
    goto LABEL_231;
  }

  v166 = *(v122 + 8 * v165 + 32);
LABEL_212:
  v167 = v166;

  defaultLogger()();
  v168 = v167;
  v169 = v51;
  v31 = v168;
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    *&v205 = v173;
    *v172 = 136315138;
    v174 = [v31 identifier];
    if (v174)
    {
      v175 = v174;
      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = v177;
    }

    else
    {
      v176 = 0x3E6C696E3CLL;
      v178 = 0xE500000000000000;
    }

    v179 = sub_10010150C(v176, v178, &v205);

    *(v172 + 4) = v179;
    _os_log_impl(&_mh_execute_header, v170, v171, "Selected random key %s", v172, 0xCu);
    sub_100005090(v173);

    isa(v192, v198);
  }

  else
  {

    isa(v169, v73);
  }

  return v31;
}

void sub_1000A09B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v35 = type metadata accessor for DIPError.Code();
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10005634C(a4, a5);
  if (v7)
  {
    v18 = v31;
    v17 = v32;
LABEL_3:
    (*(v18 + 104))(v17, enum case for DIPError.Code.internalError(_:), v35);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  if (!v16)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v33 = 0xD00000000000001FLL;
    v34 = 0x80000001001B7B70;
    v23._countAndFlagsBits = a4;
    v23._object = a5;
    String.append(_:)(v23);
    v18 = v31;
    v17 = v32;
    (*(v31 + 104))(v32, enum case for DIPError.Code.invalidStoredData(_:), v35);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_3;
  }

  if (a7)
  {
    v19 = v16;
    v33 = a2;
    v34 = a3;

    v20._countAndFlagsBits = 11565;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = a6;
    v21._object = a7;
    String.append(_:)(v21);
    v22 = sub_100056960(v33, v34);
    if (v22)
    {
      v24 = v19;
      v25 = v22;

      v26 = v25;
    }

    else
    {
      type metadata accessor for StoredRelyingParty();
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
      v27 = String._bridgeToObjectiveC()();

      [v25 setRelyingPartyIdentifier:v27];

      v24 = v19;
      v26 = 0;
    }

    v28 = v26;
    [v25 addPresentmentKeysObject:v24];

    v16 = v24;
  }

  v29 = v16;
  v30 = [v16 timesUsed];
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    [v29 setTimesUsed:v30 + 1];
  }
}

uint64_t sub_1000A0DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1000A0EE4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_1000A0F8C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_1000A1058(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void *sub_1000A1124(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v396 = a2;
  v391 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v7 = *(v391 - 8);
  v8 = __chkstk_darwin(v391);
  v368 = (&v352 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v367 = &v352 - v11;
  __chkstk_darwin(v10);
  v376 = &v352 - v12;
  v13 = sub_100004E70(&qword_100202428, &qword_1001ACEB0);
  v14 = __chkstk_darwin(v13 - 8);
  v382 = &v352 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v383 = &v352 - v16;
  v404 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v17 = *(v404 - 8);
  v18 = __chkstk_darwin(v404);
  v405 = &v352 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v393 = &v352 - v21;
  __chkstk_darwin(v20);
  v406 = &v352 - v22;
  v440 = type metadata accessor for ISO18013IssuerSignedItem();
  v23 = *(v440 - 8);
  v24 = __chkstk_darwin(v440);
  v403 = &v352 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v402 = &v352 - v27;
  v28 = __chkstk_darwin(v26);
  v361 = &v352 - v29;
  v30 = __chkstk_darwin(v28);
  v366 = &v352 - v31;
  __chkstk_darwin(v30);
  v436 = &v352 - v32;
  v410 = type metadata accessor for Logger();
  v33 = *(v410 - 8);
  v34 = __chkstk_darwin(v410);
  v379 = &v352 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v424 = &v352 - v36;
  v37 = a3;
  v442 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v38 = __chkstk_darwin(v442);
  v419 = &v352 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v381 = &v352 - v41;
  v42 = __chkstk_darwin(v40);
  v365 = &v352 - v43;
  v44 = __chkstk_darwin(v42);
  v434 = &v352 - v45;
  v46 = __chkstk_darwin(v44);
  v421 = &v352 - v47;
  v48 = __chkstk_darwin(v46);
  v445 = &v352 - v49;
  v50 = __chkstk_darwin(v48);
  v425 = &v352 - v51;
  __chkstk_darwin(v50);
  v392 = &v352 - v53;
  v54 = *(a1 + 56);
  v374 = a1 + 56;
  v55 = 1 << *(a1 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & v54;
  v373 = (v55 + 63) >> 6;
  v450[1] = v52 + 16;
  v438 = v52 + 32;
  v439 = (v23 + 8);
  v441 = v52;
  v448 = (v52 + 8);
  v409 = (v33 + 8);
  v384 = (v17 + 16);
  v397 = (v17 + 56);
  v360 = (v17 + 32);
  v387 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v375 = (v7 + 104);
  v398 = (v17 + 48);
  v364 = (v7 + 32);
  v363 = (v7 + 88);
  v380 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v354 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v353 = (v7 + 8);
  v359 = (v7 + 96);
  v58 = a4;
  v355 = v17;
  v378 = (v17 + 8);

  v372 = a1;

  v386 = 0;
  v385 = 0;
  v59 = 0;
  *&v60 = 136315394;
  v358 = v60;
  *&v60 = 136315650;
  v399 = v60;
  v443 = xmmword_1001AA160;
  v423 = v37;
LABEL_5:
  if (v57)
  {
    v420 = v37;
    v61 = v59;
    v62 = v442;
  }

  else
  {
    v62 = v442;
    do
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_237;
      }

      if (v61 >= v373)
      {

        sub_10000ED48(v386, 0);
        sub_10000ED48(v385, 0);
        return v423;
      }

      v57 = *(v374 + 8 * v61);
      ++v59;
    }

    while (!v57);
    v420 = v37;
  }

  v357 = (v57 - 1) & v57;
  v356 = v61;
  v63 = (*(v372 + 48) + 48 * (__clz(__rbit64(v57)) | (v61 << 6)));
  v64 = v63[1];
  v371 = *v63;
  v65 = v63[3];
  v362 = v63[2];
  v66 = v63[4];
  v67 = v63[5];
  v68 = *(v66 + 64);
  v426 = v66 + 64;
  v69 = 1 << *(v66 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & v68;
  v377 = (v69 + 63) >> 6;
  v428 = v66;
  swift_bridgeObjectRetain_n();
  v415 = v64;

  v413 = v65;

  v427 = v67;

  v72 = 0;
  while (1)
  {
    if (!v71)
    {
      while (1)
      {
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_236;
        }

        if (v73 >= v377)
        {
          break;
        }

        v71 = *(v426 + 8 * v73);
        ++v72;
        if (v71)
        {
          goto LABEL_21;
        }
      }

      v59 = v356;
      v37 = v420;
      v57 = v357;
      goto LABEL_5;
    }

    v73 = v72;
LABEL_21:
    v370 = (v71 - 1) & v71;
    v369 = v73;
    v74 = __clz(__rbit64(v71)) | (v73 << 6);
    v75 = (*(v428 + 48) + 16 * v74);
    v76 = *(*(v428 + 56) + 8 * v74);
    v77 = v75[1];
    v408 = *v75;
    v78 = v76 + 56;
    v79 = 1 << *(v76 + 32);
    v80 = v79 < 64 ? ~(-1 << v79) : -1;
    v81 = v80 & *(v76 + 56);
    v82 = (v79 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v411 = v77;
    v83 = v82;

    v84 = 0;
    v389 = v76 + 56;
    v388 = v82;
    v390 = v76;
    if (v81)
    {
      break;
    }

    while (1)
    {
LABEL_25:
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_235;
      }

      if (v85 >= v83)
      {
        break;
      }

      v81 = *(v78 + 8 * v85);
      ++v84;
      if (v81)
      {
        v84 = v85;
        goto LABEL_29;
      }
    }

    v72 = v369;
    v71 = v370;
  }

LABEL_29:
  v395 = (v81 - 1) & v81;
  v394 = v84;
  v86 = *(v76 + 48);
  v87 = v441;
  v449 = *(v441 + 72);
  v88 = v392;
  v450[0] = *(v441 + 16);
  (v450[0])(v392, v86 + v449 * (__clz(__rbit64(v81)) | (v84 << 6)), v62);
  v437 = *(v87 + 32);
  v437(v425, v88, v62);
  v89 = v423 + 8;
  v90 = 1 << *(v423 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v430 = v91 & v423[8];
  v418 = (v90 + 63) >> 6;

  v93 = 0;
  v429 = v92;
  v412 = v89;
  while (1)
  {
LABEL_34:
    v431 = v58;
    v62 = v427;
    v94 = v430;
    if (!v430)
    {
      while (1)
      {
        v95 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          goto LABEL_231;
        }

        if (v95 >= v418)
        {
          break;
        }

        v94 = v89[v95];
        ++v93;
        if (v94)
        {
          goto LABEL_39;
        }
      }

      v195 = v429;
      if (*(v429 + 16) && (v196 = sub_100099644(v408, v411), (v197 & 1) != 0))
      {
        v198 = *(*(*(v195 + 56) + 8 * v196) + 16);

        v447 = -v198;
        v200 = -1;
        v451 = v199;
        v201 = v199;
        v62 = v442;
        do
        {
          LODWORD(v446) = v447 + v200 != -1;
          if (v447 + v200 == -1)
          {
            break;
          }

          if (++v200 >= *(v451 + 16))
          {
            goto LABEL_238;
          }

          (v450[0])(v419, v201 + ((*(v441 + 80) + 32) & ~*(v441 + 80)), v62);
          v203 = v402;
          CBOREncodedCBOR.value.getter();
          v452 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v205 = v204;
          v206 = *v439;
          v207 = v203;
          v208 = v440;
          (*v439)(v207, v440);
          v209 = v403;
          CBOREncodedCBOR.value.getter();
          v210 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v212 = v211;
          v206(v209, v208);
          if (v452 == v210 && v205 == v212)
          {

            (*v448)(v419, v442);
            break;
          }

          v201 += v449;
          v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v62 = v442;
          (*v448)(v419, v442);
        }

        while ((v202 & 1) == 0);

        v58 = v431;
        v195 = v429;
        v213 = v446;
        if (!*(v431 + 16))
        {
          goto LABEL_126;
        }
      }

      else
      {
        v213 = 0;
        if (!v58[2])
        {
          goto LABEL_126;
        }
      }

      v214 = sub_100099644(v408, v411);
      v195 = v429;
      if (v215)
      {
        v216 = *(v58[7] + 8 * v214);
        __chkstk_darwin(v214);
        *(&v352 - 2) = v425;

        v217 = v407;
        v218 = sub_100120DA4(sub_1000BAE7C, (&v352 - 4), v216);
        v407 = v217;

        if (v213)
        {
          v219 = &v456;
LABEL_142:
          v423 = *(v219 - 32);
          goto LABEL_143;
        }

LABEL_128:
        v220 = v411;
        (v450[0])(v381, v425, v442);
        sub_10000ED48(v386, 0);
        v62 = v420;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v453[0] = v62;
        v223 = sub_100099644(v408, v220);
        v224 = *(v62 + 16);
        v225 = (v222 & 1) == 0;
        v226 = v224 + v225;
        if (__OFADD__(v224, v225))
        {
          goto LABEL_241;
        }

        v227 = v222;
        if (*(v62 + 24) < v226)
        {
          sub_100108418(v226, isUniquelyReferenced_nonNull_native);
          v62 = v453[0];
          v228 = sub_100099644(v408, v411);
          if ((v227 & 1) != (v229 & 1))
          {
            goto LABEL_248;
          }

          v223 = v228;
          v230 = v453[0];
          if (v227)
          {
            goto LABEL_137;
          }

LABEL_135:
          v230[(v223 >> 6) + 8] |= 1 << v223;
          v231 = (v230[6] + 16 * v223);
          v232 = v411;
          *v231 = v408;
          v231[1] = v232;
          *(v230[7] + 8 * v223) = _swiftEmptyArrayStorage;
          v233 = v230[2];
          v234 = __OFADD__(v233, 1);
          v235 = v233 + 1;
          if (v234)
          {
            goto LABEL_243;
          }

          v230[2] = v235;

          goto LABEL_137;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v230 = v453[0];
          if ((v222 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v62 = v453;
          sub_100109AB0();
          v230 = v453[0];
          if ((v227 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

LABEL_137:
        v420 = v230;
        v236 = v230[7];
        v237 = *(v236 + 8 * v223);
        v238 = swift_isUniquelyReferenced_nonNull_native();
        *(v236 + 8 * v223) = v237;
        if ((v238 & 1) == 0)
        {
          v237 = sub_100100C9C(0, *(v237 + 2) + 1, 1, v237);
          *(v236 + 8 * v223) = v237;
        }

        v240 = *(v237 + 2);
        v239 = *(v237 + 3);
        if (v240 >= v239 >> 1)
        {
          v237 = sub_100100C9C((v239 > 1), v240 + 1, 1, v237);
          *(v236 + 8 * v223) = v237;
        }

        *(v237 + 2) = v240 + 1;
        v437(&v237[((*(v441 + 80) + 32) & ~*(v441 + 80)) + v240 * v449], v381, v442);
        v386 = sub_1000BDCF8;
        v219 = v450;
        goto LABEL_142;
      }

LABEL_126:
      v218 = 0;
      if (v213)
      {
        v423 = v195;
LABEL_143:
        v241 = DocumentRequest.namespaces.getter();
        if (*(v241 + 16) && (v242 = sub_100099644(v371, v415), (v243 & 1) != 0) && (v244 = *(*(v241 + 56) + 8 * v242), , , *(v244 + 16)) && (v245 = sub_100099644(v362, v413), (v246 & 1) != 0))
        {
          v247 = v355;
          v248 = v383;
          v249 = v404;
          (*(v355 + 16))(v383, *(v244 + 56) + *(v355 + 72) * v245, v404);

          v250 = *(v247 + 56);
          v250(v248, 0, 1, v249);
          (*(v247 + 32))(v406, v248, v249);
          v251 = v391;
        }

        else
        {

          v250 = *v397;
          v252 = v383;
          v253 = v404;
          (*v397)(v383, 1, 1, v404);
          v251 = v391;
          (*v375)(v376, v387, v391);
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          if ((*v398)(v252, 1, v253) != 1)
          {
            sub_10000A0D4(v252, &qword_100202428, &qword_1001ACEB0);
          }
        }

        v254 = DocumentRequest.namespaces.getter();
        if (!*(v254 + 16) || (v255 = sub_100099644(v408, v411), (v256 & 1) == 0))
        {

          v266 = v382;
          v268 = v404;
          v250(v382, 1, 1, v404);
          goto LABEL_156;
        }

        v257 = *(*(v254 + 56) + 8 * v255);

        v258 = v361;
        CBOREncodedCBOR.value.getter();
        v259 = ISO18013IssuerSignedItem.elementIdentifier.getter();
        v261 = v260;
        (*v439)(v258, v440);
        if (*(v257 + 16))
        {
          v262 = sub_100099644(v259, v261);
          v264 = v263;

          if (v264)
          {
            v265 = *(v257 + 56) + *(v355 + 72) * v262;
            v266 = v382;
            (*(v355 + 16))(v382, v265, v404);

            v267 = 0;
            goto LABEL_160;
          }
        }

        else
        {
        }

        v267 = 1;
        v266 = v382;
LABEL_160:
        v268 = v404;
        v250(v266, v267, 1, v404);
        v270 = (*v398)(v266, 1, v268);
        v251 = v391;
        if (v270 != 1)
        {
          v269 = v393;
          (*v360)(v393, v266, v268);
          goto LABEL_162;
        }

LABEL_156:
        v269 = v393;
        (*v384)(v393, v406, v268);
        if ((*v398)(v266, 1, v268) != 1)
        {
          sub_10000A0D4(v266, &qword_100202428, &qword_1001ACEB0);
        }

LABEL_162:
        v271 = v406;
        CredentialPresentmentElementRequestInfo.merging(_:)();
        if (v218)
        {
          sub_1000BD16C(&qword_100202450, &type metadata accessor for CredentialPresentmentElementRequestInfo, &protocol conformance descriptor for CredentialPresentmentElementRequestInfo);
          v272 = v404;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v273 = *v378;
            (*v378)(v405, v272);
            v273(v269, v272);
            v273(v271, v272);
LABEL_184:
            v58 = v431;
LABEL_185:
            v62 = v442;
            v292 = v448;
            goto LABEL_203;
          }

          v280 = v431;
          if (!*(v431 + 16) || (v281 = sub_100099644(v408, v411), (v282 & 1) == 0))
          {
            v290 = *v378;
            v291 = v404;
            (*v378)(v405, v404);
            v290(v393, v291);
            v290(v406, v291);
            goto LABEL_184;
          }

          v283 = *(*(v280 + 56) + 8 * v281);
          if (v283 >> 62)
          {
            v284 = _CocoaArrayWrapper.endIndex.getter();
            if (v284)
            {
LABEL_171:
              v453[0] = _swiftEmptyArrayStorage;

              v62 = v453;
              specialized ContiguousArray.reserveCapacity(_:)();
              if (v284 < 0)
              {
                goto LABEL_245;
              }

              v285 = 0;
              while (1)
              {
                v286 = v285 + 1;
                if (__OFADD__(v285, 1))
                {
                  goto LABEL_239;
                }

                if ((v283 & 0xC000000000000001) != 0)
                {
                  v287 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v285 >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_240;
                  }

                  v287 = *(v283 + 8 * v285 + 32);
                }

                v62 = v287;
                v455 = v287;
                v288 = v407;
                sub_100095A58(&v455, v405, &v457);
                v407 = v288;
                if (v288)
                {
                  goto LABEL_247;
                }

                v62 = v453;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                ++v285;
                if (v286 == v284)
                {

                  v289 = v453[0];
                  goto LABEL_211;
                }
              }
            }
          }

          else
          {
            v284 = *((v283 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v284)
            {
              goto LABEL_171;
            }
          }

          v289 = _swiftEmptyArrayStorage;
LABEL_211:
          v62 = v431;
          v331 = swift_isUniquelyReferenced_nonNull_native();
          v453[0] = v62;
          v332 = sub_100099644(v408, v411);
          v334 = *(v62 + 16);
          v335 = (v333 & 1) == 0;
          v234 = __OFADD__(v334, v335);
          v336 = v334 + v335;
          if (v234)
          {
            goto LABEL_244;
          }

          v337 = v333;
          if (*(v62 + 24) < v336)
          {
            sub_100108A98(v336, v331);
            v332 = sub_100099644(v408, v411);
            if ((v337 & 1) != (v338 & 1))
            {
              goto LABEL_248;
            }

            v339 = v405;
            v340 = v453[0];
            if ((v337 & 1) == 0)
            {
              goto LABEL_215;
            }

LABEL_219:
            *(v340[7] + 8 * v332) = v289;

            v347 = *v378;
            v348 = v339;
            v349 = v404;
            (*v378)(v348, v404);
            v347(v393, v349);
            v347(v406, v349);
            v58 = v340;
            goto LABEL_185;
          }

          v339 = v405;
          if (v331)
          {
            v340 = v453[0];
            if (v333)
            {
              goto LABEL_219;
            }
          }

          else
          {
            v350 = v332;
            sub_100109EF8();
            v339 = v405;
            v332 = v350;
            v340 = v453[0];
            if (v337)
            {
              goto LABEL_219;
            }
          }

LABEL_215:
          v340[(v332 >> 6) + 8] |= 1 << v332;
          v341 = (v340[6] + 16 * v332);
          v342 = v411;
          *v341 = v408;
          v341[1] = v342;
          *(v340[7] + 8 * v332) = v289;
          v343 = *v378;

          v344 = v339;
          v62 = v404;
          v343(v344, v404);
          v343(v393, v62);
          v343(v406, v62);
          v345 = v340[2];
          v234 = __OFADD__(v345, 1);
          v346 = v345 + 1;
          if (v234)
          {
            goto LABEL_246;
          }

          v58 = v340;
          v340[2] = v346;
          goto LABEL_185;
        }

        v274 = v367;
        CredentialPresentmentElementRequestInfo.intentToStore.getter();
        v275 = v368;
        (*v364)(v368, v274, v251);
        v276 = (*v363)(v275, v251);
        v277 = v276;
        if (v276 == v380)
        {
          (*v359)(v275, v251);
          v278 = *v275;
          v279 = 1;
        }

        else if (v276 == v387)
        {
          v278 = 0;
          v279 = 2;
        }

        else if (v276 == v354)
        {
          v278 = 0;
          v279 = 3;
        }

        else
        {
          (*v353)(v275, v251);
          v279 = 0;
          v278 = 0;
        }

        v293 = v366;
        CBOREncodedCBOR.value.getter();
        ISO18013IssuerSignedItem.elementIdentifier.getter();
        v294 = *v439;
        (*v439)(v293, v440);
        if (v277 != v380)
        {
          v278 = NSNotFound.getter();
        }

        v295 = objc_allocWithZone(DCPresentmentRequestedElement);
        v296 = String._bridgeToObjectiveC()();

        v297 = [v295 initWithElementIdentifier:v296 intentToRetain:v279 retentionPeriod:v278];

        sub_10000ED48(v385, 0);
        v62 = v431;
        v298 = swift_isUniquelyReferenced_nonNull_native();
        v453[0] = v62;
        v299 = sub_100099644(v408, v411);
        v301 = *(v62 + 16);
        v302 = (v300 & 1) == 0;
        v234 = __OFADD__(v301, v302);
        v303 = v301 + v302;
        v304 = v365;
        if (v234)
        {
          goto LABEL_242;
        }

        v305 = v300;
        if (*(v62 + 24) >= v303)
        {
          if ((v298 & 1) == 0)
          {
            v330 = v299;
            sub_100109EF8();
            v299 = v330;
            v307 = v453[0];
            if (v305)
            {
              goto LABEL_198;
            }

            goto LABEL_197;
          }
        }

        else
        {
          sub_100108A98(v303, v298);
          v299 = sub_100099644(v408, v411);
          if ((v305 & 1) != (v306 & 1))
          {
            goto LABEL_248;
          }
        }

        v307 = v453[0];
        if (v305)
        {
LABEL_198:
          v431 = v307;
          v309 = (*(v307 + 56) + 8 * v299);
          v310 = v297;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v309 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v309 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          defaultLogger()();
          (v450[0])(v304, v425, v442);

          v452 = v310;

          v311 = v413;

          v312 = v311;
          v313 = Logger.logObject.getter();
          v314 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v313, v314))
          {
            v315 = swift_slowAlloc();
            v316 = v294;
            v451 = swift_slowAlloc();
            v453[0] = v451;
            *v315 = v358;

            v317 = sub_10010150C(v362, v312, v453);

            *(v315 + 4) = v317;
            *(v315 + 12) = 2080;
            v318 = v436;
            v319 = v442;
            CBOREncodedCBOR.value.getter();
            v320 = ISO18013IssuerSignedItem.elementIdentifier.getter();
            v321 = v304;
            v323 = v322;
            v316(v318, v440);
            v292 = v448;
            (*v448)(v321, v319);
            v324 = sub_10010150C(v320, v323, v453);

            *(v315 + 14) = v324;
            _os_log_impl(&_mh_execute_header, v313, v314, "Adding element due to %s fallback: %s", v315, 0x16u);
            swift_arrayDestroy();

            (*v409)(v379, v410);
            v325 = *v378;
            v326 = v404;
            (*v378)(v405, v404);
            v325(v393, v326);
            v325(v406, v326);
            v385 = sub_1000BDCF8;
            v58 = v431;
            v62 = v442;
          }

          else
          {

            v292 = v448;
            v327 = v442;
            (*v448)(v304, v442);
            (*v409)(v379, v410);
            v328 = *v378;
            v329 = v404;
            (*v378)(v405, v404);
            v328(v393, v329);
            v328(v406, v329);
            v385 = sub_1000BDCF8;
            v58 = v431;
            v62 = v327;
          }

LABEL_203:
          v76 = v390;
          v78 = v389;
          v83 = v388;
          (*v292)(v425, v62);
          v81 = v395;
          v84 = v394;
          if (v395)
          {
            goto LABEL_29;
          }

          goto LABEL_25;
        }

LABEL_197:
        v308 = v299;
        sub_100112C68();

        v299 = v308;
        goto LABEL_198;
      }

      goto LABEL_128;
    }

    v95 = v93;
LABEL_39:
    v430 = v94;
    v96 = v423[6];
    v422 = v95;
    v97 = (v96 + ((v95 << 10) | (16 * __clz(__rbit64(v94)))));
    v98 = *v97;
    v99 = v97[1];
    v100 = *(v427 + 16);
    v433 = v99;
    v432 = v98;
    if (!v100)
    {
      v102 = &_swiftEmptySetSingleton;
      v103 = v429;
      goto LABEL_43;
    }

    v101 = sub_100099644(v98, v99);
    v102 = &_swiftEmptySetSingleton;
    v103 = v429;
    if (v104)
    {
      v102 = *(*(v427 + 56) + 8 * v101);
LABEL_43:
    }

    v105 = *(v103 + 16);
    v444 = v102;
    if (v105 && (v106 = sub_100099644(v432, v433), v62 = v429, (v107 & 1) != 0))
    {
      v108 = *(*(*(v429 + 56) + 8 * v106) + 16);

      v446 = v108;
      if (v108)
      {
        v110 = 0;
        v111 = v109;
        v112 = _swiftEmptyArrayStorage;
        v113 = v442;
        v114 = v421;
        v435 = v109;
        while (v110 < *(v109 + 16))
        {
          v451 = v111;
          v452 = v112;
          v447 = (*(v441 + 80) + 32) & ~*(v441 + 80);
          (v450[0])(v114, v111 + v447, v113);
          v457 = v444;
          sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
          v116 = swift_allocObject();
          *(v116 + 16) = v443;
          v117 = v436;
          CBOREncodedCBOR.value.getter();
          v118 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v120 = v119;
          (*v439)(v117, v440);
          *(v116 + 32) = v118;
          *(v116 + 40) = v120;
          v455 = v116;
          sub_100004E70(&qword_100201D00, &unk_1001ACF10);
          sub_100004E70(&qword_100201580, &qword_1001AB980);
          sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
          sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
          v62 = Collection<>.contains<A>(_:)();

          if (v62)
          {
            v113 = v442;
            (*v448)(v114, v442);
            v115 = v449;
            v112 = v452;
          }

          else
          {
            v113 = v442;
            v437(v434, v114, v442);
            v112 = v452;
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v453[0] = v112;
            if ((v121 & 1) == 0)
            {
              v62 = v453;
              sub_10010A758(0, v112[2] + 1, 1);
              v114 = v421;
              v113 = v442;
              v112 = v453[0];
            }

            v115 = v449;
            v123 = v112[2];
            v122 = v112[3];
            if (v123 >= v122 >> 1)
            {
              v62 = v453;
              sub_10010A758((v122 > 1), v123 + 1, 1);
              v115 = v449;
              v114 = v421;
              v113 = v442;
              v112 = v453[0];
            }

            v112[2] = v123 + 1;
            v437(v112 + v447 + v123 * v115, v434, v113);
          }

          ++v110;
          v111 = v451 + v115;
          v109 = v435;
          if (v446 == v110)
          {
            goto LABEL_62;
          }
        }

LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      v112 = _swiftEmptyArrayStorage;
LABEL_62:

      v129 = v433;

      v130 = v420;
      v131 = swift_isUniquelyReferenced_nonNull_native();
      v453[0] = v130;
      sub_1001217B4(v112, v432, v129, v131);

      v420 = v453[0];
      v429 = v453[0];
      v102 = v444;
    }

    else
    {
      v124 = v433;

      sub_100099644(v432, v124);
      v126 = v125;

      if (v126)
      {
        v127 = v420;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v453[0] = v127;
        if (!v128)
        {
          sub_100109AB0();
          v127 = v453[0];
        }

        sub_10000C01C();
        v420 = v127;
        v429 = v127;
      }
    }

    v132 = v431;
    if (!*(v431 + 16) || (v133 = sub_100099644(v432, v433), (v134 & 1) == 0))
    {
      v146 = v433;

      sub_100099644(v432, v146);
      v147 = v132;
      v149 = v148;

      if (v149)
      {
        v150 = swift_isUniquelyReferenced_nonNull_native();
        v453[0] = v147;
        if (!v150)
        {
          sub_100109EF8();
          v147 = v453[0];
        }

        v431 = v147;

        sub_10000C01C();
      }

      goto LABEL_85;
    }

    v135 = *(*(v132 + 56) + 8 * v133);
    v453[0] = _swiftEmptyArrayStorage;
    v62 = v135 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v136 = v432;

    if (v62)
    {
      break;
    }

    v151 = _swiftEmptyArrayStorage;
LABEL_84:

    v152 = v433;

    v153 = v431;
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v453[0] = v153;
    sub_100121834(v151, v136, v152, v154);

    v431 = v453[0];
LABEL_85:
    v430 &= v430 - 1;
    defaultLogger()();
    v155 = v428;

    v156 = v433;

    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.debug.getter();

    v159 = v157;

    v414 = v158;
    if (os_log_type_enabled(v157, v158))
    {
      v62 = swift_slowAlloc();
      v400 = swift_slowAlloc();
      v457 = v400;
      *v62 = v399;
      v160 = sub_10010150C(v432, v156, &v457);

      *(v62 + 4) = v160;
      v401 = v62;
      *(v62 + 12) = 2080;
      v455 = _swiftEmptyArrayStorage;
      v161 = 1 << *(v155 + 32);
      if (v161 < 64)
      {
        v162 = ~(-1 << v161);
      }

      else
      {
        v162 = -1;
      }

      v163 = v162 & *(v155 + 64);
      v164 = (v161 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v165 = 0;
      v417 = v159;
      v416 = v164;
      while (v163)
      {
LABEL_96:
        v168 = __clz(__rbit64(v163)) | (v165 << 6);
        v169 = *(*(v155 + 48) + 16 * v168 + 8);
        v170 = *(*(v155 + 56) + 8 * v168);
        KeyPath = swift_getKeyPath();
        v172 = *(v170 + 16);
        if (v172)
        {
          v447 = KeyPath;
          v433 = v163;
          v435 = v165;
          v454 = _swiftEmptyArrayStorage;
          v432 = v169;

          sub_10010A6B4(0, v172, 0);
          v173 = v454;
          v174 = v170 + 56;
          v175 = _HashTable.startBucket.getter();
          v62 = v442;
          v176 = v170;
          v446 = v170 + 56;
          while ((v175 & 0x8000000000000000) == 0 && v175 < 1 << *(v176 + 32))
          {
            if ((*(v174 + 8 * (v175 >> 6)) & (1 << v175)) == 0)
            {
              goto LABEL_226;
            }

            v451 = v172;
            LODWORD(v452) = *(v176 + 36);
            v177 = *(v176 + 48) + v175 * v449;
            v178 = v176;
            v179 = v445;
            (v450[0])(v445, v177, v62);
            swift_getAtKeyPath();
            (*v448)(v179, v62);
            v180 = v453[0];
            v181 = v453[1];
            v182 = v173;
            v454 = v173;
            v184 = v173[2];
            v183 = v173[3];
            if (v184 >= v183 >> 1)
            {
              sub_10010A6B4((v183 > 1), v184 + 1, 1);
              v62 = v442;
              v182 = v454;
            }

            v182[2] = v184 + 1;
            v185 = &v182[2 * v184];
            v185[4] = v180;
            v185[5] = v181;
            if (v175 >= -(-1 << *(v178 + 32)))
            {
              goto LABEL_227;
            }

            v174 = v446;
            if ((*(v446 + 8 * (v175 >> 6)) & (1 << v175)) == 0)
            {
              goto LABEL_228;
            }

            v176 = v178;
            if (v452 != *(v178 + 36))
            {
              goto LABEL_229;
            }

            v173 = v182;
            v175 = _HashTable.occupiedBucket(after:)();
            v172 = v451 - 1;
            if (v451 == 1)
            {

              v164 = v416;
              v165 = v435;
              v163 = v433;
              v166 = v173;
              v159 = v417;
              goto LABEL_90;
            }
          }

          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

        v166 = _swiftEmptyArrayStorage;
LABEL_90:
        v163 &= v163 - 1;
        v62 = &v455;
        sub_1000FC91C(v166);
        v155 = v428;
      }

      while (1)
      {
        v167 = v165 + 1;
        if (__OFADD__(v165, 1))
        {
          break;
        }

        if (v167 >= v164)
        {

          v186 = Array.description.getter();
          v188 = v187;

          v189 = sub_10010150C(v186, v188, &v457);

          v190 = v401;
          *(v401 + 14) = v189;
          *(v190 + 22) = 2080;
          v191 = Set.description.getter();
          v193 = v192;

          v194 = sub_10010150C(v191, v193, &v457);

          *(v190 + 24) = v194;
          _os_log_impl(&_mh_execute_header, v159, v414, "Removing elements from namespace %s due to fallback %s: %s", v190, 0x20u);
          swift_arrayDestroy();

          (*v409)(v424, v410);
          v93 = v422;
          v58 = v431;
          v89 = v412;
          goto LABEL_34;
        }

        v163 = *(v426 + 8 * v167);
        ++v165;
        if (v163)
        {
          v165 = v167;
          goto LABEL_96;
        }
      }

LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    (*v409)(v424, v410);
    v93 = v422;
    v89 = v412;
    v58 = v431;
  }

  v137 = 0;
  v451 = v135 & 0xC000000000000001;
  v446 = v135;
  v447 = v135 & 0xFFFFFFFFFFFFFF8;
  v435 = v62;
  while (1)
  {
    if (v451)
    {
      v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v137 >= *(v447 + 16))
      {
        goto LABEL_234;
      }

      v138 = *(v135 + 8 * v137 + 32);
    }

    v139 = v138;
    v140 = v137 + 1;
    if (__OFADD__(v137, 1))
    {
      break;
    }

    v457 = v102;
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
    v141 = swift_allocObject();
    *(v141 + 16) = v443;
    v142 = [v139 elementIdentifier];
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v144;

    *(v141 + 32) = v143;
    *(v141 + 40) = v145;
    v455 = v141;
    sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    v452 = v139;
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    sub_100055454(&qword_100202440, &qword_100201D00, &unk_1001ACF10, &protocol conformance descriptor for Set<A>);
    sub_100055454(&qword_100202448, &qword_100201580, &qword_1001AB980, &protocol conformance descriptor for [A]);
    LOBYTE(v142) = Collection<>.contains<A>(_:)();

    if (v142)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v135 = v446;
    v62 = v435;
    ++v137;
    v102 = v444;
    if (v140 == v435)
    {
      v151 = v453[0];
      v136 = v432;
      goto LABEL_84;
    }
  }

LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:

  __break(1u);
LABEL_248:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A402C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  v3[12] = swift_task_alloc();
  sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for ISO18013ReaderRequest();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000A420C, 0, 0);
}

uint64_t sub_1000A420C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretRequest: DCPresentmentRequest", v4, 2u);
  }

  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 136);
  v8 = *(v1 + 56);

  (*(v6 + 8))(v5, v7);
  v9 = [v8 sessionEstablishment];
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v1 + 160) = v10;
  *(v1 + 168) = v12;
  v13 = [v8 sessionTranscript];
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v1 + 16) = v15;
    *(v1 + 24) = v17;
    sub_1000BD220();
    Collection.nilIfEmpty.getter();
    sub_1000092BC(v15, v17);
    v19 = *(v1 + 32);
    v18 = *(v1 + 40);
  }

  else
  {
    v19 = 0;
    v18 = 0xF000000000000000;
  }

  *(v1 + 176) = v19;
  *(v1 + 184) = v18;
  v20 = [*(v1 + 56) sessionEncryptionIntermediateKeyMaterial];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  *(v1 + 192) = v22;
  *(v1 + 200) = v24;
  v25 = swift_task_alloc();
  *(v1 + 208) = v25;
  *v25 = v1;
  v25[1] = sub_1000A4454;
  v26 = *(v1 + 128);
  v27 = *(v1 + 104);

  return sub_1000A6FBC(v26, v27, v10, v12, v19, v18, v22, v24);
}

uint64_t sub_1000A4454()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = v2[23];
  v4 = v2[22];
  v5 = v2[21];
  v6 = v2[20];
  sub_10001C120(v2[24], v2[25]);
  sub_10001C120(v4, v3);
  sub_1000092BC(v6, v5);
  if (v0)
  {
    v7 = sub_1000A4DB0;
  }

  else
  {
    v7 = sub_1000A460C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000A460C()
{
  v1 = *(v0 + 64);
  v2 = DCPresentmentRequest.relyingPartyIdentifier.getter();
  v4 = v3;
  *(v0 + 224) = v3;
  v5 = *(v1 + 48);
  *(v0 + 232) = *(v1 + 64);
  v6 = *(v1 + 72);
  *(v0 + 296) = v6;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = sub_1000A46EC;
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);

  return sub_1000A86D4(v10, v9, v2, v4, v7, v11);
}

uint64_t sub_1000A46EC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1000A4F68;
  }

  else
  {
    v2 = sub_1000A4820;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A4820()
{
  v1 = *(v0 + 248);
  v2 = sub_1000964C4((*(v0 + 232) == 1) & ~*(v0 + 296), *(*(v0 + 96) + 24));
  *(v0 + 256) = v2;
  if (v1)
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    sub_1000BB9CC(*(v0 + 96), type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
    sub_10000A0D4(v6, &qword_100202370, &qword_1001ACE68);
    (*(v4 + 8))(v3, v5);
    (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v2;
    v10 = [*(v0 + 56) requiredPublicKeyIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    *(v0 + 264) = v12;
    *(v0 + 272) = v14;
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_1000A4B30;
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v18 = *(v0 + 48);

    return sub_1000A5DD0(v18, v9, v16, v12, v14, v17);
  }
}

uint64_t sub_1000A4B30()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    sub_10001C120(v4, v3);

    v5 = sub_1000A5154;
  }

  else
  {

    sub_10001C120(v4, v3);
    v5 = sub_1000A4CB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A4CB8()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  sub_1000BB9CC(v0[12], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
  sub_10000A0D4(v4, &qword_100202370, &qword_1001ACE68);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A4DB0()
{
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000A4F68()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_10000A0D4(v0[13], &qword_100202370, &qword_1001ACE68);
  (*(v2 + 8))(v1, v3);
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A5154()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  sub_1000BB9CC(v0[12], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
  sub_10000A0D4(v4, &qword_100202370, &qword_1001ACE68);
  (*(v2 + 8))(v1, v3);
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A5360(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v3[8] = swift_task_alloc();
  type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000A54E4, 0, 0);
}

uint64_t sub_1000A54E4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretRequest: DCPresentmentRequest", v4, 2u);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  v8 = v1[4];

  (*(v6 + 8))(v5, v7);
  if (*(v8 + 72))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = swift_task_alloc();
  v1[13] = v10;
  *v10 = v1;
  v10[1] = sub_1000A563C;
  v11 = v1[9];
  v12 = v1[3];

  return sub_1000AB1C0(v11, v12, v9);
}

uint64_t sub_1000A563C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000A5A64;
  }

  else
  {
    v2 = sub_1000A5750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A5750()
{
  v1 = v0[8];
  v2 = CredentialPresentmentRequest.useCases.getter();
  v0[15] = v2;
  v3 = type metadata accessor for ISO18013SessionTranscript();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1000A5854;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[2];

  return sub_1000A5DD0(v7, v2, v5, 0, 0xF000000000000000, v6);
}

uint64_t sub_1000A5854()
{
  v2 = *(*v1 + 64);
  *(*v1 + 136) = v0;

  sub_10000A0D4(v2, &qword_100202370, &qword_1001ACE68);

  if (v0)
  {
    v3 = sub_1000A5C0C;
  }

  else
  {
    v3 = sub_1000A59B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A59B8()
{
  sub_1000BB9CC(*(v0 + 72), type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A5A64()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000A5C0C()
{
  sub_1000BB9CC(v0[9], type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult);
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000A5DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v7[17] = *(type metadata accessor for PresentmentProposal(0) - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v7[23] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000A5FE4, 0, 0);
}

uint64_t sub_1000A5FE4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter interpretRequest : CredentialPresentmentRequest", v4, 2u);
  }

  v6 = v1[28];
  v5 = v1[29];
  v7 = v1[27];

  (*(v6 + 8))(v5, v7);
  static IDCSSignposts.presentmentInterpretRequest.getter();
  DIPSignpost.init(_:)();
  v8 = swift_task_alloc();
  v1[30] = v8;
  *v8 = v1;
  v8[1] = sub_1000A613C;
  v9 = v1[11];

  return sub_1000ACCF8(v9);
}

uint64_t sub_1000A613C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_1000A6BCC;
  }

  else
  {
    v4 = sub_1000A6250;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_1000A6250()
{
  v1 = sub_1000E91B0(v0[31], *(v0[16] + 32));
  result = v1 + 4;
  v3 = -v1[2];
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= v1[2])
    {
      __break(1u);
      return result;
    }

    v5 = (result + 5);
    sub_10001A940(result, (v0 + 2));
    sub_100009278(v0 + 2, v0[5]);
    v6 = sub_100099A68();
    sub_100005090(v0 + 2);
    result = v5;
    if ((v6 & 1) == 0)
    {
      v8 = v0[21];
      v7 = v0[22];
      v9 = v0[20];

      (*(v8 + 104))(v7, enum case for DIPError.Code.idcsRestrictedElementRequested(_:), v9);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      v10 = v0[21];
      v11 = v0[22];
      v12 = v0[20];
      (*(v0[25] + 8))(v0[26], v0[24]);
      (*(v10 + 104))(v11, enum case for DIPError.Code.internalError(_:), v12);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v13 = v0[1];

      return v13();
    }
  }

  v14 = v0[16];
  v15 = v0[12];

  v16 = *(v14 + 48);
  v17 = *(v14 + 72);
  if (*(v15 + 16))
  {
    v18 = SecCertificateRef.derRepresentation.getter();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  if (v17)
  {
    v16 = 0;
  }

  v0[33] = v18;
  v0[34] = v20;
  v21 = v0[12];
  v22 = *v21;
  v23 = v21[1];
  type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  v24 = swift_task_alloc();
  v0[35] = v24;
  *v24 = v0;
  v24[1] = sub_1000A668C;
  v25 = v0[31];
  v26 = v0[13];
  v27 = v0[14];

  return sub_1000ADDC8(v25, v26, v27, v16, v18, v20, v22, v23);
}

uint64_t sub_1000A668C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v5 = *(v3 + 272);
  v6 = *(v3 + 264);
  if (v1)
  {
    sub_10001C120(v6, v5);

    v7 = sub_1000A6DC4;
  }

  else
  {

    sub_10001C120(v6, v5);
    v7 = sub_1000A681C;
  }

  return _swift_task_switch(v7, 0, 0);
}

unint64_t sub_1000A681C()
{
  v1 = v0[36];
  result = sub_10010D068(_swiftEmptyArrayStorage);
  v3 = result;
  v38 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v37 = v0[17];
    v36 = v0[36] + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    while (1)
    {
      if (v5 >= *(v38 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v8 = v0[18];
      v7 = v0[19];
      v9 = *(v37 + 72);
      sub_1000BCFA8(v36 + v9 * v5, v7, type metadata accessor for PresentmentProposal);
      v10 = [*v7 credentialIdentifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000BBB18(v7, v8, type metadata accessor for PresentmentProposal);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_100099644(v11, v13);
      v16 = v3[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v3[3] < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v26 = result;
      sub_100109F0C();
      result = v26;
      v22 = v0[18];
      if (v20)
      {
LABEL_3:
        v6 = result;

        result = sub_1000BD1BC(v22, v3[7] + v6 * v9);
        goto LABEL_4;
      }

LABEL_12:
      v3[(result >> 6) + 8] |= 1 << result;
      v23 = (v3[6] + 16 * result);
      *v23 = v11;
      v23[1] = v13;
      result = sub_1000BBB18(v22, v3[7] + result * v9, type metadata accessor for PresentmentProposal);
      v24 = v3[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v3[2] = v25;
LABEL_4:
      if (v4 == ++v5)
      {
        goto LABEL_16;
      }
    }

    sub_100108AAC(v19, isUniquelyReferenced_nonNull_native);
    result = sub_100099644(v11, v13);
    if ((v20 & 1) != (v21 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_11:
    v22 = v0[18];
    if (v20)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v27 = v0[25];
  v28 = v0[26];
  v29 = v0[24];
  v31 = v0[15];
  v30 = v0[16];
  v32 = v0[10];

  v33 = type metadata accessor for PresentmentRequestInterpretation(0);
  sub_100046360(v31, v32 + *(v33 + 20), &qword_100202370, &qword_1001ACE68);
  v34 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  swift_beginAccess();
  sub_100046360(v30 + v34, v32 + *(v33 + 24), &qword_100202378, &unk_1001ACE70);
  *v32 = v3;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v27 + 8))(v28, v29);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000A6BCC()
{
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A6DC4()
{
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000A6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = type metadata accessor for ISO18013ReaderRequest();
  v9[11] = v10;
  v9[12] = *(v10 - 8);
  v9[13] = swift_task_alloc();
  v9[14] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013SessionEstablishment();
  v9[15] = v11;
  v9[16] = *(v11 - 8);
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v9[19] = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  v9[20] = v12;
  v9[21] = *(v12 - 8);
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v9[24] = v13;
  v9[25] = *(v13 - 8);
  v9[26] = swift_task_alloc();
  sub_100004E70(&qword_1002024E0, &qword_1001ACFF0);
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v14 = type metadata accessor for ISO18013CodingKeyFormat();
  v9[30] = v14;
  v9[31] = *(v14 - 8);
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v9[34] = v15;
  v9[35] = *(v15 - 8);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7310, 0, 0);
}

uint64_t sub_1000A7310(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter extractReaderRequest", v4, 2u);
  }

  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[10];

  v9 = *(v7 + 8);
  v1[38] = v9;
  v9(v5, v6);
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  v1[39] = CBORDecoder.init()();
  v10 = v1[33];
  v33 = v9;
  if (*(v8 + 72))
  {
    (*(v1[31] + 104))(v10, enum case for ISO18013CodingKeyFormat.standard(_:), v1[30]);
  }

  else
  {
    v12 = v1[31];
    v11 = v1[32];
    v13 = v1[30];
    sub_1000E1028(*(v1[10] + 64), v11);
    (*(v12 + 32))(v10, v11, v13);
  }

  v15 = v1[35];
  v14 = v1[36];
  v16 = v1[34];
  v17 = v1[9];
  v19 = v1[4];
  v18 = v1[5];
  CBORDecoder.codingKeyFormat.setter();
  defaultLogger()();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  Logger.sensitive(_:)();

  v1[40] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v14, v16);
  if (v17 >> 60 == 15)
  {
    defaultLogger()();
    Logger.sensitive(_:)();
  }

  else
  {
    v22 = v1[8];
    v21 = v1[9];
    sub_100009708(v22, v21);
    defaultLogger()();
    v23 = swift_task_alloc();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    Logger.sensitive(_:)();
    sub_10001C120(v22, v21);
  }

  v24 = v1[7];
  v33(v1[36], v1[34]);
  v25 = v1[28];
  if (v24 >> 60 == 15)
  {
    v26 = sub_100004E70(&qword_1002024E8, &qword_1001ACFF8);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  }

  else
  {
    swift_allocObject();
    CBORDecoder.init()();
    v27 = sub_100004E70(&qword_1002024E8, &qword_1001ACFF8);
    sub_100055454(&qword_100202500, &qword_1002024E8, &qword_1001ACFF8, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    (*(*(v27 - 8) + 56))(v1[28], 0, 1, v27);
  }

  sub_100046524(v1[28], v1[29], &qword_1002024E0, &qword_1001ACFF0);
  static IDCSSignposts.presentmentDecodeSessionEstablishment.getter();
  DIPSignpost.init(_:)();
  sub_1000BD16C(&qword_1002024F0, &type metadata accessor for ISO18013SessionEstablishment, &protocol conformance descriptor for ISO18013SessionEstablishment);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  v1[41] = 0;
  v28 = v1[10];
  (*(v1[16] + 32))(v1[18], v1[17], v1[15]);
  v29._countAndFlagsBits = 0x6232653638363036;
  v30._countAndFlagsBits = 0xD000000000000061;
  v30._object = 0x80000001001B8680;
  v29._object = 0xE800000000000000;
  logMilestone(tag:description:)(v29, v30);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v31 = *(v28 + 24);
  v1[42] = v31;

  return _swift_task_switch(sub_1000A7B88, v31, 0);
}

uint64_t sub_1000A7B88()
{
  v1 = v0[41];
  v2 = sub_1000DD01C(v0[18], v0[6], v0[7], v0[8], v0[9]);
  v0[43] = v1;
  v0[44] = v2;
  v0[45] = v3;
  if (v1)
  {
    v4 = sub_1000A8384;
  }

  else
  {
    v4 = sub_1000A7C20;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000A7C20()
{
  v2 = v0[44];
  v1 = v0[45];
  v48 = v0[43];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[34];
  v6._countAndFlagsBits = 0x3738393861336365;
  v7._countAndFlagsBits = 0xD000000000000053;
  v7._object = 0x80000001001B86F0;
  v6._object = 0xE800000000000000;
  logMilestone(tag:description:)(v6, v7);
  defaultLogger()();
  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  Logger.sensitive(_:)();

  v3(v4, v5);
  static IDCSSignposts.presentmentDecodeReaderRequest.getter();
  DIPSignpost.init(_:)();
  sub_1000BD16C(&qword_1002024F8, &type metadata accessor for ISO18013ReaderRequest, &protocol conformance descriptor for ISO18013ReaderRequest);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (v48)
  {
    v34 = v0[44];
    v35 = v0[45];
    v49 = v0[29];
    v46 = v0[23];
    v9 = v0[21];
    v37 = v0[20];
    v39 = v0[22];
    v10 = v0[16];
    v41 = v0[15];
    v43 = v0[18];
    (*(v0[25] + 104))(v0[26], enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v0[24]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v34, v35);

    v11 = *(v9 + 8);
    v11(v39, v37);
    (*(v10 + 8))(v43, v41);
    v11(v46, v37);
    sub_10000A0D4(v49, &qword_1002024E0, &qword_1001ACFF0);

    v12 = v0[1];
  }

  else
  {
    v13 = v0[29];
    v14 = v0[27];
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[12];
    v18 = v0[2];
    (*(v17 + 32))(v15, v0[13], v16);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v17 + 16))(v18, v15, v16);
    sub_100046360(v13, v14, &qword_1002024E0, &qword_1001ACFF0);
    v19 = sub_100004E70(&qword_1002024E8, &qword_1001ACFF8);
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v14, 1, v19);
    v36 = v0[44];
    v38 = v0[45];
    v50 = v0[29];
    v22 = v0[27];
    v23 = v0[21];
    v45 = v0[20];
    v47 = v0[23];
    v44 = v0[18];
    v24 = v0[16];
    v40 = v0[22];
    v42 = v0[15];
    v25 = v0[14];
    v27 = v0[11];
    v26 = v0[12];
    if (v21 == 1)
    {

      sub_1000092BC(v36, v38);
      (*(v26 + 8))(v25, v27);
      v28 = *(v23 + 8);
      v28(v40, v45);
      (*(v24 + 8))(v44, v42);
      v28(v47, v45);
      sub_10000A0D4(v50, &qword_1002024E0, &qword_1001ACFF0);
      sub_10000A0D4(v22, &qword_1002024E0, &qword_1001ACFF0);
      v29 = 1;
    }

    else
    {
      CBOREncodedCBOR.value.getter();

      sub_1000092BC(v36, v38);
      (*(v26 + 8))(v25, v27);
      v30 = *(v23 + 8);
      v30(v40, v45);
      (*(v24 + 8))(v44, v42);
      v30(v47, v45);
      sub_10000A0D4(v50, &qword_1002024E0, &qword_1001ACFF0);
      (*(v20 + 8))(v22, v19);
      v29 = 0;
    }

    v31 = v0[3];
    v32 = type metadata accessor for ISO18013SessionTranscript();
    (*(*(v32 - 8) + 56))(v31, v29, 1, v32);

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_1000A8384()
{
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  sub_10000A0D4(v1, &qword_1002024E0, &qword_1001ACFF0);

  v8 = v0[1];

  return v8();
}

unint64_t sub_1000A8508()
{
  _StringGuts.grow(_:)(40);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000026;
}

unint64_t sub_1000A8598()
{
  _StringGuts.grow(_:)(44);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000002ALL;
}

unint64_t sub_1000A8644()
{
  _StringGuts.grow(_:)(30);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001CLL;
}

uint64_t sub_1000A86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[82] = v6;
  v7[81] = a6;
  v7[80] = a5;
  v7[79] = a4;
  v7[78] = a3;
  v7[77] = a2;
  v7[76] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[83] = v8;
  v7[84] = *(v8 - 8);
  v7[85] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v7[86] = v9;
  v7[87] = *(v9 - 8);
  v7[88] = swift_task_alloc();
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v7[89] = swift_task_alloc();
  sub_100004E70(&qword_100202378, &unk_1001ACE70);
  v7[90] = swift_task_alloc();
  sub_100004E70(&qword_100201560, &unk_1001AB910);
  v7[91] = swift_task_alloc();
  v7[92] = swift_task_alloc();
  v10 = type metadata accessor for ISO18013ReaderRequest();
  v7[93] = v10;
  v7[94] = *(v10 - 8);
  v7[95] = swift_task_alloc();
  v7[96] = swift_task_alloc();
  v11 = type metadata accessor for IdentityReaderAuthenticator(0);
  v7[97] = v11;
  v7[98] = *(v11 - 8);
  v7[99] = swift_task_alloc();
  sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v7[100] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013SessionTranscript();
  v7[101] = v12;
  v7[102] = *(v12 - 8);
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v7[105] = swift_task_alloc();
  v7[106] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v7[107] = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost();
  v7[108] = v13;
  v7[109] = *(v13 - 8);
  v7[110] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[111] = v14;
  v7[112] = *(v14 - 8);
  v7[113] = swift_task_alloc();
  v7[114] = swift_task_alloc();
  v7[115] = swift_task_alloc();
  v7[116] = swift_task_alloc();
  v7[117] = swift_task_alloc();
  v7[118] = swift_task_alloc();

  return _swift_task_switch(sub_1000A8B84, 0, 0);
}

uint64_t sub_1000A8B84(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter performReaderAuth for readerRequest", v4, 2u);
  }

  v5 = v1[118];
  v6 = v1[112];
  v7 = v1[111];
  v8 = v1[80];

  v9 = *(v6 + 8);
  v1[119] = v9;
  v9(v5, v7);
  static IDCSSignposts.presentmentReaderAuth.getter();
  DIPSignpost.init(_:)();
  if (v8 != 1)
  {
    if (!v8)
    {
      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Skipping reader authentication because session policy is set to none", v12, 2u);
      }

      v13 = v1[117];
      v14 = v1[111];
      v15 = v1[79];

      v9(v13, v14);
      if (v15)
      {
        v16 = v1[106];
        v17 = v1[105];
        v18 = type metadata accessor for URL();
        v19 = *(v18 - 8);
        v20 = *(v19 + 56);
        v20(v16, 1, 1, v18);
        v20(v17, 1, 1, v18);
        v21 = String._bridgeToObjectiveC()();
        v22 = *(v19 + 48);
        v24 = 0;
        if (v22(v16, 1, v18) != 1)
        {
          v25 = v1[106];
          URL._bridgeToObjectiveC()(v23);
          v24 = v26;
          (*(v19 + 8))(v25, v18);
        }

        v27 = v1[105];
        if (v22(v27, 1, v18) == 1)
        {
          v29 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v28);
          v29 = v65;
          (*(v19 + 8))(v27, v18);
        }

        v64 = [objc_allocWithZone(DCPresentmentProposalReaderMetadata) initWithIdentifier:v21 organization:0 organizationalUnit:0 iconData:0 iconURL:v24 iconMediaType:0 privacyPolicyURL:v29 merchantCategoryCode:0];
      }

      else
      {
        v64 = 0;
      }

      v66 = v1[76];
      v67 = *(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) + 32);
      v68 = type metadata accessor for DIPError();
      (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
      *(v66 + 8) = 0;
      *(v66 + 16) = 0;
      *v66 = v64;
      *(v66 + 24) = 3;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v1[109] + 8))(v1[110], v1[108]);

      v50 = v1[1];
      goto LABEL_25;
    }

    v42 = v1[85];
    v43 = v1[84];
    v44 = v1[83];
    _StringGuts.grow(_:)(40);

    v45 = DCCredentialReaderAuthenticationPolicyToString();
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    (*(v43 + 104))(v42, enum case for DIPError.Code.idcsInvalidReaderAuthenticationPolicy(_:), v44);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_17:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v1[109] + 8))(v1[110], v1[108]);

    v50 = v1[1];
LABEL_25:

    return v50();
  }

  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Performing optional identity reader authentication policy", v32, 2u);
  }

  v33 = v1[116];
  v34 = v1[111];
  v35 = v1[102];
  v36 = v1[101];
  v37 = v1[100];
  v38 = v1[81];

  v9(v33, v34);
  sub_100046360(v38, v37, &qword_100202370, &qword_1001ACE68);
  if ((*(v35 + 48))(v37, 1, v36) == 1)
  {
    v39 = v1[85];
    v40 = v1[84];
    v41 = v1[83];
    sub_10000A0D4(v1[100], &qword_100202370, &qword_1001ACE68);
    (*(v40 + 104))(v39, enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:), v41);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_17;
  }

  v51 = v1[104];
  v52 = v1[103];
  v53 = v1[102];
  v54 = v1[101];
  v55 = v1[99];
  v56 = v1[96];
  v57 = v1[94];
  v58 = v1[93];
  v59 = v1[77];
  (*(v53 + 32))(v51, v1[100], v54);
  v60 = *(v57 + 16);
  v1[120] = v60;
  v1[121] = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60(v56, v59, v58);
  (*(v53 + 16))(v52, v51, v54);
  sub_100035AB8(v56, v52, v55);
  v61 = swift_task_alloc();
  v1[122] = v61;
  *v61 = v1;
  v61[1] = sub_1000A96B4;
  v62 = v1[91];

  return sub_100035F7C((v1 + 2), v62);
}

uint64_t sub_1000A96B4()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 984) = v0;
  v13 = *(v3 + 32);
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v11 = *(v3 + 96);
  v12 = *(v3 + 64);
  v8 = *(v3 + 80);
  v4 = *(v2 + 112);
  v5 = *(v3 + 120);

  if (v0)
  {
    v6 = sub_1000AAD30;
  }

  else
  {
    *(v3 + 128) = v10;
    *(v3 + 144) = v13;
    *(v3 + 160) = v9;
    *(v3 + 176) = v12;
    *(v3 + 192) = v8;
    *(v3 + 208) = v11;
    *(v3 + 224) = v4;
    *(v3 + 232) = v5;
    v6 = sub_1000A9838;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000A9838()
{
  v159 = v0;
  sub_100046524(*(v0 + 728), *(v0 + 736), &qword_100201560, &unk_1001AB910);
  v157 = v0 + 128;
  if (*(v0 + 128))
  {
    v1 = *(v0 + 176);
    v153 = *(v0 + 168);
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7._countAndFlagsBits = 0xD000000000000021;
    v7._object = 0x80000001001B83A0;
    v8 = NSUserDefaults.internalBool(forKey:)(v7);

    if (v8)
    {
      defaultLogger()();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Using mock reader metadata due to user defaults setting", v11, 2u);
      }

      v12 = *(v0 + 952);
      v13 = *(v0 + 920);
      v14 = *(v0 + 888);

      v12(v13, v14);
      v4 = 0x80000001001B8520;
      v2 = 0x80000001001B8540;
      v1 = 0x80000001001B8560;
      v3 = 0xD000000000000011;
      v153 = 0xD000000000000018;
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v3 = 0;
      v2 = 0;
      v153 = 0;
      v1 = 0;
    }
  }

  v15 = *(v0 + 784);
  v16 = *(v0 + 776);
  v17 = *(v0 + 720);
  v18 = *(v0 + 656);
  sub_1000BCFA8(*(v0 + 792), v17, type metadata accessor for IdentityReaderAuthenticator);
  (*(v15 + 56))(v17, 0, 1, v16);
  v19 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  swift_beginAccess();
  sub_1000BD010(v17, v18 + v19, &qword_100202378, &unk_1001ACE70);
  swift_endAccess();
  v20._countAndFlagsBits = 0x3461653530636166;
  v21._countAndFlagsBits = 0xD00000000000005ELL;
  v21._object = 0x80000001001B83D0;
  v20._object = 0xE800000000000000;
  logMilestone(tag:description:)(v20, v21);
  if (v4)
  {
    *(v0 + 352) = v5;
    *(v0 + 360) = v4;
    *(v0 + 368) = v3;
    *(v0 + 376) = v2;
    *(v0 + 384) = v153;
    *(v0 + 392) = v1;
    v22 = *(v0 + 128);
    v23 = *(v0 + 656);
    v148 = v22;
    if (v22)
    {
      v24 = v22;
      v25 = *(v23 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider);
      v26 = *(v23 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider + 8);
      type metadata accessor for SecCertificate(0);
      v22 = &protocol witness table for SecCertificateRef;
    }

    else
    {
      v24 = 0;
      v27 = 0;
      v25 = *(v23 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider);
      v26 = *(v23 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_readerMetadataProvider + 8);
      v158[1] = 0;
      v158[2] = 0;
    }

    v154 = *(v0 + 984);
    v40 = *(v0 + 960);
    v41 = *(v0 + 760);
    v42 = *(v0 + 744);
    v43 = *(v0 + 616);
    v158[0] = v24;
    v158[3] = v27;
    v158[4] = v22;
    v40(v41, v43, v42);
    if (*(v0 + 128))
    {
      v44 = *(v0 + 232);
    }

    else
    {
      v44 = 3;
    }

    v150 = v24;
    v45 = static Locale.preferredLanguages.getter();
    v46 = *(v26 + 8);
    *(v0 + 520) = v25;
    *(v0 + 528) = v26;
    sub_10001A9A4((v0 + 496));
    v46(v158, v41, v0 + 352, v44, v45, v25, v26);
    v47 = (*(v26 + 16))(v25, v26);
    if (v154)
    {
      sub_10000A0D4(*(v0 + 736), &qword_100201560, &unk_1001AB910);
      sub_10000A0D4(v157, &qword_1002024D8, &qword_1001ACFD8);

      sub_100005090((v0 + 496));
      v151 = *(v0 + 832);
      v48 = *(v0 + 816);
      v49 = *(v0 + 808);
      v50 = *(v0 + 792);
      (*(*(v0 + 672) + 104))(*(v0 + 680), enum case for DIPError.Code.internalError(_:), *(v0 + 664));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_1000BB9CC(v50, type metadata accessor for IdentityReaderAuthenticator);
      (*(v48 + 8))(v151, v49);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));

      v51 = *(v0 + 8);
      goto LABEL_58;
    }

    v52 = v47;
    v53 = *(v0 + 952);
    v54 = *(v0 + 912);
    v55 = *(v0 + 888);
    defaultLogger()();
    *(swift_task_alloc() + 16) = v52;
    Logger.sensitive(_:)();

    v53(v54, v55);
    if (*(v0 + 128))
    {
      v56 = *(v0 + 232);
    }

    else
    {
      v56 = 3;
    }

    v155 = v56;
    v57 = [v52 identifier];
    if (!v57)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = String._bridgeToObjectiveC()();

      v57 = v58;
    }

    v141 = v57;
    v59 = [v52 organization];
    if (v59)
    {
      v60 = v59;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v62 = 0;
    }

    v145 = v52;
    v89 = *(v0 + 128);
    if (v89)
    {
      v90 = *(v0 + 184);
      v91 = *(v0 + 192);
      v92 = *(v0 + 208);
      v93 = *(v0 + 224);
      if (v91)
      {
      }

      v97 = *(v0 + 216);
      v98 = *(v0 + 200);
      sub_1000BD0BC(v90, v91, v98, v92, v97, v93);
      sub_100046360(v0 + 128, v0 + 240, &qword_1002024D8, &qword_1001ACFD8);

      sub_1000BD10C(v90, v91, v98, v92, v97, v93);
      if (v91)
      {
      }

      else
      {
        v92 = 0;
      }

      if (v62)
      {
LABEL_48:
        v94 = String._bridgeToObjectiveC()();

        if (v91)
        {
LABEL_49:
          v95 = String._bridgeToObjectiveC()();

          if (v92)
          {
            goto LABEL_50;
          }

          goto LABEL_43;
        }

LABEL_42:
        v95 = 0;
        if (v92)
        {
LABEL_50:
          v96 = String._bridgeToObjectiveC()();

          goto LABEL_51;
        }

LABEL_43:
        v96 = 0;
LABEL_51:
        v99 = *(v0 + 912);
        v100 = *(v0 + 888);
        v139 = *(v0 + 832);
        v101 = *(v0 + 816);
        v135 = *(v0 + 952);
        v137 = *(v0 + 808);
        v133 = *(v0 + 792);
        v102 = [objc_allocWithZone(DCPresentmentProposalReaderAnalytics) initWithTrusted:v155 != 3 untrustedIdentifier:v141 untrustedOrganization:v94 untrustedIssuerIdentifier:v95 untrustedIssuerOrganization:v96];

        defaultLogger()();
        *(swift_task_alloc() + 16) = v102;
        Logger.sensitive(_:)();
        sub_10000A0D4(v157, &qword_1002024D8, &qword_1001ACFD8);

        v135(v99, v100);
        sub_1000BB9CC(v133, type metadata accessor for IdentityReaderAuthenticator);
        (*(v101 + 8))(v139, v137);
        v103 = v148;
        if (v155)
        {

          v103 = 0;
        }

        v104 = *(v0 + 736);
        v105 = *(v0 + 608);
        v106 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
        sub_100046524(v104, v105 + *(v106 + 32), &qword_100201560, &unk_1001AB910);
        *v105 = v145;
        *(v105 + 8) = v102;
        *(v105 + 16) = v103;
        *(v105 + 24) = v155;
        sub_100005090((v0 + 496));
        goto LABEL_57;
      }
    }

    else
    {
      v92 = 0;
      v91 = 0;
      if (v62)
      {
        goto LABEL_48;
      }
    }

    v94 = 0;
    if (v91)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

  v28 = ISO18013ReaderRequest.docRequests.getter();
  if (!*(v28 + 16))
  {
    v63 = *(v0 + 832);
    v64 = *(v0 + 816);
    v65 = *(v0 + 808);
    v66 = *(v0 + 792);

    v67 = v0 + 128;
LABEL_55:
    sub_10000A0D4(v67, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v66, type metadata accessor for IdentityReaderAuthenticator);
    (*(v64 + 8))(v63, v65);
    goto LABEL_56;
  }

  v29 = *(v0 + 712);
  v30 = *(v0 + 704);
  v31 = *(v0 + 696);
  v32 = *(v0 + 688);
  (*(v31 + 16))(v30, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v32);

  ISO18013ReaderRequest.DocRequest.readerAuth.getter();
  (*(v31 + 8))(v30, v32);
  v33 = type metadata accessor for COSE_Sign1();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v29, 1, v33) == 1)
  {
    v35 = *(v0 + 832);
    v36 = *(v0 + 816);
    v37 = *(v0 + 808);
    v38 = *(v0 + 792);
    v39 = *(v0 + 712);
    sub_10000A0D4(v157, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v38, type metadata accessor for IdentityReaderAuthenticator);
    (*(v36 + 8))(v35, v37);
    sub_10000A0D4(v39, &qword_1002014D0, &unk_1001AD120);
    goto LABEL_56;
  }

  v68 = *(v0 + 712);
  v69 = COSE_Sign1.x509Chain.getter();
  (*(v34 + 8))(v68, v33);
  if (!v69)
  {
    v63 = *(v0 + 832);
    v64 = *(v0 + 816);
    v65 = *(v0 + 808);
    v66 = *(v0 + 792);
    v67 = v0 + 128;
    goto LABEL_55;
  }

  v70 = v0 + 128;
  if (!v69[2])
  {
    v111 = *(v0 + 832);
    v112 = *(v0 + 816);
    v113 = *(v0 + 808);
    v114 = *(v0 + 792);

    sub_10000A0D4(v157, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v114, type metadata accessor for IdentityReaderAuthenticator);
    (*(v112 + 8))(v111, v113);
    goto LABEL_56;
  }

  v72 = v69[4];
  v71 = v69[5];
  sub_100009708(v72, v71);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v74 = SecCertificateCreateWithData(0, isa);

  if (!v74)
  {
    v115 = *(v0 + 832);
    v116 = *(v0 + 816);
    v117 = *(v0 + 808);
    v118 = *(v0 + 792);

    sub_1000092BC(v72, v71);
    sub_10000A0D4(v157, &qword_1002024D8, &qword_1001ACFD8);
    sub_1000BB9CC(v118, type metadata accessor for IdentityReaderAuthenticator);
    (*(v116 + 8))(v115, v117);
    goto LABEL_56;
  }

  v152 = v72;
  v156 = v71;
  v75 = v69[2];
  if (v75 <= 1)
  {

    v80 = 0;
    v119 = 0;
    v81 = *(v0 + 984);
  }

  else
  {
    v76 = &v69[2 * v75 + 4];
    v77 = *(v76 - 16);
    v78 = *(v76 - 8);
    sub_100009708(v77, v78);

    v79 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(v77, v78);
    v80 = SecCertificateCreateWithData(kCFAllocatorDefault, v79);

    v81 = *(v0 + 984);
    if (!v80)
    {
LABEL_68:
      v119 = 0;
      goto LABEL_69;
    }

    v82 = v80;
    sub_100021A34((v0 + 448));
    if (v81)
    {

      defaultLogger()();
      swift_errorRetain();
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        swift_errorRetain();
        v87 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 4) = v87;
        *v86 = v87;
        _os_log_impl(&_mh_execute_header, v83, v84, "Failed to extract distinguished names from reader certificate's root issuer (non-fatal): %@", v85, 0xCu);
        sub_10000A0D4(v86, &qword_1002003B8, &unk_1001AB850);
        v70 = v0 + 128;

        v88 = v83;
      }

      else
      {
        v88 = v82;
        v82 = v83;
      }

      (*(v0 + 952))(*(v0 + 904), *(v0 + 888));
      v81 = 0;
      v80 = 0;
      goto LABEL_68;
    }

    v119 = *(v0 + 456);
    v80 = *(v0 + 472);
    *(v0 + 560) = *(v0 + 480);
    sub_10000A0D4(v0 + 560, &qword_1002014B0, &unk_1001ACFE0);
  }

LABEL_69:
  v120 = v74;
  sub_100021A34((v70 + 272));
  if (!v81)
  {

    *(v70 + 448) = *(v0 + 416);
    v124 = String._bridgeToObjectiveC()();
    if (*(v0 + 584))
    {
      v125 = String._bridgeToObjectiveC()();
    }

    else
    {
      v125 = 0;
    }

    if (v119)
    {
      v126 = String._bridgeToObjectiveC()();
    }

    else
    {
      v126 = 0;
    }

    if (v80)
    {
      v127 = String._bridgeToObjectiveC()();
    }

    else
    {
      v127 = 0;
    }

    v128 = *(v0 + 912);
    v132 = *(v0 + 888);
    v136 = *(v0 + 952);
    v138 = *(v0 + 816);
    v140 = *(v0 + 808);
    v143 = *(v0 + 832);
    v134 = *(v0 + 792);
    v147 = *(v0 + 736);
    v129 = *(v0 + 608);
    v130 = [objc_allocWithZone(DCPresentmentProposalReaderAnalytics) initWithTrusted:0 untrustedIdentifier:v124 untrustedOrganization:v125 untrustedIssuerIdentifier:v126 untrustedIssuerOrganization:v127];

    sub_10000A0D4(v0 + 576, &qword_1002014B0, &unk_1001ACFE0);
    *(v0 + 592) = *(v0 + 432);
    sub_10000A0D4(v0 + 592, &qword_1002014B0, &unk_1001ACFE0);
    defaultLogger()();
    *(swift_task_alloc() + 16) = v130;
    Logger.sensitive(_:)();
    sub_1000092BC(v152, v156);

    sub_10000A0D4(v157, &qword_1002024D8, &qword_1001ACFD8);

    v136(v128, v132);
    sub_1000BB9CC(v134, type metadata accessor for IdentityReaderAuthenticator);
    (*(v138 + 8))(v143, v140);
    v131 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
    sub_100046524(v147, v129 + *(v131 + 32), &qword_100201560, &unk_1001AB910);
    *v129 = 0;
    *(v129 + 8) = v130;
    *(v129 + 16) = 0;
    *(v129 + 24) = 3;
    goto LABEL_57;
  }

  v121 = *(v0 + 912);
  v122 = *(v0 + 888);
  v149 = *(v0 + 832);
  v123 = *(v0 + 816);
  v144 = *(v0 + 952);
  v146 = *(v0 + 808);
  v142 = *(v0 + 792);

  defaultLogger()();
  DIPRecordError(_:message:log:)();
  sub_1000092BC(v152, v156);

  sub_10000A0D4(v70, &qword_1002024D8, &qword_1001ACFD8);
  v144(v121, v122);
  sub_1000BB9CC(v142, type metadata accessor for IdentityReaderAuthenticator);
  (*(v123 + 8))(v149, v146);
LABEL_56:
  v107 = *(v0 + 736);
  v108 = *(v0 + 608);
  v109 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  sub_100046524(v107, v108 + *(v109 + 32), &qword_100201560, &unk_1001AB910);
  *(v108 + 8) = 0;
  *(v108 + 16) = 0;
  *v108 = 0;
  *(v108 + 24) = 3;
LABEL_57:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));

  v51 = *(v0 + 8);
LABEL_58:

  return v51();
}

uint64_t sub_1000AAD30()
{
  v6 = v0[104];
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[99];
  (*(v0[84] + 104))(v0[85], enum case for DIPError.Code.internalError(_:), v0[83]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1000BB9CC(v3, type metadata accessor for IdentityReaderAuthenticator);
  (*(v1 + 8))(v6, v2);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v0[109] + 8))(v0[110], v0[108]);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000AB060(void *a1)
{
  _StringGuts.grow(_:)(46);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD00000000000002CLL;
}

unint64_t sub_1000AB110(void *a1)
{
  _StringGuts.grow(_:)(47);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD00000000000002DLL;
}

uint64_t sub_1000AB1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  sub_100004E70(&qword_100202378, &unk_1001ACE70);
  v4[39] = swift_task_alloc();
  v5 = type metadata accessor for Certificate();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  sub_100004E70(&qword_100201560, &unk_1001AB910);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  v7 = type metadata accessor for IdentityReaderAuthenticator(0);
  v4[49] = v7;
  v4[50] = *(v7 - 8);
  v4[51] = swift_task_alloc();
  sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v8 = type metadata accessor for SessionType();
  v4[54] = v8;
  v4[55] = *(v8 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[59] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v4[60] = v9;
  v4[61] = *(v9 - 8);
  v4[62] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[63] = v10;
  v4[64] = *(v10 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000AB584, 0, 0);
}

uint64_t sub_1000AB584(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter performReaderAuth for credentialRequest", v4, 2u);
  }

  v5 = v1[68];
  v6 = v1[63];
  v7 = v1[64];
  v8 = v1[37];

  v9 = *(v7 + 8);
  v9(v5, v6);
  static IDCSSignposts.presentmentReaderAuth.getter();
  DIPSignpost.init(_:)();
  if (v8 != 1)
  {
    if (!v8)
    {
      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Skipping reader authentication because session policy is set to none", v12, 2u);
      }

      v13 = v1[67];
      v14 = v1[63];
      v15 = v1[58];
      v17 = v1[54];
      v16 = v1[55];
      v98 = v1[53];
      v101 = v1[52];

      v9(v13, v14);
      CredentialPresentmentRequest.sessionType.getter();
      SessionType.identifier.getter();
      (*(v16 + 8))(v15, v17);
      v18 = type metadata accessor for URL();
      v19 = *(v18 - 8);
      v20 = *(v19 + 56);
      v20(v98, 1, 1, v18);
      v20(v101, 1, 1, v18);
      v21 = String._bridgeToObjectiveC()();

      v22 = *(v19 + 48);
      v24 = 0;
      if (v22(v98, 1, v18) != 1)
      {
        v25 = v1[53];
        URL._bridgeToObjectiveC()(v23);
        v24 = v26;
        (*(v19 + 8))(v25, v18);
      }

      v27 = v1[52];
      if (v22(v27, 1, v18) == 1)
      {
        v29 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v28);
        v29 = v51;
        (*(v19 + 8))(v27, v18);
      }

      v52 = v1[35];
      v53 = [objc_allocWithZone(DCPresentmentProposalReaderMetadata) initWithIdentifier:v21 organization:0 organizationalUnit:0 iconData:0 iconURL:v24 iconMediaType:0 privacyPolicyURL:v29 merchantCategoryCode:0];

      v54 = *(type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0) + 32);
      v55 = type metadata accessor for DIPError();
      (*(*(v55 - 8) + 56))(v52 + v54, 1, 1, v55);
      *(v52 + 8) = 0;
      *(v52 + 16) = 0;
      *v52 = v53;
      *(v52 + 24) = 3;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v1[61] + 8))(v1[62], v1[60]);

      v50 = v1[1];
      goto LABEL_20;
    }

    v43 = v1[47];
    v42 = v1[48];
    v44 = v1[46];
    _StringGuts.grow(_:)(40);

    v45 = DCCredentialReaderAuthenticationPolicyToString();
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    (*(v43 + 104))(v42, enum case for DIPError.Code.idcsInvalidReaderAuthenticationPolicy(_:), v44);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_16;
  }

  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Performing optional identity reader authentication policy", v32, 2u);
  }

  v33 = v1[66];
  v34 = v1[63];
  v35 = v1[57];
  v36 = v1[54];
  v37 = v1[55];

  v9(v33, v34);
  CredentialPresentmentRequest.sessionType.getter();
  v38 = (*(v37 + 88))(v35, v36);
  if (v38 == enum case for SessionType.digital(_:))
  {
    v40 = v1[47];
    v39 = v1[48];
    v41 = v1[46];
    (*(v1[55] + 8))(v1[57], v1[54]);
    (*(v40 + 104))(v39, enum case for DIPError.Code.idcsInvalidPayload(_:), v41);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_16:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_17:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v1[61] + 8))(v1[62], v1[60]);

    v50 = v1[1];
LABEL_20:

    return v50();
  }

  if (v38 != enum case for SessionType.web(_:))
  {
    v80 = v1[56];
    v81 = v1[54];
    v82 = v1[55];
    v83 = v1[47];
    v84 = v1[48];
    v100 = v1[46];
    v103 = v1[57];
    _StringGuts.grow(_:)(80);
    v1[33] = 0;
    v1[34] = 0xE000000000000000;
    v85._countAndFlagsBits = 0xD000000000000022;
    v85._object = 0x80000001001B8340;
    String.append(_:)(v85);
    CredentialPresentmentRequest.sessionType.getter();
    _print_unlocked<A, B>(_:_:)();
    v86 = *(v82 + 8);
    v86(v80, v81);
    v87._object = 0x80000001001B8370;
    v87._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v87);
    (*(v83 + 104))(v84, enum case for DIPError.Code.idcsInvalidPayload(_:), v100);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v86(v103, v81);
    goto LABEL_17;
  }

  v57 = v1[57];
  (*(v1[55] + 96))(v57, v1[54]);
  v58 = v57[1];
  v95 = *v57;
  v59 = *(v57[2] + 16);
  if (!v59)
  {

    v63 = _swiftEmptyArrayStorage;
LABEL_49:
    v88 = v1[51];
    v89 = v1[49];
    v90 = CredentialPresentmentRequest.allDocumentTypes.getter();
    v91 = (v88 + v89[6]);
    v91[3] = type metadata accessor for DateProvider();
    v91[4] = &protocol witness table for DateProvider;
    sub_10001A9A4(v91);
    DateProvider.init()();
    *(v88 + v89[7]) = 0;
    *(v88 + v89[8]) = 3;
    *v88 = v90;
    v92 = (v88 + v89[5]);
    *v92 = v95;
    v92[1] = v58;
    v92[2] = v63;
    type metadata accessor for IdentityReaderAuthenticator.Request(0);
    swift_storeEnumTagMultiPayload();
    v93 = swift_task_alloc();
    v1[69] = v93;
    *v93 = v1;
    v93[1] = sub_1000AC4E4;
    v94 = v1[44];

    return sub_100035F7C((v1 + 2), v94);
  }

  v60 = v1[41];
  v96 = v57[2];
  result = sub_10010A858(0, v59, 0);
  v61 = v96;
  v62 = 0;
  v63 = _swiftEmptyArrayStorage;
  v97 = v59;
  while (v62 < *(v61 + 16))
  {
    v102 = v62;

    v64 = decodeCertificateChain(fromDER:)();
    v65 = v64;
    if (v64 >> 62)
    {
      v66 = _CocoaArrayWrapper.endIndex.getter();
      if (!v66)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v66)
      {
        goto LABEL_42;
      }
    }

    result = sub_10010A9C0(0, v66 & ~(v66 >> 63), 0);
    if (v66 < 0)
    {
      goto LABEL_53;
    }

    v99 = v63;
    if ((v65 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v66; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        Certificate.init(_:)();
        v69 = _swiftEmptyArrayStorage[2];
        v68 = _swiftEmptyArrayStorage[3];
        if (v69 >= v68 >> 1)
        {
          sub_10010A9C0((v68 > 1), v69 + 1, 1);
        }

        v70 = v1[43];
        v71 = v1[40];
        _swiftEmptyArrayStorage[2] = v69 + 1;
        (*(v60 + 32))(_swiftEmptyArrayStorage + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v69, v70, v71);
      }
    }

    else
    {
      v72 = 32;
      do
      {
        v73 = *(v65 + v72);
        Certificate.init(_:)();
        v75 = _swiftEmptyArrayStorage[2];
        v74 = _swiftEmptyArrayStorage[3];
        if (v75 >= v74 >> 1)
        {
          sub_10010A9C0((v74 > 1), v75 + 1, 1);
        }

        v76 = v1[42];
        v77 = v1[40];
        _swiftEmptyArrayStorage[2] = v75 + 1;
        (*(v60 + 32))(_swiftEmptyArrayStorage + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v75, v76, v77);
        v72 += 8;
        --v66;
      }

      while (v66);
    }

    v63 = v99;
    v61 = v96;
LABEL_43:
    v79 = v63[2];
    v78 = v63[3];
    if (v79 >= v78 >> 1)
    {
      result = sub_10010A858((v78 > 1), v79 + 1, 1);
      v61 = v96;
    }

    v62 = v102 + 1;
    v63[2] = v79 + 1;
    v63[v79 + 4] = _swiftEmptyArrayStorage;
    if (v102 + 1 == v97)
    {

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1000AC4E4()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 560) = v0;
  v13 = *(v3 + 32);
  v12 = *(v3 + 16);
  *(v3 + 568) = v12;
  v10 = *(v3 + 96);
  v11 = *(v3 + 64);
  v8 = *(v3 + 80);
  v9 = *(v3 + 48);
  v4 = *(v2 + 112);
  v5 = *(v3 + 120);

  if (v0)
  {
    v6 = sub_1000ACA48;
  }

  else
  {
    *(v3 + 128) = v12;
    *(v3 + 144) = v13;
    *(v3 + 160) = v9;
    *(v3 + 176) = v11;
    *(v3 + 192) = v8;
    *(v3 + 208) = v10;
    *(v3 + 224) = v4;
    *(v3 + 232) = v5;
    v6 = sub_1000AC66C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000AC66C()
{
  v1 = *(v0 + 568);
  sub_100046524(*(v0 + 352), *(v0 + 360), &qword_100201560, &unk_1001AB910);
  if (!v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3._object = 0x80000001001B83A0;
    v3._countAndFlagsBits = 0xD000000000000021;
    v4 = NSUserDefaults.internalBool(forKey:)(v3);

    if (v4)
    {
      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Using mock reader metadata due to user defaults setting", v7, 2u);
      }

      v8 = *(v0 + 520);
      v9 = *(v0 + 504);
      v10 = *(v0 + 512);

      (*(v10 + 8))(v8, v9);
    }
  }

  v12 = *(v0 + 400);
  v11 = *(v0 + 408);
  v13 = *(v0 + 392);
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  sub_1000BCFA8(v11, v14, type metadata accessor for IdentityReaderAuthenticator);
  (*(v12 + 56))(v14, 0, 1, v13);
  v16 = OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_identityReaderAuthenticator;
  swift_beginAccess();
  sub_1000BD010(v14, v15 + v16, &qword_100202378, &unk_1001ACE70);
  swift_endAccess();
  v17._countAndFlagsBits = 0x3461653530636166;
  v18._countAndFlagsBits = 0xD00000000000005ELL;
  v18._object = 0x80000001001B83D0;
  v17._object = 0xE800000000000000;
  logMilestone(tag:description:)(v17, v18);
  sub_1000BB9CC(v11, type metadata accessor for IdentityReaderAuthenticator);
  v19 = *(v0 + 128);
  if (v19)
  {
    v20 = v19;
    sub_10000A0D4(v0 + 128, &qword_1002024D8, &qword_1001ACFD8);
    v21 = *(v0 + 232);
    if (v21)
    {

      v19 = 0;
    }
  }

  else
  {
    v21 = 3;
  }

  v22 = *(v0 + 360);
  v23 = *(v0 + 280);
  v24 = type metadata accessor for PresentmentRequestInterpreter.ReaderAuthResult(0);
  sub_100046524(v22, v23 + *(v24 + 32), &qword_100201560, &unk_1001AB910);
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000ACA48()
{
  v1 = v0[51];
  (*(v0[47] + 104))(v0[48], enum case for DIPError.Code.internalError(_:), v0[46]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1000BB9CC(v1, type metadata accessor for IdentityReaderAuthenticator);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v0[61] + 8))(v0[62], v0[60]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000ACCF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for CredentialPresentmentRequest.UseCase();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000ACE88, 0, 0);
}

uint64_t sub_1000ACE88()
{
  v66 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[11];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v61 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v7 = v1 + v61;
    v8 = *(v4 + 56);
    v9 = (v4 + 16);
    v10 = _swiftEmptyArrayStorage;
    v57 = *(v1 + 16);
    v60 = v8;
    v6(v0[13], v1 + v61, v0[10]);
    while (1)
    {
      if (CredentialPresentmentRequest.UseCase.isMandatory.getter())
      {
        v11 = *v9;
        (*v9)(v0[12], v0[13], v0[10]);
        v65 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10010A95C(0, v10[2] + 1, 1);
          v10 = v65;
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          sub_10010A95C((v12 > 1), v13 + 1, 1);
          v10 = v65;
        }

        v0 = v63;
        v14 = v63[12];
        v15 = v63[10];
        v10[2] = v13 + 1;
        v16 = v10 + v61 + v13 * v60;
        v8 = v60;
        v11(v16, v14, v15);
      }

      else
      {
        (*(v4 - 8))(v0[13], v0[10]);
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v5(v0[13], v7, v0[10]);
    }

    if (v57 == 1)
    {
      v17 = v0[14];
      v18 = v0[10];
      v19 = v0[11];
      v20 = v63[2];

      v0 = v63;
      (*(v19 + 16))(v17, v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2] != 1)
  {
    v21 = v0 + 9;

    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Request must contain exactly one use case or mandatory use case, returning no proposals", v34, 2u);
    }

    v35 = _swiftEmptyArrayStorage;
    v36 = 7;
    v37 = 8;
LABEL_51:
    (*(v0[v37] + 8))(*v21, v0[v36]);

    v50 = v0[1];

    return v50(v35);
  }

  (*(v0[11] + 16))(v0[14], v10 + ((*(v0[11] + 80) + 32) & ~*(v0[11] + 80)), v0[10]);

LABEL_17:
  v21 = v0 + 14;
  result = CredentialPresentmentRequest.UseCase.documentRequests.getter();
  v23 = result;
  v24 = *(result + 16);
  if (!v24)
  {
    v26 = _swiftEmptyArrayStorage;
LABEL_32:

    v38 = v26[2];
    if (!v38)
    {
      v59 = v63[14];
      v51 = v63[11];
      v53 = v63[5];
      v52 = v63[6];
      v54 = v63[4];
      v58 = v63[10];

      v56 = *(v53 + 104);
      v56(v52, enum case for DIPError.Code.idcsInvalidCredentialPresentmentRequest(_:), v54);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v51 + 8))(v59, v58);
      v56(v52, enum case for DIPError.Code.internalError(_:), v54);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v55 = v63[1];

      return v55();
    }

    v39 = 0;
    v35 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v39 >= v26[2])
      {
        goto LABEL_58;
      }

      v40 = v26[v39 + 4];
      v41 = *(v40 + 16);
      v42 = v35[2];
      v43 = v42 + v41;
      if (__OFADD__(v42, v41))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v43 <= v35[3] >> 1)
      {
        if (*(v40 + 16))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v42 <= v43)
        {
          v45 = v42 + v41;
        }

        else
        {
          v45 = v42;
        }

        v35 = sub_10010076C(isUniquelyReferenced_nonNull_native, v45, 1, v35);
        if (*(v40 + 16))
        {
LABEL_46:
          v46 = (v35[3] >> 1) - v35[2];
          result = type metadata accessor for DocumentRequest();
          if (v46 < v41)
          {
            goto LABEL_61;
          }

          swift_arrayInitWithCopy();

          if (v41)
          {
            v47 = v35[2];
            v48 = __OFADD__(v47, v41);
            v49 = v47 + v41;
            if (v48)
            {
              goto LABEL_62;
            }

            v35[2] = v49;
          }

          goto LABEL_35;
        }
      }

      if (v41)
      {
        goto LABEL_60;
      }

LABEL_35:
      if (v38 == ++v39)
      {

        v36 = 10;
        v37 = 11;
        v0 = v63;
        goto LABEL_51;
      }
    }
  }

  v62 = v0 + 14;
  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  while (v25 < *(v23 + 16))
  {
    v27 = v0[3];
    v64 = *(v23 + 32 + 8 * v25);

    sub_1000AD688(&v64, v27, &v65);

    v28 = v65;
    if (v65)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100100794(0, v26[2] + 1, 1, v26, v29);
        v26 = result;
      }

      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_100100794((v30 > 1), v31 + 1, 1, v26, v29);
        v26 = result;
      }

      v26[2] = v31 + 1;
      v26[v31 + 4] = v28;
    }

    ++v25;
    v0 = v63;
    if (v24 == v25)
    {
      v21 = v62;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_1000AD688(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DocumentRequest();
  v8 = *(v7 - 8);
  v85 = v7;
  v86 = v8;
  __chkstk_darwin(v7);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  v18 = *a1;
  v19 = *(*a1 + 16);
  if (!v19)
  {
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Credential presentment request contains an empty subrequest", v40, 2u);
    }

    goto LABEL_26;
  }

  v81 = v18;
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  if (v21)
  {
    if (v19 != 1)
    {
LABEL_4:
      v17 = v15;
      defaultLogger()();
      v22 = v81;

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        LODWORD(v74) = v24;
        v75 = v23;
        v76 = v17;
        v78 = a3;
        v79 = v11;
        v77 = v10;
        v80 = v3;
        v25 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v88 = v72;
        v73 = v25;
        *v25 = 136315138;
        v87 = _swiftEmptyArrayStorage;
        sub_10010A6B4(0, v19, 0);
        v26 = v87;
        v27 = *(v86 + 16);
        v28 = v22 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        v82 = *(v86 + 72);
        v83 = v27;
        v86 += 16;
        v29 = (v86 - 8);
        do
        {
          v30 = v84;
          v31 = v85;
          v83(v84, v28, v85);
          v32 = DocumentRequest.docType.getter();
          v34 = v33;
          (*v29)(v30, v31);
          v87 = v26;
          v36 = v26[2];
          v35 = v26[3];
          if (v36 >= v35 >> 1)
          {
            sub_10010A6B4((v35 > 1), v36 + 1, 1);
            v26 = v87;
          }

          v26[2] = v36 + 1;
          v37 = &v26[2 * v36];
          v37[4] = v32;
          v37[5] = v34;
          v28 += v82;
          --v19;
        }

        while (v19);
        v60 = Array.description.getter();
        v62 = v61;

        v63 = sub_10010150C(v60, v62, &v88);

        v64 = v73;
        *(v73 + 1) = v63;
        v65 = v75;
        _os_log_impl(&_mh_execute_header, v75, v74, "Credential presentment request contains an unsupported 'and' subrequest: %s", v64, 0xCu);
        sub_100005090(v72);

        (*(v79 + 8))(v76, v77);
        *v78 = 0;
        return;
      }

LABEL_26:
      (*(v11 + 8))(v17, v10);
      *a3 = 0;
      return;
    }
  }

  else if (v19 != 1 && v20 != 1)
  {
    goto LABEL_4;
  }

  v80 = v3;
  v42 = v14;
  defaultLogger()();
  v43 = v81;

  v44 = Logger.logObject.getter();
  LODWORD(v76) = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v76))
  {
    v74 = v44;
    v75 = v42;
    v79 = v11;
    v45 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v88 = v72;
    *v45 = 67109634;
    *(v45 + 4) = (v20 == 1) & ~v21;

    *(v45 + 8) = 2048;
    *(v45 + 10) = *(v43 + 16);

    v73 = v45;
    *(v45 + 18) = 2080;
    v46 = *(v43 + 16);
    v47 = v43;
    if (v46)
    {
      v77 = v10;
      v78 = a3;
      v87 = _swiftEmptyArrayStorage;
      sub_10010A6B4(0, v46, 0);
      v48 = v87;
      v49 = *(v86 + 16);
      v50 = v43 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v82 = *(v86 + 72);
      v83 = v49;
      v86 += 16;
      v51 = (v86 - 8);
      do
      {
        v52 = v84;
        v53 = v85;
        v83(v84, v50, v85);
        v54 = DocumentRequest.docType.getter();
        v56 = v55;
        (*v51)(v52, v53);
        v87 = v48;
        v58 = v48[2];
        v57 = v48[3];
        if (v58 >= v57 >> 1)
        {
          sub_10010A6B4((v57 > 1), v58 + 1, 1);
          v48 = v87;
        }

        v48[2] = v58 + 1;
        v59 = &v48[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
        v50 += v82;
        --v46;
      }

      while (v46);
      v47 = v81;
      v10 = v77;
      a3 = v78;
    }

    v66 = Array.description.getter();
    v68 = v67;

    v69 = sub_10010150C(v66, v68, &v88);

    v70 = v73;
    *(v73 + 5) = v69;
    v71 = v74;
    _os_log_impl(&_mh_execute_header, v74, v76, "PresentmentRequestInterpreter Credential presentment request for ACWG: %{BOOL}d subrequests.count: %ld subrequests docType: %s", v70, 0x1Cu);
    sub_100005090(v72);

    (*(v79 + 8))(v75, v10);
  }

  else
  {

    (*(v11 + 8))(v42, v10);
    v47 = v43;
  }

  *a3 = v47;
}

uint64_t sub_1000ADDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 564) = v19;
  *(v9 + 104) = v18;
  *(v9 + 112) = v8;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = type metadata accessor for DIPError();
  *(v9 + 120) = v10;
  *(v9 + 128) = *(v10 - 8);
  *(v9 + 136) = swift_task_alloc();
  v11 = type metadata accessor for DocumentRequest();
  *(v9 + 144) = v11;
  *(v9 + 152) = *(v11 - 8);
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  sub_100004E70(&qword_1002024B8, &qword_1001ACFB0);
  *(v9 + 176) = swift_task_alloc();
  v12 = type metadata accessor for ISO18013KnownDocTypes();
  *(v9 + 184) = v12;
  *(v9 + 192) = *(v12 - 8);
  *(v9 + 200) = swift_task_alloc();
  v13 = type metadata accessor for PresentmentProposal(0);
  *(v9 + 208) = v13;
  *(v9 + 216) = *(v13 - 8);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  sub_100004E70(&qword_1002024C0, &qword_1001ACFB8);
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  *(v9 + 264) = v14;
  *(v9 + 272) = *(v14 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = sub_100004E70(&qword_1002024C8, &unk_1001ACFC0);
  *(v9 + 296) = swift_task_alloc();
  sub_100004E70(&qword_100201560, &unk_1001AB910);
  *(v9 + 304) = swift_task_alloc();
  sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  *(v9 + 336) = v15;
  *(v9 + 344) = *(v15 - 8);
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1000AE214, 0, 0);
}

uint64_t sub_1000AE214(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter findProposals", v4, 2u);
  }

  v5 = *(v1 + 392);
  v6 = *(v1 + 336);
  v7 = *(v1 + 344);

  v8 = *(v7 + 8);
  *(v1 + 400) = v8;
  v8(v5, v6);
  v9 = objc_opt_self();
  *(v1 + 408) = v9;
  v10 = [v9 standardUserDefaults];
  v11._object = 0x80000001001B2870;
  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v12 = NSUserDefaults.internalString(forKey:)(v11);

  if (v12.value._object)
  {
    v13 = *(v1 + 96);
    if (v12.value._countAndFlagsBits == 0x6574737572746E75 && v12.value._object == 0xE900000000000064)
    {

      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0 || !v13)
      {
        goto LABEL_18;
      }
    }

    v16 = [*(v1 + 96) untrustedIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == 0x61696D656469 && v20 == 0xE600000000000000)
      {

LABEL_17:
        v22 = 2;
        goto LABEL_29;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v23 = *(v1 + 304);
  v24 = *(v1 + 120);
  v25 = *(v1 + 128);
  sub_100046360(*(v1 + 104), v23, &qword_100201560, &unk_1001AB910);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000A0D4(*(v1 + 304), &qword_100201560, &unk_1001AB910);
    v26 = 1;
  }

  else
  {
    v27 = *(v1 + 304);
    v28 = *(v1 + 120);
    v29 = *(v1 + 128);
    DIPError.code.getter();
    (*(v29 + 8))(v27, v28);
    v26 = 0;
  }

  v31 = *(v1 + 320);
  v30 = *(v1 + 328);
  v33 = *(v1 + 288);
  v32 = *(v1 + 296);
  v34 = *(v1 + 264);
  v35 = *(v1 + 272);
  v36 = *(v35 + 56);
  v36(v30, v26, 1, v34);
  (*(v35 + 104))(v31, enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:), v34);
  v36(v31, 0, 1, v34);
  v37 = *(v33 + 48);
  sub_100046360(v30, v32, &qword_100201488, &qword_1001ACFD0);
  sub_100046360(v31, v32 + v37, &qword_100201488, &qword_1001ACFD0);
  v38 = *(v35 + 48);
  if (v38(v32, 1, v34) == 1)
  {
    v39 = *(v1 + 328);
    v40 = *(v1 + 264);
    sub_10000A0D4(*(v1 + 320), &qword_100201488, &qword_1001ACFD0);
    sub_10000A0D4(v39, &qword_100201488, &qword_1001ACFD0);
    if (v38(v32 + v37, 1, v40) == 1)
    {
      v41 = *(v1 + 96);
      sub_10000A0D4(*(v1 + 296), &qword_100201488, &qword_1001ACFD0);
      if (!v41)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

LABEL_27:
    sub_10000A0D4(*(v1 + 296), &qword_1002024C8, &unk_1001ACFC0);
    goto LABEL_28;
  }

  v42 = *(v1 + 264);
  sub_100046360(*(v1 + 296), *(v1 + 312), &qword_100201488, &qword_1001ACFD0);
  v43 = v38(v32 + v37, 1, v42);
  v45 = *(v1 + 320);
  v44 = *(v1 + 328);
  v46 = *(v1 + 312);
  if (v43 == 1)
  {
    v47 = *(v1 + 264);
    v48 = *(v1 + 272);
    sub_10000A0D4(*(v1 + 320), &qword_100201488, &qword_1001ACFD0);
    sub_10000A0D4(v44, &qword_100201488, &qword_1001ACFD0);
    (*(v48 + 8))(v46, v47);
    goto LABEL_27;
  }

  v55 = *(v1 + 272);
  v54 = *(v1 + 280);
  v56 = *(v1 + 264);
  v66 = *(v1 + 96);
  v67 = *(v1 + 296);
  (*(v55 + 32))(v54, v32 + v37, v56);
  sub_1000BD16C(&qword_1002024D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v55 + 8);
  v58(v54, v56);
  sub_10000A0D4(v45, &qword_100201488, &qword_1001ACFD0);
  sub_10000A0D4(v44, &qword_100201488, &qword_1001ACFD0);
  v58(v46, v56);
  sub_10000A0D4(v67, &qword_100201488, &qword_1001ACFD0);
  if ((v57 & 1) == 0 || !v66)
  {
    goto LABEL_28;
  }

LABEL_34:
  v59 = [*(v1 + 96) untrustedIdentifier];
  if (!v59)
  {
    goto LABEL_28;
  }

  v60 = v59;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  if (v61 == 0x2E6173742E6C646DLL && v63 == 0xEF766F672E736864)
  {

    v22 = 1;
    goto LABEL_29;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v64 & 1) == 0)
  {
LABEL_28:
    v22 = *(v1 + 564);
    goto LABEL_29;
  }

  v22 = 1;
LABEL_29:
  *(v1 + 565) = v22;
  v49 = *(*(v1 + 112) + 16);
  *(v1 + 416) = v49;
  v50 = swift_allocObject();
  *(v1 + 424) = v50;
  *(v50 + 16) = v49;
  v51 = swift_allocObject();
  *(v1 + 432) = v51;
  *(v51 + 16) = sub_1000BCF28;
  *(v51 + 24) = v50;

  v52 = swift_task_alloc();
  *(v1 + 440) = v52;
  v53 = sub_100004E70(&qword_100201580, &qword_1001AB980);
  *v52 = v1;
  v52[1] = sub_1000AE984;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 16, sub_1000BCF60, v51, v53);
}

uint64_t sub_1000AE984()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_1000AF468;
  }

  else
  {

    *(v2 + 456) = *(v2 + 16);
    v3 = sub_1000AEAB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000AEAB0()
{
  v97 = v0;
  result = *(v0 + 456);
  v2 = *(result + 16);
  *(v0 + 464) = v2;
  if (v2)
  {
    v3 = 0;
    *(v0 + 472) = *(*(v0 + 40) + 16);
    *(v0 + 552) = enum case for ISO18013KnownDocTypes.photoID(_:);
    *(v0 + 556) = enum case for DIPError.Code.internalError(_:);
    while (1)
    {
      *(v0 + 480) = v3;
      v4 = *(v0 + 456);
      if (v3 >= *(v4 + 16))
      {
        break;
      }

      v5 = *(v0 + 472);
      v6 = v4 + 16 * v3;
      *(v0 + 488) = *(v6 + 32);
      *(v0 + 496) = *(v6 + 40);

      if (v5)
      {
        v37 = *(v0 + 152);
        v38 = *(v0 + 40);
        v39 = *(v37 + 80);
        *(v0 + 560) = v39;
        v40 = (v39 + 32) & ~v39;
        v41 = *(v37 + 72);
        *(v0 + 528) = 0;
        *(v0 + 520) = _swiftEmptyArrayStorage;
        *(v0 + 504) = v41;
        *(v0 + 512) = _swiftEmptyArrayStorage;
        v42 = swift_task_alloc();
        *(v0 + 536) = v42;
        *v42 = v0;
        v42[1] = sub_1000AF5F8;
        v43 = *(v0 + 488);
        v44 = *(v0 + 496);
        v45 = *(v0 + 256);
        v46 = *(v0 + 96);
        v47 = *(v0 + 80);
        v48 = *(v0 + 64);
        v49 = *(v0 + 72);
        v50 = *(v0 + 48);
        v51 = *(v0 + 56);
        v101 = *(v0 + 565);
        v100 = v46;
        v99 = v47;

        return sub_1000B0FB8(v45, v43, v44, v38 + v40, v50, v51, v48, v49);
      }

      v3 = *(v0 + 480) + 1;
      if (v3 == *(v0 + 464))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_6:

    v7 = *(v0 + 112);
    if ((*(v7 + 72) & 1) == 0 && *(v7 + 64) == 1)
    {
      v8 = *(v0 + 40);
      v87 = *(v8 + 16);
      if (v87)
      {
        v9 = 0;
        v10 = *(v0 + 216);
        v11 = *(v0 + 152);
        v12 = _swiftEmptyArrayStorage[2];
        v14 = *(v11 + 16);
        v11 += 16;
        v13 = v14;
        v15 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
        v91 = (v11 - 8);
        v16 = *(v11 + 56);
        v88 = v14;
        v85 = v16;
        v86 = v15;
        while (2)
        {
          v93 = v9 + 1;
          result = (v13)(*(v0 + 168), v15 + v9 * v16, *(v0 + 144));
          v17 = 0;
          while (1)
          {
            if (v12 == v17)
            {
              v66 = *(v0 + 160);
              v65 = *(v0 + 168);
              v67 = *(v0 + 144);

              defaultLogger()();
              v88(v66, v65, v67);
              v68 = Logger.logObject.getter();
              v69 = static os_log_type_t.debug.getter();
              v70 = os_log_type_enabled(v68, v69);
              v71 = *(v0 + 400);
              v72 = *(v0 + 384);
              v73 = *(v0 + 336);
              v74 = *(v0 + 160);
              v75 = *(v0 + 144);
              if (v70)
              {
                v95 = *(v0 + 384);
                v76 = swift_slowAlloc();
                v90 = v73;
                v77 = swift_slowAlloc();
                v96 = v77;
                *v76 = 136315138;
                v89 = v71;
                v78 = DocumentRequest.docType.getter();
                v80 = v79;
                v81 = *v91;
                (*v91)(v74, v75);
                v82 = sub_10010150C(v78, v80, &v96);

                *(v76 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v68, v69, "PresentmentRequestInterpreter: Aliro reader requested '%s' but 0 proposals contain this document type, returning 0 proposals.", v76, 0xCu);
                sub_100005090(v77);

                v89(v95, v90);
                v81(*(v0 + 168), *(v0 + 144));
              }

              else
              {

                v83 = *v91;
                (*v91)(v74, v75);
                v71(v72, v73);
                v83(*(v0 + 168), *(v0 + 144));
              }

              goto LABEL_39;
            }

            if (v17 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_43;
            }

            v18 = *(v0 + 224);
            sub_1000BCFA8(_swiftEmptyArrayStorage + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v18, type metadata accessor for PresentmentProposal);
            v19 = [*v18 docType];
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            v23 = DocumentRequest.docType.getter();
            v25 = *(v0 + 224);
            if (v20 == v23 && v22 == v24)
            {
              break;
            }

            ++v17;
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            result = sub_1000BB9CC(v25, type metadata accessor for PresentmentProposal);
            if (v27)
            {
              goto LABEL_20;
            }
          }

          sub_1000BB9CC(v25, type metadata accessor for PresentmentProposal);
LABEL_20:
          (*v91)(*(v0 + 168), *(v0 + 144));
          v13 = v88;
          v9 = v93;
          v16 = v85;
          v15 = v86;
          if (v93 != v87)
          {
            continue;
          }

          break;
        }
      }

      defaultLogger()();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "PresentmentRequestInterpreter: All documents requested present for ACWG", v30, 2u);
      }

      v31 = *(v0 + 400);
      v32 = *(v0 + 376);
      v33 = *(v0 + 336);

      v31(v32, v33);
    }

    if (_swiftEmptyArrayStorage[2])
    {
      defaultLogger()();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134349056;
        *(v36 + 4) = _swiftEmptyArrayStorage[2];

        _os_log_impl(&_mh_execute_header, v34, v35, "PresentmentRequestInterpreter: Found %{public}ld candidate credentials", v36, 0xCu);
      }

      else
      {
      }

      (*(v0 + 400))(*(v0 + 360), *(v0 + 336));
    }

    else
    {
      defaultLogger()();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v92 = *(v0 + 368);
        v94 = *(v0 + 400);
        v54 = *(v0 + 336);
        v55 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v55 = 136446466;
        v56 = Array.description.getter();
        v58 = sub_10010150C(v56, v57, &v96);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2082;
        v59 = Set.description.getter();
        v61 = sub_10010150C(v59, v60, &v96);

        *(v55 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v52, v53, "PresentmentRequestInterpreter: Did not find any documents %{public}s in partitions %{public}s", v55, 0x16u);
        swift_arrayDestroy();

        v94(v92, v54);
      }

      else
      {
        v62 = *(v0 + 400);
        v63 = *(v0 + 368);
        v64 = *(v0 + 336);

        v62(v63, v64);
      }
    }

LABEL_39:

    v84 = *(v0 + 8);

    return v84(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000AF468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AF5F8()
{
  *(*v1 + 544) = v0;

  if (v0)
  {

    v2 = sub_1000B04B8;
  }

  else
  {
    v2 = sub_1000AF714;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AF714()
{
  v134 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  sub_100046360(*(v0 + 256), v1, &qword_1002024C0, &qword_1001ACFB8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 248);
    sub_10000A0D4(*(v0 + 256), &qword_1002024C0, &qword_1001ACFB8);
    sub_10000A0D4(v4, &qword_1002024C0, &qword_1001ACFB8);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    goto LABEL_20;
  }

  v7 = *(v0 + 565);
  sub_1000BBB18(*(v0 + 248), *(v0 + 240), type metadata accessor for PresentmentProposal);
  if (v7 != 3)
  {
    v8 = *(v0 + 408);
    v9 = sub_10010DD18(&off_1001F41C8);
    *(v0 + 32) = v9;
    v10 = [v8 standardUserDefaults];
    v11._object = 0x80000001001B2870;
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    v12 = NSUserDefaults.internalString(forKey:)(v11);

    if (v12.value._object)
    {

      v13 = (v12.value._object >> 56) & 0xF;
      if ((v12.value._object & 0x2000000000000000) == 0)
      {
        v13 = v12.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_100102584(v133, 2);
        v9 = *(v0 + 32);
      }
    }

    if (*(v9 + 16) && (v14 = *(v0 + 565), Hasher.init(_seed:)(), Hasher._combine(_:)(v14), v15 = Hasher._finalize()(), v16 = -1 << *(v9 + 32), v17 = v15 & ~v16, ((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      while (*(*(v9 + 48) + v17) != *(v0 + 565))
      {
        v17 = (v17 + 1) & v18;
        if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v82 = *(v0 + 552);
      v83 = *(v0 + 240);
      v85 = *(v0 + 192);
      v84 = *(v0 + 200);
      v86 = *(v0 + 184);

      v87 = [*v83 docType];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      (*(v85 + 104))(v84, v82, v86);
      v91 = ISO18013KnownDocTypes.rawValue.getter();
      v93 = v92;
      (*(v85 + 8))(v84, v86);
      if (v88 == v91 && v90 == v93)
      {

        goto LABEL_64;
      }

      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v95)
      {
LABEL_64:
        v116 = *(v0 + 512);
        sub_1000BCFA8(*(v0 + 240), *(v0 + 176), type metadata accessor for PresentmentProposal);
        v117 = *(v116 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 24) = v116;
        v5 = *(v0 + 512);
        if (!isUniquelyReferenced_nonNull_native || v117 >= *(v5 + 24) >> 1)
        {
          v5 = sub_100100FB4(isUniquelyReferenced_nonNull_native, v117 + 1, 1, *(v0 + 512));
          *(v0 + 24) = v5;
        }

        sub_10010B474(0, 0, 1, *(v0 + 176));
        goto LABEL_16;
      }
    }

    else
    {
LABEL_14:
    }
  }

  v5 = *(v0 + 512);
LABEL_16:
  sub_1000BCFA8(*(v0 + 240), *(v0 + 232), type metadata accessor for PresentmentProposal);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_75:
    v5 = sub_100100FB4(0, *(v5 + 16) + 1, 1, v5);
  }

  v20 = *(v5 + 16);
  v19 = *(v5 + 24);
  if (v20 >= v19 >> 1)
  {
    v5 = sub_100100FB4((v19 > 1), v20 + 1, 1, v5);
  }

  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 216);
  sub_10000A0D4(*(v0 + 256), &qword_1002024C0, &qword_1001ACFB8);
  *(v5 + 16) = v20 + 1;
  sub_1000BBB18(v22, v5 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for PresentmentProposal);
  sub_1000BB9CC(v21, type metadata accessor for PresentmentProposal);
  v6 = v5;
LABEL_20:
  v24 = *(v0 + 528) + 1;
  if (v24 == *(v0 + 472))
  {
    while (1)
    {

      v25 = *(v0 + 480) + 1;
      if (v25 == *(v0 + 464))
      {
        break;
      }

      *(v0 + 480) = v25;
      v26 = *(v0 + 456);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v27 = *(v0 + 472);
      v28 = v26 + 16 * v25;
      *(v0 + 488) = *(v28 + 32);
      *(v0 + 496) = *(v28 + 40);

      if (v27)
      {
        v24 = 0;
        v29 = *(v0 + 152);
        v30 = *(v29 + 80);
        *(v0 + 560) = v30;
        v31 = *(v29 + 72);
        *(v0 + 504) = v31;
        goto LABEL_26;
      }
    }

    v44 = *(v0 + 112);
    v132 = v5;
    if ((*(v44 + 72) & 1) == 0 && *(v44 + 64) == 1)
    {
      v45 = *(v0 + 40);
      v122 = *(v45 + 16);
      if (v122)
      {
        v46 = 0;
        v47 = *(v0 + 216);
        v48 = *(v0 + 152);
        v49 = *(v6 + 16);
        v51 = *(v48 + 16);
        v48 += 16;
        v50 = v51;
        v52 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
        v127 = (v48 - 8);
        v53 = *(v48 + 56);
        v124 = v51;
        v120 = v53;
        v121 = v52;
        while (2)
        {
          v129 = v46 + 1;
          v50(*(v0 + 168), v52 + v46 * v53, *(v0 + 144));
          v54 = 0;
          while (1)
          {
            if (v49 == v54)
            {
              v100 = *(v0 + 160);
              v99 = *(v0 + 168);
              v101 = *(v0 + 144);

              defaultLogger()();
              v124(v100, v99, v101);
              v102 = Logger.logObject.getter();
              v103 = static os_log_type_t.debug.getter();
              v104 = os_log_type_enabled(v102, v103);
              v105 = *(v0 + 400);
              v106 = *(v0 + 384);
              v107 = *(v0 + 336);
              v108 = *(v0 + 160);
              v109 = *(v0 + 144);
              if (v104)
              {
                v131 = *(v0 + 384);
                v110 = swift_slowAlloc();
                v126 = v107;
                v111 = swift_slowAlloc();
                v133[0] = v111;
                *v110 = 136315138;
                v123 = DocumentRequest.docType.getter();
                v125 = v105;
                v113 = v112;
                v114 = *v127;
                (*v127)(v108, v109);
                v115 = sub_10010150C(v123, v113, v133);

                *(v110 + 4) = v115;
                _os_log_impl(&_mh_execute_header, v102, v103, "PresentmentRequestInterpreter: Aliro reader requested '%s' but 0 proposals contain this document type, returning 0 proposals.", v110, 0xCu);
                sub_100005090(v111);

                v125(v131, v126);
              }

              else
              {

                v114 = *v127;
                (*v127)(v108, v109);
                v105(v106, v107);
              }

              v114(*(v0 + 168), *(v0 + 144));
              v132 = _swiftEmptyArrayStorage;
              goto LABEL_70;
            }

            if (v54 >= *(v6 + 16))
            {
              goto LABEL_74;
            }

            v55 = *(v0 + 224);
            sub_1000BCFA8(v6 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v54, v55, type metadata accessor for PresentmentProposal);
            v56 = [*v55 docType];
            v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            v59 = DocumentRequest.docType.getter();
            v61 = *(v0 + 224);
            if (v5 == v59 && v58 == v60)
            {
              break;
            }

            ++v54;
            v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_1000BB9CC(v61, type metadata accessor for PresentmentProposal);
            if (v5)
            {
              goto LABEL_43;
            }
          }

          sub_1000BB9CC(v61, type metadata accessor for PresentmentProposal);
LABEL_43:
          (*v127)(*(v0 + 168), *(v0 + 144));
          v50 = v124;
          v46 = v129;
          v53 = v120;
          v52 = v121;
          if (v129 != v122)
          {
            continue;
          }

          break;
        }
      }

      defaultLogger()();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "PresentmentRequestInterpreter: All documents requested present for ACWG", v65, 2u);
      }

      v66 = *(v0 + 400);
      v67 = *(v0 + 376);
      v68 = *(v0 + 336);

      v66(v67, v68);
      v5 = v132;
    }

    if (*(v6 + 16))
    {
      defaultLogger()();

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 134349056;
        *(v71 + 4) = *(v5 + 16);

        _os_log_impl(&_mh_execute_header, v69, v70, "PresentmentRequestInterpreter: Found %{public}ld candidate credentials", v71, 0xCu);
      }

      else
      {
      }

      (*(v0 + 400))(*(v0 + 360), *(v0 + 336));
    }

    else
    {
      defaultLogger()();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v128 = *(v0 + 368);
        v130 = *(v0 + 400);
        v74 = *(v0 + 336);
        v75 = swift_slowAlloc();
        v133[0] = swift_slowAlloc();
        *v75 = 136446466;
        v76 = Array.description.getter();
        v78 = sub_10010150C(v76, v77, v133);

        *(v75 + 4) = v78;
        *(v75 + 12) = 2082;
        v79 = Set.description.getter();
        v81 = sub_10010150C(v79, v80, v133);

        *(v75 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v72, v73, "PresentmentRequestInterpreter: Did not find any documents %{public}s in partitions %{public}s", v75, 0x16u);
        swift_arrayDestroy();

        v130(v128, v74);
      }

      else
      {
        v96 = *(v0 + 400);
        v97 = *(v0 + 368);
        v98 = *(v0 + 336);

        v96(v97, v98);
      }
    }

LABEL_70:

    v119 = *(v0 + 8);

    return v119(v132);
  }

  else
  {
    v31 = *(v0 + 504);
    LOBYTE(v30) = *(v0 + 560);
LABEL_26:
    *(v0 + 528) = v24;
    *(v0 + 520) = v5;
    *(v0 + 512) = v6;
    v32 = *(v0 + 40) + ((v30 + 32) & ~v30) + v31 * v24;
    v33 = swift_task_alloc();
    *(v0 + 536) = v33;
    *v33 = v0;
    v33[1] = sub_1000AF5F8;
    v34 = *(v0 + 488);
    v35 = *(v0 + 496);
    v36 = *(v0 + 256);
    v37 = *(v0 + 96);
    v38 = *(v0 + 80);
    v39 = *(v0 + 64);
    v40 = *(v0 + 72);
    v41 = *(v0 + 48);
    v42 = *(v0 + 56);
    v138 = *(v0 + 565);
    v137 = v37;
    v136 = v38;

    return sub_1000B0FB8(v36, v34, v35, v32, v41, v42, v39, v40);
  }
}

uint64_t sub_1000B04B8()
{
  v108 = v0;
  v1 = *(v0 + 352);
  v101 = *(v0 + 336);
  v105 = *(v0 + 400);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  (*(*(v0 + 272) + 104))(*(v0 + 280), *(v0 + 556), *(v0 + 264));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v90 = 0x80000001001B8170;
  v91 = 633;
  v89 = 0xD0000000000000ACLL;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v5, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v105(v1, v101);
  (*(v3 + 8))(v2, v4);

  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  while (1)
  {
    v9 = *(v0 + 480) + 1;
    if (v9 == *(v0 + 464))
    {
      break;
    }

    *(v0 + 480) = v9;
    v10 = *(v0 + 456);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

    v11 = *(v0 + 472);
    v12 = v10 + 16 * v9;
    *(v0 + 488) = *(v12 + 32);
    *(v0 + 496) = *(v12 + 40);

    if (v11)
    {
      v43 = *(v0 + 152);
      v44 = *(v0 + 40);
      v45 = *(v43 + 80);
      *(v0 + 560) = v45;
      v46 = (v45 + 32) & ~v45;
      v47 = *(v43 + 72);
      *(v0 + 528) = 0;
      *(v0 + 520) = v7;
      *(v0 + 504) = v47;
      *(v0 + 512) = v8;
      v48 = swift_task_alloc();
      *(v0 + 536) = v48;
      *v48 = v0;
      v48[1] = sub_1000AF5F8;
      v49 = *(v0 + 488);
      v50 = *(v0 + 496);
      v51 = *(v0 + 256);
      v52 = *(v0 + 96);
      v53 = *(v0 + 80);
      v54 = *(v0 + 64);
      v55 = *(v0 + 72);
      v56 = *(v0 + 48);
      v57 = *(v0 + 56);
      v112 = *(v0 + 565);
      v111 = v52;
      v110 = v53;

      return sub_1000B0FB8(v51, v49, v50, v44 + v46, v56, v57, v54, v55);
    }
  }

  v13 = *(v0 + 112);
  v106 = v7;
  if ((*(v13 + 72) & 1) == 0 && *(v13 + 64) == 1)
  {
    v14 = *(v0 + 40);
    v94 = *(v14 + 16);
    if (v94)
    {
      v15 = 0;
      v16 = *(v0 + 216);
      v17 = *(v0 + 152);
      v18 = *(v8 + 16);
      v20 = *(v17 + 16);
      v17 += 16;
      v19 = v20;
      v21 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v99 = (v17 - 8);
      v22 = *(v17 + 56);
      v96 = v20;
      v92 = v22;
      v93 = v21;
      while (2)
      {
        v102 = v15 + 1;
        result = (v19)(*(v0 + 168), v21 + v15 * v22, *(v0 + 144));
        v23 = 0;
        while (1)
        {
          if (v18 == v23)
          {
            v72 = *(v0 + 160);
            v71 = *(v0 + 168);
            v73 = *(v0 + 144);

            defaultLogger()();
            v96(v72, v71, v73);
            v74 = Logger.logObject.getter();
            v75 = static os_log_type_t.debug.getter();
            v76 = os_log_type_enabled(v74, v75);
            v77 = *(v0 + 400);
            v78 = *(v0 + 384);
            v79 = *(v0 + 336);
            v80 = *(v0 + 160);
            v81 = *(v0 + 144);
            if (v76)
            {
              v104 = *(v0 + 384);
              v82 = swift_slowAlloc();
              v98 = v79;
              v83 = swift_slowAlloc();
              v107 = v83;
              *v82 = 136315138;
              v95 = DocumentRequest.docType.getter();
              v97 = v77;
              v85 = v84;
              v86 = *v99;
              (*v99)(v80, v81);
              v87 = sub_10010150C(v95, v85, &v107);

              *(v82 + 4) = v87;
              _os_log_impl(&_mh_execute_header, v74, v75, "PresentmentRequestInterpreter: Aliro reader requested '%s' but 0 proposals contain this document type, returning 0 proposals.", v82, 0xCu);
              sub_100005090(v83);

              v97(v104, v98);
            }

            else
            {

              v86 = *v99;
              (*v99)(v80, v81);
              v77(v78, v79);
            }

            v86(*(v0 + 168), *(v0 + 144));
            v106 = _swiftEmptyArrayStorage;
            goto LABEL_39;
          }

          if (v23 >= *(v8 + 16))
          {
            goto LABEL_43;
          }

          v24 = *(v0 + 224);
          sub_1000BCFA8(v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v23, v24, type metadata accessor for PresentmentProposal);
          v25 = [*v24 docType];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v29 = DocumentRequest.docType.getter();
          v31 = *(v0 + 224);
          if (v26 == v29 && v28 == v30)
          {
            break;
          }

          ++v23;
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          result = sub_1000BB9CC(v31, type metadata accessor for PresentmentProposal);
          if (v33)
          {
            goto LABEL_20;
          }
        }

        sub_1000BB9CC(v31, type metadata accessor for PresentmentProposal);
LABEL_20:
        (*v99)(*(v0 + 168), *(v0 + 144));
        v19 = v96;
        v15 = v102;
        v22 = v92;
        v21 = v93;
        if (v102 != v94)
        {
          continue;
        }

        break;
      }
    }

    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "PresentmentRequestInterpreter: All documents requested present for ACWG", v36, 2u);
    }

    v37 = *(v0 + 400);
    v38 = *(v0 + 376);
    v39 = *(v0 + 336);

    v37(v38, v39);
    v7 = v106;
  }

  if (*(v8 + 16))
  {
    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134349056;
      *(v42 + 4) = v7[2];

      _os_log_impl(&_mh_execute_header, v40, v41, "PresentmentRequestInterpreter: Found %{public}ld candidate credentials", v42, 0xCu);
    }

    else
    {
    }

    (*(v0 + 400))(*(v0 + 360), *(v0 + 336));
  }

  else
  {
    defaultLogger()();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v103 = *(v0 + 400);
      v100 = *(v0 + 368);
      v60 = *(v0 + 336);
      v61 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v61 = 136446466;
      v62 = Array.description.getter();
      v64 = sub_10010150C(v62, v63, &v107);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2082;
      v65 = Set.description.getter();
      v67 = sub_10010150C(v65, v66, &v107);

      *(v61 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "PresentmentRequestInterpreter: Did not find any documents %{public}s in partitions %{public}s", v61, 0x16u);
      swift_arrayDestroy();

      v103(v100, v60);
    }

    else
    {
      v68 = *(v0 + 400);
      v69 = *(v0 + 368);
      v70 = *(v0 + 336);

      v68(v69, v70);
    }
  }

LABEL_39:

  v88 = *(v0 + 8);

  return v88(v106);
}

uint64_t sub_1000B0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 584) = v18;
  *(v9 + 208) = v17;
  *(v9 + 216) = v8;
  *(v9 + 192) = v16;
  *(v9 + 176) = a7;
  *(v9 + 184) = a8;
  *(v9 + 160) = a5;
  *(v9 + 168) = a6;
  *(v9 + 144) = a3;
  *(v9 + 152) = a4;
  *(v9 + 128) = a1;
  *(v9 + 136) = a2;
  *(v9 + 224) = *v8;
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  *(v9 + 232) = swift_task_alloc();
  sub_100004E70(&qword_100201E80, &qword_1001ACF40);
  *(v9 + 240) = swift_task_alloc();
  v10 = type metadata accessor for ISO18013KnownDocTypes();
  *(v9 + 248) = v10;
  *(v9 + 256) = *(v10 - 8);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v11 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
  *(v9 + 280) = v11;
  *(v9 + 288) = *(v11 - 8);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = sub_100004E70(&qword_100202470, &qword_1001ACF48);
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v9 + 336) = swift_task_alloc();
  v12 = type metadata accessor for DIPSignpost();
  *(v9 + 344) = v12;
  *(v9 + 352) = *(v12 - 8);
  *(v9 + 360) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 368) = v13;
  *(v9 + 376) = *(v13 - 8);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_1000B1320, 0, 0);
}

uint64_t sub_1000B1320(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentRequestInterpreter buildProposal", v4, 2u);
  }

  v5 = *(v1 + 432);
  v6 = *(v1 + 368);
  v7 = *(v1 + 376);
  v8 = *(v1 + 216);
  v25 = *(v1 + 176);
  v26 = *(v1 + 224);
  v23 = *(v1 + 168);
  v24 = *(v1 + 200);
  v9 = *(v1 + 160);
  v10 = *(v1 + 144);
  v22 = *(v1 + 136);

  v11 = *(v7 + 8);
  *(v1 + 440) = v11;
  v11(v5, v6);
  static IDCSSignposts.presentmentBuildProposal.getter();
  DIPSignpost.init(_:)();
  v12 = *(v8 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_presentmentKeySelectionProvider);
  v13 = *(v8 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_credentialKeyManager);
  v14 = *(v8 + 32);
  sub_10001A940(v8 + OBJC_IVAR____TtC7idcredd29PresentmentRequestInterpreter_payloadProcessorBuilder, v1 + 16);
  v15 = swift_allocObject();
  *(v1 + 448) = v15;
  v15[2] = v22;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v9;
  v15[6] = v23;
  v15[7] = v24;
  v15[8] = v13;
  v15[9] = v14;
  v15[10] = v25;
  sub_10001AA08((v1 + 16), (v15 + 11));
  v15[16] = v26;

  sub_100032EBC(v9, v23);
  v16 = swift_allocObject();
  *(v1 + 456) = v16;
  *(v16 + 16) = &unk_1001ACF58;
  *(v16 + 24) = v15;
  v17 = v24;

  v18 = swift_task_alloc();
  *(v1 + 464) = v18;
  *v18 = v1;
  v18[1] = sub_1000B15B4;
  v19 = *(v1 + 328);
  v20 = *(v1 + 312);

  return AsyncCoreDataContainer.read<A>(_:)(v19, &unk_1001ACF68, v16, v20);
}

uint64_t sub_1000B15B4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1000B25C0;
  }

  else
  {

    v2 = sub_1000B16D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B16D8()
{
  v124 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  sub_100046360(*(v0 + 328), v1, &qword_100202470, &qword_1001ACF48);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 128);
    sub_10000A0D4(*(v0 + 328), &qword_100202470, &qword_1001ACF48);
    sub_10000A0D4(v4, &qword_100202470, &qword_1001ACF48);
LABEL_74:
    v112 = type metadata accessor for PresentmentProposal(0);
    (*(*(v112 - 8) + 56))(v5, 1, 1, v112);
    v114 = *(v0 + 352);
    v113 = *(v0 + 360);
    v115 = *(v0 + 344);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v114 + 8))(v113, v115);

    v55 = *(v0 + 8);
    goto LABEL_75;
  }

  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  sub_1000BBB18(*(v0 + 320), *(v0 + 304), type metadata accessor for PresentmentRequestInterpreter.DBResults);
  v9 = DocumentRequest.docType.getter();
  v11 = v10;
  v120 = *(v8 + 104);
  v120(v6, enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:), v7);
  v12 = ISO18013KnownDocTypes.rawValue.getter();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v6, v7);
  if (v9 == v12 && v11 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v17 = *(v0 + 304);
  v18 = *(v0 + 264);
  v19 = *(v0 + 248);
  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  v120(v18, enum case for ISO18013KnownDocTypes.photoID(_:), v19);
  v22 = ISO18013KnownDocTypes.rawValue.getter();
  v24 = v23;
  v15(v18, v19);
  v25 = *(v0 + 584);
  if (v21 == v22 && v20 == v24)
  {

LABEL_11:
    if (v25 != 3)
    {
      v27 = *(v0 + 584);
      v28 = sub_1000BAEA8();
      v29 = sub_1000A0F8C(v27, v28);

      if (v29)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_13;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_11;
  }

LABEL_13:
  v30 = *(v0 + 304);
  v21 = DocumentRequest.docType.getter();
  v32 = *(v30 + 16);
  v20 = *(v30 + 24);
  if (v21 == v32 && v31 == v20)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = v32;
    if ((v33 & 1) == 0)
    {
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Credential document type does not match request document type, skipping credential", v67, 2u);
      }

      v68 = *(v0 + 440);
      v69 = *(v0 + 424);
      goto LABEL_63;
    }
  }

LABEL_17:
  *(v0 + 480) = v21;
  *(v0 + 488) = v20;
  v34 = *(v0 + 240);
  DocumentRequest.regionCode.getter();
  v35 = type metadata accessor for Locale.Region();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_10000A0D4(*(v0 + 240), &qword_100201E80, &qword_1001ACF40);
  }

  else
  {
    v37 = *(v0 + 304);
    v38 = *(v0 + 240);
    v39 = Locale.Region.identifier.getter();
    v41 = v40;
    (*(v36 + 8))(v38, v35);
    v42 = *(v37 + 112);
    if (!v42 || (*(v37 + 104) != v39 || v42 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v57 = *(v0 + 296);
      v56 = *(v0 + 304);
      defaultLogger()();
      sub_1000BCFA8(v56, v57, type metadata accessor for PresentmentRequestInterpreter.DBResults);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = *(v0 + 296);
        v61 = swift_slowAlloc();
        v123[0] = swift_slowAlloc();
        *v61 = 136315394;
        v62 = *(v0 + 296);
        if (*(v60 + 112))
        {
          v63 = *(v62 + 104);
          v64 = *(v60 + 112);
        }

        else
        {
          v64 = 0xE500000000000000;
          v63 = 0x3E6C696E3CLL;
        }

        v117 = *(v0 + 416);
        v119 = *(v0 + 440);
        v116 = *(v0 + 368);
        v122 = *(v0 + 328);

        sub_1000BB9CC(v62, type metadata accessor for PresentmentRequestInterpreter.DBResults);
        v110 = sub_10010150C(v63, v64, v123);

        *(v61 + 4) = v110;
        *(v61 + 12) = 2080;
        v111 = sub_10010150C(v39, v41, v123);

        *(v61 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v58, v59, "Credential region '%s' code does not match request region code '%s', skipping credential", v61, 0x16u);
        swift_arrayDestroy();

        v119(v117, v116);
        v75 = v122;
      }

      else
      {
        v70 = *(v0 + 440);
        v71 = *(v0 + 416);
        v72 = *(v0 + 368);
        v73 = *(v0 + 328);
        v74 = *(v0 + 296);

        sub_1000BB9CC(v74, type metadata accessor for PresentmentRequestInterpreter.DBResults);
        v70(v71, v72);
        v75 = v73;
      }

      sub_10000A0D4(v75, &qword_100202470, &qword_1001ACF48);
      v98 = *(v0 + 304);
      v5 = *(v0 + 128);
      goto LABEL_73;
    }
  }

  *(v0 + 96) = DocumentRequest.issuerIdentifiers.getter();
  sub_100004E70(&qword_100202478, &qword_1001ACF70);
  sub_100055454(&qword_100202480, &qword_100202478, &qword_1001ACF70, &protocol conformance descriptor for Set<A>);
  Collection.nilIfEmpty.getter();
  v43 = *(v0 + 104);

  if (!v43)
  {
    goto LABEL_67;
  }

  v118 = v43;
  v44 = *(*(v0 + 304) + 96);
  v45 = v44[2];
  v46 = _swiftEmptyArrayStorage;
  if (v45)
  {
    v123[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (!v44[2])
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v47 = *(v0 + 472);
    v48 = v44[4];
    v49 = v44[5];
    sub_100009708(v48, v49);
    decodeCertificate(fromDER:)();
    if (v47)
    {
      v50 = *(v0 + 328);
      v51 = *(v0 + 304);

      sub_1000092BC(v48, v49);
      sub_10000A0D4(v50, &qword_100202470, &qword_1001ACF48);

      sub_1000BB9CC(v51, type metadata accessor for PresentmentRequestInterpreter.DBResults);
      v53 = *(v0 + 352);
      v52 = *(v0 + 360);
      v54 = *(v0 + 344);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v53 + 8))(v52, v54);

      v55 = *(v0 + 8);
LABEL_75:

      return v55();
    }

    sub_1000092BC(v48, v49);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v46 = *(v123[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v45 != 1)
    {
      v76 = v44 + 7;
      v77 = 1;
      while (v77 < v44[2])
      {
        v78 = *(v76 - 1);
        v79 = *v76;
        sub_100009708(v78, *v76);
        decodeCertificate(fromDER:)();
        ++v77;
        sub_1000092BC(v78, v79);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(v123[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v76 += 2;
        if (v45 == v77)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_80;
    }

LABEL_41:
    v46 = v123[0];
  }

  v44 = (v46 & 0xFFFFFFFFFFFFFF8);
  if (v46 >> 62)
  {
LABEL_81:
    v80 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_44;
  }

  v80 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_44:
  v81 = 0;
  v121 = _swiftEmptyArrayStorage;
  while (v80 != v81)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v83 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v81 >= v44[2])
      {
        goto LABEL_79;
      }

      v82 = *(v46 + 8 * v81 + 32);
      v83 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v84 = v82;
    v85 = SecCertificateRef.authorityKeyIdentifier.getter();
    v87 = v86;

    ++v81;
    if (v87 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_100100EA8(0, *(v121 + 2) + 1, 1, v121);
      }

      v89 = *(v121 + 2);
      v88 = *(v121 + 3);
      if (v89 >= v88 >> 1)
      {
        v121 = sub_100100EA8((v88 > 1), v89 + 1, 1, v121);
      }

      *(v121 + 2) = v89 + 1;
      v90 = &v121[16 * v89];
      *(v90 + 4) = v85;
      *(v90 + 5) = v87;
      v81 = v83;
    }
  }

  *(v0 + 112) = v121;
  sub_100004E70(&qword_100201508, &qword_1001AB888);
  sub_100055454(&qword_100201500, &qword_100201508, &qword_1001AB888, &protocol conformance descriptor for [A]);
  Collection.nilIfEmpty.getter();
  v91 = *(v0 + 120);

  if (v91)
  {
    v92 = sub_1000BA350(v91, v118);

    if (v92)
    {
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v65, v93, "Credential authority key identifiers list does not intersect document request list, skipping credential", v94, 2u);
      }

      v68 = *(v0 + 440);
      v69 = *(v0 + 408);
LABEL_63:
      v95 = *(v0 + 368);
      v96 = *(v0 + 328);
      v97 = *(v0 + 304);
      v5 = *(v0 + 128);

      v68(v69, v95);
      sub_10000A0D4(v96, &qword_100202470, &qword_1001ACF48);
      v98 = v97;
LABEL_73:
      sub_1000BB9CC(v98, type metadata accessor for PresentmentRequestInterpreter.DBResults);
      goto LABEL_74;
    }
  }

  else
  {

    defaultLogger()();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    v101 = os_log_type_enabled(v99, v100);
    v102 = *(v0 + 440);
    v103 = *(v0 + 400);
    v104 = *(v0 + 368);
    if (v101)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "Credential authority key identifiers list is empty, ignoring document request issuer identifiers list", v105, 2u);
    }

    v102(v103, v104);
  }

LABEL_67:
  v106 = *(v0 + 304);
  v107 = swift_task_alloc();
  *(v0 + 496) = v107;
  *v107 = v0;
  v107[1] = sub_1000B2740;
  v108 = *(v0 + 152);

  return sub_1000B725C(v108, v106 + 56);
}

uint64_t sub_1000B25C0()
{

  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000B2740(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {
    v5 = sub_1000B38F4;
  }

  else
  {
    v5 = sub_1000B2858;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B2858()
{
  v34 = v0;
  if (v0[64])
  {
    sub_100046360(v0[38] + 56, (v0 + 7), &qword_100202460, &unk_1001AD180);
    v1 = v0[10];
    if (v1)
    {
      v2 = v0[11];
      sub_100009278(v0 + 7, v0[10]);
      v31 = (*(v2 + 32) + **(v2 + 32));
      v3 = swift_task_alloc();
      v0[66] = v3;
      *v3 = v0;
      v3[1] = sub_1000B2DD0;
      v4 = v0[29];

      return v31(v4, v1, v2);
    }

    else
    {
      v20 = v0[29];
      sub_10000A0D4((v0 + 7), &qword_100202460, &unk_1001AD180);
      v21 = type metadata accessor for COSE_Sign1();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      v22 = *(v0[38] + 48);
      v0[68] = v22;
      v23 = swift_task_alloc();
      v0[69] = v23;
      *v23 = v0;
      v23[1] = sub_1000B2FA0;

      return sub_100005D10(v22);
    }
  }

  else
  {

    v6._countAndFlagsBits = 0x3466623961626336;
    v7._object = 0x80000001001B7D30;
    v6._object = 0xE800000000000000;
    v7._countAndFlagsBits = 0xD00000000000005CLL;
    logMilestone(tag:description:)(v6, v7);
    defaultLogger()();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[55];
    v12 = v0[48];
    v13 = v0[46];
    v14 = v0[41];
    if (v10)
    {
      v30 = v0[55];
      v32 = v0[41];
      v16 = v0[17];
      v15 = v0[18];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10010150C(v16, v15, &v33);
      _os_log_impl(&_mh_execute_header, v8, v9, "Not proposing credential %s because it has no elements matching the request", v17, 0xCu);
      sub_100005090(v18);

      v30(v12, v13);
      v19 = v32;
    }

    else
    {

      v11(v12, v13);
      v19 = v14;
    }

    sub_10000A0D4(v19, &qword_100202470, &qword_1001ACF48);
    v24 = v0[16];
    sub_1000BB9CC(v0[38], type metadata accessor for PresentmentRequestInterpreter.DBResults);
    v25 = type metadata accessor for PresentmentProposal(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v27 = v0[44];
    v26 = v0[45];
    v28 = v0[43];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v27 + 8))(v26, v28);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1000B2DD0()
{
  *(*v1 + 536) = v0;

  if (v0)
  {

    v2 = sub_1000B3A9C;
  }

  else
  {
    v2 = sub_1000B2EF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B2EF4()
{
  sub_100005090(v0 + 7);
  v1 = *(v0[38] + 48);
  v0[68] = v1;
  v2 = swift_task_alloc();
  v0[69] = v2;
  *v2 = v0;
  v2[1] = sub_1000B2FA0;

  return sub_100005D10(v1);
}

uint64_t sub_1000B2FA0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = v2;

  if (v2)
  {

    v5 = sub_1000B3C4C;
  }

  else
  {
    v5 = sub_1000B30CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B30CC(uint64_t a1)
{
  v81 = v1;
  v2 = *(v1 + 568);
  v3 = *(v1 + 560);
  defaultLogger()();
  sub_100032EBC(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10001C120(v3, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 568);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v80 = v8;
    *v7 = 136315138;
    if (v6 >> 60 == 15)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = Data.base16EncodedString()();
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
    }

    v77 = *(v1 + 440);
    v15 = *(v1 + 392);
    v16 = *(v1 + 368);
    v17 = sub_10010150C(countAndFlagsBits, object, &v80);

    *(v7 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Proposed credential has auth ACL: %s", v7, 0xCu);
    sub_100005090(v8);

    v77(v15, v16);
  }

  else
  {
    v11 = *(v1 + 440);
    v12 = *(v1 + 392);
    v13 = *(v1 + 368);

    v11(v12, v13);
  }

  v18 = *(v1 + 304);
  v19 = *(v1 + 584);
  v78 = sub_1000B6B60(v18);
  v20 = *(v18 + 32);
  v21 = *(v18 + 40);
  v22 = *v20;
  v23 = *(v21 + 16);
  swift_retain_n();
  v24 = v23(v22, v21);
  v26 = v25;
  Data.base64EncodedString(options:)(0);
  sub_1000092BC(v24, v26);
  v74 = v21;
  v27 = (*(v21 + 8))(v22, v21);
  v29 = v28;
  v75 = v20;

  DocumentRequest.docType.getter();
  if (v19 == 3)
  {
    v56 = 0;
    v64 = 0xF000000000000000;
  }

  else
  {
    sub_100032EBC(*(v1 + 184), *(v1 + 192));
    v64 = *(v1 + 192);
    v56 = *(v1 + 184);
  }

  v30 = *(v1 + 304);
  v31 = v30[12];
  if (v31[2])
  {
    v54 = v31[4];
    v62 = v31[5];
    sub_100009708(v54, v62);
    v30 = *(v1 + 304);
  }

  else
  {
    v54 = 0;
    v62 = 0xF000000000000000;
  }

  v32 = *(v1 + 568);
  v60 = v30[14];
  v66 = v30[16];
  sub_100032EBC(*(v1 + 560), v32);
  v72 = v78;
  v73 = v31;

  v79 = String._bridgeToObjectiveC()();
  v76 = String._bridgeToObjectiveC()();

  v71.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000092BC(v27, v29);
  v70 = String._bridgeToObjectiveC()();
  v69 = String._bridgeToObjectiveC()();

  sub_100004E70(&qword_100202468, &unk_1001ACF30);
  v68.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v32 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v34 = *(v1 + 568);
    v35 = *(v1 + 560);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v35, v34);
  }

  if (v64 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v56, v64);
  }

  if (v62 >> 60 == 15)
  {
    v37 = 0;
    if (v60)
    {
      goto LABEL_21;
    }

LABEL_24:
    v38 = 0;
    if (v66)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v37 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001C120(v54, v62);
  if (!v60)
  {
    goto LABEL_24;
  }

LABEL_21:
  v38 = String._bridgeToObjectiveC()();
  if (v66)
  {
LABEL_22:
    v39 = String._bridgeToObjectiveC()();
    goto LABEL_26;
  }

LABEL_25:
  v39 = 0;
LABEL_26:
  v57 = *(v1 + 560);
  v58 = *(v1 + 568);
  v63 = *(v1 + 504);
  v65 = *(v1 + 544);
  v59 = *(v1 + 328);
  v61 = *(v1 + 480);
  v67 = *(v1 + 304);
  v55 = *(v1 + 232);
  v52 = *(v1 + 488);
  v40 = *(v1 + 128);
  v53 = [objc_allocWithZone(DCPresentmentProposal) initWithCredentialIdentifier:v79 presentmentKeyIdentifier:v76 presentmentPublicKey:v71.super.isa partition:v70 docType:v69 elements:v68.super.isa authACL:isa readerAuthCertificateData:v36 issuerSignerCertificateData:v37 readerMetadata:*(v1 + 200) readerAnalytics:*(v1 + 208) region:v38 issuingJurisdiction:v39 credentialRevocationInfo:v72];

  v41._countAndFlagsBits = 0x3735313330633933;
  v42._object = 0x80000001001B7D90;
  v41._object = 0xE800000000000000;
  v42._countAndFlagsBits = 0xD000000000000055;
  logMilestone(tag:description:)(v41, v42);

  v43 = DocumentRequest.alternativeElements.getter();
  v44 = type metadata accessor for PresentmentProposal(0);
  sub_100046360(v55, v40 + v44[8], &qword_1002014D0, &unk_1001AD120);
  v45 = DocumentRequest.namespaces.getter();

  sub_10001C120(v57, v58);
  sub_10000A0D4(v55, &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4(v59, &qword_100202470, &qword_1001ACF48);
  *v40 = v53;
  v40[1] = v61;
  v40[2] = v52;
  v40[3] = v63;
  v40[4] = v43;
  *(v40 + v44[9]) = v73;
  v46 = (v40 + v44[10]);
  *v46 = v75;
  v46[1] = v74;
  *(v40 + v44[11]) = v65;
  *(v40 + v44[12]) = v45;
  sub_1000BB9CC(v67, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  (*(*(v44 - 1) + 56))(v40, 0, 1, v44);
  v48 = *(v1 + 352);
  v47 = *(v1 + 360);
  v49 = *(v1 + 344);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v48 + 8))(v47, v49);

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_1000B38F4()
{
  v1 = v0[38];
  sub_10000A0D4(v0[41], &qword_100202470, &qword_1001ACF48);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B3A9C()
{
  v1 = v0[38];
  sub_10000A0D4(v0[41], &qword_100202470, &qword_1001ACF48);
  sub_1000BB9CC(v1, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  sub_100005090(v0 + 7);
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B3C4C()
{
  v1 = v0[41];
  v2 = v0[38];
  sub_10000A0D4(v0[29], &qword_1002014D0, &unk_1001AD120);
  sub_10000A0D4(v1, &qword_100202470, &qword_1001ACF48);
  sub_1000BB9CC(v2, type metadata accessor for PresentmentRequestInterpreter.DBResults);
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B3E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v17;
  *(v8 + 240) = v15;
  *(v8 + 256) = v16;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  sub_100004E70(&qword_100202490, &unk_1001ACF80);
  *(v8 + 304) = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  *(v8 + 312) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 320) = v10;
  *(v8 + 328) = *(v10 - 8);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v11 = type metadata accessor for PresentmentRequestInterpreter.DBResult(0);
  *(v8 + 376) = v11;
  *(v8 + 384) = *(v11 - 8);
  *(v8 + 392) = swift_task_alloc();
  v12 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 400) = v12;
  *(v8 + 408) = *(v12 - 8);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = sub_100004E70(&qword_1002024A0, &unk_1001ACF90);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_1000B40EC, 0, 0);
}

uint64_t sub_1000B40EC()
{
  v22 = *(v0 + 400);
  v23 = *(v0 + 416);
  v20 = *(v0 + 272);
  v19 = *(v0 + 248);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v21 = *(v0 + 408);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = swift_allocObject();
  *(v0 + 448) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v3;
  *(v9 + 64) = v1;
  *(v9 + 72) = v2;
  *(v9 + 80) = v19;
  *(v9 + 96) = v20;

  sub_100032EBC(v4, v3);
  v10 = swift_allocObject();
  *(v0 + 456) = v10;
  *(v10 + 16) = sub_1000BBABC;
  *(v10 + 24) = v9;
  v11 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v12 = *(v21 + 104);
  v13 = v1;

  v12(v23, v11, v22);

  v14 = swift_task_alloc();
  *(v0 + 464) = v14;
  *v14 = v0;
  v14[1] = sub_1000B42C4;
  v15 = *(v0 + 440);
  v16 = *(v0 + 416);
  v17 = *(v0 + 424);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v15, v16, sub_1000BBAFC, v10, v17);
}

uint64_t sub_1000B42C4()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    (*(v2[51] + 8))(v2[52], v2[50]);

    v3 = sub_1000B4EF0;
  }

  else
  {
    v5 = v2[51];
    v4 = v2[52];
    v6 = v2[50];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1000B4450;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000B4450()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  sub_100046360(*(v0 + 440), v1, &qword_1002024A0, &unk_1001ACF90);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 432);
  if (v4 == 1)
  {
    sub_10000A0D4(v5, &qword_1002024A0, &unk_1001ACF90);
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "no results or error thrown so returning nil", v8, 2u);
    }

    v9 = *(v0 + 440);
    v10 = *(v0 + 368);
    v11 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 280);

    (*(v12 + 8))(v10, v11);
    (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v15);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = &qword_1002024A0;
    v17 = &unk_1001ACF90;
    v18 = v9;
    goto LABEL_5;
  }

  v20 = *(v0 + 392);
  sub_1000BBB18(v5, v20, type metadata accessor for PresentmentRequestInterpreter.DBResult);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v21 = *(v20 + 32);
  if (v21 == 2)
  {
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Payload protection type is payload protection key", v49, 2u);
    }

    v50 = *(v0 + 392);
    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v53 = *(v0 + 320);
    v54 = *(v0 + 328);

    v55 = *(v54 + 8);
    v55(v51, v53);
    v56 = *(v50 + 136);

    defaultLogger()();
    *(swift_task_alloc() + 16) = v56;
    Logger.sensitive(_:)();

    v55(v52, v53);
    if (v56)
    {
      v57 = *(v0 + 440);
      if (*(v56 + 16))
      {
        v58 = type metadata accessor for InaccessiblyEncryptedPayloadProcessor();
        swift_allocObject();
        v59 = sub_1000FA838(v56);
        *(v0 + 80) = v58;
        *(v0 + 88) = &off_1001F7AF0;
        *(v0 + 56) = v59;
        sub_10000A0D4(v57, &qword_1002024A0, &unk_1001ACF90);
        sub_1000BD010(v0 + 56, v0 + 16, &qword_100202460, &unk_1001AD180);
      }

      else
      {
        sub_10000A0D4(*(v0 + 440), &qword_1002024A0, &unk_1001ACF90);
      }

      goto LABEL_25;
    }

    v46 = *(v0 + 440);
LABEL_24:
    sub_10000A0D4(v46, &qword_1002024A0, &unk_1001ACF90);
LABEL_25:
    v62 = *(v0 + 392);
    v63 = *(v0 + 376);
    v64 = *(v0 + 176);
    v65 = *(v62 + 8);
    v66 = *(v62 + 24);
    v74 = *(v62 + 16);
    v75 = *v62;
    v76 = *(v62 + 168);
    v77 = *(v62 + 152);
    sub_100046360(v0 + 16, v64 + 56, &qword_100202460, &unk_1001AD180);
    v67 = *(v62 + 144);
    v68 = *(v62 + 96);
    v69 = *(v62 + 112);
    v72 = *(v62 + 104);
    v73 = *(v62 + 88);
    v70 = *(v63 + 52);
    v71 = type metadata accessor for PresentmentRequestInterpreter.DBResults(0);
    sub_100046360(v62 + v70, v64 + *(v71 + 48), &qword_100202488, &qword_1001ACF78);

    sub_1000BB9CC(v62, type metadata accessor for PresentmentRequestInterpreter.DBResult);
    *v64 = v75;
    *(v64 + 8) = v65;
    *(v64 + 16) = v74;
    *(v64 + 24) = v66;
    *(v64 + 32) = v77;
    *(v64 + 48) = v76;
    *(v64 + 96) = v67;
    *(v64 + 104) = v73;
    *(v64 + 112) = v68;
    *(v64 + 120) = v72;
    *(v64 + 128) = v69;
    (*(*(v71 - 8) + 56))(v64, 0, 1, v71);
    sub_10000A0D4(v0 + 16, &qword_100202460, &unk_1001AD180);

    v19 = *(v0 + 8);
    goto LABEL_26;
  }

  if (v21 == 1)
  {
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 440);
    v42 = *(v0 + 352);
    v43 = *(v0 + 320);
    v44 = *(v0 + 328);
    if (v40)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Payload protection type is device encryption key, skipping element extraction", v45, 2u);
    }

    (*(v44 + 8))(v42, v43);
    v46 = v41;
    goto LABEL_24;
  }

  if (v21)
  {
    v60 = *(v0 + 440);
    v61 = *(v0 + 392);
    (*(*(v0 + 288) + 104))(*(v0 + 296), enum case for DIPError.Code.internalError(_:), *(v0 + 280));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000BD16C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000A0D4(v60, &qword_1002024A0, &unk_1001ACF90);
    sub_1000BB9CC(v61, type metadata accessor for PresentmentRequestInterpreter.DBResult);
    v16 = &qword_100202460;
    v17 = &unk_1001AD180;
    v18 = v0 + 16;
LABEL_5:
    sub_10000A0D4(v18, v16, v17);

    v19 = *(v0 + 8);
LABEL_26:

    return v19();
  }

  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Payload protection type is standard, extracting elements from credential payload", v24, 2u);
  }

  v25 = *(v0 + 392);
  v26 = *(v0 + 360);
  v27 = *(v0 + 320);
  v28 = *(v0 + 328);
  v29 = *(v0 + 312);
  v30 = *(v0 + 264);

  (*(v28 + 8))(v26, v27);
  v31 = v25[5];
  v32 = v25[8];
  v33 = v25[9];
  sub_100009278(v30, v30[3]);
  v34 = type metadata accessor for KeyLookupInfo(0);
  (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  v35 = swift_task_alloc();
  *(v0 + 480) = v35;
  *v35 = v0;
  v35[1] = sub_1000B4FFC;
  v36 = *(v0 + 312);

  return sub_1000F1194(v0 + 96, v32, v33, v31, v36, 0, 0xF000000000000000);
}

uint64_t sub_1000B4EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B4FFC()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  sub_10000A0D4(*(v2 + 312), &qword_100202498, &unk_1001AD910);
  if (v0)
  {
    v3 = sub_1000B5550;
  }

  else
  {
    v3 = sub_1000B5140;
  }

  return _swift_task_switch(v3, 0, 0);
}