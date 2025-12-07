uint64_t sub_100077F18(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100078044, 0, 0);
}

uint64_t sub_100078044(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy generatePresentmentKey for credential identifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[12] = v12;
  sub_100086094();
  v18 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[14] = v19;
    *v19 = v1;
    v19[1] = sub_100078414;
    v21 = v1[2];
    v20 = v1[3];

    return sub_10019057C(v21, v20);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[12];
    v14 = v1[10];
    v15 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_100078414(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_10008DF60;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_10008E130;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000786C4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_100077F18(v5, v7);
}

uint64_t sub_100078798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000788C4, 0, 0);
}

uint64_t sub_1000788C4(uint64_t a1)
{
  v26 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v24 = v1[12];
    v9 = v1[3];
    v8 = v1[4];
    v10 = v1[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v8;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10010150C(v10, v9, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy generatePresentmentKeys numKeys=%ld for credential identifier %s", v11, 0x16u);
    sub_100005090(v12);

    v13 = *(v7 + 8);
    v13(v24, v6);
  }

  else
  {

    v13 = *(v7 + 8);
    v13(v5, v6);
  }

  v1[13] = v13;
  sub_100086094();
  v19 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    v1[15] = v20;
    *v20 = v1;
    v20[1] = sub_100077B80;
    v21 = v1[3];
    v22 = v1[4];
    v23 = v1[2];

    return sub_100190C18(v23, v21, v22);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v1[13];
    v15 = v1[11];
    v16 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v14(v15, v16);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_100078E4C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100078F30;

  return sub_100078798(v7, v9, a2);
}

uint64_t sub_100078F30(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201D08, DCCredentialCryptoKey_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1000790F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100079220, 0, 0);
}

uint64_t sub_100079220(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy authorizeDeviceKeySigningKey with credential identifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[14] = v12;
  sub_100086094();
  v18 = *(v1[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[15] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[16] = v19;
    *v19 = v1;
    v19[1] = sub_1000795F4;
    v20 = v1[4];
    v21 = v1[5];
    v23 = v1[2];
    v22 = v1[3];

    return sub_100155B24(v23, v22, v20, v21);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[14];
    v14 = v1[12];
    v15 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_1000795F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_100076FF8;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_100079728;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100079728()
{

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];

  return v1(v2, v3);
}

uint64_t sub_100079948(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100079A44;

  return sub_1000790F0(v6, v8, v9, v11);
}

uint64_t sub_100079A44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_100079C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100079D48, 0, 0);
}

uint64_t sub_100079D48(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy authorizeRemoteKeySigningKey with credential identifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[14] = v12;
  sub_100086094();
  v18 = *(v1[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[15] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[16] = v19;
    *v19 = v1;
    v19[1] = sub_10007A120;
    v20 = v1[4];
    v21 = v1[5];
    v23 = v1[2];
    v22 = v1[3];

    return sub_10016DB98(v23, v22, v20, v21);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[14];
    v14 = v1[12];
    v15 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_10007A120(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_10008DF68;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_10008E140;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007A3E4(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a2;
  a4;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v4[5] = v11;
  v4[6] = v13;
  v14 = swift_task_alloc();
  v4[7] = v14;
  *v14 = v4;
  v14[1] = sub_10007A4E8;

  return sub_100079C18(v7, v9, v11, v13);
}

uint64_t sub_10007A4E8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3;

  sub_1000092BC(*(v7 + 40), *(v7 + 48));

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v12 = isa;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v13 = isa;
    v12 = 0;
  }

  v14 = *(v8 + 24);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_10007A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10007A7F8, 0, 0);
}

uint64_t sub_10007A7F8(uint64_t a1)
{
  v30 = v1;
  v3 = v1[4];
  v2 = v1[5];
  defaultLogger()();

  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[13];
  v9 = v1[10];
  v8 = v1[11];
  if (v6)
  {
    v28 = v1[13];
    v10 = v1[2];
    v11 = v1[3];
    v27 = v1[10];
    v12 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10010150C(v10, v11, v29);
    *(v12 + 12) = 2080;
    v13 = Data.base16EncodedString()();
    v14 = sub_10010150C(v13._countAndFlagsBits, v13._object, v29);

    *(v12 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "CredentialStoreSessionProxy associateExternalPresentmentKey with credential identifier %s public key identifier %s", v12, 0x16u);
    swift_arrayDestroy();

    v15 = *(v8 + 8);
    v15(v28, v27);
  }

  else
  {

    v15 = *(v8 + 8);
    v15(v7, v9);
  }

  v1[14] = v15;
  sub_100086094();
  v21 = *(v1[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[15] = v21;
  if (v21)
  {

    v22 = swift_task_alloc();
    v1[16] = v22;
    *v22 = v1;
    v22[1] = sub_10007AC44;
    v23 = v1[4];
    v24 = v1[5];
    v26 = v1[2];
    v25 = v1[3];

    return sub_100193E2C(v26, v25, v23, v24);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v1[14];
    v17 = v1[12];
    v18 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v16(v17, v18);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v19 = v1[1];

    return v19();
  }
}

uint64_t sub_10007AC44()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10008DF68;
  }

  else
  {
    v2 = sub_10008DF70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007AEE8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a2;
  a4;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v4[5] = v11;
  v4[6] = v13;
  v14 = swift_task_alloc();
  v4[7] = v14;
  *v14 = v4;
  v14[1] = sub_10008E144;

  return sub_10007A6C8(v7, v9, v11, v13);
}

uint64_t sub_10007AFEC(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007B118, 0, 0);
}

uint64_t sub_10007B118(uint64_t a1)
{
  v25 = v1;
  v3 = v1[2];
  v2 = v1[3];
  defaultLogger()();
  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[11];
  v8 = v1[8];
  v9 = v1[9];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = Data.base16EncodedString()();
    v13 = sub_10010150C(v12._countAndFlagsBits, v12._object, &v24);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "CredentialStoreSessionProxy credentialIdentifiersForPublicKeyIdentifier with public key identifier %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v14 = *(v9 + 8);
  v14(v7, v8);
  v1[12] = v14;
  sub_100086094();
  v20 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v20;
  if (v20)
  {

    v21 = swift_task_alloc();
    v1[14] = v21;
    *v21 = v1;
    v21[1] = sub_100078414;
    v23 = v1[2];
    v22 = v1[3];

    return sub_100194314(v23, v22);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v1[12];
    v16 = v1[10];
    v17 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v15(v16, v17);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_10007B68C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_10007B768;

  return sub_10007AFEC(v7, v9);
}

uint64_t sub_10007B768(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  sub_1000092BC(*(v4 + 32), *(v4 + 40));
  if (v3)
  {
    isa = _convertErrorToNSError(_:)();

    v9 = isa;
    v10 = 0;
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
  }

  v11 = *(v5 + 24);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_10007B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10007BA50, 0, 0);
}

uint64_t sub_10007BA50(uint64_t a1)
{
  v31 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v7 = v1[11];
  v6 = v1[12];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v29 = v1[14];
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10010150C(v9, v8, v30);
    *(v10 + 12) = 2080;
    v11 = DCCredentialPayloadFormatToString();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10010150C(v12, v14, v30);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy replacePayload for credential identifier %s (format = %s)", v10, 0x16u);
    swift_arrayDestroy();

    v16 = *(v6 + 8);
    v16(v29, v7);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  v1[15] = v16;
  sub_100086094();
  v22 = *(v1[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[16] = v22;
  if (v22)
  {

    v23 = swift_task_alloc();
    v1[17] = v23;
    *v23 = v1;
    v23[1] = sub_10007BE9C;
    v24 = v1[5];
    v25 = v1[6];
    v26 = v1[3];
    v27 = v1[4];
    v28 = v1[2];

    return sub_100175394(v28, v26, v27, v24, v25);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = v1[15];
    v18 = v1[13];
    v19 = v1[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v17(v18, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_10007BE9C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10008DF6C;
  }

  else
  {
    v2 = sub_10008DF74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007C150(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_10008E144;

  return sub_10007B920(v9, v11, v13, v15, a3);
}

uint64_t sub_10007C268(uint64_t a1)
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
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10007C390, 0, 0);
}

uint64_t sub_10007C390(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = Array.description.getter();
    v12 = sub_10010150C(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy credentialIdentifiers, partitions = %{public}s", v8, 0xCu);
    sub_100005090(v9);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[11] = v13;
  sub_100086094();
  v19 = *(v1[3] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[12] = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    v1[13] = v20;
    *v20 = v1;
    v20[1] = sub_10007C770;
    v21 = v1[2];

    return sub_100145A04(v21);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.badLogic(_:), v1[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v1[11];
    v15 = v1[9];
    v16 = v1[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v14(v15, v16);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_10007C770(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_10007C928;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_10007C898;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007C898()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_10007C928()
{

  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007CBFC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10007CCD0;

  return sub_10007C268(v5);
}

uint64_t sub_10007CCD0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_10007CE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10007CFC8, 0, 0);
}

uint64_t sub_10007CFC8(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    v10 = Array.description.getter();
    v12 = sub_10010150C(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy credentialIdentifiersDocType, partitions = %{public}s", v8, 0xCu);
    sub_100005090(v9);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[13] = v13;
  sub_100086094();
  v19 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    v1[15] = v20;
    *v20 = v1;
    v20[1] = sub_10007D3B4;
    v21 = v1[3];
    v22 = v1[4];
    v23 = v1[2];

    return sub_1001472A8(v23, v21, v22);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v1[13];
    v15 = v1[11];
    v16 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v14(v15, v16);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_10007D3B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_10007D56C;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_10007D4DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007D4DC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_10007D56C()
{

  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007D848(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10007D944;

  return sub_10007CE9C(v6, v7, v9);
}

uint64_t sub_10007D944(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_10007DB2C(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007DC58, 0, 0);
}

uint64_t sub_10007DC58(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v10 = Array.description.getter();
    v12 = sub_10010150C(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy activeRegionsInPartitions, partitions = %{public}s", v8, 0xCu);
    sub_100005090(v9);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[12] = v13;
  sub_100086094();
  v19 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    v1[14] = v20;
    *v20 = v1;
    v20[1] = sub_100078414;
    v22 = v1[2];
    v21 = v1[3];

    return sub_100147B4C(v22, v21);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v14 = v1[12];
    v15 = v1[10];
    v16 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v14(v15, v16);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_10007E1CC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_10007E2C8;

  return sub_10007DB2C(v6, v7);
}

uint64_t sub_10007E2C8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_10007E4B0(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10007E5DC, 0, 0);
}

uint64_t sub_10007E5DC(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy deleteCredential, credential identifier = %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[12] = v12;
  sub_100086094();
  v18 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[14] = v19;
    *v19 = v1;
    v19[1] = sub_10007E9A4;
    v21 = v1[2];
    v20 = v1[3];

    return sub_1001452FC(v21, v20);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[12];
    v14 = v1[10];
    v15 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_10007E9A4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100074AB4;
  }

  else
  {
    v2 = sub_100070230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007EC40(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008DF5C;

  return sub_10007E4B0(v5, v7);
}

uint64_t sub_10007ED14(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10007EE84, 0, 0);
}

uint64_t sub_10007EE84(uint64_t a1)
{
  v29 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[15];
  if (v4)
  {
    v9 = v1[6];
    v8 = v1[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy properties, credential identifier = %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[18] = v12;
  sub_100086094();
  v24 = *(v1[8] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[19] = v24;
  if (v24)
  {

    v25 = swift_task_alloc();
    v1[20] = v25;
    *v25 = v1;
    v25[1] = sub_10007F310;
    v27 = v1[6];
    v26 = v1[7];

    return sub_100146280(v27, v26);
  }

  (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.badLogic(_:), v1[11]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v13 = v1[11];
  v14 = v1[12];
  v15 = v1[10];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  v16 = v1[11];
  v17 = v1[12];
  v18 = v1[9];
  sub_10008C1F4(v1[10], v18);
  if ((*(v17 + 88))(v18, v16) != enum case for DIPError.Code.idcsUnknownCredential(_:))
  {
    (*(v1[12] + 8))(v1[9], v1[11]);
LABEL_7:
    v19 = v1[18];
    v20 = v1[16];
    v21 = v1[14];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v19(v20, v21);
  }

  sub_10008C18C(v1[10]);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v22 = v1[1];

  return v22();
}

uint64_t sub_10007F310(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_10007F4E4;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_10007F438;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007F438()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 176);

  return v1(v2);
}

uint64_t sub_10007F4E4()
{

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[9];
    sub_10008C1F4(v0[10], v6);
    if ((*(v5 + 88))(v6, v4) == enum case for DIPError.Code.idcsUnknownCredential(_:))
    {
      goto LABEL_5;
    }

    (*(v0[12] + 8))(v0[9], v0[11]);
  }

  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[14];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v7(v8, v9);
LABEL_5:
  sub_10008C18C(v0[10]);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007F884(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E128;

  return sub_10007ED14(v5, v7);
}

uint64_t sub_10007F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10007FA84, 0, 0);
}

uint64_t sub_10007FA84(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy setState, credential identifier = %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[13] = v12;
  sub_100086094();
  v18 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[15] = v19;
    *v19 = v1;
    v19[1] = sub_10007FE50;
    v20 = v1[3];
    v21 = v1[4];
    v22 = v1[2];

    return sub_1001483E8(v22, v20, v21);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[13];
    v14 = v1[11];
    v15 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_10007FE50()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10007D56C;
  }

  else
  {
    v2 = sub_100062DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000800F0(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1000801D4;

  return sub_10007F958(v7, v9, a2);
}

uint64_t sub_1000801D4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100080374(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100080494, 0, 0);
}

uint64_t sub_100080494(uint64_t a1)
{
  sub_100086094();
  v7 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[11] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[12] = v8;
    *v8 = v1;
    v8[1] = sub_10008074C;
    v10 = v1[2];
    v9 = v1[3];

    return sub_100148AF0(v10, v9);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_10008074C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_1000808FC;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_100080880;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100080880()
{

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_1000808FC()
{

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v2 + 8))(v1, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100080BC0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100080C94;

  return sub_100080374(v5, v7);
}

uint64_t sub_100080C94(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_100080E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Logger();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100080F84, 0, 0);
}

uint64_t sub_100080F84(uint64_t a1)
{
  sub_100086094();
  v7 = *(v1[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v7;
  if (v7)
  {
    v8 = v1[4];

    v9 = swift_task_alloc();
    v1[15] = v9;
    *v9 = v1;
    v9[1] = sub_100081250;
    v10 = v1[5];
    v11 = v1[6];
    v13 = v1[2];
    v12 = v1[3];

    return sub_1001490A4(v13, v12, v8, v10, v11);
  }

  else
  {
    (*(v1[12] + 104))(v1[13], enum case for DIPError.Code.badLogic(_:), v1[11]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[9];
    v3 = v1[10];
    v4 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100081250(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1000813F4;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_100081378;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100081378()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_1000813F4()
{

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v2 + 8))(v1, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000816D4(uint64_t a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  sub_100004E70(&qword_100201580, &qword_1001AB980);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v11;
  if (a3)
  {
    v12 = a3;
    v13 = a5;
    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v16 = a5;
    v15 = 0xF000000000000000;
  }

  v5[6] = a3;
  v5[7] = v15;
  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_10008182C;

  return sub_100080E60(v8, v10, v11, a3, v15);
}

uint64_t sub_10008182C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  sub_10001C120(*(v4 + 48), *(v4 + 56));

  if (v3)
  {
    isa = _convertErrorToNSError(_:)();

    v9 = isa;
    v10 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
  }

  v11 = *(v5 + 24);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_100081A3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100081B5C, 0, 0);
}

uint64_t sub_100081B5C(uint64_t a1)
{
  sub_100086094();
  v7 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[11] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[12] = v8;
    *v8 = v1;
    v8[1] = sub_100081E1C;
    v10 = v1[2];
    v9 = v1[3];

    return sub_100157FA8(v10, v9);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100081E1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1000808FC;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_100081F44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100081F44()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_100082148(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008221C;

  return sub_100081A3C(v5, v7);
}

uint64_t sub_10008221C(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000823D0(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000824FC, 0, 0);
}

uint64_t sub_1000824FC(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy payloads (debug), credential identifier = %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[12] = v12;
  sub_100086094();
  sub_1000865D4();
  v18 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[14] = v19;
    *v19 = v1;
    v19[1] = sub_100078414;
    v21 = v1[2];
    v20 = v1[3];

    return sub_1001603A0(v21, v20);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[12];
    v14 = v1[10];
    v15 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_100082A60(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100082B34;

  return sub_1000823D0(v5, v7);
}

uint64_t sub_100082B34(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_10005684C(0, &unk_100201CF0, DCCredentialPayload_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100082CF4(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100082E20, 0, 0);
}

uint64_t sub_100082E20(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy deleteAccountKeySigningKey for accountKeyIdentifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v17 = v1[2];
    v18 = v1[3];

    sub_100030108(v17, v18);

    v15 = v1[1];
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[10];
    v14 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v1[1];
  }

  return v15();
}

uint64_t sub_100083344(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008DF5C;

  return sub_100082CF4(v5, v7);
}

uint64_t sub_100083418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008353C, 0, 0);
}

uint64_t sub_10008353C(uint64_t a1)
{
  sub_100086094();
  sub_1000865D4();
  v7 = *(v1[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[13] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[14] = v8;
    *v8 = v1;
    v8[1] = sub_100083810;
    v9 = v1[4];
    v10 = v1[5];
    v12 = v1[2];
    v11 = v1[3];

    return sub_1001490A4(v12, v11, 0, v9, v10);
  }

  else
  {
    (*(v1[11] + 104))(v1[12], enum case for DIPError.Code.badLogic(_:), v1[10]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[8];
    v3 = v1[9];
    v4 = v1[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100083810(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1000839B4;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_100083938;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100083938()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_1000839B4()
{

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v2 + 8))(v1, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100083C80(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    v10 = a2;
    v11 = a4;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v14 = a4;
    v13 = 0xF000000000000000;
  }

  v4[5] = a2;
  v4[6] = v13;
  v15 = swift_task_alloc();
  v4[7] = v15;
  *v15 = v4;
  v15[1] = sub_100083D90;

  return sub_100083418(v7, v9, a2, v13);
}

uint64_t sub_100083D90(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  sub_10001C120(*(v4 + 40), *(v4 + 48));

  if (v3)
  {
    isa = _convertErrorToNSError(_:)();

    v9 = isa;
    v10 = 0;
  }

  else
  {
    sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
  }

  v11 = *(v5 + 24);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_100083F84()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000840A0, 0, 0);
}

uint64_t sub_1000840A0(uint64_t a1)
{
  sub_1000865D4();
  v7 = *(v1[2] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[9] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[10] = v8;
    *v8 = v1;
    v8[1] = sub_100084350;

    return sub_100160888();
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.badLogic(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[3];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100084350(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1000844F4;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_100084478;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100084478()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1000844F4()
{

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v2 + 8))(v1, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000847A4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10008484C;

  return sub_100083F84();
}

uint64_t sub_10008484C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201CE0, DCLegacySESlotInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1000849E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100084B04, 0, 0);
}

uint64_t sub_100084B04(uint64_t a1)
{
  sub_1000865D4();
  if (*(v1[3] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    sub_100166084(v1[2]);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.badLogic(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[5];
    v3 = v1[6];
    v4 = v1[4];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();
  }

  v6 = v1[1];

  return v6();
}

uint64_t sub_100084EF4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_100070F30;

  return sub_1000849E8(a1);
}

uint64_t sub_100084FB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000850D0, 0, 0);
}

uint64_t sub_1000850D0(uint64_t a1)
{
  sub_1000865D4();
  v7 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[11] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[12] = v8;
    *v8 = v1;
    v8[1] = sub_100085390;
    v10 = v1[2];
    v9 = v1[3];

    return sub_1001615F8(v10, v9);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100085390()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000808FC;
  }

  else
  {
    v2 = sub_1000854A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000854A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000856A4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008DF5C;

  return sub_100084FB0(v5, v7);
}

uint64_t sub_100085778(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100085898, 0, 0);
}

uint64_t sub_100085898(uint64_t a1)
{
  sub_1000865D4();
  v7 = *(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[11] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v1[12] = v8;
    *v8 = v1;
    v8[1] = sub_100085B50;
    v10 = v1[2];
    v9 = v1[3];

    return sub_100161D8C(v10, v9);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.badLogic(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = v1[6];
    v3 = v1[7];
    v4 = v1[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v2 + 8))(v3, v4);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100085B50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_10008DF7C;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_100081F44;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100085E00(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100085ED4;

  return sub_100085778(v5, v7);
}

uint64_t sub_100085ED4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201CD8, DCCredentialCryptoKeyInfo_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

void sub_100086094()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions;
  v6 = *(v0 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions);
  if (!*(v6 + 16))
  {
    (*(v2 + 104))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 629;
    v18 = 0xD000000000000013;
LABEL_11:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v7 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 42;
  v22 = 0xE100000000000000;
  __chkstk_darwin(v3);
  v20 = &v21;

  v8 = sub_100120CF8(sub_10000ED28, &v18, v6);

  if ((v8 & 1) != 0 && (_isInternalBuild.getter() & 1) == 0)
  {
    (*(v2 + 104))(v7, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 634;
    v18 = 0xD000000000000013;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v2 + 104))(v7, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 639;
    v18 = 0xD000000000000013;
    goto LABEL_11;
  }

  v10 = Strong;
  v23 = v0;
  v11._rawValue = *(v0 + v5);

  v12._object = 0x80000001001B69A0;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  v13 = NSXPCConnection.hasArrayEntitlement(name:values:)(v12, v11);

  if (!v13)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v21 = 0xD00000000000001FLL;
    v22 = 0x80000001001B69C0;

    v14 = Array.description.getter();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    (*(v2 + 104))(v7, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 643;
    v18 = 0xD000000000000013;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void sub_1000865D4()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_isInternalBuild.getter() & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v5 = Strong;
    v6._countAndFlagsBits = 0xD00000000000001DLL;
    v6._object = 0x80000001001B6930;
    if (!NSXPCConnection.isEntitled(_:)(v6))
    {
      (*(v1 + 104))(v3, enum case for DIPError.Code.missingEntitlement(_:), v0);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v1 + 104))(v3, enum case for DIPError.Code.missingEntitlement(_:), v0);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100086908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_100086A3C, 0, 0);
}

uint64_t sub_100086A3C(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy storePIITokenInSyncableKeyStore for tokenIdentifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[8] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v14 = v1[6];
    v13 = v1[7];
    v16 = v1[2];
    v15 = v1[3];

    v22 = v16;
    v23 = v15;

    v17._countAndFlagsBits = 0x746E65646572632DLL;
    v17._object = 0xEC000000736C6169;
    String.append(_:)(v17);
    sub_1001740BC(v22, v23, v14, v13);

    sub_100030C50(v1[2], v1[3], v1[4], v1[5]);
  }

  else
  {
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.syncableStoreNotInitializedStoreDataInSyncableKeyStore(_:), v1[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v18 = v1[14];
    v19 = v1[12];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v18, v19);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_100086FE8(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v5[5] = v14;
  v5[6] = v16;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v5[7] = v19;
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_100087124;

  return sub_100086908(v9, v11, v14, v16, v17, v19);
}

uint64_t sub_100087124()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_1000092BC(v6, v5);

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100087324(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100087450, 0, 0);
}

uint64_t sub_100087450(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy retrievePIITokenFromSyncableKeyStore for identifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v17 = v1[2];
    v18 = v1[3];

    v19 = sub_100030C74(v17, v18);
    v21 = v20;

    v22 = v1[1];

    return v22(v19, v21);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.syncableStoreNotInitializedRetrieveDataFromSyncableKeyStore(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[10];
    v14 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_1000879B8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E12C;

  return sub_100087324(v5, v7);
}

uint64_t sub_100087A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100087BBC, 0, 0);
}

uint64_t sub_100087BBC(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy deletePIITokenFromSyncableKeyStore for identifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[14] = v12;
  sub_100086094();
  v18 = *(v1[6] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[15] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[16] = v19;
    *v19 = v1;
    v19[1] = sub_100087F90;
    v20 = v1[4];
    v21 = v1[5];
    v23 = v1[2];
    v22 = v1[3];

    return sub_100170CB0(v23, v22, v20, v21);
  }

  else
  {
    (*(v1[8] + 104))(v1[9], enum case for DIPError.Code.syncableStoreNotInitializedDeleteDataFromSyncableKeyStore(_:), v1[7]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[14];
    v14 = v1[12];
    v15 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_100087F90()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100076FF8;
  }

  else
  {
    v2 = sub_1000880A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000880A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000882C0(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000883BC;

  return sub_100087A8C(v6, v8, v9, v11);
}

uint64_t sub_1000883BC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100088580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000886B0, 0, 0);
}

uint64_t sub_1000886B0(uint64_t a1)
{
  v26 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy updatePIITokenInSyncableKeyStore for tokenIdentifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v17 = v1[5];
    v16 = v1[6];
    v18 = v1[3];
    v24 = v1[2];
    v25 = v18;

    v19._countAndFlagsBits = 0x746E65646572632DLL;
    v19._object = 0xEC000000736C6169;
    String.append(_:)(v19);
    sub_1001740BC(v24, v25, v17, v16);
    v20 = v1[3];
    v21 = v1[4];
    v22 = v1[2];

    sub_100031020(v22, v20, v21);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.syncableStoreNotInitializedStoreDataInSyncableKeyStore(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[13];
    v14 = v1[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();
  }

  v23 = v1[1];

  return v23();
}

uint64_t sub_100088C6C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v5[4] = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_100088DA4;

  return sub_100088580(v7, v9, v10, v11, v13);
}

uint64_t sub_100088DA4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100088F84(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000890B0, 0, 0);
}

uint64_t sub_1000890B0(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy isPIITokenAvailable for identifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  sub_100086094();
  if (*(v1[4] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage))
  {
    v15 = v1[2];
    v16 = v1[3];

    v17 = sub_100031A60(v15, v16);

    v18 = v1[1];
    v19 = v17 & 1;
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.syncableStoreNotInitializedRetrieveDataFromSyncableKeyStore(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[10];
    v14 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v13, v14);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v1[1];
    v19 = 0;
  }

  return v18(v19);
}

uint64_t sub_1000895D0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10008E13C;

  return sub_100088F84(v5, v7);
}

uint64_t sub_1000896A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000897D4, 0, 0);
}

uint64_t sub_1000897D4(uint64_t a1)
{
  v26 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v25);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy storePIIHashInSyncableKeyStore for tokenIdentifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[15] = v12;
  sub_100086094();
  v18 = *(v1[7] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[16] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[17] = v19;
    *v19 = v1;
    v19[1] = sub_100089BAC;
    v20 = v1[5];
    v21 = v1[6];
    v22 = v1[3];
    v23 = v1[4];
    v24 = v1[2];

    return sub_100172B90(v24, v22, v23, v20, v21);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.syncableStoreNotInitializedStoreDataInSyncableKeyStore(_:), v1[8]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[15];
    v14 = v1[13];
    v15 = v1[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_100089BAC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100089D4C;
  }

  else
  {
    v2 = sub_100089CC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100089CC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100089D4C()
{

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008A038(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_10008A150;

  return sub_1000896A4(v9, v11, v13, v15, a3);
}

uint64_t sub_10008A150()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_1000092BC(v6, v5);

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10008A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008A458, 0, 0);
}

uint64_t sub_10008A458(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy retrievePIIHashFromSyncableKeyStore for identifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[13] = v12;
  sub_100086094();
  v18 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[15] = v19;
    *v19 = v1;
    v19[1] = sub_10008A82C;
    v20 = v1[3];
    v21 = v1[4];
    v22 = v1[2];

    return sub_10017325C(v22, v20, v21);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.syncableStoreNotInitializedRetrieveDataFromSyncableKeyStore(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[13];
    v14 = v1[11];
    v15 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_10008A82C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_10007D56C;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v7 = sub_10008A960;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008A960()
{

  v1 = v0[1];
  v3 = v0[17];
  v2 = v0[18];

  return v1(v2, v3);
}

uint64_t sub_10008AB7C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10008AC60;

  return sub_10008A32C(v7, v9, a2);
}

uint64_t sub_10008AC60(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10008AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008AF38, 0, 0);
}

uint64_t sub_10008AF38(uint64_t a1)
{
  v24 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStoreSessionProxy deletePIIHashFromSyncableKeyStore for identifier: %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[13] = v12;
  sub_100086094();
  v18 = *(v1[5] + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage);
  v1[14] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v1[15] = v19;
    *v19 = v1;
    v19[1] = sub_10008B30C;
    v20 = v1[3];
    v21 = v1[4];
    v22 = v1[2];

    return sub_100173A0C(v22, v20, v21);
  }

  else
  {
    (*(v1[7] + 104))(v1[8], enum case for DIPError.Code.syncableStoreNotInitializedDeleteDataFromSyncableKeyStore(_:), v1[6]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[13];
    v14 = v1[11];
    v15 = v1[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v13(v14, v15);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_10008B30C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10008DF64;
  }

  else
  {
    v2 = sub_10008DF78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008B5AC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10008DF5C;

  return sub_10008AE0C(v7, v9, a2);
}

id sub_10008B6E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage;
  *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage] = 0;
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = a2;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating CredentialStoreSessionProxy", v12, 2u);
    a2 = v16;
  }

  (*(v6 + 8))(v8, v5);
  result = os_transaction_create();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();
    *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_dataContainer] = a2;
    *&v3[OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions] = _swiftEmptyArrayStorage;
    *&v3[v9] = 0;

    v14 = type metadata accessor for CredentialStoreSessionProxy();
    v17.receiver = v3;
    v17.super_class = v14;
    return objc_msgSendSuper2(&v17, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B8E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [v8 processIdentifier];

    _os_log_impl(&_mh_execute_header, v9, v10, "credential store listener connection received from %d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  v12 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DCCredentialStoreXPCProtocol];
  [v8 setExportedInterface:v12];

  v13 = *(v2 + OBJC_IVAR____TtC7idcredd23CredentialStoreListener_dataContainer);
  v14 = objc_allocWithZone(type metadata accessor for CredentialStoreSessionProxy());
  v15 = v8;

  v16 = sub_10008B6E4(v15, v13);

  [v15 setExportedObject:v16];

  v24 = sub_100073194;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10008E148;
  v23 = &unk_1001F6F50;
  v17 = _Block_copy(&aBlock);
  [v15 setInvalidationHandler:v17];
  _Block_release(v17);
  v24 = sub_1000731A0;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10008E148;
  v23 = &unk_1001F6F78;
  v18 = _Block_copy(&aBlock);
  [v15 setInterruptionHandler:v18];
  _Block_release(v18);
  [v15 resume];
  return 1;
}

uint64_t sub_10008BC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v10 = 136315138;
    v12 = Array.description.getter();
    v14 = sub_10010150C(v12, v13, v47);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "CredentialStoreSessionProxy configure with partitions %s", v10, 0xCu);
    sub_100005090(v11);
  }

  (*(v5 + 8))(v7, v4);
  v15 = v38;
  *(v38 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_partitions) = a1;

  v16 = *(v15 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_dataContainer);
  v47[3] = &type metadata for CredentialDecryptionKeyIdentifierProvider;
  v47[4] = &off_1001F4D30;
  v17 = type metadata accessor for PayloadProcessorBuilder();
  v18 = swift_allocObject();

  v19 = sub_10001C16C();
  v46[3] = &type metadata for CredentialDecryptionKeyFinder;
  v46[4] = &off_1001F4D20;
  v46[0] = swift_allocObject();
  sub_100012950(v47, v46[0] + 16);
  v45[3] = v17;
  v45[4] = &off_1001F78E8;
  v45[0] = v18;
  type metadata accessor for CredentialStorage();
  v20 = swift_allocObject();
  v21 = sub_1000129AC(v46, &type metadata for CredentialDecryptionKeyFinder);
  v37[2] = v37;
  __chkstk_darwin(v21);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = sub_1000129AC(v45, v17);
  v37[1] = v37;
  __chkstk_darwin(v25);
  v27 = (v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v44[3] = &type metadata for CredentialDecryptionKeyFinder;
  v44[4] = &off_1001F4D20;
  v30 = swift_allocObject();
  v43[4] = &off_1001F78E8;
  v44[0] = v30;
  v31 = *(v23 + 1);
  *(v30 + 16) = *v23;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(v23 + 4);
  v43[3] = v17;
  v43[0] = v29;

  v33 = sub_10010D640(v32);

  v20[2] = v33;
  v20[15] = v16;
  sub_10001A940(v44, (v20 + 4));
  sub_10001A940(v43, (v20 + 9));
  v20[14] = v19;
  type metadata accessor for BiometricsHelper();
  swift_allocObject();

  v34 = BiometricsHelper.init()();
  v41 = type metadata accessor for DeviceInformationProvider();
  v42 = &protocol witness table for DeviceInformationProvider;
  sub_10001A9A4(&v40);
  DeviceInformationProvider.init()();
  type metadata accessor for BiometricStorage();
  v35 = swift_allocObject();
  v35[2] = v16;
  v35[8] = v19;
  type metadata accessor for AppleIDVManager();
  sub_1000215BC(v35 + 3);
  sub_100005090(v43);
  sub_100005090(v44);
  v35[9] = v34;
  sub_10001AA08(&v40, (v35 + 10));
  v20[3] = v35;
  sub_100005090(v45);
  sub_100005090(v46);
  sub_10001AA20(v47);
  *(v15 + OBJC_IVAR____TtC7idcredd27CredentialStoreSessionProxy_storage) = v20;

  return (*(v39 + 16))(v39, 0);
}

uint64_t sub_10008C18C(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C268()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10008B5AC(v2, v3, v5, v4);
}

uint64_t sub_10008C328()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10008AB7C(v2, v3, v5, v4);
}

uint64_t sub_10008C3F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10008A038(v2, v3, v4, v5, v6);
}

uint64_t sub_10008C4BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000895D0(v2, v3, v4);
}

uint64_t sub_10008C574()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_100088C6C(v2, v3, v4, v5, v6);
}

uint64_t sub_10008C640()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_1000882C0(v2, v3, v5, v4);
}

uint64_t sub_10008C700()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000879B8(v2, v3, v4);
}

uint64_t sub_10008C7B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_100086FE8(v2, v3, v4, v5, v6);
}

uint64_t sub_10008C87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100085E00(v2, v3, v4);
}

uint64_t sub_10008C930()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000856A4(v2, v3, v4);
}

uint64_t sub_10008C9E4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008CA24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100084EF4(v2, v3, v4);
}

uint64_t sub_10008CAD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008CB18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000105C8;

  return sub_1000847A4(v2, v3);
}

uint64_t sub_10008CBC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100083C80(v2, v3, v5, v4);
}

uint64_t sub_10008CC84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100083344(v2, v3, v4);
}

uint64_t sub_10008CD38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100082A60(v2, v3, v4);
}

uint64_t sub_10008CDEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100082148(v2, v3, v4);
}

uint64_t sub_10008CEA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_1000816D4(v2, v3, v4, v5, v6);
}

uint64_t sub_10008CF68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100080BC0(v2, v3, v4);
}

uint64_t sub_10008D01C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000104D4;

  return sub_1000800F0(v2, v3, v5, v4);
}

uint64_t sub_10008D0DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007F884(v2, v3, v4);
}

uint64_t sub_10008D190()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007EC40(v2, v3, v4);
}

uint64_t sub_10008D244()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007E1CC(v2, v3, v5, v4);
}

uint64_t sub_10008D304()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007D848(v2, v3, v5, v4);
}

uint64_t sub_10008D3C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007CBFC(v2, v3, v4);
}

uint64_t sub_10008D478()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008D4C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10007C150(v2, v3, v4, v5, v6);
}

uint64_t sub_10008D590()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007B68C(v2, v3, v4);
}

uint64_t sub_10008D644()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007AEE8(v2, v3, v5, v4);
}

uint64_t sub_10008D704()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007A3E4(v2, v3, v5, v4);
}

uint64_t sub_10008D7C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100079948(v2, v3, v5, v4);
}

uint64_t sub_10008D884()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100078E4C(v2, v3, v5, v4);
}

uint64_t sub_10008D944()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000786C4(v2, v3, v4);
}

uint64_t sub_10008D9F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_100077E34(v2, v3, v5, v4);
}

uint64_t sub_10008DAB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_1000772D4(v2, v3, v5, v4);
}

uint64_t sub_10008DB78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100076844(v2, v3, v4);
}

uint64_t sub_10008DC2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100075FD0(v2, v3, v4);
}

uint64_t sub_10008DCE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10007566C(v2, v3, v4);
}

uint64_t sub_10008DD94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100074D88(v2, v3, v4);
}

uint64_t sub_10008DE48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000105C8;

  return sub_10007414C(v2, v3, v5, v4);
}

uint64_t sub_10008DF08()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008DF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008E148(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

NSObject *sub_10008E18C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DCPresentmentSession();
  static DCPresentmentSession.machServiceName.getter();
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithMachServiceName:v9];

  *&v2[OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener] = v10;
  *&v2[OBJC_IVAR____TtC7idcredd19PresentmentListener_dataContainer] = a1;
  v11 = type metadata accessor for PresentmentListener();
  v20.receiver = v2;
  v20.super_class = v11;

  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener;
  v14 = *&v12[OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener];
  v15 = v12;
  [v14 setDelegate:v15];
  [*&v12[v13] resume];
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Presentment listener is started", v18, 2u);
  }

  else
  {

    v16 = v15;
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

id sub_10008E3CC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Presentment listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC7idcredd19PresentmentListener_xpcListener] invalidate];
  v9 = type metadata accessor for PresentmentListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_10008E5CC(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_10008E7BC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying PresentmentSessionProxy", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for PresentmentSessionProxy();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_10008E9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10008EA80, 0, 0);
}

uint64_t sub_10008EA80(uint64_t a1)
{
  v30 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[6];
  if (v4)
  {
    v28 = v1[8];
    v8 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = Array.description.getter();
    v11 = sub_10010150C(v9, v10, &v29);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = DCPresentmentTypeToString();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10010150C(v13, v15, &v29);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy configure with partitions %{public}s, presentment type %{public}s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v28, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v18 = v1[4];
  v17 = v1[5];
  v20 = v1[2];
  v19 = v1[3];
  *(v17 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions) = v20;

  v21 = *(v17 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_dataContainer);
  type metadata accessor for PayloadProcessorBuilder();
  v22 = swift_allocObject();
  type metadata accessor for SESKeystore();
  swift_allocObject();
  swift_bridgeObjectRetain_n();

  v23 = SESKeystore.init()();
  type metadata accessor for PresentmentFlow(0);
  swift_allocObject();
  v24 = v18;
  v25 = sub_10009E028(v20, v19, v18, v21, 0, v22, v23);

  *(v17 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow) = v25;

  v26 = v1[1];

  return v26();
}

uint64_t sub_10008EF08(uint64_t a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v9;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_10008EFFC;

  return sub_10008E9BC(v9, a2, a3);
}

uint64_t sub_10008EFFC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10008F340(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100072D6C;

  return sub_100094E7C();
}

uint64_t sub_10008F404(uint64_t a1)
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
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10008F52C, 0, 0);
}

uint64_t sub_10008F52C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy interpretRequest", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];

  v8 = *(v7 + 8);
  v1[11] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[12] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[13] = v15;
    *v15 = v1;
    v15[1] = sub_10008F898;
    v16 = v1[2];

    return sub_10009B0AC(v16);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.badLogic(_:), v1[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[11];
    v10 = v1[9];
    v11 = v1[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10008F898(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10008FA0C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10008FA0C()
{

  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008FCE0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10008FDA4;

  return sub_10008F404(v6);
}

uint64_t sub_10008FDA4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_10005684C(0, &qword_100201DA0, DCPresentmentProposal_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10008FF60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for CredentialPresentmentRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000900E4, 0, 0);
}

uint64_t sub_1000900E4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy interpretCredentialRequest", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];

  v8 = *(v7 + 8);
  v1[14] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[15] = v14;
  if (v14)
  {

    XPCCredentialPresentmentRequest.value.getter();
    v15 = swift_task_alloc();
    v1[16] = v15;
    *v15 = v1;
    v15[1] = sub_100090478;
    v16 = v1[9];

    return sub_10009BB10(v16);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.badLogic(_:), v1[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[14];
    v10 = v1[12];
    v11 = v1[10];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100090478(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    (*(v4[8] + 8))(v4[9], v4[7]);

    return _swift_task_switch(sub_100090650, 0, 0);
  }

  else
  {
    (*(v4[8] + 8))(v4[9], v4[7]);

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_100090650(uint64_t a1)
{
  v2 = v1[14];
  v3 = v1[12];
  v4 = v1[10];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v2(v3, v4);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_100090930(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100095794;

  return sub_10008FF60(v6);
}

uint64_t sub_1000909F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100090AB4, 0, 0);
}

uint64_t sub_100090AB4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildResponse", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[7] = v8;
  *v8 = v1;
  v8[1] = sub_100090BE8;
  v9 = v1[2];

  return sub_1000911E8(v9);
}

uint64_t sub_100090BE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_100090D3C, 0, 0);
  }
}

uint64_t sub_100090D3C()
{
  v1 = *(v0 + 64);
  v2 = [v1 responseData];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_100090F78(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10009103C;

  return sub_1000909F4(v6);
}

uint64_t sub_10009103C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 32);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_1000911E8(uint64_t a1)
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
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100091310, 0, 0);
}

uint64_t sub_100091310(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildCredentialResponse", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];

  v8 = *(v7 + 8);
  v1[11] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[12] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[13] = v15;
    *v15 = v1;
    v15[1] = sub_10009167C;
    v16 = v1[2];

    return sub_10009C240(v16);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.badLogic(_:), v1[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[11];
    v10 = v1[9];
    v11 = v1[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_10009167C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100095730, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100091978(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10006AFB0;

  return sub_1000911E8(v6);
}

uint64_t sub_100091A3C(uint64_t a1)
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
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100091B64, 0, 0);
}

uint64_t sub_100091B64(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildErrorResponse", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];

  v8 = *(v7 + 8);
  v1[11] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[3] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[12] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[13] = v15;
    *v15 = v1;
    v15[1] = sub_100091ED0;
    v16 = v1[2];

    return sub_10009CB78(v16);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.badLogic(_:), v1[4]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[11];
    v10 = v1[9];
    v11 = v1[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100091ED0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 112) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10008FA0C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1000921DC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10006DAAC;

  return sub_100091A3C(a1);
}

uint64_t sub_100092298(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000923C4, 0, 0);
}

uint64_t sub_1000923C4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy interpretGenericDataRequest", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];

  v8 = *(v7 + 8);
  v1[12] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[4] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[13] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[14] = v15;
    *v15 = v1;
    v15[1] = sub_100092730;
    v17 = v1[2];
    v16 = v1[3];

    return sub_10009D0BC(v17, v16);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[12];
    v10 = v1[10];
    v11 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100092730(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 120) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100095734, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_100092A40(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100095798;

  return sub_100092298(v7, v9);
}

uint64_t sub_100092B1C(uint64_t a1, uint64_t a2)
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
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100092C48, 0, 0);
}

uint64_t sub_100092C48(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy buildGenericDataResponse", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];

  v8 = *(v7 + 8);
  v1[12] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[4] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[13] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[14] = v15;
    *v15 = v1;
    v15[1] = sub_100092FB4;
    v17 = v1[2];
    v16 = v1[3];

    return sub_10009D60C(v17, v16);
  }

  else
  {
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[12];
    v10 = v1[10];
    v11 = v1[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100092FB4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 120) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10009313C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10009313C()
{

  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100093410(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100069500;

  return sub_100092B1C(v7, v9);
}

void sub_1000934EC()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions;
  v6 = *(v0 + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions);
  if (!*(v6 + 16))
  {
    (*(v2 + 104))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 213;
    v18 = 0xD000000000000013;
LABEL_11:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v7 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 42;
  v22 = 0xE100000000000000;
  __chkstk_darwin(v3);
  v20 = &v21;

  v8 = sub_100120CF8(sub_10000ED28, &v18, v6);

  if ((v8 & 1) != 0 && (_isInternalBuild.getter() & 1) == 0)
  {
    (*(v2 + 104))(v7, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 218;
    v18 = 0xD000000000000013;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v2 + 104))(v7, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 223;
    v18 = 0xD000000000000013;
    goto LABEL_11;
  }

  v10 = Strong;
  v11._rawValue = *(v0 + v5);

  v12._countAndFlagsBits = 0xD000000000000023;
  v12._object = 0x80000001001B7340;
  v13 = NSXPCConnection.hasArrayEntitlement(name:values:)(v12, v11);

  if (!v13)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v21 = 0xD00000000000001FLL;
    v22 = 0x80000001001B69C0;

    v14 = Array.description.getter();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    (*(v2 + 104))(v7, enum case for DIPError.Code.missingEntitlement(_:), v1);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    v19 = 0x80000001001B6980;
    v20 = 226;
    v18 = 0xD000000000000013;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100093A84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000105C8;

  return v6();
}

uint64_t sub_100093B6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000104D4;

  return v7();
}

uint64_t sub_100093C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000946C8(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100094738(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100094738(a3);

    return v21;
  }

LABEL_8:
  sub_100094738(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100093F10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100094008;

  return v6(a1);
}

uint64_t sub_100094008()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_100094100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow;
  *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow] = 0;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16[1] = a1;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating PresentmentSessionProxy", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  result = os_transaction_create();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();
    *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_partitions] = _swiftEmptyArrayStorage;
    *&v3[v10] = 0;

    *&v3[OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_dataContainer] = a2;
    v15 = type metadata accessor for PresentmentSessionProxy();
    v17.receiver = v3;
    v17.super_class = v15;
    return objc_msgSendSuper2(&v17, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000942F4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [v8 processIdentifier];

    _os_log_impl(&_mh_execute_header, v9, v10, "Presentment listener connection received from %d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  sub_10005684C(0, &qword_100201DA8, NSXPCInterface_ptr);
  v12 = static NSXPCInterface.presentmentXPC.getter();
  [v8 setExportedInterface:v12];

  v13 = *(v2 + OBJC_IVAR____TtC7idcredd19PresentmentListener_dataContainer);
  objc_allocWithZone(type metadata accessor for PresentmentSessionProxy());
  v14 = v8;

  v15 = sub_100094100(v14, v13);

  [v14 setExportedObject:v15];
  v23 = sub_10008E5B4;
  v24 = 0;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10008E148;
  v22 = &unk_1001F7428;
  v16 = _Block_copy(&aBlock);
  [v14 setInvalidationHandler:v16];
  _Block_release(v16);
  v23 = sub_10008E5C0;
  v24 = 0;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10008E148;
  v22 = &unk_1001F7450;
  v17 = _Block_copy(&aBlock);
  [v14 setInterruptionHandler:v17];
  _Block_release(v17);
  [v14 resume];
  return 1;
}

uint64_t sub_100094614()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100093410(v2, v3, v4);
}

uint64_t sub_1000946C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094738(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100201CD0, &qword_1001AC550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000947A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000947D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000105C8;

  return sub_100093F10(a1, v4);
}

uint64_t sub_100094890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000104D4;

  return sub_100093F10(a1, v4);
}

uint64_t sub_100094948()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100092A40(v2, v3, v4);
}

uint64_t sub_1000949FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_1000921DC(v2, v3, v4);
}

uint64_t sub_100094AB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100091978(v2, v3, v4);
}

uint64_t sub_100094B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000104D4;

  return sub_100090F78(v2, v3, v4);
}

uint64_t sub_100094C1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_100090930(v2, v3, v4);
}

uint64_t sub_100094CD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10008FCE0(v2, v3, v4);
}

uint64_t sub_100094D88()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094DC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000105C8;

  return sub_10008F340(v2, v3, v4);
}

uint64_t sub_100094E7C()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100094FA4, 0, 0);
}

uint64_t sub_100094FA4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionProxy generateTransportKey", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  sub_1000934EC();
  v14 = *(v1[2] + OBJC_IVAR____TtC7idcredd23PresentmentSessionProxy_flow);
  v1[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_100095324;

    return sub_10009EA7C(0, 0xF000000000000000);
  }

  else
  {
    (*(v1[4] + 104))(v1[5], enum case for DIPError.Code.badLogic(_:), v1[3]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = v1[10];
    v10 = v1[8];
    v11 = v1[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v11);
    sub_10005684C(0, &qword_100201BD0, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_100095324(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 104) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000954AC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1000954AC()
{

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v1(v2, v3);
  sub_10005684C(0, &qword_100201BD0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000955F8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100095648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000105C8;

  return sub_10008EF08(v2, v3, v4, v5, v6);
}

uint64_t sub_100095710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000957A0(uint64_t *a1)
{
  v2 = type metadata accessor for ISO18013IssuerSignedItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  v8 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  if (v6 == v8 && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_1000958E4(id *a1)
{
  v2 = type metadata accessor for ISO18013IssuerSignedItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 elementIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  v10 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  if (v7 == v10 && v9 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

void sub_100095A58(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v57 = a3;
  v53 = a2;
  v4 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = __chkstk_darwin(v4);
  v54 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v52 = &v49 - v7;
  v8 = type metadata accessor for Logger();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ISO18013IssuerSignedItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [v15 elementIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  CBOREncodedCBOR.value.getter();
  v20 = ISO18013IssuerSignedItem.elementIdentifier.getter();
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  if (v17 == v20 && v19 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      *v57 = v15;
      v25 = v15;
      return;
    }
  }

  defaultLogger()();
  v26 = v15;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58 = v30;
    *v29 = 136315138;
    v31 = [v26 elementIdentifier];
    v32 = v26;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = v33;
    v26 = v32;
    v37 = sub_10010150C(v36, v35, &v58);

    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "Updating intent to retain for %s to true because it is the destination of a fallback", v29, 0xCu);
    sub_100005090(v30);
  }

  (*(v50 + 8))(v10, v51);
  v38 = v56;
  v39 = v54;
  v40 = v52;
  CredentialPresentmentElementRequestInfo.intentToStore.getter();
  v41 = v55;
  (*(v55 + 32))(v39, v40, v38);
  v42 = (*(v41 + 88))(v39, v38);
  v43 = v42;
  v44 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  if (v42 == enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:))
  {
    (*(v41 + 96))(v39, v38);
    v45 = *v39;
    v46 = 1;
  }

  else if (v42 == enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:))
  {
    v45 = 0;
    v46 = 2;
  }

  else if (v42 == enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:))
  {
    v45 = 0;
    v46 = 3;
  }

  else
  {
    (*(v41 + 8))(v39, v38);
    v46 = 0;
    v45 = 0;
  }

  v47 = [v26 elementIdentifier];
  if (!v47)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = String._bridgeToObjectiveC()();

    if (v43 == v44)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v43 != v44)
  {
LABEL_19:
    v45 = NSNotFound.getter();
  }

LABEL_20:
  v48 = [objc_allocWithZone(DCPresentmentRequestedElement) initWithElementIdentifier:v47 intentToRetain:v46 retentionPeriod:v45];

  *v57 = v48;
}

void *sub_100095FC8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v27 = _swiftEmptyArrayStorage;
  v21 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = *(a6(0) - 8);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = v11 + 32;
  v22 = *(v16 + 72);
  while (1)
  {
    v25(v17);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v27 = v15;
    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v21(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    v15[2] = v19 + 1;
    (*(v11 + 32))(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v13, v24);
    v17 += v22;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000961E8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_10010A8D8(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_10010A8D8((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    v6[v12 + 4] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_100096314(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for DocumentRequest();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10010A918(0, v9, 0);
  v10 = v21;
  v11 = (a3 + 32);
  v16[1] = v6 + 32;
  while (1)
  {
    v12 = *v11++;
    v20 = v12;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_10010A918((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000964C4(int a1, int a2)
{
  v70 = a2;
  v69 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v75 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_1002014E8, &qword_1001AB870);
  __chkstk_darwin(v6 - 8);
  v66 = &v62 - v7;
  v68 = sub_100004E70(&qword_1002014F0, &qword_1001AB878);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v62 - v8;
  v89 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  v9 = __chkstk_darwin(v89);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = sub_100004E70(&qword_1002014A0, &qword_1001AB830);
  v15 = __chkstk_darwin(v14);
  v81 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v62 - v17;
  v18 = type metadata accessor for ISO18013Version();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v62 - v24;
  __chkstk_darwin(v23);
  v88 = &v62 - v26;
  ISO18013ReaderRequest.version.getter();
  static ISO18013ReaderRequest.supportedVersion.getter();
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  v87 = sub_100099774(&qword_1002014C0, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v83 = v2;
  v28 = *(v19 + 32);
  v85 = v25;
  v28(v13, v25, v18);
  v29 = v89;
  v30 = &v13[*(v89 + 48)];
  v80 = v22;
  v28(v30, v22, v18);
  sub_100096FA0(v13, v11);
  v84 = *(v29 + 48);
  v86 = v14;
  v31 = v92;
  v28(v92, v11, v18);
  v32 = *(v19 + 8);
  v32(&v11[v84], v18);
  v79 = v13;
  sub_100097010(v13, v11);
  v33 = *(v29 + 48);
  v72 = *(v86 + 36);
  v76 = v19 + 32;
  v77 = v28;
  v28((v31 + v72), &v11[v33], v18);
  v78 = v11;
  v84 = v19 + 8;
  v82 = v32;
  v32(v11, v18);
  v34 = v88;
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v35 = v92;
    v36 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_10000A0D4(v35, &qword_1002014A0, &qword_1001AB830);
    if (v36)
    {
      v82(v34, v18);
      v37 = v69 & 1;
      v38 = v70;
      return sub_100097080(v38, v37);
    }
  }

  else
  {
    sub_10000A0D4(v92, &qword_1002014A0, &qword_1001AB830);
  }

  v39 = v85;
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  v40 = v80;
  static ISO18013ReaderRequest.nextMajorUnsupportedVersion.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v41 = v79;
  v42 = v77;
  v77(v79, v39, v18);
  v43 = v89;
  v42(v41 + *(v89 + 48), v40, v18);
  v44 = v78;
  sub_100096FA0(v41, v78);
  v45 = *(v43 + 48);
  v46 = v81;
  v42(v81, v44, v18);
  v47 = (v44 + v45);
  v48 = v82;
  v82(v47, v18);
  v49 = v41;
  v50 = v88;
  sub_100097010(v49, v44);
  v42(v46 + *(v86 + 36), (v44 + *(v43 + 48)), v18);
  v48(v44, v18);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    sub_10000A0D4(v46, &qword_1002014A0, &qword_1001AB830);
    v48(v50, v18);
    goto LABEL_13;
  }

  v51 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_10000A0D4(v46, &qword_1002014A0, &qword_1001AB830);
  v48(v50, v18);
  if ((v51 & 1) == 0)
  {
LABEL_13:
    v90 = 0;
    v91 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v90 = 0xD000000000000023;
    v91 = 0x80000001001B3C80;
    v55 = v85;
    ISO18013ReaderRequest.version.getter();
    sub_100099774(&qword_1002014C8, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
    v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v56);

    v48(v55, v18);
    (*(v73 + 104))(v75, enum case for DIPError.Code.idcsUnsupportedReaderRequestVersion(_:), v74);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100099774(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v52 = v66;
  ISO18013ReaderRequest.deviceRequestInfo.getter();
  v53 = v67;
  v54 = v68;
  if ((*(v67 + 48))(v52, 1, v68) == 1)
  {
    sub_10000A0D4(v52, &qword_1002014E8, &qword_1001AB870);
    v37 = v69 & 1;
    v38 = v70;
    return sub_100097080(v38, v37);
  }

  v57 = v62;
  (*(v53 + 32))(v62, v52, v54);
  v58 = v63;
  CBOREncodedCBOR.value.getter();
  v59 = v71;
  v60 = sub_1000973D0(v58, v70);
  if (v59)
  {
    (*(v64 + 8))(v58, v65);
    return (*(v53 + 8))(v57, v54);
  }

  else
  {
    v61 = v60;
    (*(v64 + 8))(v58, v65);
    (*(v53 + 8))(v57, v54);
    return v61;
  }
}

uint64_t sub_100096FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100201498, &qword_1001AB828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097080(char a1, char a2)
{
  v32 = type metadata accessor for DocumentRequest();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ISO18013ReaderRequest.docRequests.getter();
  v34 = v2;
  v35 = a1;
  v9 = sub_100095FC8(sub_100099940, v33, v8, &type metadata accessor for DocumentRequest, sub_10010A918, &type metadata accessor for ISO18013ReaderRequest.DocRequest);

  v10 = &off_1001AA000;
  if (a2)
  {
    sub_100004E70(&qword_100201EC0, &qword_1001ACC48);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001AA160;
    *(v11 + 32) = v9;
  }

  else
  {
    v12 = v9[2];
    if (v12)
    {
      v36 = _swiftEmptyArrayStorage;
      sub_10010A8D8(0, v12, 0);
      v14 = *(v5 + 16);
      v13 = v5 + 16;
      v15 = v36;
      v16 = *(v13 + 64);
      v29 = v16;
      v30 = v14;
      v17 = (v16 + 32) & ~v16;
      v27[1] = v9;
      v18 = v9 + v17;
      v19 = *(v13 + 56);
      v31 = v13;
      v20 = (v13 + 16);
      v28 = xmmword_1001AA160;
      do
      {
        v21 = v32;
        v30(v7, v18, v32);
        sub_100004E70(&qword_100201EB0, &qword_1001ACC38);
        v22 = swift_allocObject();
        *(v22 + 16) = v28;
        (*v20)(v22 + v17, v7, v21);
        v36 = v15;
        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          sub_10010A8D8((v23 > 1), v24 + 1, 1);
          v15 = v36;
        }

        v15[2] = v24 + 1;
        v15[v24 + 4] = v22;
        v18 += v19;
        --v12;
      }

      while (v12);

      v10 = &off_1001AA000;
    }

    else
    {
    }
  }

  sub_100004E70(&qword_100201EB8, &qword_1001ACC40);
  type metadata accessor for CredentialPresentmentRequest.UseCase();
  v25 = swift_allocObject();
  *(v25 + 16) = *(v10 + 22);
  CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
  return v25;
}

uint64_t sub_1000973D0(uint64_t a1, int a2)
{
  v50 = a2;
  v53 = type metadata accessor for DIPError.Code();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ISO18013ReaderRequest.UseCase();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v49 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = ISO18013ReaderRequest.DeviceRequestInfo.useCases.getter();
  if (!v12 || (v54 = v12, v52 = v5, sub_100004E70(&qword_100201E48, &qword_1001ACBF8), sub_1000464D0(&qword_100201E50, &qword_100201E48, &qword_1001ACBF8), Collection.nilIfEmpty.getter(), v5 = v52, result = , (v14 = v56) == 0))
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v53);
    v31 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100099774(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v33 = 0x80000001001B7520;
    v34 = 61;
    v32 = 0xD000000000000033;
LABEL_23:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v31;
  }

  v15 = *(v56 + 16);
  v46 = v2;
  v47 = v15;
  if (v15)
  {
    v16 = 0;
    v48 = (v7 + 8);
    v45 = v7 + 16;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v17 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v43 = *(v7 + 72);
      v44 = v17;
      v18 = *(v7 + 16);
      v18(v11, v17 + v43 * v16, v6);
      v19 = *(ISO18013ReaderRequest.UseCase.documentSets.getter() + 16);

      if (!v19)
      {
        break;
      }

      ++v16;
      v20 = ISO18013ReaderRequest.UseCase.documentSets.getter();
      v21 = *(v20 + 16);
      v22 = 32;
      while (v21)
      {
        v23 = *(*(v20 + v22) + 16);
        v22 += 8;
        --v21;
        if (!v23)
        {
          (*v48)(v11, v6);

          goto LABEL_22;
        }
      }

      v24 = *v48;
      result = (*v48)(v11, v6);
      if (v16 == v47)
      {
        v25 = 0;
        v40 = v24;
        while (v25 < *(v14 + 16))
        {
          v18(v49, v44 + v43 * v25, v6);
          v37 = v25 + 1;
          v26 = ISO18013ReaderRequest.UseCase.documentSets.getter();
          v38 = *(ISO18013ReaderRequest.docRequests.getter() + 16);

          v27 = 0;
          v41 = v26;
          v39 = *(v26 + 16);
          while (1)
          {
            v28 = v40;
            if (v39 == v27)
            {
              break;
            }

            if (v27 >= *(v41 + 16))
            {
              goto LABEL_27;
            }

            v29 = *(v41 + 8 * v27 + 32);
            v42 = v27 + 1;
            v54 = 0;
            v55 = v38;
            v56 = v29;
            sub_100004E70(&qword_100201E58, &qword_1001ACC00);
            sub_100004E70(&qword_100201E60, &qword_1001ACC08);
            sub_1000997BC();
            sub_1000464D0(&qword_100201E78, &qword_100201E60, &qword_1001ACC08);
            result = Collection<>.contains<A>(_:)();
            v27 = v42;
            v30 = v52;
            if ((result & 1) == 0)
            {

              v40(v49, v6);
              (*(v3 + 104))(v30, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v53);
              v31 = sub_10002688C(_swiftEmptyArrayStorage);
              type metadata accessor for DIPError();
              sub_100099774(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
              swift_allocError();
              v33 = 0x80000001001B7520;
              v34 = 74;
              v32 = 0xD000000000000033;
              goto LABEL_23;
            }
          }

          result = v28(v49, v6);
          v25 = v37;
          if (v37 == v47)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_28;
      }
    }

    (*v48)(v11, v6);
LABEL_22:

    (*(v3 + 104))(v5, enum case for DIPError.Code.idcsInvalidReaderRequest(_:), v53);
    v31 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100099774(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v33 = 0x80000001001B7520;
    v34 = 66;
    v32 = 0xD000000000000033;
    goto LABEL_23;
  }

LABEL_20:
  __chkstk_darwin(result);
  v34 = v51;
  v35 = v50;
  v31 = sub_100095FC8(sub_10009989C, &v32, v14, &type metadata accessor for CredentialPresentmentRequest.UseCase, sub_10010A95C, &type metadata accessor for ISO18013ReaderRequest.UseCase);

  return v31;
}

uint64_t sub_100097BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v115) = a3;
  v113 = a2;
  v105 = a1;
  v86[4] = a4;
  v109 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v114 = *(v109 - 8);
  v4 = __chkstk_darwin(v109);
  v102 = (v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v101 = (v86 - v6);
  v108 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v110 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v107 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = v86 - v9;
  v10 = sub_100004E70(&qword_100201E80, &qword_1001ACF40);
  __chkstk_darwin(v10 - 8);
  v12 = v86 - v11;
  v111 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v13 = *(v111 - 8);
  v14 = __chkstk_darwin(v111);
  v112 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v86 - v16;
  v18 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v86 - v23;
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  CBOREncodedCBOR.value.getter();
  v25 = *(v19 + 8);
  v25(v24, v18);
  v86[2] = ISO18013ReaderRequest.ItemsRequest.docType.getter();
  v86[1] = v26;
  v27 = *(v13 + 8);
  v28 = v17;
  v29 = v111;
  v27(v28, v111);
  v30 = type metadata accessor for Locale.Region();
  v31 = *(*(v30 - 8) + 56);
  v86[3] = v12;
  v31(v12, 1, 1, v30);
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  v32 = v112;
  CBOREncodedCBOR.value.getter();
  v25(v22, v18);
  v33 = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
  v27(v32, v29);
  v34 = ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter();
  sub_100004E70(&qword_100201EA0, &qword_1001ACC28);
  result = static _DictionaryStorage.copy(original:)();
  v36 = 0;
  v37 = *(v33 + 64);
  v88 = v33 + 64;
  v91 = v33;
  v38 = 1 << *(v33 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v37;
  v87 = (v38 + 63) >> 6;
  LODWORD(v105) = (v115 == 0) & v34;
  v99 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
  v104 = (v114 + 104);
  v98 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
  v97 = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
  v103 = v110 + 32;
  v89 = result + 64;
  v90 = result;
  v41 = v106;
  if (v40)
  {
    while (1)
    {
      v42 = __clz(__rbit64(v40));
      v92 = (v40 - 1) & v40;
LABEL_11:
      v93 = v36;
      v45 = v42 | (v36 << 6);
      v46 = *(v91 + 56);
      v47 = (*(v91 + 48) + 16 * v45);
      v48 = v47[1];
      v95 = *v47;
      v96 = v45;
      v49 = *(v46 + 8 * v45);
      sub_100004E70(&qword_100201EA8, &qword_1001ACC30);
      v50 = static _DictionaryStorage.copy(original:)();
      v51 = v50;
      v52 = *(v49 + 64);
      v100 = v49 + 64;
      v53 = 1 << *(v49 + 32);
      v54 = v53 < 64 ? ~(-1 << v53) : -1;
      v55 = v54 & v52;
      v56 = (v53 + 63) >> 6;
      v111 = v50 + 64;
      v94 = v48;

      v113 = v49;

      v57 = 0;
      v112 = v51;
      if (v55)
      {
        break;
      }

LABEL_16:
      v60 = v57;
      while (1)
      {
        v57 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v57 >= v56)
        {
          break;
        }

        v61 = *(v100 + 8 * v57);
        ++v60;
        if (v61)
        {
          v58 = __clz(__rbit64(v61));
          v59 = (v61 - 1) & v61;
          goto LABEL_21;
        }
      }

      v80 = v96;
      *(v89 + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
      v81 = v90;
      v82 = (*(v90 + 48) + 16 * v80);
      v83 = v94;
      *v82 = v95;
      v82[1] = v83;
      *(*(v81 + 56) + 8 * v80) = v51;
      v84 = *(v81 + 16);
      v78 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v78)
      {
        goto LABEL_38;
      }

      *(v81 + 16) = v85;
      v36 = v93;
      v40 = v92;
      if (!v92)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v58 = __clz(__rbit64(v55));
      v59 = (v55 - 1) & v55;
LABEL_21:
      v62 = v58 | (v57 << 6);
      v63 = (*(v113 + 48) + 16 * v62);
      v64 = *v63;
      v65 = v63[1];
      v66 = *(*(v113 + 56) + v62);
      v114 = v59;
      v115 = v64;
      if (v105)
      {
        v67 = v97;
        if (v66)
        {
          *v101 = 0;
          v67 = v98;
        }

        (*v104)(v101, v67, v109);
      }

      else
      {
        v68 = v99;
        if (v66)
        {
          *v102 = 0;
          v68 = v98;
        }

        (*v104)(v102, v68, v109);
      }

      v69 = v107;
      CredentialPresentmentElementRequestInfo.init(intentToStore:)();
      v70 = v110;
      v71 = *(v110 + 32);
      v72 = v69;
      v73 = v108;
      v71(v41, v72, v108);
      *(v111 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      v74 = v112;
      v75 = (*(v112 + 6) + 16 * v62);
      *v75 = v115;
      v75[1] = v65;
      v76 = v73;
      v51 = v74;
      result = (v71)(*(v74 + 7) + *(v70 + 72) * v62, v41, v76);
      v77 = *(v51 + 2);
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        break;
      }

      *(v51 + 2) = v79;
      v55 = v114;
      if (!v114)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= v87)
      {

        sub_100099964(_swiftEmptyArrayStorage);
        return DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
      }

      v44 = *(v88 + 8 * v36);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v92 = (v44 - 1) & v44;
        goto LABEL_11;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100098440(uint64_t a1, uint64_t a2, char a3)
{
  v5 = ISO18013ReaderRequest.UseCase.documentSets.getter();
  v7[2] = a2;
  v8 = a3;
  sub_1000961E8(sub_1000998C0, v7, v5);

  ISO18013ReaderRequest.UseCase.mandatory.getter();
  return CredentialPresentmentRequest.UseCase.init(documentRequests:isMandatory:)();
}

uint64_t sub_1000984E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v21 = a4;
  v22 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  v12 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v19[1] = a2;
  result = ISO18013ReaderRequest.docRequests.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(result + 16))
  {
    (*(v13 + 16))(v15, result + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16, v12);

    ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
    (*(v13 + 8))(v15, v12);
    CBOREncodedCBOR.value.getter();
    (*(v9 + 8))(v11, v8);
    v18 = ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter();
    sub_100098798(v18 & 1, v23, v21);
    return (*(v20 + 8))(v7, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_100098798@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v138 = a1;
  v133[1] = a3;
  v157 = type metadata accessor for CredentialPresentmentElementRequestInfo.IntentToStore();
  v136 = *(v157 - 8);
  v4 = __chkstk_darwin(v157);
  v153 = (v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v152 = (v133 - v6);
  v156 = type metadata accessor for CredentialPresentmentElementRequestInfo();
  v158 = *(v156 - 8);
  v7 = __chkstk_darwin(v156);
  v155 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v154 = v133 - v9;
  v10 = sub_100004E70(&qword_100201E80, &qword_1001ACF40);
  __chkstk_darwin(v10 - 8);
  v139 = v133 - v11;
  v181 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v12 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for DocumentRequest.DataElement();
  v14 = *(v180 - 8);
  __chkstk_darwin(v180);
  v168 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004E70(&qword_100201E88, &qword_1001ACC10);
  __chkstk_darwin(v16 - 8);
  v134 = v133 - v17;
  v135 = v3;
  v18 = ISO18013ReaderRequest.ItemsRequest.alternativeElements.getter();
  sub_100004E70(&qword_100201E90, &qword_1001ACC18);
  result = static _DictionaryStorage.copy(original:)();
  v143 = result;
  v20 = 0;
  v21 = *(v18 + 64);
  v141 = v18 + 64;
  v144 = v18;
  v22 = 1 << *(v18 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v140 = (v22 + 63) >> 6;
  v167 = v12;
  v176 = (v12 + 8);
  v177 = v12 + 16;
  v179 = v14;
  v175 = (v14 + 32);
  v142 = result + 64;
  if (!v24)
  {
LABEL_6:
    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_83;
      }

      if (v20 >= v140)
      {
        break;
      }

      v27 = *(v141 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v145 = (v27 - 1) & v27;
        goto LABEL_11;
      }
    }

    v159 = ISO18013ReaderRequest.ItemsRequest.docType.getter();
    v151 = v77;
    v78 = v134;
    ISO18013ReaderRequest.ItemsRequest.requestInfo.getter();
    v79 = type metadata accessor for ISO18013ReaderRequest.DocRequestInfo();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) == 1)
    {
      sub_10000A0D4(v78, &qword_100201E88, &qword_1001ACC10);
      v81 = v138;
      v82 = v137;
      v83 = v136;
    }

    else
    {
      v84 = ISO18013ReaderRequest.DocRequestInfo.issuerIdentifiers.getter();
      (*(v80 + 8))(v78, v79);
      v81 = v138;
      v82 = v137;
      v83 = v136;
      if (v84)
      {
LABEL_46:
        v150 = sub_10010D848(v84);

        v85 = type metadata accessor for Locale.Region();
        (*(*(v85 - 8) + 56))(v139, 1, 1, v85);
        v86 = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
        sub_100004E70(&qword_100201EA0, &qword_1001ACC28);
        result = static _DictionaryStorage.copy(original:)();
        v87 = 0;
        v88 = *(v86 + 64);
        v160 = v86 + 64;
        v164 = v86;
        v89 = 1 << *(v86 + 32);
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        else
        {
          v90 = -1;
        }

        v91 = v90 & v88;
        v92 = (v89 + 63) >> 6;
        LODWORD(v176) = (v82 == 0) & v81;
        LODWORD(v172) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.willNotStore(_:);
        v175 = (v83 + 104);
        LODWORD(v170) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.mayStore(_:);
        LODWORD(v171) = enum case for CredentialPresentmentElementRequestInfo.IntentToStore.displayOnly(_:);
        v174 = (v158 + 32);
        v162 = result + 64;
        v163 = result;
        v161 = v92;
        if (!v91)
        {
LABEL_51:
          v94 = v87;
          while (1)
          {
            v87 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_84;
            }

            if (v87 >= v92)
            {

              return DocumentRequest.init(alternativeElements:docType:issuerIdentifiers:regionCode:namespaces:)();
            }

            v95 = *(v160 + 8 * v87);
            ++v94;
            if (v95)
            {
              v93 = __clz(__rbit64(v95));
              v165 = (v95 - 1) & v95;
              goto LABEL_56;
            }
          }
        }

LABEL_50:
        v93 = __clz(__rbit64(v91));
        v165 = (v91 - 1) & v91;
LABEL_56:
        v166 = v87;
        v96 = v93 | (v87 << 6);
        v97 = *(v164 + 56);
        v98 = (*(v164 + 48) + 16 * v96);
        v99 = v98[1];
        v168 = *v98;
        v169 = v96;
        v100 = *(v97 + 8 * v96);
        sub_100004E70(&qword_100201EA8, &qword_1001ACC30);
        v101 = static _DictionaryStorage.copy(original:)();
        v102 = *(v100 + 8);
        v173 = v100 + 64;
        v103 = 1 << v100[32];
        if (v103 < 64)
        {
          v104 = ~(-1 << v103);
        }

        else
        {
          v104 = -1;
        }

        v105 = v104 & v102;
        v106 = (v103 + 63) >> 6;
        v181 = v101;
        v177 = v101 + 64;
        v167 = v99;

        v178 = v100;

        v107 = 0;
        if (!v105)
        {
LABEL_61:
          v109 = v107;
          while (1)
          {
            v107 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              goto LABEL_82;
            }

            if (v107 >= v106)
            {

              v127 = v169;
              *(v162 + ((v169 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v169;
              v128 = v163;
              v129 = (*(v163 + 48) + 16 * v127);
              v130 = v167;
              *v129 = v168;
              v129[1] = v130;
              *(*(v128 + 56) + 8 * v127) = v181;
              v131 = *(v128 + 16);
              v69 = __OFADD__(v131, 1);
              v132 = v131 + 1;
              if (v69)
              {
                goto LABEL_88;
              }

              *(v128 + 16) = v132;
              v91 = v165;
              v87 = v166;
              v92 = v161;
              if (v165)
              {
                goto LABEL_50;
              }

              goto LABEL_51;
            }

            v110 = *&v173[8 * v107];
            ++v109;
            if (v110)
            {
              v108 = __clz(__rbit64(v110));
              v179 = (v110 - 1) & v110;
              goto LABEL_66;
            }
          }
        }

        while (1)
        {
          v108 = __clz(__rbit64(v105));
          v179 = (v105 - 1) & v105;
LABEL_66:
          v111 = v108 | (v107 << 6);
          v112 = *(v178 + 7);
          v113 = (*(v178 + 6) + 16 * v111);
          v114 = v113[1];
          v180 = *v113;
          if (v176)
          {
            v115 = v171;
            if (*(v112 + v111))
            {
              *v152 = 0;
              v115 = v170;
            }

            (*v175)(v152, v115, v157);
          }

          else
          {
            v116 = v172;
            if (*(v112 + v111))
            {
              *v153 = 0;
              v116 = v170;
            }

            (*v175)(v153, v116, v157);
          }

          v117 = v155;
          CredentialPresentmentElementRequestInfo.init(intentToStore:)();
          v118 = v158;
          v119 = *(v158 + 32);
          v120 = v154;
          v121 = v117;
          v122 = v156;
          v119(v154, v121, v156);
          *(v177 + ((v111 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v111;
          v123 = v181;
          v124 = (*(v181 + 48) + 16 * v111);
          *v124 = v180;
          v124[1] = v114;
          result = (v119)(*(v123 + 56) + *(v118 + 72) * v111, v120, v122);
          v125 = *(v123 + 16);
          v69 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v69)
          {
            goto LABEL_86;
          }

          *(v181 + 16) = v126;
          v105 = v179;
          if (!v179)
          {
            goto LABEL_61;
          }
        }
      }
    }

    v84 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

LABEL_5:
  v25 = __clz(__rbit64(v24));
  v145 = (v24 - 1) & v24;
LABEL_11:
  v146 = v20;
  v28 = v25 | (v20 << 6);
  v29 = *(v144 + 56);
  v30 = (*(v144 + 48) + 16 * v28);
  v31 = v30[1];
  v148 = *v30;
  v149 = v28;
  v32 = *(v29 + 8 * v28);
  sub_100004E70(&qword_100201E98, &qword_1001ACC20);
  v33 = static _DictionaryStorage.copy(original:)();
  v34 = v33;
  v35 = *(v32 + 64);
  v151 = v32 + 64;
  v36 = 1 << *(v32 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v166 = v37 & v35;
  v150 = (v36 + 63) >> 6;
  v159 = v33 + 64;
  v147 = v31;

  v162 = v32;

  v38 = 0;
  v160 = v34;
  v39 = v166;
  if (v166)
  {
    goto LABEL_15;
  }

  while (2)
  {
    v42 = v38;
    do
    {
      v38 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_81;
      }

      if (v38 >= v150)
      {

        v71 = v149;
        *(v142 + ((v149 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v149;
        v72 = v143;
        v73 = (*(v143 + 48) + 16 * v71);
        v74 = v147;
        *v73 = v148;
        v73[1] = v74;
        *(*(v72 + 56) + 8 * v71) = v34;
        v75 = *(v72 + 16);
        v69 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v69)
        {
          goto LABEL_87;
        }

        *(v72 + 16) = v76;
        v20 = v146;
        v24 = v145;
        if (!v145)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v43 = *(v151 + 8 * v38);
      ++v42;
    }

    while (!v43);
    v40 = __clz(__rbit64(v43));
    v41 = (v43 - 1) & v43;
LABEL_21:
    v44 = v40 | (v38 << 6);
    v165 = v38;
    v166 = v41;
    v45 = *(v162 + 56);
    v46 = (*(v162 + 48) + 16 * v44);
    v47 = v46[1];
    v163 = *v46;
    v164 = v44;
    v48 = *(v45 + 8 * v44);
    v49 = *(v48 + 16);
    if (v49)
    {
      v183 = _swiftEmptyArrayStorage;
      v161 = v47;

      result = sub_10010AA04(0, v49, 0);
      v50 = 0;
      v51 = v183;
      v170 = v48;
      v171 = v48 + 32;
      v169 = v49;
      while (v50 < *(v48 + 16))
      {
        v52 = *(v171 + 8 * v50);
        v53 = *(v52 + 16);
        if (v53)
        {
          v173 = v50;
          v174 = v51;
          v182 = _swiftEmptyArrayStorage;

          sub_10010AA44(0, v53, 0);
          v54 = v182;
          v55 = v168;
          v56 = v167[80];
          v172 = v52;
          v57 = v52 + ((v56 + 32) & ~v56);
          v58 = *(v167 + 9);
          v59 = *(v167 + 2);
          do
          {
            v60 = v178;
            v61 = v181;
            v59(v178, v57, v181);
            ISO18013ReaderRequest.ElementReference.namespace.getter();
            ISO18013ReaderRequest.ElementReference.elementIdentifier.getter();
            DocumentRequest.DataElement.init(namespace:identifier:)();
            (*v176)(v60, v61);
            v182 = v54;
            v63 = v54[2];
            v62 = v54[3];
            if (v63 >= v62 >> 1)
            {
              sub_10010AA44((v62 > 1), v63 + 1, 1);
              v55 = v168;
              v54 = v182;
            }

            v54[2] = v63 + 1;
            (*(v179 + 32))(v54 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v63, v55, v180);
            v57 += v58;
            --v53;
          }

          while (v53);

          v49 = v169;
          v48 = v170;
          v50 = v173;
          v51 = v174;
        }

        else
        {
          v54 = _swiftEmptyArrayStorage;
        }

        v183 = v51;
        v65 = v51[2];
        v64 = v51[3];
        if (v65 >= v64 >> 1)
        {
          result = sub_10010AA04((v64 > 1), v65 + 1, 1);
          v51 = v183;
        }

        ++v50;
        v51[2] = v65 + 1;
        v51[v65 + 4] = v54;
        if (v50 == v49)
        {

          result = v161;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      break;
    }

    v51 = _swiftEmptyArrayStorage;
LABEL_36:
    v66 = v164;
    *(v159 + ((v164 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v164;
    v34 = v160;
    v67 = (*(v160 + 48) + 16 * v66);
    *v67 = v163;
    v67[1] = result;
    *(*(v34 + 56) + 8 * v66) = v51;
    v68 = *(v34 + 16);
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    v38 = v165;
    if (!v69)
    {
      *(v34 + 16) = v70;
      v39 = v166;
      if (!v166)
      {
        continue;
      }

LABEL_15:
      v40 = __clz(__rbit64(v39));
      v41 = (v39 - 1) & v39;
      goto LABEL_21;
    }

    break;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

unint64_t sub_100099644(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000996BC(a1, a2, v4);
}

unint64_t sub_1000996BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100099774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000997BC()
{
  result = qword_100201E68;
  if (!qword_100201E68)
  {
    sub_100021ED0(&qword_100201E58, &qword_1001ACC00);
    sub_100099848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201E68);
  }

  return result;
}

unint64_t sub_100099848()
{
  result = qword_100201E70;
  if (!qword_100201E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201E70);
  }

  return result;
}

void *sub_1000998C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  v7[2] = *(v2 + 16);
  v8 = v4;
  result = sub_100096314(sub_10009991C, v7, v5);
  *a2 = result;
  return result;
}

unint64_t sub_100099964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E70(&qword_100201E90, &qword_1001ACC18);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100099644(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100099A68()
{
  v62 = type metadata accessor for ISO18013KnownNamespaces();
  v1 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MDLRequestValidator(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  defaultLogger()();
  v63 = v0;
  sub_10009A054(v0, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v55 = v6;
  v56 = v10;
  v57 = v7;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v66 = v17;
    *v16 = 136315138;
    v18 = DocumentRequest.docType.getter();
    v19 = v1;
    v21 = v20;
    sub_10009A0B8(v5);
    v22 = sub_10010150C(v18, v21, &v66);
    v1 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Validating doctype %s", v16, 0xCu);
    sub_100005090(v17);

    v54 = *(v57 + 8);
  }

  else
  {

    sub_10009A0B8(v5);
    v54 = *(v7 + 8);
  }

  v54(v12, v6);
  result = DocumentRequest.namespaces.getter();
  v24 = 0;
  v26 = result + 64;
  v25 = *(result + 64);
  v64 = result;
  v27 = 1 << *(result + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  v60 = enum case for ISO18013KnownNamespaces.iso18013_5_1(_:);
  v58 = (v1 + 8);
  v59 = (v1 + 104);
  if ((v28 & v25) != 0)
  {
    do
    {
LABEL_11:
      v32 = __clz(__rbit64(v29)) | (v24 << 6);
      v33 = *(v64 + 56);
      v34 = (*(v64 + 48) + 16 * v32);
      v35 = v34[1];
      v65 = *v34;
      v36 = *(v33 + 8 * v32);
      v37 = v61;
      v38 = v62;
      (*v59)(v61, v60, v62);

      v39 = ISO18013KnownNamespaces.rawValue.getter();
      v41 = v40;
      (*v58)(v37, v38);
      v42 = v39;
      v43 = v65;
      if (v42 == v65 && v41 == v35)
      {
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {

          goto LABEL_19;
        }
      }

      v46 = sub_10009A114(v36);

      if ((v46 & 1) == 0)
      {
        v47 = v56;
        defaultLogger()();

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v66 = v51;
          *v50 = 136315138;
          v52 = sub_10010150C(v43, v35, &v66);

          *(v50 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v48, v49, "Validation for namespace %s has failed", v50, 0xCu);
          sub_100005090(v51);
        }

        else
        {
        }

        v54(v47, v55);
        return 0;
      }

LABEL_19:
      v29 &= v29 - 1;
    }

    while (v29);
  }

  while (1)
  {
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v31 >= v30)
    {

      return 1;
    }

    v29 = *(v26 + 8 * v31);
    ++v24;
    if (v29)
    {
      v24 = v31;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MDLRequestValidator(uint64_t a1)
{
  result = qword_100201F20;
  if (!qword_100201F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MDLRequestValidator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009A0B8(uint64_t a1)
{
  v2 = type metadata accessor for MDLRequestValidator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009A114(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_10:

    v13 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();

    if ((v13 & 1) != 0 && __OFADD__(v10++, 1))
    {
      __break(1u);
LABEL_14:

      return 1;
    }

    v7 &= v7 - 1;
    if (v10 >= 3)
    {
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v15, v16, "Rejecting request because it contains %ld age over elements", v17, 0xCu);
      }

      (*(v19 + 8))(v4, v2);
      return 0;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009A368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRequest();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009A3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRequest();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10009A458(uint64_t a1)
{
  type metadata accessor for DocumentRequest();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DCPresentmentType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10009A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  DIPError.Code.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10008C18C(v5);
    return -5000;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for DIPError.Code.invalidStoredData(_:))
  {
    goto LABEL_7;
  }

  if (v14 == enum case for DIPError.Code.idcsUnauthorizedPartition(_:))
  {
LABEL_5:
    (*(v7 + 8))(v12, v6);
    return -5002;
  }

  if (v14 == enum case for DIPError.Code.idcsInvalidPayload(_:) || v14 == enum case for DIPError.Code.idcsMissingPresentmentKey(_:))
  {
    goto LABEL_7;
  }

  if (v14 == enum case for DIPError.Code.idcsPreconditionNotMet(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5003;
  }

  if (v14 == enum case for DIPError.Code.idcsInvalidPresentmentKey(_:))
  {
LABEL_7:
    (*(v7 + 8))(v12, v6);
    return -5004;
  }

  else if (v14 == enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionEstablishment(_:) || v14 == enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:) || v14 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5101;
  }

  else if (v14 == enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:) || v14 == enum case for DIPError.Code.idcsPresentmentRequestDecryptionFailed(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5103;
  }

  else if (v14 == enum case for DIPError.Code.idcsUnsupportedReaderRequestVersion(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5102;
  }

  else if (v14 == enum case for DIPError.Code.idcsSessionKeyNotDerived(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5005;
  }

  else if (v14 == enum case for DIPError.Code.idcsMissingReaderAuth(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5104;
  }

  else if (v14 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:) || v14 == enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:) || v14 == enum case for DIPError.Code.idcsUntrustedReaderAuthCertificate(_:) || v14 == enum case for DIPError.Code.idcsMissingReaderCommonName(_:) || v14 == enum case for DIPError.Code.idcsMissingReaderOrganization(_:) || v14 == enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:) || v14 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v14 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5105;
  }

  else if (v14 == enum case for DIPError.Code.idcsInvalidPresentmentSelection(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5106;
  }

  else
  {
    if (v14 != enum case for DIPError.Code.idcsMissingAuthDataInPresentmentSelection(_:))
    {
      v16 = *(v7 + 8);
      v16(v12, v6);
      v16(v10, v6);
      return -5000;
    }

    (*(v7 + 8))(v12, v6);
    return -5107;
  }
}

void *sub_10009AB90(uint64_t a1)
{
  v3 = type metadata accessor for PresentmentProposal(0);
  v23 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v22 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v20 = v1;
    v26 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v24 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v25 = *(a1 + 36);
    v21 = a1 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v24 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v11 = v22;
      sub_10009DE88(*(a1 + 56) + *(v23 + 72) * v7, v22, type metadata accessor for PresentmentProposal);
      v12 = *v11;
      sub_10009DEF0(v11, type metadata accessor for PresentmentProposal);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v24 + 8 * v10);
      if ((v13 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v7 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v21 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_1000468A0(v7, v25, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_1000468A0(v7, v25, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_10009AE54()
{
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v0 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v1 = SEPairingManager.init()();
  v2 = type metadata accessor for GenericPasswordKeychainWrapper();
  v19 = v2;
  v20 = &off_1001F4DE8;
  v18[0] = swift_allocObject();
  v3 = type metadata accessor for SyncableKeyStoreProvider();
  v4 = swift_allocObject();
  v5 = sub_1000129AC(v18, v2);
  __chkstk_darwin(v5);
  v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v2;
  v4[6] = &off_1001F4DE8;
  v4[2] = v9;

  sub_100005090(v18);
  v19 = v3;
  v20 = &off_1001F5068;
  v18[0] = v4;
  type metadata accessor for CredentialKeyManager();
  v10 = swift_allocObject();
  v11 = sub_1000129AC(v18, v3);
  __chkstk_darwin(v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1000F20BC(v0, v1, *v13, v10);

  sub_100005090(v18);
  return v15;
}

uint64_t sub_10009B0AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_100004E70(&qword_100202108, &qword_1001ACD20);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_100004E70(&qword_100202100, &qword_1001ACD18);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for PresentmentRequestInterpretation(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10009B2B0, 0, 0);
}

uint64_t sub_10009B2B0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentFlow interpretRequest", v4, 2u);
  }

  v6 = v1[19];
  v5 = v1[20];
  v7 = v1[18];
  v8 = v1[6];

  (*(v6 + 8))(v5, v7);
  v1[21] = *(v8 + 104);

  v9 = swift_task_alloc();
  v1[22] = v9;
  *v9 = v1;
  v9[1] = sub_10009B408;
  v10 = v1[17];
  v11 = v1[5];

  return sub_1000A402C(v10, v11);
}

uint64_t sub_10009B408()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10009B96C;
  }

  else
  {

    v2 = sub_10009B524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009B524()
{
  v1 = v0;
  v4 = v0 + 16;
  v3 = v0[16];
  v2 = v4[1];
  v6 = v1[14];
  v5 = v1[15];
  v7 = v1[6];
  sub_10009DE88(v2, v6, type metadata accessor for PresentmentRequestInterpretation);
  (*(v3 + 56))(v6, 0, 1, v5);
  v8 = OBJC_IVAR____TtC7idcredd15PresentmentFlow_requestInterpretation;
  swift_beginAccess();
  sub_10009DE18(v6, v7 + v8);
  swift_endAccess();
  v9._countAndFlagsBits = 0x6639646364353638;
  v10._object = 0x80000001001B79C0;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0xD00000000000004FLL;
  logMilestone(tag:description:)(v9, v10);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v44 = v1[12];
    v43 = v1[10];

    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v11 + 64;
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v39 = v11 + 72;
    v40 = v12;
    v41 = v1;
    v42 = v11 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = v15 >> 6;
      v20 = v1[12];
      v19 = v1[13];
      v45 = v16;
      v46 = *(v11 + 36);
      v21 = *(v43 + 48);
      v22 = v1[11];
      v23 = *(v11 + 56);
      v24 = (*(v11 + 48) + 16 * v15);
      v25 = v11;
      v26 = *v24;
      v27 = v24[1];
      v28 = type metadata accessor for PresentmentProposal(0);
      sub_10009DE88(v23 + *(*(v28 - 8) + 72) * v15, v19 + v21, type metadata accessor for PresentmentProposal);
      *v20 = v26;
      v11 = v25;
      *(v44 + 8) = v27;
      sub_10009DF50(v19 + v21, v20 + *(v43 + 48), type metadata accessor for PresentmentProposal);
      sub_10009DFB8(v20, v22);

      v29 = *(v43 + 48);
      v30 = *(v22 + v29);
      sub_10009DEF0(v22 + v29, type metadata accessor for PresentmentProposal);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v17 = 1 << *(v25 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v13 = v42;
      v31 = *(v42 + 8 * v47);
      if ((v31 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v46 != *(v25 + 36))
      {
        goto LABEL_26;
      }

      v32 = v31 & (-2 << (v15 & 0x3F));
      if (v32)
      {
        v17 = __clz(__rbit64(v32)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v40;
        v1 = v41;
      }

      else
      {
        v33 = v47 << 6;
        v18 = v40;
        v34 = (v39 + 8 * v47);
        v35 = v47 + 1;
        v1 = v41;
        while (v35 < (v17 + 63) >> 6)
        {
          v37 = *v34++;
          v36 = v37;
          v33 += 64;
          ++v35;
          if (v37)
          {
            result = sub_1000468A0(v15, v46, 0);
            v17 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_1000468A0(v15, v46, 0);
      }

LABEL_4:
      v16 = v45 + 1;
      v15 = v17;
      if (v45 + 1 == v18)
      {
        sub_10009DEF0(v1[17], type metadata accessor for PresentmentRequestInterpretation);

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_10009DEF0(v1[17], type metadata accessor for PresentmentRequestInterpretation);
LABEL_19:

    v38 = v1[1];

    return v38(_swiftEmptyArrayStorage);
  }

  return result;
}