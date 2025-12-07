uint64_t sub_10001E2FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_10001E9E0;
  }

  else
  {
    v4 = sub_10001E410;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_10001E410()
{
  if (!*(*(v0 + 320) + 16))
  {
    goto LABEL_5;
  }

  v1 = sub_100099644(0x797469746E656469, 0xE800000000000000);
  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 392);
  v4 = *(*(*(v0 + 320) + 56) + 8 * v1);
  *(v0 + 336) = v4;

  if (v3)
  {

    v5 = 1;
LABEL_6:
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "hasIdentityCredential = %{BOOL}d", v8, 8u);
    }

    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = *(v0 + 272);

    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    return v12(v5);
  }

  v14 = *(v4 + 16);
  *(v0 + 344) = v14;
  *(v0 + 352) = 0;
  result = *(v0 + 336);
  if (!v14)
  {
LABEL_5:

    v5 = 0;
    goto LABEL_6;
  }

  if (result[2])
  {
    v15 = result[5];
    *(v0 + 360) = v15;
    v16 = result[4];

    v17 = swift_task_alloc();
    *(v0 + 368) = v17;
    *v17 = v0;
    v17[1] = sub_10001E65C;

    return sub_100146280(v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E65C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {

    v5 = sub_10001EA58;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_10001E7B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001E7B4()
{
  v1 = v0[48];
  v2 = v0[32];
  v3 = [v1 credentialState];

  if (v3 == v2 || (v4 = v0[43], v5 = v0[44] + 1, v0[44] = v5, result = v0[42], v5 == v4))
  {

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v3 == v2;
      _os_log_impl(&_mh_execute_header, v7, v8, "hasIdentityCredential = %{BOOL}d", v9, 8u);
    }

    v10 = v3 == v2;
    v12 = v0[35];
    v11 = v0[36];
    v13 = v0[34];

    (*(v12 + 8))(v11, v13);

    v14 = v0[1];

    return v14(v10);
  }

  else if (v5 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v15 = result + 16 * v5;
    v16 = *(v15 + 40);
    v0[45] = v16;
    v17 = *(v15 + 32);

    v18 = swift_task_alloc();
    v0[46] = v18;
    *v18 = v0;
    v18[1] = sub_10001E65C;

    return sub_100146280(v17, v16);
  }

  return result;
}

uint64_t sub_10001E9E0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10001EA58()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10001EAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for MobileAssetType();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[35] = v9;
  *v9 = v2;
  v9[1] = sub_10001EDCC;

  return sub_10001DD1C(0, 1, a2);
}

uint64_t sub_10001EDCC(char a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_10001FB00;
  }

  else
  {
    *(v4 + 328) = a1 & 1;
    v5 = sub_10001EF20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001EF20(uint64_t a1)
{
  if (*(v1 + 328))
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "skipping clearing as we still have identity credential ", v4, 2u);
    }

    v5 = *(v1 + 248);
    v6 = *(v1 + 208);
    v7 = *(v1 + 216);

    (*(v7 + 8))(v5, v6);
    sub_10002055C("Finished clear Cached Assets");

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Proceeding with clearing Cached MobileAssets", v12, 2u);
    }

    v13 = *(v1 + 272);
    v14 = *(v1 + 208);
    v15 = *(v1 + 216);
    v17 = *(v1 + 192);
    v16 = *(v1 + 200);
    v18 = *(v1 + 184);

    v19 = *(v15 + 8);
    *(v1 + 296) = v19;
    v19(v13, v14);
    v20 = type metadata accessor for MobileAssetManager();
    swift_allocObject();
    v21 = MobileAssetManager.init()();
    *(v1 + 64) = v21;
    *(v1 + 304) = v21;
    (*(v17 + 104))(v16, enum case for MobileAssetType.coreidvassets(_:), v18);
    v22 = swift_task_alloc();
    *(v1 + 312) = v22;
    *v22 = v1;
    v22[1] = sub_10001F29C;
    v23 = *(v1 + 200);

    return MobileAssetManagerProtocol.evictAssets(type:)(v23, v20, &protocol witness table for MobileAssetManager);
  }
}

uint64_t sub_10001F29C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[24] + 8))(v2[25], v2[23]);

  if (v0)
  {
    v3 = sub_10001FDC4;
  }

  else
  {
    v3 = sub_10001F42C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001F42C(uint64_t a1)
{
  v71 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[37];
  v6 = v1[33];
  v7 = v1[26];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purged MobileAssets", v8, 2u);
  }

  v5(v6, v7);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:5 inDomains:1];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v11 + 16))
  {
    v12 = v1[19];
    v13 = *(v12 + 16);
    v13(v1[22], v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v1[18]);

    URL.appendingPathComponent(_:)();
    if (URL.isFileOnDisk.getter())
    {
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      v1[9] = 0;
      v17 = [v9 removeItemAtURL:v15 error:v1 + 9];

      v18 = v1[9];
      v19 = v1[18];
      if (v17)
      {
        v21 = v1[20];
        v20 = v1[21];
        v22 = v18;
        defaultLogger()();
        v13(v21, v20, v19);
        v23 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();
        v24 = os_log_type_enabled(v23, v67);
        v25 = v1[37];
        v26 = v1[32];
        v27 = v1[26];
        v28 = v1[21];
        v68 = v1[22];
        v30 = v1[19];
        v29 = v1[20];
        v31 = v1[18];
        if (v24)
        {
          v66 = v1[37];
          v32 = swift_slowAlloc();
          v65 = v28;
          v33 = swift_slowAlloc();
          v70 = v33;
          *v32 = 136315138;
          v63 = v27;
          v64 = v26;
          v34 = URL.debugDescription.getter();
          v36 = v35;
          v37 = *(v30 + 8);
          v37(v29, v31);
          v38 = sub_10010150C(v34, v36, &v70);

          *(v32 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v23, v67, "Removed cached file at %s", v32, 0xCu);
          sub_100005090(v33);

          v66(v64, v63);
          v37(v65, v31);
          v37(v68, v31);
        }

        else
        {

          v62 = *(v30 + 8);
          v62(v29, v31);
          v25(v26, v27);
          v62(v28, v31);
          v62(v68, v31);
        }
      }

      else
      {
        v47 = v1[21];
        v46 = v1[22];
        v48 = v1[19];
        v49 = v18;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v50 = *(v48 + 8);
        v50(v47, v19);
        v50(v46, v19);
        defaultLogger()();
        swift_errorRetain();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.info.getter();

        v53 = os_log_type_enabled(v51, v52);
        v54 = v1[37];
        v55 = v1[28];
        v56 = v1[26];
        if (v53)
        {
          v69 = v1[28];
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v70 = v58;
          *v57 = 136315138;
          swift_getErrorValue();
          v59 = Error.localizedDescription.getter();
          v61 = sub_10010150C(v59, v60, &v70);

          *(v57 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring error removing cached file: %s", v57, 0xCu);
          sub_100005090(v58);

          v54(v69, v56);
        }

        else
        {

          v54(v55, v56);
        }
      }
    }

    else
    {
      v40 = v1[21];
      v39 = v1[22];
      v41 = v1[18];
      v42 = v1[19];

      v43 = *(v42 + 8);
      v43(v40, v41);
      v43(v39, v41);
    }
  }

  else
  {
  }

  sub_10002055C("Finished clear Cached Assets");

  v44 = v1[1];

  return v44();
}

uint64_t sub_10001FB00()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[16];
  v8 = v0[17];
  v9 = v0[26];
  v4 = v0[15];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.mobileAssetClearCacheFailure(_:), v0[12]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100020698(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v3 + 16))(v5, v8, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v9);
  (*(v3 + 8))(v8, v4);

  sub_10002055C("Finished clear Cached Assets");

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001FDC4(uint64_t a1)
{
  v77 = v1;
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v72 = v1[29];
    v73 = v1[37];
    v4 = v1[26];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v76 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10010150C(v7, v8, &v76);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ignoring error clearing MobileAssets: %s", v5, 0xCu);
    sub_100005090(v6);

    v73(v72, v4);
  }

  else
  {
    v10 = v1[37];
    v11 = v1[29];
    v12 = v1[26];

    v10(v11, v12);
  }

  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:5 inDomains:1];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v15 + 16))
  {
    v16 = v1[19];
    v17 = *(v16 + 16);
    v17(v1[22], v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v1[18]);

    URL.appendingPathComponent(_:)();
    if (URL.isFileOnDisk.getter())
    {
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      v1[9] = 0;
      v21 = [v13 removeItemAtURL:v19 error:v1 + 9];

      v22 = v1[9];
      v23 = v1[18];
      if (v21)
      {
        v25 = v1[20];
        v24 = v1[21];
        v26 = v22;
        defaultLogger()();
        v17(v25, v24, v23);
        v27 = Logger.logObject.getter();
        v71 = static os_log_type_t.info.getter();
        v28 = os_log_type_enabled(v27, v71);
        v29 = v1[37];
        v30 = v1[32];
        v31 = v1[26];
        v32 = v1[21];
        v74 = v1[22];
        v34 = v1[19];
        v33 = v1[20];
        v35 = v1[18];
        if (v28)
        {
          v70 = v1[37];
          v36 = swift_slowAlloc();
          v69 = v32;
          v37 = swift_slowAlloc();
          v76 = v37;
          *v36 = 136315138;
          v67 = v31;
          v68 = v30;
          v38 = URL.debugDescription.getter();
          v40 = v39;
          v41 = *(v34 + 8);
          v41(v33, v35);
          v42 = sub_10010150C(v38, v40, &v76);

          *(v36 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v27, v71, "Removed cached file at %s", v36, 0xCu);
          sub_100005090(v37);

          v70(v68, v67);
          v41(v69, v35);
          v41(v74, v35);
        }

        else
        {

          v66 = *(v34 + 8);
          v66(v33, v35);
          v29(v30, v31);
          v66(v32, v35);
          v66(v74, v35);
        }
      }

      else
      {
        v51 = v1[21];
        v50 = v1[22];
        v52 = v1[19];
        v53 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v54 = *(v52 + 8);
        v54(v51, v23);
        v54(v50, v23);
        defaultLogger()();
        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();

        v57 = os_log_type_enabled(v55, v56);
        v58 = v1[37];
        v59 = v1[28];
        v60 = v1[26];
        if (v57)
        {
          v75 = v1[28];
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v76 = v62;
          *v61 = 136315138;
          swift_getErrorValue();
          v63 = Error.localizedDescription.getter();
          v65 = sub_10010150C(v63, v64, &v76);

          *(v61 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v55, v56, "Ignoring error removing cached file: %s", v61, 0xCu);
          sub_100005090(v62);

          v58(v75, v60);
        }

        else
        {

          v58(v59, v60);
        }
      }
    }

    else
    {
      v44 = v1[21];
      v43 = v1[22];
      v45 = v1[18];
      v46 = v1[19];

      v47 = *(v46 + 8);
      v47(v44, v45);
      v47(v43, v45);
    }
  }

  else
  {
  }

  sub_10002055C("Finished clear Cached Assets");

  v48 = v1[1];

  return v48();
}

uint64_t sub_10002055C(const char *a1)
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

uint64_t sub_100020698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000206E0()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

void *sub_100020718(uint64_t a1)
{
  v2 = type metadata accessor for AnyCodable();
  __chkstk_darwin(v2 - 8);
  v72 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ISO18013IssuerSignedItem();
  v4 = *(v69 - 8);
  v5 = __chkstk_darwin(v69);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  v10 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  sub_100004E70(&qword_100200520, &unk_1001AB0B0);
  result = static _DictionaryStorage.copy(original:)();
  v15 = result;
  v60 = a1;
  v16 = *(a1 + 64);
  v56 = a1 + 64;
  v17 = *(a1 + 32);
  v18 = 0;
  v19 = 1 << v17;
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v55 = (v19 + 63) >> 6;
  v58 = v11;
  v59 = result + 8;
  v57 = result;
  v73 = v11 + 16;
  v70 = v9;
  v71 = (v11 + 8);
  v77 = v4 + 8;
  v67 = v13;
  v68 = v7;
  v22 = (v4 + 8);
  v23 = v69;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v25 = (v21 - 1) & v21;
LABEL_10:
      v28 = v24 | (v18 << 6);
      v64 = v25;
      v29 = *(v60 + 56);
      v30 = (*(v60 + 48) + 16 * v28);
      v31 = v30[1];
      v65 = *v30;
      v66 = v28;
      v32 = *(v29 + 8 * v28);
      v33 = *(v32 + 16);
      if (v33)
      {
        v63 = v18;
        v80 = _swiftEmptyArrayStorage;
        v62 = v31;
        v34 = v32;

        specialized ContiguousArray.reserveCapacity(_:)();
        v76 = sub_100020BF0();
        v35 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v61 = v34;
        v36 = v34 + v35;
        v37 = *(v58 + 72);
        v74 = *(v58 + 16);
        v75 = v37;
        do
        {
          v79 = v33;
          v38 = v67;
          v74(v67, v36, v10);
          v39 = v70;
          CBOREncodedCBOR.value.getter();
          v78 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v41 = v40;
          v42 = v10;
          v43 = *v22;
          (*v22)(v39, v23);
          v44 = v68;
          CBOREncodedCBOR.value.getter();
          v45 = v72;
          ISO18013IssuerSignedItem.elementValue.getter();
          v43(v44, v23);
          v10 = v42;
          sub_10019BFAC(v78, v41, v45);
          v46 = v38;
          v47 = v79;
          (*v71)(v46, v42);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v36 += v75;
          v33 = v47 - 1;
        }

        while (v33);

        v48 = v80;
        v15 = v57;
        result = v62;
        v18 = v63;
      }

      else
      {

        v48 = _swiftEmptyArrayStorage;
      }

      v49 = v66;
      *(v59 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      v50 = (v15[6] + 16 * v49);
      *v50 = v65;
      v50[1] = result;
      *(v15[7] + 8 * v49) = v48;
      v51 = v15[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        break;
      }

      v15[2] = v53;
      v21 = v64;
      if (!v64)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v18;
    while (1)
    {
      v18 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v18 >= v55)
      {
        return v15;
      }

      v27 = *(v56 + 8 * v18);
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100020BF0()
{
  result = qword_100200528;
  if (!qword_100200528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100200528);
  }

  return result;
}

unint64_t sub_100020C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013IssuerSignedItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v7 = *(v57 - 8);
  v8 = __chkstk_darwin(v57);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v49 - v10;
  v50 = sub_10010D040(_swiftEmptyArrayStorage);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v56 = v14 & *(a2 + 64);
  v15 = (v13 + 63) >> 6;
  v64 = (v5 + 8);
  v65 = v7 + 16;
  v59 = (v7 + 8);
  v67 = v7;
  v63 = (v7 + 32);

  v17 = 0;
  v73 = 0;
  v60 = v11;
  v54 = a2;
  v53 = a1;
  v52 = a2 + 64;
  v51 = v15;
LABEL_6:
  v18 = v56;
  while (v18)
  {
    v19 = v18;
LABEL_13:
    v18 = (v19 - 1) & v19;
    if (*(a1 + 16))
    {
      v56 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v17 << 6);
      v22 = (*(a2 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(a2 + 56) + 8 * v21);

      v55 = v23;
      v26 = sub_100099644(v23, v24);
      if ((v27 & 1) == 0)
      {

LABEL_5:

        goto LABEL_6;
      }

      v28 = *(*(a1 + 56) + 8 * v26);
      v29 = *(v25 + 16);
      v70 = v28;

      v69 = v29;
      if (v29)
      {
        v30 = 0;
        v31 = _swiftEmptyArrayStorage;
        v32 = v57;
        v33 = v4;
        v58 = v4;
        v61 = v25;
        v62 = v24;
        while (v30 < *(v25 + 16))
        {
          v72 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v71 = *(v67 + 72);
          (*(v67 + 16))(v11, v25 + v72 + v71 * v30, v32);
          v34 = v68;
          v35 = v32;
          CBOREncodedCBOR.value.getter();
          v36 = ISO18013IssuerSignedItem.elementIdentifier.getter();
          v37 = v11;
          v39 = v38;
          v40 = (*v64)(v34, v33);
          v74[0] = v36;
          v74[1] = v39;
          __chkstk_darwin(v40);
          *(&v49 - 2) = v74;
          v41 = v73;
          LOBYTE(v36) = sub_100120CF8(sub_10000ED28, (&v49 - 4), v70);
          v73 = v41;

          if (v36)
          {
            v42 = *v63;
            (*v63)(v66, v37, v35);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v75 = v31;
            if (isUniquelyReferenced_nonNull_native)
            {
              v32 = v35;
            }

            else
            {
              sub_10010A758(0, v31[2] + 1, 1);
              v32 = v57;
              v31 = v75;
            }

            v25 = v61;
            v24 = v62;
            v44 = v72;
            v46 = v31[2];
            v45 = v31[3];
            if (v46 >= v45 >> 1)
            {
              sub_10010A758((v45 > 1), v46 + 1, 1);
              v32 = v57;
              v31 = v75;
            }

            v31[2] = v46 + 1;
            result = (v42)(v31 + v44 + v46 * v71, v66, v32);
            v33 = v58;
            v11 = v60;
          }

          else
          {
            result = (*v59)(v37, v35);
            v32 = v35;
            v11 = v37;
            v25 = v61;
            v24 = v62;
          }

          if (v69 == ++v30)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_33;
      }

      v31 = _swiftEmptyArrayStorage;
      v33 = v4;
LABEL_28:
      v4 = v33;

      if (!v31[2])
      {

        a2 = v54;
        a1 = v53;
        v12 = v52;
        v15 = v51;
        goto LABEL_5;
      }

      v47 = v50;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v74[0] = v47;
      sub_1001217B4(v31, v55, v24, v48);

      v50 = v74[0];
      a2 = v54;
      a1 = v53;
      v12 = v52;
      v15 = v51;
      goto LABEL_6;
    }
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v50;
    }

    v19 = *(v12 + 8 * v20);
    ++v17;
    if (v19)
    {
      v17 = v20;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

double sub_100021208()
{
  type metadata accessor for EnvironmentManager();
  v0 = swift_allocObject();
  sub_100004E70(&qword_1002005D0, &unk_1001AB190);
  v1 = swift_allocObject();
  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 60) = 0u;
  *(v0 + 16) = v1;
  qword_100205C80 = v0;
  return result;
}

uint64_t sub_100021274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v11 = a1[5];
    v10 = a1[6];
    v13 = a1[3];
    v12 = a1[4];
    v16 = a1 + 1;
    v15 = a1[1];
    v14 = v16[1];
    *a2 = v9;
    a2[1] = v15;
    a2[2] = v14;
    a2[3] = v13;
    a2[4] = v12;
    a2[5] = v11;
    a2[6] = v10;

    sub_10002159C(v15, v14);
    sub_10002159C(v13, v12);
    return sub_10002159C(v11, v10);
  }

  else
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v22[1] = v2;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No environment exists, creating new environment", v20, 2u);
    }

    (*(v6 + 8))(v8, v5);
    type metadata accessor for IDCSCoreDataStore();
    swift_allocObject();
    v21 = sub_10005917C(0);
    *a1 = v21;
    *(a1 + 1) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 5) = 0u;
    *a2 = v21;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 5) = 0u;
  }
}

uint64_t sub_100021468()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000214C4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000214DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000214F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100021540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002159C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000215BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v4 + 72));
  sub_10002171C((v4 + 16), v13);
  os_unfair_lock_unlock((v4 + 72));
  v5 = v13[1];
  v7 = v13[2];
  v6 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  sub_1000215AC(v14, v15);

  sub_10000ED48(v5, v7);
  sub_10000ED48(v6, v8);
  v11 = sub_10000ED48(v9, v10);
  if (v6)
  {
    v6(v11);

    return sub_10000ED48(v6, v8);
  }

  else
  {
    swift_allocObject();
    result = AppleIDVManager.init()();
    a1[3] = v2;
    a1[4] = &protocol witness table for AppleIDVManager;
    *a1 = result;
  }

  return result;
}

BOOL sub_100021738(uint64_t a1, unint64_t a2)
{
  v2 = sub_100004E70(&qword_1002005E8, &qword_1001AB1A8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  v9 = sub_100004E70(&qword_1002005F0, &qword_1001AB1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  Regex.init(_regexString:version:)();
  sub_100021E6C();
  dispatch thunk of RegexComponent.regex.getter();
  String.subscript.getter();
  Regex.wholeMatch(in:)();

  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  v13 = sub_100004E70(&qword_100200600, &qword_1001AB1B8);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_10000A0D4(v11, &qword_1002005F0, &qword_1001AB1B0);
  return v14;
}

void sub_100021A34(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DIPError.Code();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004E70(&qword_1002005D8, &qword_1001AB1A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = SecCertificateRef.commonName()();
  countAndFlagsBits = v8.value._countAndFlagsBits;
  object = v8.value._object;
  v11 = SecCertificateRef.organization()();
  v26 = v11.value._countAndFlagsBits;
  v29 = v11.value._object;
  v12 = SecCertificateRef.organizationalUnit()();
  v25 = v12.value._countAndFlagsBits;
  v34 = v12.value._object;
  if (v8.value._object)
  {

    v13 = sub_100021738(v8.value._countAndFlagsBits, v8.value._object);

    if (v13)
    {

      object = 0xEF766F672E736864;
      countAndFlagsBits = 0x2E6173742E6C646DLL;
    }
  }

  v14 = [objc_opt_self() standardUserDefaults];
  v15._countAndFlagsBits = 0xD00000000000001DLL;
  v15._object = 0x80000001001B2870;
  v16 = NSUserDefaults.internalString(forKey:)(v15);

  if (!v16.value._object)
  {
    goto LABEL_11;
  }

  v17 = (v16.value._object >> 56) & 0xF;
  if ((v16.value._object & 0x2000000000000000) == 0)
  {
    v17 = v16.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    if (!object)
    {
      goto LABEL_17;
    }

    v32 = countAndFlagsBits;
    v33 = object;
    v30 = 0x61696D656469;
    v31 = 0xE600000000000000;
    v18 = type metadata accessor for Locale();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_100021E18();
    StringProtocol.range<A>(of:options:range:locale:)();
    v20 = v19;
    sub_10000A0D4(v7, &qword_1002005D8, &qword_1001AB1A0);
    if ((v20 & 1) == 0)
    {

      object = 0xE600000000000000;
      countAndFlagsBits = 0x61696D656469;
    }
  }

  else
  {
LABEL_11:
    if (!object)
    {
      goto LABEL_17;
    }
  }

  v21 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v21 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    *a1 = countAndFlagsBits;
    a1[1] = object;
    v22 = v29;
    a1[2] = v26;
    a1[3] = v22;
    v23 = v34;
    a1[4] = v25;
    a1[5] = v23;
    return;
  }

LABEL_17:

  (*(v27 + 104))(v4, enum case for DIPError.Code.idcsMissingReaderCommonName(_:), v28);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

unint64_t sub_100021E18()
{
  result = qword_1002005E0;
  if (!qword_1002005E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002005E0);
  }

  return result;
}

unint64_t sub_100021E6C()
{
  result = qword_1002005F8;
  if (!qword_1002005F8)
  {
    sub_100021ED0(&qword_1002005E8, &qword_1001AB1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002005F8);
  }

  return result;
}

uint64_t sub_100021ED0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100021F18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100021F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100021F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100021FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v163 = type metadata accessor for DIPError();
  v159 = *(v163 - 8);
  __chkstk_darwin(v163);
  v158 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError.Code();
  v160 = *(v8 - 8);
  v161 = v8;
  __chkstk_darwin(v8);
  v162 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for SHA256();
  v10 = *(v157 - 8);
  __chkstk_darwin(v157);
  v164 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SHA256Digest();
  v12 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v166 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v165 = &v131 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v131 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v131 - v24;
  __chkstk_darwin(v23);
  v30 = &v131 - v29;
  if (a4 == 1)
  {
    v150 = v28;
    v153 = v27;
    v149 = v26;
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "CredentialDecryptionKeyFinder finding ECv3 key", v39, 2u);
    }

    v40 = v25;
    v34 = *(v166 + 1);
    v34(v40, v14);
    v35 = sub_100023A14(a2, a3);
  }

  else
  {
    if (a4 != 2)
    {
      defaultLogger()();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "CredentialDecryptionKeyFinder payload does not require a decryption key; skipping key search", v52, 2u);
      }

      (*(v166 + 1))(v22, v14);
      return 0;
    }

    v150 = v28;
    v153 = v27;
    v149 = v26;
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "CredentialDecryptionKeyFinder finding HPKE key", v33, 2u);
    }

    v34 = *(v166 + 1);
    v34(v30, v14);
    v35 = sub_1000233C4(a2, a3);
  }

  v41 = v35;
  v42 = v36;
  sub_10005966C();
  v54 = v43;
  v136 = v42;
  v139 = v41;
  v137 = 0;
  if (v43 >> 62)
  {
    goto LABEL_95;
  }

  v55 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v164;
  if (v55)
  {
    while (1)
    {
      v57 = 0;
      v147 = v54 & 0xC000000000000001;
      v146 = v54 & 0xFFFFFFFFFFFFFF8;
      v142 = (v10 + 8);
      v141 = (v12 + 8);
      v148 = v166 + 8;
      v58 = !v139 && v136 == 0xC000000000000000;
      v59 = !v58;
      v134 = v59;
      v140 = v136 >> 62;
      v60 = __OFSUB__(HIDWORD(v139), v139);
      v132 = v60;
      v131 = HIDWORD(v139) - v139;
      v133 = BYTE6(v136);
      *&v44 = 136315394;
      v135 = v44;
      v144 = v14;
      v143 = v34;
      v145 = v54;
      v138 = v55;
      while (v147)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v157;
        v62 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:

          (*(v160 + 104))(v162, enum case for DIPError.Code.invalidStoredData(_:), v161);
          sub_10002688C(_swiftEmptyArrayStorage);
          sub_10002415C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_1000092BC(v139, v136);
          (*(v160 + 104))(v162, enum case for DIPError.Code.internalError(_:), v161);
          swift_errorRetain();
          sub_10002688C(_swiftEmptyArrayStorage);
          v45 = v158;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_10002415C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v46 = v163;
          swift_allocError();
          v47 = v159;
          (*(v159 + 16))(v48, v45, v46);
          v49 = v153;
          defaultLogger()();
          DIPLogError(_:message:log:)();

          v34(v49, v14);
          (*(v47 + 8))(v45, v46);

          return 0;
        }

LABEL_31:
        v63 = [v61 publicKey];
        if (!v63)
        {
          goto LABEL_82;
        }

        v64 = v63;
        v151 = v62;
        v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v66;

        v54 = sub_10002415C(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
        dispatch thunk of HashFunction.init()();
        v67 = v10 >> 62;
        v154 = v65;
        v152 = v61;
        if ((v10 >> 62) > 1)
        {
          if (v67 == 2)
          {
            v68 = *(v65 + 16);
            v69 = *(v65 + 24);

            if (__DataStorage._bytes.getter() && __OFSUB__(v68, __DataStorage._offset.getter()))
            {
              goto LABEL_102;
            }

            if (__OFSUB__(v69, v68))
            {
              goto LABEL_92;
            }

LABEL_44:
            __DataStorage._length.getter();
            v70 = v164;
            dispatch thunk of HashFunction.update(bufferPointer:)();
            v71 = v154;
            sub_1000092BC(v154, v10);
            goto LABEL_47;
          }

          memset(v167, 0, 14);
        }

        else
        {
          if (v67)
          {
            if (v65 >> 32 < v65)
            {
              goto LABEL_91;
            }

            if (__DataStorage._bytes.getter() && __OFSUB__(v65, __DataStorage._offset.getter()))
            {
              goto LABEL_103;
            }

            goto LABEL_44;
          }

          v167[0] = v65;
          LOWORD(v167[1]) = v10;
          BYTE2(v167[1]) = BYTE2(v10);
          BYTE3(v167[1]) = BYTE3(v10);
          BYTE4(v167[1]) = BYTE4(v10);
          BYTE5(v167[1]) = BYTE5(v10);
        }

        v70 = v56;
        dispatch thunk of HashFunction.update(bufferPointer:)();
        sub_1000092BC(v65, v10);
        v71 = v65;
LABEL_47:
        v72 = v155;
        dispatch thunk of HashFunction.finalize()();
        v73 = v70;
        (*v142)(v70, v12);
        sub_10002415C(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
        v74 = v156;
        v75 = Digest.data.getter();
        v54 = v76;
        (*v141)(v72, v74);
        v12 = v165;
        defaultLogger()();
        sub_100009708(v71, v10);
        sub_100009708(v75, v54);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        sub_1000092BC(v71, v10);
        sub_1000092BC(v75, v54);
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v167[0] = swift_slowAlloc();
          *v79 = v135;
          v80 = Data.base16EncodedString()();
          v81 = sub_10010150C(v80._countAndFlagsBits, v80._object, v167);

          *(v79 + 4) = v81;
          *(v79 + 12) = 2080;
          v82 = Data.base16EncodedString()();
          v12 = sub_10010150C(v82._countAndFlagsBits, v82._object, v167);
          v56 = v164;

          *(v79 + 14) = v12;
          _os_log_impl(&_mh_execute_header, v77, v78, "Testing potential decryption key with public key %s, hash %s", v79, 0x16u);
          swift_arrayDestroy();
          v14 = v144;

          v34 = v143;

          v34(v165, v14);
          v83 = v140;
        }

        else
        {

          v34 = v143;
          v84 = v144;
          (v143)(v12);
          v83 = v140;
          v56 = v73;
          v14 = v84;
        }

        v85 = v54 >> 62;
        if (v54 >> 62 == 3)
        {
          v86 = 0;
          if (v75)
          {
            v87 = 0;
          }

          else
          {
            v87 = v54 == 0xC000000000000000;
          }

          v89 = !v87 || v83 < 3;
          if (((v89 | v134) & 1) == 0)
          {
            v54 = 0xC000000000000000;
            goto LABEL_84;
          }

LABEL_68:
          if (v83 <= 1)
          {
            goto LABEL_69;
          }

          goto LABEL_73;
        }

        if (v85 == 2)
        {
          v91 = *(v75 + 16);
          v90 = *(v75 + 24);
          v86 = v90 - v91;
          if (__OFSUB__(v90, v91))
          {
            goto LABEL_101;
          }

          goto LABEL_68;
        }

        if (v85 == 1)
        {
          if (__OFSUB__(HIDWORD(v75), v75))
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
          }

          v86 = HIDWORD(v75) - v75;
          if (v83 <= 1)
          {
LABEL_69:
            v92 = v133;
            if (v83)
            {
              v92 = v131;
              if (v132)
              {
                goto LABEL_94;
              }
            }

            goto LABEL_75;
          }
        }

        else
        {
          v86 = BYTE6(v54);
          if (v83 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_73:
        if (v83 != 2)
        {
          if (!v86)
          {
            goto LABEL_83;
          }

          goto LABEL_27;
        }

        v94 = *(v139 + 16);
        v93 = *(v139 + 24);
        v95 = __OFSUB__(v93, v94);
        v92 = v93 - v94;
        if (v95)
        {
          goto LABEL_93;
        }

LABEL_75:
        if (v86 == v92)
        {
          if (v86 < 1 || (v96 = v139, v97 = v136, sub_100009708(v139, v136), v98 = v96, v99 = v137, v100 = sub_100100288(v75, v54, v98, v97), v137 = v99, (v100 & 1) != 0))
          {
LABEL_83:
            v86 = v75;
LABEL_84:

            v101 = v149;
            defaultLogger()();
            v102 = v139;
            v103 = v136;
            sub_100009708(v139, v136);
            v104 = v152;
            v149 = v101;
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.debug.getter();
            v166 = v104;

            sub_1000092BC(v102, v103);
            LODWORD(v165) = v106;
            v107 = v106;
            v108 = v105;
            if (os_log_type_enabled(v105, v107))
            {
              v109 = swift_slowAlloc();
              v167[0] = swift_slowAlloc();
              *v109 = v135;
              v110 = [v166 identifier];
              if (v110)
              {
                v111 = v110;
                v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v114 = v113;
              }

              else
              {
                v114 = 0xE500000000000000;
                v112 = 0x3E6C696E3CLL;
              }

              v115 = sub_10010150C(v112, v114, v167);

              *(v109 + 4) = v115;
              *(v109 + 12) = 2080;
              v116 = v139;
              v117 = v136;
              v118 = Data.base16EncodedString()();
              v119 = sub_10010150C(v118._countAndFlagsBits, v118._object, v167);

              *(v109 + 14) = v119;
              _os_log_impl(&_mh_execute_header, v108, v165, "CredentialDecryptionKeyFinder found key %s with matching identifier %s)", v109, 0x16u);
              swift_arrayDestroy();

              sub_1000092BC(v116, v117);
              sub_1000092BC(v86, v54);
              sub_1000092BC(v154, v10);
              v143(v149, v144);
              return v166;
            }

            else
            {
              sub_1000092BC(v154, v10);
              sub_1000092BC(v86, v54);
              sub_1000092BC(v102, v103);

              v34(v149, v14);
              return v166;
            }
          }
        }

LABEL_27:
        sub_1000092BC(v75, v54);
        sub_1000092BC(v154, v10);

        ++v57;
        v54 = v145;
        if (v151 == v138)
        {
          goto LABEL_96;
        }
      }

      v12 = v157;
      if (v57 < *(v146 + 16))
      {
        break;
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      v55 = _CocoaArrayWrapper.endIndex.getter();
      v56 = v164;
      if (!v55)
      {
        goto LABEL_96;
      }
    }

    v61 = *(v54 + 8 * v57 + 32);
    v62 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_81;
    }

    goto LABEL_31;
  }

LABEL_96:

  v120 = v150;
  defaultLogger()();
  v121 = v139;
  v122 = v136;
  sub_100009708(v139, v136);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();
  sub_1000092BC(v121, v122);
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v150 = v120;
    v126 = v125;
    v127 = swift_slowAlloc();
    v167[0] = v127;
    *v126 = 136315138;
    v128 = Data.base16EncodedString()();
    v129 = sub_10010150C(v128._countAndFlagsBits, v128._object, v167);

    *(v126 + 4) = v129;
    _os_log_impl(&_mh_execute_header, v123, v124, "CredentialDecryptionKeyFinder could not find key with matching HPKE fingerprint %s)", v126, 0xCu);
    sub_100005090(v127);

    sub_1000092BC(v121, v122);
    v130 = v150;
  }

  else
  {
    sub_1000092BC(v121, v122);

    v130 = v120;
  }

  v34(v130, v14);
  return 0;
}

const char *sub_1000233C4(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HPKEEnvelopeEncryptedMessagePKRHash();
  v32 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10002415C(&qword_100200618, &type metadata accessor for HPKEEnvelopeEncryptedMessagePKRHash, &protocol conformance descriptor for HPKEEnvelopeEncryptedMessagePKRHash);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {

    v15 = "key is missing a public key";
    (*(v4 + 104))(v35, enum case for DIPError.Code.jsonDecodingFailed(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10002415C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v30 = v3;
    v33 = 0;
    v34 = v6;
    v16 = v35;

    v17 = v32;
    (*(v32 + 32))(v14, v12, v9);
    v18 = HPKEEnvelopeEncryptedMessagePKRHash.pkRHash.getter();
    if (v19 >> 60 == 15)
    {
      v15 = "getHPKEKeyIdentifier(from:)";
      (*(v4 + 104))(v16, enum case for DIPError.Code.hpkeFailureMissingPkRHash(_:), v30);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10002415C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v17 + 8))(v14, v9);
    }

    else
    {
      v15 = v18;
      v20 = v19;
      defaultLogger()();
      sub_100009708(v15, v20);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      sub_10001C120(v15, v20);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v35 = v8;
        v24 = v23;
        v25 = swift_slowAlloc();
        v36 = v25;
        *v24 = 136315138;
        v26 = Data.base16EncodedString()();
        v30 = v14;
        v27 = v22;
        v28 = sub_10010150C(v26._countAndFlagsBits, v26._object, &v36);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v27, "HPKE payload containers pkRHash %s", v24, 0xCu);
        sub_100005090(v25);

        (*(v31 + 8))(v35, v34);
        (*(v32 + 8))(v30, v9);
      }

      else
      {

        (*(v31 + 8))(v8, v34);
        (*(v32 + 8))(v14, v9);
      }
    }
  }

  return v15;
}

uint64_t sub_100023A14(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v51 = type metadata accessor for DIPError.Code();
  v2 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for KeyAgreementParams();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EncryptionParams();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EncryptedDataContainerParamsOnly();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10002415C(&qword_100200620, &type metadata accessor for EncryptedDataContainerParamsOnly, &protocol conformance descriptor for EncryptedDataContainerParamsOnly);
  v19 = v49;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v19)
  {

    (*(v2 + 104))(v50, enum case for DIPError.Code.jsonDecodingFailed(_:), v51);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    v20 = type metadata accessor for DIPError();
    sub_10002415C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v49 = v2;

    v40 = v13;
    v21 = *(v13 + 32);
    v48 = v12;
    v21(v18, v16, v12);
    EncryptedDataContainerParamsOnly.params.getter();
    EncryptionParams.keyAgreement.getter();
    (*(v41 + 8))(v11, v42);
    v22 = KeyAgreementParams.recipientFingerprint.getter();
    v24 = v23;
    (*(v43 + 8))(v8, v44);
    v25 = v45;
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v39 = v18;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10010150C(v22, v24, &v52);
      _os_log_impl(&_mh_execute_header, v26, v27, "ECv3 payload contains recipient fingerprint %s", v29, 0xCu);
      sub_100005090(v30);
    }

    (*(v46 + 8))(v25, v47);
    v32 = v50;
    v31 = v51;
    v33 = v49;
    v20 = Data.init(base64Encoded:options:)();
    v35 = v34;

    v36 = v48;
    if (v35 >> 60 == 15)
    {
      (*(v33 + 104))(v32, enum case for DIPError.Code.jsonDecodingFailed(_:), v31);
      sub_10002688C(_swiftEmptyArrayStorage);
      v20 = type metadata accessor for DIPError();
      sub_10002415C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v40 + 8))(v39, v36);
    }

    else
    {
      (*(v40 + 8))(v39, v48);
    }
  }

  return v20;
}

uint64_t sub_10002415C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000241A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000241B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024268()
{

  v1 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v2 = type metadata accessor for CredentialKeyType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v4 = type metadata accessor for CredentialKeyUsage();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100024384(uint64_t a1)
{
  result = type metadata accessor for CredentialKeyType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CredentialKeyUsage();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1000244C0(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = DeviceIdentityKey.key.getter();
  v5 = a1();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100024528@<X0>(uint64_t *a1@<X8>)
{
  DeviceIdentityKey.certificates.getter();
  type metadata accessor for SecCertificate(0);
  v2 = Array<A>.base64EncodedStrings.getter();

  *a1 = v2;
  return result;
}

uint64_t sub_100024590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = *(v1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v12 = sub_100027108;
  v13 = v1;
  os_unfair_lock_lock(v6 + 4);
  sub_100027120();
  os_unfair_lock_unlock(v6 + 4);
  if (v14 >> 60 == 15)
  {
    v7 = type metadata accessor for COSEKey();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    COSEKey.init(ec2CurveIdentifier:publicKey:)();
    v9 = type metadata accessor for COSEKey();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_100026564(v5);
      return (*(v10 + 56))(a1, 1, 1, v9);
    }

    else
    {
      (*(v10 + 32))(a1, v5, v9);
      return (*(v10 + 56))(a1, 0, 1, v9);
    }
  }
}

uint64_t sub_10002476C()
{
  v1 = OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey;
  v2 = type metadata accessor for DeviceIdentityKey();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1000247FC(uint64_t a1)
{
  result = type metadata accessor for DeviceIdentityKey();
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

uint64_t sub_10002488C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v46 = a1;
  v47 = a2;
  v5 = type metadata accessor for CredentialKeyUsage();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v38 - v9;
  v10 = type metadata accessor for CredentialKeyType();
  v38 = *(v10 - 8);
  v11 = v38;
  v12 = __chkstk_darwin(v10);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = type metadata accessor for DeviceIdentityKey();
  v44 = *(v16 - 8);
  v17 = v44;
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 16);
  v43 = v19;
  v41 = v16;
  v20(v19, v49, v16);
  v21 = *(v11 + 104);
  v22 = v15;
  v23 = v15;
  v24 = v10;
  v39 = v10;
  v21(v22, enum case for CredentialKeyType.sep(_:), v10);
  v40 = v6;
  v25 = v48;
  (*(v6 + 104))(v48, enum case for CredentialKeyUsage.keySigning(_:), v5);
  v20((v4 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey), v19, v16);
  v26 = v38;
  v27 = v42;
  (*(v38 + 16))(v42, v23, v24);
  v28 = v45;
  v29 = v5;
  (*(v6 + 16))(v45, v25, v5);
  v30 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v4 + v30) = v31;
  v32 = v47;
  *(v4 + 16) = v46;
  *(v4 + 24) = v32;
  v33 = v39;
  (*(v26 + 32))(v4 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v27, v39);
  v34 = v40;
  (*(v40 + 32))(v4 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v28, v29);
  v35 = *(v44 + 8);
  v36 = v41;
  v35(v49, v41);
  (*(v34 + 8))(v48, v29);
  (*(v26 + 8))(v23, v33);
  v35(v43, v36);
  return v4;
}

uint64_t sub_100024C90(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v16 = v2;
  v17 = a1;
  v18 = a2;
  v13 = sub_100027074;
  v14 = &v15;
  os_unfair_lock_lock(v10 + 4);
  sub_100026510();
  os_unfair_lock_unlock(v10 + 4);
  if (!v3)
  {
    return v19;
  }

  (*(v7 + 104))(v9, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100026FE8(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void sub_100024EDC(uint64_t *a3@<X8>)
{
  v5 = DeviceIdentityKey.key.getter();
  v6 = SecKeyRef.signSHA256Digest(_:algorithm:)();
  v8 = v7;

  if (!v3)
  {
    *a3 = v6;
    a3[1] = v8;
  }
}

uint64_t sub_100024F98()
{

  v1 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v2 = type metadata accessor for CredentialKeyType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v4 = type metadata accessor for CredentialKeyUsage();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey;
  v6 = type metadata accessor for DeviceIdentityKey();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_10002512C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100027120();
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_10002519C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100026510();
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_10002526C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey + 8));
  return v1;
}

uint64_t sub_1000252AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_1000252EC()
{
  v1 = v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult;
  v2 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 16);
  v4 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 24);
  v5 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  sub_1000092BC(v2, v3);
  sub_1000092BC(v4, v5);

  return sub_1000092BC(v6, v7);
}

uint64_t sub_100025350()
{

  v1 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v2 = type metadata accessor for CredentialKeyType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v4 = type metadata accessor for CredentialKeyUsage();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1000092BC(*(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier), *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier + 8));
  sub_1000092BC(*(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey), *(v0 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey + 8));
  v5 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 24);
  v6 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 32);
  v7 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 40);
  v8 = *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 48);
  sub_1000092BC(*(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 8), *(v0 + OBJC_IVAR____TtC7idcredd34NewlyCreatedLegacySEPresentmentKey_creationResult + 16));
  sub_1000092BC(v5, v6);
  sub_1000092BC(v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_1000255A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8));
  return v1;
}

uint64_t sub_1000255E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_1000256A0(void *a1, void *a2)
{
  sub_1000092BC(*(v2 + *a1), *(v2 + *a1 + 8));
  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return sub_1000092BC(v5, v6);
}

uint64_t sub_100025700(void *a1, void *a2)
{

  v5 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v6 = type metadata accessor for CredentialKeyType();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v8 = type metadata accessor for CredentialKeyUsage();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  v9 = (v2 + *a1);
  v10 = *v9;
  v11 = v9[1];

  sub_1000092BC(v10, v11);
  sub_1000092BC(*(v2 + *a2), *(v2 + *a2 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1000258A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey + 8));
  return v1;
}

uint64_t sub_1000258E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_100025928@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v10 - 8);
  v12 = v16 - v11;
  sub_100009708(*(v3 + *a1), *(v3 + *a1 + 8));
  COSEKey.init(ec2CurveIdentifier:publicKey:)();
  v13 = type metadata accessor for COSEKey();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    return (*(v14 + 32))(a3, v12, v13);
  }

  sub_100026564(v12);
  (*(v7 + 104))(v9, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v6);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100026FE8(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_100025C10(void *a1, void *a2, void *a3)
{
  sub_1000092BC(*(v3 + *a1), *(v3 + *a1 + 8));
  sub_1000092BC(*(v3 + *a2), *(v3 + *a2 + 8));
  v6 = (v3 + *a3);
  v7 = *v6;
  v8 = v6[1];

  return sub_1000092BC(v7, v8);
}

uint64_t sub_100025C94(void *a1, void *a2, void *a3)
{

  v7 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v8 = type metadata accessor for CredentialKeyType();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v10 = type metadata accessor for CredentialKeyUsage();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  v11 = (v3 + *a1);
  v12 = *v11;
  v13 = v11[1];

  sub_1000092BC(v12, v13);
  sub_1000092BC(*(v3 + *a2), *(v3 + *a2 + 8));
  sub_1000092BC(*(v3 + *a3), *(v3 + *a3 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100025E5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey + 8));
  return v1;
}

uint64_t sub_100025E9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier);
  sub_100009708(v1, *(v0 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier + 8));
  return v1;
}

uint64_t sub_100025EDC@<X0>(uint64_t a1@<X8>)
{
  sub_100025928(&OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey, a1);
  v2 = type metadata accessor for COSEKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100025F84()
{
  v1 = OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key;
  v2 = type metadata accessor for SymmetricKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier + 8);

  return sub_1000092BC(v3, v4);
}

uint64_t sub_100026000()
{

  v1 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v2 = type metadata accessor for CredentialKeyType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v4 = type metadata accessor for CredentialKeyUsage();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key;
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(*(v6 - 8) + 8);

  v7(v0 + v5, v6);
  sub_1000092BC(*(v0 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier), *(v0 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100026194(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000261CC(uint64_t a1)
{
  result = type metadata accessor for SymmetricKey();
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

unint64_t sub_100026290(uint64_t a1)
{
  type metadata accessor for DIPError.PropertyKey();
  sub_100026FE8(&qword_100201080, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100026328(a1, v2);
}

unint64_t sub_100026328(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for DIPError.PropertyKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100026FE8(&qword_100201088, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100026564(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000265CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.SHA1();
      sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000267AC(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000267AC(v5, v6);
  }

  type metadata accessor for Insecure.SHA1();
  sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000267AC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.SHA1();
      sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10002688C(uint64_t a1)
{
  v2 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004E70(&qword_100201078, &qword_1001AB528);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100026A68(v9, v5);
      result = sub_100026290(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10001AA08(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100026A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&unk_100201890, &unk_1001AA550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026B60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, void *a8, void *a9, unsigned int *a10)
{
  v48 = a8;
  v12 = v10;
  v57 = a1;
  v58 = a2;
  v56 = a10;
  v53 = a9;
  v17 = type metadata accessor for CredentialKeyUsage();
  v54 = *(v17 - 8);
  v55 = v17;
  __chkstk_darwin(v17);
  v52 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CredentialKeyType();
  v50 = *(v19 - 8);
  v51 = v19;
  __chkstk_darwin(v19);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Insecure.SHA1();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Insecure.SHA1Digest();
  v26 = *(v25 - 8);
  v46 = v25;
  v47 = v26;
  __chkstk_darwin(v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = (v12 + *a7);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v12 + *v48);
  *v30 = a5;
  v30[1] = a6;
  sub_100009708(a3, a4);
  sub_100009708(a5, a6);
  sub_100026FE8(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
  dispatch thunk of HashFunction.init()();
  sub_100009708(a5, a6);
  sub_1000265CC(a5, a6, v24);
  sub_1000092BC(a5, a6);
  dispatch thunk of HashFunction.finalize()();
  (*(v22 + 8))(v24, v21);
  sub_100026FE8(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
  v31 = v46;
  v32 = Digest.data.getter();
  v34 = v33;
  (*(v47 + 8))(v28, v31);
  v35 = (v12 + *v53);
  *v35 = v32;
  v35[1] = v34;
  v37 = v49;
  v36 = v50;
  v38 = v51;
  (*(v50 + 104))(v49, enum case for CredentialKeyType.ses(_:), v51);
  v39 = v55;
  v40 = v54;
  v41 = v52;
  (*(v54 + 104))(v52, *v56, v55);
  v42 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v12 + v42) = v43;
  v44 = v58;
  *(v12 + 16) = v57;
  *(v12 + 24) = v44;
  (*(v36 + 32))(v12 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v37, v38);
  (*(v40 + 32))(v12 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v41, v39);
  return v12;
}

uint64_t sub_100026FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100027094(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = DeviceIdentityKey.key.getter();
  v5 = a1();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100027138(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of SESKeystore.deleteKey(_:)();
  if (v2)
  {
    v9[2] = 0x80000001001B25A0;
    v9[3] = "with identifier: ";
    v8 = enum case for DIPError.Code.internalError(_:);
    v10 = *(v4 + 104);
    v10(v6, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    v9[1] = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10(v6, v8, v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000273FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000274C0, 0, 0);
}

uint64_t sub_1000274C0()
{
  String.append(_:)(v0[1]);
  v0[4]._countAndFlagsBits = 0xE400000000000000;
  v1 = swift_task_alloc();
  v0[4]._object = v1;
  *v1 = v0;
  v1[1] = sub_100027594;

  return DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(778790244, 0xE400000000000000);
}

uint64_t sub_100027594()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000276F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000276F8()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100027880(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of SESKeystore.deleteKey(_:)();
  if (v2)
  {
    v9[2] = 0x80000001001B25A0;
    v9[3] = "with identifier: ";
    v8 = enum case for DIPError.Code.internalError(_:);
    v10 = *(v4 + 104);
    v10(v6, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    v9[1] = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10(v6, v8, v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100027B44()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100004E70(&qword_100201178, &unk_1001AB5C8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DeviceIdentityKey();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100027D5C, 0, 0);
}

uint64_t sub_100027D5C()
{
  v23 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v0[17] = v4;
  v0[18] = v5;
  (*(v2 + 8))(v1, v3);
  v22[0] = 778793835;
  v22[1] = 0xE400000000000000;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);
  v0[19] = 0xE400000000000000;
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10010150C(778793835, 0xE400000000000000, v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "Generating key signing key with label %s", v14, 0xCu);
    sub_100005090(v15);
  }

  (*(v12 + 8))(v11, v13);
  v16 = v0[6];
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v17 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_100027FDC;
  v19 = v0[10];
  v20 = v0[6];

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v19, 778793835, 0xE400000000000000, v20);
}

uint64_t sub_100027FDC()
{
  v2 = *(*v1 + 48);
  *(*v1 + 168) = v0;

  sub_10000A0D4(v2, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {

    v3 = sub_100028288;
  }

  else
  {
    v3 = sub_100028154;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100028154()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  (*(v5 + 16))(v4, v3, v6);
  type metadata accessor for KeySigningKey(0);
  swift_allocObject();
  v7 = sub_10002488C(v2, v1, v4);
  (*(v5 + 8))(v3, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100028288()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100028458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_100004E70(&qword_100201178, &unk_1001AB5C8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for DeviceIdentityKey();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100028628, 0, 0);
}

uint64_t sub_100028628()
{
  v18 = v0;
  v1 = *(v0 + 16);
  v17[0] = 778793835;
  v17[1] = 0xE400000000000000;
  String.append(_:)(v1);
  *(v0 + 152) = 0xE400000000000000;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10010150C(778793835, 0xE400000000000000, v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching key signing key with label %s", v8, 0xCu);
    sub_100005090(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 160) = v10;
  v11 = *(v0 + 80);
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v12 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_100028874;
  v14 = *(v0 + 112);
  v15 = *(v0 + 80);

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v14, 778793835, 0xE400000000000000, v15);
}

uint64_t sub_100028874()
{
  v2 = *(*v1 + 80);
  *(*v1 + 176) = v0;

  sub_10000A0D4(v2, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {
    v3 = sub_100028FD4;
  }

  else
  {
    v3 = sub_1000289D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000289D8()
{
  v1 = v0[13];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  (*(v0[12] + 16))(v1, v0[14], v0[11]);
  type metadata accessor for KeySigningKey(0);
  swift_allocObject();

  v5 = sub_10002488C(v4, v3, v1);
  v6 = v5;
  if (v2 >> 60 == 15)
  {
    (*(v0[12] + 8))(v0[14], v0[11]);
LABEL_3:

    v7 = v0[1];

    return v7(v6);
  }

  v9 = v0[22];
  v11 = v0[4];
  v10 = v0[5];
  v12 = *(v5 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_100034008;
  *(v13 + 24) = v6;
  sub_100032EBC(v11, v10);

  os_unfair_lock_lock(v12 + 4);
  sub_100034020(v14);
  os_unfair_lock_unlock(v12 + 4);

  if (v9)
  {
    return result;
  }

  if (v37 >> 60 != 15)
  {
    if (sub_1000EBB34(v36, v37, v0[4], v0[5]))
    {
      v19 = v0[4];
      v18 = v0[5];
      (*(v0[12] + 8))(v0[14], v0[11]);
      sub_10001C120(v36, v37);
      sub_10001C120(v19, v18);
    }

    else
    {
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      v22 = os_log_type_enabled(v20, v21);
      v32 = v0[17];
      v34 = v0[20];
      v23 = v0[14];
      v30 = v0[15];
      v24 = v0[12];
      v35 = v0[11];
      v25 = v0[4];
      v26 = v0[5];
      if (v22)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Fetched key signing key does not have the expected public key identifier", v27, 2u);
      }

      sub_10001C120(v36, v37);
      sub_10001C120(v25, v26);

      v34(v32, v30);
      (*(v24 + 8))(v23, v35);
      v6 = 0;
    }

    goto LABEL_3;
  }

  v15 = v0[12];
  v31 = v0[11];
  v33 = v0[14];
  v28 = v0[4];
  v29 = v0[5];
  v16 = *(v0[8] + 104);
  v16(v0[9], enum case for DIPError.Code.idcsInvalidPublicKey(_:), v0[7]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v28, v29);

  (*(v15 + 8))(v33, v31);
  v16(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100028FD4()
{
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000291A8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for CredentialKeyType();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for CredentialKeyUsage();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_100004E70(&qword_100201178, &unk_1001AB5C8);
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for DeviceIdentityKey();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v1[22] = v7;
  v1[23] = *(v7 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_100029490, 0, 0);
}

uint64_t sub_100029490()
{
  v23 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v0[25] = v4;
  v0[26] = v5;
  (*(v2 + 8))(v1, v3);
  v22[0] = 778790244;
  v22[1] = 0xE400000000000000;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);
  v0[27] = 0xE400000000000000;
  defaultLogger()();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10010150C(778790244, 0xE400000000000000, v22);
    _os_log_impl(&_mh_execute_header, v8, v9, "Generating device encryption key with label %s", v14, 0xCu);
    sub_100005090(v15);
  }

  (*(v12 + 8))(v11, v13);
  v16 = v0[13];
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v17 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = swift_task_alloc();
  v0[28] = v18;
  *v18 = v0;
  v18[1] = sub_100029710;
  v19 = v0[18];
  v20 = v0[13];

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v19, 778790244, 0xE400000000000000, v20);
}

uint64_t sub_100029710()
{
  v2 = *(*v1 + 104);
  *(*v1 + 232) = v0;

  sub_10000A0D4(v2, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {

    v3 = sub_100029BF8;
  }

  else
  {
    v3 = sub_100029888;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100029888()
{
  v18 = v0[25];
  v19 = v0[26];
  v1 = v0[17];
  v20 = v0[18];
  v23 = v0[16];
  v17 = v0[15];
  v2 = v0[14];
  v3 = v0[12];
  v22 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v21 = v0[8];
  v15 = v0[6];
  v7 = *(v17 + 16);
  v16 = v1;
  v7(v1);
  type metadata accessor for SEPDeviceEncryptionKey(0);
  v24 = swift_allocObject();
  (*(v4 + 104))(v3, enum case for CredentialKeyUsage.deviceEncryption(_:), v5);
  (v7)(v23, v1, v2);
  (*(v6 + 104))(v21, enum case for CredentialKeyType.sep(_:), v15);
  v14 = *(v4 + 16);
  v14(v22, v3, v5);
  (v7)(v24 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v23, v2);
  (*(v6 + 16))(v24 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v21, v15);
  v14(v24 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v22, v5);
  v8 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v24 + v8) = v9;
  *(v24 + 16) = v18;
  *(v24 + 24) = v19;
  v10 = *(v4 + 8);
  v10(v22, v5);
  (*(v6 + 8))(v21, v15);
  v11 = *(v17 + 8);
  v11(v23, v2);
  v10(v3, v5);
  v11(v16, v2);
  v11(v20, v2);

  v12 = v0[1];

  return v12(v24);
}

uint64_t sub_100029BF8()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100029DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v7 = type metadata accessor for CredentialKeyType();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for CredentialKeyUsage();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_100004E70(&qword_100201178, &unk_1001AB5C8);
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for DeviceIdentityKey();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10002A09C, 0, 0);
}

uint64_t sub_10002A09C()
{
  v18 = v0;
  v1 = *(v0 + 16);
  v17[0] = 778790244;
  v17[1] = 0xE400000000000000;
  String.append(_:)(v1);
  *(v0 + 216) = 0xE400000000000000;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10010150C(778790244, 0xE400000000000000, v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching device encryption key with label %s", v8, 0xCu);
    sub_100005090(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 224) = v10;
  v11 = *(v0 + 136);
  DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)();
  v12 = type metadata accessor for DeviceIdentityOptions();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_task_alloc();
  *(v0 + 232) = v13;
  *v13 = v0;
  v13[1] = sub_10002A2E8;
  v14 = *(v0 + 176);
  v15 = *(v0 + 136);

  return DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(v14, 778790244, 0xE400000000000000, v15);
}

uint64_t sub_10002A2E8()
{
  v2 = *(*v1 + 136);
  *(*v1 + 240) = v0;

  sub_10000A0D4(v2, &qword_100201178, &unk_1001AB5C8);

  if (v0)
  {
    v3 = sub_10002ACB4;
  }

  else
  {
    v3 = sub_10002A44C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A44C()
{
  v1 = v0[21];
  v49 = v0[20];
  v40 = v0[19];
  v2 = v0[18];
  v3 = v0[16];
  v46 = v0[15];
  v4 = v0[14];
  v32 = v0[13];
  v34 = v0[12];
  v43 = v0[11];
  v33 = v0[10];
  v37 = v0[3];
  v38 = v0[5];
  v36 = v0[2];
  v5 = *(v40 + 16);
  v5(v1, v0[22], v2);
  type metadata accessor for SEPDeviceEncryptionKey(0);
  v6 = swift_allocObject();
  v35 = v4;
  (*(v4 + 104))(v3, enum case for CredentialKeyUsage.deviceEncryption(_:), v32);
  v5(v49, v1, v2);
  (*(v43 + 104))(v34, enum case for CredentialKeyType.sep(_:), v33);
  v7 = *(v4 + 16);
  v7(v46, v3, v32);
  v5(v6 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v49, v2);
  (*(v43 + 16))(v6 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v34, v33);
  v7(v6 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v46, v32);
  v8 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v9 = swift_allocObject();
  *(v6 + v8) = v9;
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  *(v6 + 16) = v36;
  *(v6 + 24) = v37;
  v11 = *(v35 + 8);

  v11(v46, v32);
  (*(v43 + 8))(v34, v33);
  v12 = *(v40 + 8);
  v12(v49, v2);
  v11(v3, v32);
  v12(v1, v2);
  if (v38 >> 60 == 15)
  {
    v31 = v6;
    v12(v0[22], v0[18]);
LABEL_3:

    v13 = v0[1];

    return v13(v31);
  }

  v15 = v0[30];
  v17 = v0[4];
  v16 = v0[5];
  v18 = swift_task_alloc();
  *(v18 + 16) = sub_100032ED0;
  *(v18 + 24) = v6;
  sub_100032EBC(v17, v16);

  os_unfair_lock_lock(v10);
  sub_100032EEC(v19);
  os_unfair_lock_unlock(v10);

  if (v15)
  {
    return result;
  }

  v31 = v6;
  if (v52 >> 60 != 15)
  {
    if (sub_1000EBB34(v51, v52, v0[4], v0[5]))
    {
      v23 = v0[4];
      v22 = v0[5];
      v12(v0[22], v0[18]);
      sub_10001C120(v51, v52);
      sub_10001C120(v23, v22);
    }

    else
    {
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v0[28];
      v45 = v0[25];
      v42 = v0[23];
      v48 = v0[18];
      v50 = v0[22];
      v29 = v0[4];
      v28 = v0[5];
      if (v26)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Fetched key signing key does not have the expected public key identifier", v30, 2u);
      }

      sub_10001C120(v51, v52);
      sub_10001C120(v29, v28);

      v27(v45, v42);
      v12(v50, v48);
      v31 = 0;
    }

    goto LABEL_3;
  }

  v44 = v0[18];
  v47 = v0[22];
  v41 = v0[5];
  v39 = v0[4];
  v20 = *(v0[8] + 104);
  v20(v0[9], enum case for DIPError.Code.idcsInvalidPublicKey(_:), v0[7]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10001C120(v39, v41);

  v12(v47, v44);
  v20(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10002ACB4()
{
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002AEBC@<X0>(uint64_t *a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for DIPError.Code();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = dispatch thunk of SESKeystore.createKey(acl:)();
  if (v2)
  {

    (*(v3 + 104))(v20, enum case for DIPError.Code.internalError(_:), v21);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v14 = v19;
    v15 = v12;
    v16 = v13;
    result = dispatch thunk of SESKeystore.getPublicKey(of:)();
    *v14 = v9;
    v14[1] = v11;
    v14[2] = v15;
    v14[3] = v16;
    v14[4] = result;
    v14[5] = v18;
  }

  return result;
}

uint64_t sub_10002B1A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  if (v2)
  {
    (*(v5 + 104))(v7, enum case for DIPError.Code.internalError(_:), v4);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v10 = v8;
    v11 = v9;
    type metadata accessor for SecAccessControl(0);
    v3 = static SecAccessControlRef.fromConstraintsData(_:)();
    sub_1000092BC(v10, v11);
  }

  return v3;
}

uint64_t sub_10002B3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v8 = type metadata accessor for DIPError.Code();
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin(v8);
  v22 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v25 = v5;
  v26 = a1;
  v27 = a2;
  Logger.cryptoParam(_:)();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v15 = v28;
  v16 = dispatch thunk of SESKeystore.changeACL(of:to:authorizingLAContext:)();
  if (v15)
  {
    (*(v20 + 104))(v22, enum case for DIPError.Code.internalError(_:), v21);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v17 = defaultLogger()();
    __chkstk_darwin(v17);
    Logger.cryptoParam(_:)();
    v14(v13, v10);
  }

  return v16;
}

unint64_t sub_10002B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  v5 = v4;
  type metadata accessor for SecAccessControl(0);
  v7 = static SecAccessControlRef.fromConstraintsData(_:)();
  _StringGuts.grow(_:)(27);

  v8._countAndFlagsBits = SecAccessControlRef.constraintsDescription.getter();
  String.append(_:)(v8);

  sub_1000092BC(v3, v5);
  return 0xD000000000000019;
}

unint64_t sub_10002B884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  v5 = v4;
  type metadata accessor for SecAccessControl(0);
  v7 = static SecAccessControlRef.fromConstraintsData(_:)();
  _StringGuts.grow(_:)(27);

  v8._countAndFlagsBits = SecAccessControlRef.constraintsDescription.getter();
  String.append(_:)(v8);

  sub_1000092BC(v3, v5);
  return 0xD000000000000019;
}

uint64_t sub_10002B9DC(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v24 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for DIPSignpost();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.ckmGenerateSESPresentmentKey.getter();
  DIPSignpost.init(_:)();
  sub_10002AEBC(v20);
  if (v1)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v7 + 8))(v9, v6);
    v11 = *(v3 + 104);
    v10 = v3 + 104;
    v11(v24, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v12 = v20[1];
    v24 = v20[0];
    v13 = v20[2];
    v14 = v21;
    v19 = v21;
    v15 = v22;
    v16 = v23;
    type metadata accessor for SESPresentmentKey(0);
    swift_allocObject();
    v10 = sub_100026AD8(v24, v12, v13, v14, v15, v16);
    sub_1000092BC(v15, v16);
    sub_1000092BC(v13, v19);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t sub_10002BD74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v37 = a1;
  v38 = a6;
  v11 = type metadata accessor for DIPError.Code();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v13 - 8);
  v44 = type metadata accessor for DIPSignpost();
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.ckmFetchSESPresentmentKey.getter();
  DIPSignpost.init(_:)();
  v17 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v6)
  {
    v20 = v17;
    v36 = a5;
    v21 = v18;
    type metadata accessor for SESPresentmentKey(0);
    swift_allocObject();

    sub_100009708(v20, v21);
    sub_100009708(a3, a4);
    v19 = sub_100026AD8(v37, a2, a3, a4, v20, v21);
    sub_1000092BC(v20, v21);
    sub_1000092BC(a3, a4);
    v22 = v38;
    if (v38 >> 60 == 15)
    {
      sub_1000092BC(v20, v21);
    }

    else
    {
      v35 = v21;
      v23 = *(v19 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier);
      v24 = *(v19 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier + 8);
      v37 = v19;
      v25 = v36;
      sub_100032EBC(v36, v38);
      sub_100009708(v23, v24);
      v26 = sub_1000EBB34(v23, v24, v25, v22);
      sub_1000092BC(v23, v24);
      if (!v26)
      {
        v42 = 0;
        v43 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v28._countAndFlagsBits = 0xD000000000000024;
        v28._object = 0x80000001001B2F40;
        String.append(_:)(v28);
        v29 = *(v37 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
        v30 = *(v37 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8);
        sub_100009708(v29, v30);
        v31 = Data.base16EncodedString()();
        sub_1000092BC(v29, v30);
        String.append(_:)(v31);

        v32._countAndFlagsBits = 0x746365707865202CLL;
        v32._object = 0xEB00000000206465;
        String.append(_:)(v32);
        v33 = Data.base16EncodedString()();
        String.append(_:)(v33);

        v34 = v42;
        (*(v39 + 104))(v41, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v40);
        v19 = 0x80000001001B3260;
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10001C120(v36, v38);

        sub_1000092BC(v20, v35);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        goto LABEL_3;
      }

      sub_1000092BC(v20, v35);
      sub_10001C120(v25, v22);
      v19 = v37;
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v14 + 8))(v16, v44);
    return v19;
  }

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v19 = 0x80000001001B3260;
LABEL_3:
  (*(v14 + 8))(v16, v44);
  (*(v39 + 104))(v41, enum case for DIPError.Code.internalError(_:), v40);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v19;
}

uint64_t sub_10002C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002B3D8(*(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob), *(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob + 8), a2, a3, a4);
  if (v4)
  {
    (*(v10 + 104))(v12, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = *(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
    v19 = *(a1 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8);
    v20 = v13;
    v21 = v14;
    type metadata accessor for SESPresentmentKey(0);
    swift_allocObject();

    sub_100009708(v18, v19);
    v22 = sub_100026AD8(v16, v17, v20, v21, v18, v19);
    sub_1000092BC(v18, v19);
    sub_1000092BC(v20, v21);
    return v22;
  }
}

uint64_t sub_10002C6CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002C78C, 0, 0);
}

uint64_t sub_10002C78C()
{
  v11 = v0;
  sub_10002AEBC(v10);
  v1 = v10[0];
  v2 = v10[1];
  v3 = v10[2];
  v4 = v10[3];
  v5 = v10[4];
  v6 = v10[5];
  type metadata accessor for SESDeviceEncryptionKey(0);
  swift_allocObject();
  v7 = sub_100027030(v1, v2, v3, v4, v5, v6);
  sub_1000092BC(v5, v6);
  sub_1000092BC(v3, v4);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_10002C9E0(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v28 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob);
  v29 = *(a1 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob + 8);
  v30 = v8;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v36 = v9;
  v37 = v11;
  v34 = 45;
  v35 = 0xE100000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_100021E18();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  sub_100004E70(&qword_100201170, &qword_1001AB5A8);
  v12 = type metadata accessor for SESKeystore.AttestationOIDs();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001AAFC0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v16 + v15, enum case for SESKeystore.AttestationOIDs.seid(_:), v12);
  v18(v17 + v14, enum case for SESKeystore.AttestationOIDs.acl(_:), v12);
  v18(v17 + 2 * v14, enum case for SESKeystore.AttestationOIDs.osInfo(_:), v12);
  v19 = v38;
  v38 = dispatch thunk of SESKeystore.getAttestation(for:subjectIdentifier:oids:)();
  v31 = v20;

  if (v19)
  {
    v29 = "with identifier: ";
    v25[1] = 0x80000001001B2F70;
    v21 = enum case for DIPError.Code.internalError(_:);
    v22 = v27;
    v30 = *(v26 + 104);
    v23 = v28;
    v30(v28, enum case for DIPError.Code.internalError(_:), v27);
    swift_errorRetain();
    v26 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v30(v23, v21, v22);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v38;
}

uint64_t sub_10002CF1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002D064, 0, 0);
}

uint64_t sub_10002D064()
{
  static IDCSSignposts.ckmGenerateSESProgenitorKey.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10002D110;

  return sub_10002D4F8();
}

uint64_t sub_10002D110()
{

  return _swift_task_switch(sub_10002D20C, 0, 0);
}

uint64_t sub_10002D20C()
{
  v14 = v0;
  sub_10002AEBC(v13);
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v13[0];
  v5 = v13[1];
  v6 = v13[2];
  v7 = v13[3];
  v9 = v13[4];
  v8 = v13[5];
  type metadata accessor for ProgenitorKey(0);
  swift_allocObject();
  v10 = sub_100026B1C(v4, v5, v6, v7, v9, v8);
  sub_1000092BC(v9, v8);
  sub_1000092BC(v6, v7);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v3);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10002D4F8()
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
  v4 = type metadata accessor for DIPError();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002D670, 0, 0);
}

uint64_t sub_10002D670()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  sub_100009278(v1 + 11, v2);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_10002D728;

  return dispatch thunk of SEPairingManaging.pairSecureElementIfNecessary()(v2, v3);
}

uint64_t sub_10002D728()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002D87C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002D87C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v9 = v0[3];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v6, v1, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v5 + 8))(v4, v9);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002DA84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v37 = a1;
  v38 = a6;
  v11 = type metadata accessor for DIPError.Code();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v13 - 8);
  v44 = type metadata accessor for DIPSignpost();
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.ckmFetchSESProgenitorKey.getter();
  DIPSignpost.init(_:)();
  v17 = dispatch thunk of SESKeystore.getPublicKey(of:)();
  if (!v6)
  {
    v20 = v17;
    v36 = a5;
    v21 = v18;
    type metadata accessor for ProgenitorKey(0);
    swift_allocObject();

    sub_100009708(v20, v21);
    sub_100009708(a3, a4);
    v19 = sub_100026B1C(v37, a2, a3, a4, v20, v21);
    sub_1000092BC(v20, v21);
    sub_1000092BC(a3, a4);
    v22 = v38;
    if (v38 >> 60 == 15)
    {
      sub_1000092BC(v20, v21);
    }

    else
    {
      v35 = v21;
      v23 = *(v19 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKeyIdentifier);
      v24 = *(v19 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKeyIdentifier + 8);
      v37 = v19;
      v25 = v36;
      sub_100032EBC(v36, v38);
      sub_100009708(v23, v24);
      v26 = sub_1000EBB34(v23, v24, v25, v22);
      sub_1000092BC(v23, v24);
      if (!v26)
      {
        v42 = 0;
        v43 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v28._countAndFlagsBits = 0xD000000000000024;
        v28._object = 0x80000001001B2F40;
        String.append(_:)(v28);
        v29 = *(v37 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
        v30 = *(v37 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
        sub_100009708(v29, v30);
        v31 = Data.base16EncodedString()();
        sub_1000092BC(v29, v30);
        String.append(_:)(v31);

        v32._countAndFlagsBits = 0x746365707865202CLL;
        v32._object = 0xEB00000000206465;
        String.append(_:)(v32);
        v33 = Data.base16EncodedString()();
        String.append(_:)(v33);

        v34 = v42;
        (*(v39 + 104))(v41, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v40);
        v19 = 0x80000001001B2F00;
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_10001C120(v36, v38);

        sub_1000092BC(v20, v35);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        goto LABEL_3;
      }

      sub_1000092BC(v20, v35);
      sub_10001C120(v25, v22);
      v19 = v37;
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v14 + 8))(v16, v44);
    return v19;
  }

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v19 = 0x80000001001B2F00;
LABEL_3:
  (*(v14 + 8))(v16, v44);
  (*(v39 + 104))(v41, enum case for DIPError.Code.internalError(_:), v40);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v19;
}

uint64_t sub_10002E100(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of SESKeystore.deleteKey(_:)();
  if (v2)
  {
    v9[2] = 0x80000001001B25A0;
    v9[3] = "with identifier: ";
    v8 = enum case for DIPError.Code.internalError(_:);
    v10 = *(v4 + 104);
    v10(v6, enum case for DIPError.Code.internalError(_:), v3);
    swift_errorRetain();
    v9[1] = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10(v6, v8, v3);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_10002E3FC(uint64_t a1, void (*a2)(uint64_t), void *a3, uint64_t a4)
{
  v39 = a4;
  v53 = type metadata accessor for DIPError.Code();
  v37 = *(v53 - 8);
  __chkstk_darwin(v53);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for DIPSignpost();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v14);
  v44 = v16;
  DIPSignpost.init(_:)();
  v17 = (a1 + *a3);
  v18 = *v17;
  v40 = v17[1];
  v41 = v18;
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v9 + 8))(v11, v8);
  v51 = v19;
  v52 = v21;
  v49 = 45;
  v50 = 0xE100000000000000;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_100021E18();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  sub_100004E70(&qword_100201170, &qword_1001AB5A8);
  v22 = type metadata accessor for SESKeystore.AttestationOIDs();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001AAFC0;
  v27 = v26 + v25;
  v28 = *(v23 + 104);
  v28(v27, enum case for SESKeystore.AttestationOIDs.seid(_:), v22);
  v28(v27 + v24, enum case for SESKeystore.AttestationOIDs.acl(_:), v22);
  v28(v27 + 2 * v24, enum case for SESKeystore.AttestationOIDs.osInfo(_:), v22);
  v29 = v43;
  v30 = dispatch thunk of SESKeystore.getAttestation(for:subjectIdentifier:oids:)();
  v32 = v31;

  if (v29)
  {
    LODWORD(v41) = enum case for DIPError.Code.internalError(_:);
    v40 = *(v37 + 104);
    v42 = v32;
    v33 = v38;
    v40(v38);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v43 = v30;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v34 = v44;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v45 + 8))(v34, v46);
    (v40)(v33, v41, v53);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v30 = v43;
  }

  else
  {
    v35 = v44;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v45 + 8))(v35, v46);
  }

  return v30;
}

uint64_t sub_10002EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002B3D8(*(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob), *(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_keyBlob + 8), a2, a3, a4);
  if (v4)
  {
    (*(v10 + 104))(v12, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = *(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v19 = *(a1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
    v20 = v13;
    v21 = v14;
    type metadata accessor for ProgenitorKey(0);
    swift_allocObject();

    sub_100009708(v18, v19);
    v22 = sub_100026B1C(v16, v17, v20, v21, v18, v19);
    sub_1000092BC(v18, v19);
    sub_1000092BC(v20, v21);
    return v22;
  }
}

void *sub_10002ED04(uint64_t a1, void *a2, void *a3)
{
  v39 = a3;
  v5 = type metadata accessor for DIPError.Code();
  v36 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100201180, &qword_1001AB5D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for SymmetricKey();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v40 = 778793072;
  v41 = 0xE400000000000000;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);
  v18 = v42;
  sub_100032314(v40, v41, v39, v10);

  if (!v18)
  {
    v39 = v5;
    v19 = v14;
    v42 = a2;
    v20 = v37;
    v21 = v38;
    if ((*(v37 + 48))(v10, 1, v38) == 1)
    {
      sub_10000A0D4(v10, &qword_100201180, &qword_1001AB5D8);
      (*(v36 + 104))(v7, enum case for DIPError.Code.failedToFetchPayloadProtectionKey(_:), v39);
      v5 = 0x80000001001B3160;
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      (*(v20 + 32))(v16, v10, v21);
      v23 = *(v20 + 16);
      v24 = v19;
      v23(v19, v16, v21);
      type metadata accessor for PayloadProtectionKey(0);
      v5 = swift_allocObject();
      *(v5 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier) = xmmword_1001AB540;
      v23(v5 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key, v24, v21);
      v25 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
      v26 = enum case for CredentialKeyType.keychain(_:);
      v27 = type metadata accessor for CredentialKeyType();
      (*(*(v27 - 8) + 104))(v5 + v25, v26, v27);
      v28 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
      v29 = enum case for CredentialKeyUsage.payloadProtection(_:);
      v30 = type metadata accessor for CredentialKeyUsage();
      (*(*(v30 - 8) + 104))(v5 + v28, v29, v30);
      v31 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
      sub_100004E70(&qword_1002010A0, &unk_1001AB530);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v5 + v31) = v32;
      v33 = v42;
      v5[2] = a1;
      v5[3] = v33;
      v34 = *(v20 + 8);

      v34(v24, v21);
      v34(v16, v21);
    }
  }

  return v5;
}

Class sub_10002F210(uint64_t a1, unint64_t a2)
{
  v37 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "createAccountKeySigningKey called", v15, 2u);
  }

  v16 = *(v7 + 8);
  v16(v12, v6);
  sub_10010CDF4(&off_1001F3F90);
  sub_100004E70(&qword_100200498, &qword_1001AB600);
  swift_arrayDestroy();
  v17 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlocked, 0x40000000uLL, 0);
  if (v17)
  {
    v36 = a1;
    v18 = v17;
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SecAccessControlSetConstraints();

    v20 = dispatch thunk of SESKeystore.createKey(acl:)();
    if (v2)
    {
    }

    else
    {
      v34 = v21;
      v35 = v20;
      defaultLogger()();
      v23 = v37;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v24;
        v28 = v27;
        v42 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_10010150C(v36, v37, &v42);
        v29 = v25;
        v30 = v33;
        _os_log_impl(&_mh_execute_header, v33, v29, "Storing Account Key Signing Key in iCloud keychain key with label %s", v26, 0xCu);
        sub_100005090(v28);

        v23 = v37;

        v31 = v6;
        v32 = v36;
        v16(v10, v31);
      }

      else
      {

        v16(v10, v6);
        v32 = v36;
      }

      sub_100009278((v41 + 48), *(v41 + 72));
      v19.super.isa = v35;
      sub_100048A88(v35, v34, v32, v23, 1);
    }
  }

  else
  {

    v19.super.isa = "eEncryptionKey(acl:)";
    (*(v38 + 104))(v40, enum case for DIPError.Code.secAccessControlCannotCreateACL(_:), v39);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v19.super.isa;
}

uint64_t sub_10002F8D8(uint64_t a1, unint64_t a2)
{
  v61 = a1;
  v59 = type metadata accessor for DIPError.Code();
  v3 = *(v59 - 8);
  __chkstk_darwin(v59);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v57 = &v54 - v11;
  v12 = __chkstk_darwin(v10);
  v55 = &v54 - v13;
  v14 = __chkstk_darwin(v12);
  v58 = &v54 - v15;
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "retrieveAccountKeySigningKey called", v20, 2u);
  }

  v23 = *(v7 + 8);
  v21 = v7 + 8;
  v22 = v23;
  v23(v17, v6);
  sub_100009278((v62 + 48), *(v62 + 72));
  v24 = v60;
  v25 = sub_1000494F8(v61, a2);
  if (v24)
  {
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v27._countAndFlagsBits = 0xD000000000000029;
    v27._object = 0x80000001001B3620;
    String.append(_:)(v27);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    (*(v3 + 104))(v5, enum case for DIPError.Code.failedToFetchPayloadProtectionKey(_:), v59);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v29 = v26;
    if (v26 >> 60 == 15)
    {
      v30 = v57;
      defaultLogger()();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v54 = v22;
        v35 = v34;
        v63[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_10010150C(v61, a2, v63);
        _os_log_impl(&_mh_execute_header, v31, v32, "Account Key Signing Key with label %s doesn't exist in the iCloud keychain", v33, 0xCu);
        sub_100005090(v35);

        v54(v30, v6);
      }

      else
      {

        v22(v30, v6);
      }

      return 0;
    }

    else
    {
      v36 = v58;
      v37 = v25;
      defaultLogger()();
      sub_100009708(v37, v29);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      sub_10001C120(v37, v29);
      v40 = os_log_type_enabled(v38, v39);
      v54 = v22;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v61 = v21;
        v42 = v41;
        v43 = swift_slowAlloc();
        v63[0] = v43;
        *v42 = 136315138;
        v44 = Data.base64EncodedString(options:)(0);
        v60 = v6;
        v45 = sub_10010150C(v44._countAndFlagsBits, v44._object, v63);
        v6 = v60;

        *(v42 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Account Key Signing Key exists %s", v42, 0xCu);
        sub_100005090(v43);
        v22 = v54;

        v46 = v58;
      }

      else
      {

        v46 = v36;
      }

      v22(v46, v6);
      v47 = v37;
      v48 = dispatch thunk of SESKeystore.getPublicKey(of:)();
      sub_1000092BC(v48, v49);
      v50 = v55;
      defaultLogger()();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "valid AccountKAK, verification successful", v53, 2u);

        v54(v50, v6);
      }

      else
      {

        v22(v50, v6);
      }

      return v47;
    }
  }
}

uint64_t sub_100030108(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v23 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20 = v5;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "deleteAccountKeySigningKey called", v16, 2u);
    v4 = v3;
    v5 = v20;
  }

  (*(v11 + 8))(v13, v10);
  sub_100009278((v5 + 48), *(v5 + 72));
  result = sub_100049CB0(a1, a2);
  if (v4)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v24 = 0xD000000000000029;
    v25 = 0x80000001001B3460;
    swift_getErrorValue();
    v18._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v18);

    (*(v21 + 104))(v23, enum case for DIPError.Code.unableToDeleteAccountKeySigningKey(_:), v22);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return result;
}

BOOL sub_100030494(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v33 = &v30 - v10;
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  v14._object = 0x80000001001B3940;
  v14._countAndFlagsBits = 0xD00000000000002ALL;
  v15 = NSUserDefaults.internalBool(forKey:)(v14);

  if (v15)
  {
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      v32 = v6;
      v21 = v20;
      v34 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10010150C(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v16, v17, "forceDeleteAccountKeySigningKey internal setting is enabled. This is will delete the key with label %s if it exists.", v19, 0xCu);
      sub_100005090(v21);
      v6 = v32;

      v7 = v31;
    }

    (*(v7 + 8))(v12, v6);
    sub_100009278((v3 + 48), *(v3 + 72));
    sub_100049CB0(a1, a2);
  }

  sub_100009278((v3 + 48), *(v3 + 72));
  v22 = sub_1000494F8(a1, a2);
  v24 = v23;
  defaultLogger()();
  sub_100032EBC(v22, v24);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v6;
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v24 >> 60 != 15;
    sub_10001C120(v22, v24);
    _os_log_impl(&_mh_execute_header, v25, v26, "isAccountKeySigningKeyAvailable -> %{BOOL}d", v28, 8u);
    v6 = v27;
  }

  else
  {
    sub_10001C120(v22, v24);
  }

  (*(v7 + 8))(v33, v6);
  sub_10001C120(v22, v24);
  return v24 >> 60 != 15;
}

uint64_t sub_10003086C(uint64_t a1, uint64_t a2)
{
  v17[2] = a1;
  v17[3] = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 16);
  UUID.init()();
  v17[0] = UUID.uuidString.getter();
  (*(v4 + 8))(v6, v3);
  sub_100004E70(&qword_100201170, &qword_1001AB5A8);
  v7 = type metadata accessor for SESKeystore.AttestationOIDs();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001AAFC0;
  v12 = v11 + v10;
  v13 = enum case for SESKeystore.AttestationOIDs.seid(_:);
  v14 = *(v8 + 104);
  v14(v12, enum case for SESKeystore.AttestationOIDs.seid(_:), v7);
  v14(v12 + v9, enum case for SESKeystore.AttestationOIDs.acl(_:), v7);
  v14(v12 + 2 * v9, v13, v7);
  v15 = dispatch thunk of SESKeystore.getAttestation(for:subjectIdentifier:oids:)();

  return v15;
}

id sub_100030AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = a3;
  v15[3] = a4;
  v15[1] = a2;
  v4 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LAContext) init];
  result = [v8 externalizedContext];
  if (result)
  {
    v10 = result;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    (*(v5 + 104))(v7, enum case for SESKeystore.SignatureOutputFormat.raw(_:), v4);
    v14 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
    (*(v5 + 8))(v7, v4);
    sub_1000092BC(v11, v13);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100030C74(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v2 + 48), *(v2 + 72));
  v13 = sub_1000494F8(a1, a2);
  if (!v3)
  {
    if (v14 >> 60 == 15)
    {
      (*(v7 + 104))(v9, enum case for DIPError.Code.failedToFetchPIIToken(_:), v6);
      v12 = "with identifier: ";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v15 = v14;
      v16 = v13;
      static String.Encoding.utf8.getter();
      v17 = String.init(data:encoding:)();
      if (v18)
      {
        v12 = v17;
      }

      else
      {
        (*(v7 + 104))(v9, enum case for DIPError.Code.failedToEncodePIIToken(_:), v6);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v12 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      sub_10001C120(v16, v15);
    }
  }

  return v12;
}

uint64_t sub_100031020(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v3 + 48), *(v3 + 72));
  result = sub_10004A2C4(a3, a1, a2);
  if (!v4)
  {
    v17[1] = 0;
    defaultLogger()();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10010150C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "PII Token with identifier: %s updated", v15, 0xCu);
      sub_100005090(v16);
    }

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100031228(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, const char *a6, ...)
{
  v27 = a6;
  v8 = a5;
  v13 = type metadata accessor for Logger();
  v28 = *(v13 - 8);
  __chkstk_darwin(v13);
  v29 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v6 + 48), *(v6 + 72));
  v15 = a2;
  result = sub_100048A88(a3, a4, a1, a2, v8);
  if (!v7)
  {
    v25 = v13;
    v26 = 0;
    v18 = v28;
    v17 = v29;
    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = a1;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10010150C(v21, v15, &v30);
      _os_log_impl(&_mh_execute_header, v19, v20, v27, v22, 0xCu);
      sub_100005090(v23);
    }

    return (*(v18 + 8))(v17, v25);
  }

  return result;
}

uint64_t sub_10003142C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = type metadata accessor for Logger();
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v4 + 48), *(v4 + 72));
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AA160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Data;
  *(inited + 40) = v13;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  sub_100009708(a3, a4);
  v14 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_10000A0D4(inited + 32, &qword_100200490, &unk_1001AAEE0);
  sub_10004A2C4(v14, a1, a2);

  if (!v5)
  {
    v16 = v21;
    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10010150C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "PII Token Credential List with identifier: %s updated", v19, 0xCu);
      sub_100005090(v20);
    }

    return (*(v16 + 8))(v22, v10);
  }

  return result;
}

char *sub_1000316B4(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v2 + 48), *(v2 + 72));
  v13 = sub_1000494F8(a1, a2);
  if (!v3)
  {
    if (v14 >> 60 == 15)
    {
      (*(v7 + 104))(v9, enum case for DIPError.Code.failedToFetchPIIToken(_:), v6);
      v12 = "with identifier: ";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v15 = v14;
      v16 = v13;
      static String.Encoding.utf8.getter();
      v17 = String.init(data:encoding:)();
      if (v18)
      {
        v12 = v17;
      }

      else
      {
        (*(v7 + 104))(v9, enum case for DIPError.Code.failedToEncodePIIToken(_:), v6);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v12 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      sub_10001C120(v16, v15);
    }
  }

  return v12;
}

uint64_t sub_100031A60(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_100030C74(a1, a2);

  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "PII Token Available", v12, 2u);
  }

  (*(v5 + 8))(v9, v4);
  return 1;
}

uint64_t sub_100031D00(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v2 + 48), *(v2 + 72));
  result = sub_100049CB0(a1, a2);
  if (!v3)
  {
    v15[1] = 0;
    defaultLogger()();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10010150C(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "PII Hash with identifier: %s deleted", v13, 0xCu);
      sub_100005090(v14);
    }

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

char *sub_100031EDC(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009278((v2 + 48), *(v2 + 72));
  v13 = sub_1000494F8(a1, a2);
  if (!v3)
  {
    if (v14 >> 60 == 15)
    {
      (*(v7 + 104))(v9, enum case for DIPError.Code.failedToFetchPIIToken(_:), v6);
      v12 = "with identifier: ";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v15 = v14;
      v16 = v13;
      static String.Encoding.utf8.getter();
      v17 = String.init(data:encoding:)();
      if (v18)
      {
        v12 = v17;
      }

      else
      {
        (*(v7 + 104))(v9, enum case for DIPError.Code.failedToEncodePIIToken(_:), v6);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v12 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      sub_10001C120(v16, v15);
    }
  }

  return v12;
}

uint64_t sub_100032290()
{

  sub_100005090((v0 + 48));
  sub_100005090((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_100032314@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v47 = a1;
  v45 = a4;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v42 = v7;
    v18 = v6;
    v19 = v17;
    v49 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10010150C(v47, a2, &v49);
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching keychain key with label %s", v16, 0xCu);
    sub_100005090(v19);
    v6 = v18;
    v7 = v42;
  }

  (*(v10 + 8))(v12, v9);
  sub_100034A34(v47, a2, v46);
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = SecItemCopyMatching(isa, &result);

  if (v21 == -25300)
  {
    v23 = 1;
    v22 = v45;
LABEL_12:
    v30 = type metadata accessor for SymmetricKey();
    (*(*(v30 - 8) + 56))(v22, v23, 1, v30);
    return swift_unknownObjectRelease();
  }

  if (!v21)
  {
    v22 = v45;
    if (result && (v48 = result, swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      SymmetricKey.init<A>(data:)();
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    goto LABEL_12;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v49 = 0xD000000000000028;
  v50 = 0x80000001001B3190;
  v24 = SecCopyErrorMessageString(v21, 0);
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v26;
  }

  else
  {
    LODWORD(v48) = v21;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v31;
  }

  v32 = v28;
  String.append(_:)(*&v29);

  v47 = v49;
  (*(v7 + 104))(v44, enum case for DIPError.Code.failedToFetchPayloadProtectionKey(_:), v6);
  sub_100004E70(&unk_100200230, &unk_1001AB020);
  v33 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
  v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1001AA160;
  v36 = v35 + v34;
  v37 = v36 + v33[14];
  v38 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v39 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v39 - 8) + 104))(v36, v38, v39);
  *(v37 + 24) = &type metadata for Int32;
  *(v37 + 32) = &protocol witness table for Int32;
  *v37 = v21;
  sub_10010C6F8(v35);
  swift_setDeallocating();
  sub_10000A0D4(v36, &unk_100201890, &unk_1001AA550);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return swift_unknownObjectRelease();
}

void sub_100032980(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100046D78(0);
  if (v1)
  {
    v26 = 0x80000001001B3400;
    v15 = enum case for DIPError.Code.internalError(_:);
    v16 = *(v11 + 104);
    v16(v13, enum case for DIPError.Code.internalError(_:), v10);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16(v13, v15, v10);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v26 = v4;
    v25 = a1;
    v17 = sub_1000A0EE4(a1, v14);

    if (v17)
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134349056;
        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Deleting presentment key in slot %{public}ld from SE", v20, 0xCu);
      }

      (*(v26 + 8))(v9, v3);
      sub_1000473B4(v25);
    }

    else
    {
      defaultLogger()();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134349056;
        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not trying to delete key in slot %{public}ld because slot is not occupied", v23, 0xCu);
      }

      (*(v26 + 8))(v7, v3);
    }
  }
}

uint64_t sub_100032EBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009708(result, a2);
  }

  return result;
}

uint64_t sub_100032F08(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  type metadata accessor for ExternalSEPresentmentKey(0);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey) = xmmword_1001AB540;
  v12 = (v11 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
  *v12 = a1;
  v12[1] = a2;
  v13 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v14 = enum case for CredentialKeyType.externalSE(_:);
  v15 = type metadata accessor for CredentialKeyType();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
  v17 = enum case for CredentialKeyUsage.presentment(_:);
  v18 = type metadata accessor for CredentialKeyUsage();
  (*(*(v18 - 8) + 104))(v11 + v16, v17, v18);
  v19 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
  sub_100004E70(&qword_1002010A0, &unk_1001AB530);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v11 + v19) = v20;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  sub_100009708(a1, a2);
  return v11;
}

unint64_t sub_100033124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v8 = type metadata accessor for DIPError.Code();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AB550;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  type metadata accessor for CFString(0);
  *(inited + 72) = v12;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v14;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v15;
  type metadata accessor for SymmetricKey();
  sub_100033F94(&qword_100201188, &type metadata accessor for SymmetricKey, &protocol conformance descriptor for SymmetricKey);
  v16 = kSecClassGenericPassword;

  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v17 = v38;
  *(inited + 216) = &type metadata for Data;
  *(inited + 192) = v17;
  v18 = sub_10010CA84(inited);
  v19 = v36;
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  if (v19 >> 60 != 11)
  {
    if (v19 >> 60 == 15)
    {
      sub_100033FDC(v35, v19);
    }

    else
    {
      type metadata accessor for SecAccessControl(0);
      v21 = v20;
      v22 = v35;
      sub_100032EBC(v35, v19);
      sub_100032EBC(v22, v19);
      v23 = static SecAccessControlRef.fromData(_:)();
      if (v5)
      {

        v31 = "payload protection key: ";
        v18 = v22;
        (*(v32 + 104))(v34, enum case for DIPError.Code.internalError(_:), v33);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_100033FDC(v22, v19);
        sub_100033FDC(v22, v19);
      }

      else
      {
        v24 = v23;
        sub_100033FDC(v22, v19);
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        v39 = v21;
        *&v38 = v24;
        sub_100009268(&v38, v37);
        v28 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v18;
        sub_100121664(v37, v25, v27, isUniquelyReferenced_nonNull_native);
        sub_100033FDC(v22, v19);

        return v40;
      }
    }
  }

  return v18;
}

void sub_1000335D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v49 = a1;
  v50 = a5;
  v48 = a4;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000343E0(a2, a3);
  if (!v5)
  {
    v44 = v13;
    v45 = v12;
    v46 = a2;
    v47 = 0;
    v42 = v8;
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v43 = v11;
    v41 = v9;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315138;
      v21 = v46;
      *(v19 + 4) = sub_10010150C(v46, a3, &v51);
      _os_log_impl(&_mh_execute_header, v16, v17, "Storing keychain key with label %s", v19, 0xCu);
      sub_100005090(v20);

      (*(v44 + 8))(v15, v45);
      v22 = v48;
    }

    else
    {

      (*(v44 + 8))(v15, v45);
      v22 = v48;
      v21 = v46;
    }

    v23 = v47;
    sub_100033124(v49, v21, a3, v22, v50);
    if (!v23)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = SecItemAdd(isa, 0);

      if (v25)
      {
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        v51 = 0xD00000000000002BLL;
        v52 = 0x80000001001B3560;
        v26 = SecCopyErrorMessageString(v25, 0);
        if (v26)
        {
          v27 = v26;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = v28;
        }

        else
        {
          v53 = v25;
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = v32;
        }

        v33 = v30;
        String.append(_:)(*&v31);

        v50 = v51;
        (*(v41 + 104))(v43, enum case for DIPError.Code.failedToGeneratePayloadProtectionKey(_:), v42);
        sub_100004E70(&unk_100200230, &unk_1001AB020);
        v34 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
        v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1001AA160;
        v37 = v36 + v35;
        v38 = v37 + v34[14];
        v39 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
        v40 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v40 - 8) + 104))(v37, v39, v40);
        *(v38 + 24) = &type metadata for Int32;
        *(v38 + 32) = &protocol witness table for Int32;
        *v38 = v25;
        sub_10010C6F8(v36);
        swift_setDeallocating();
        sub_10000A0D4(v37, &unk_100201890, &unk_1001AA550);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_100033F94(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }
  }
}

char *sub_100033BA0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SymmetricKey();
  v7 = *(v43 - 8);
  v8 = __chkstk_darwin(v43);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = [objc_allocWithZone(NSUUID) init];
  v13 = [v12 UUIDString];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v41 = 778793072;
  v42 = 0xE400000000000000;
  v37 = v14;
  v17._countAndFlagsBits = v14;
  v40 = v16;
  v17._object = v16;
  String.append(_:)(v17);
  v18 = v41;
  v19 = v42;
  sub_100032EBC(a1, a2);
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  sub_100032EBC(a1, a2);
  v20 = v39;
  sub_1000335D4(v11, v18, v19, a1, a2);
  if (v20)
  {
    (*(v7 + 8))(v11, v43);
    sub_10001C120(a1, a2);
    sub_10001C120(a1, a2);
  }

  else
  {

    sub_10001C120(a1, a2);
    v21 = v38;
    v22 = *(v7 + 16);
    v22(v38, v11, v43);
    type metadata accessor for PayloadProtectionKey(0);
    v6 = swift_allocObject();
    *&v6[OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier] = xmmword_1001AB540;
    v23 = v21;
    v24 = v43;
    v22(&v6[OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_key], v23, v43);
    v25 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
    v26 = enum case for CredentialKeyType.keychain(_:);
    v27 = type metadata accessor for CredentialKeyType();
    (*(*(v27 - 8) + 104))(&v6[v25], v26, v27);
    v28 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
    v29 = enum case for CredentialKeyUsage.payloadProtection(_:);
    v30 = type metadata accessor for CredentialKeyUsage();
    (*(*(v30 - 8) + 104))(&v6[v28], v29, v30);
    v31 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    sub_10001C120(a1, a2);
    *&v6[v31] = v32;
    v33 = v38;
    v34 = v40;
    *(v6 + 2) = v37;
    *(v6 + 3) = v34;
    v35 = *(v7 + 8);
    v35(v33, v24);
    v35(v11, v24);
  }

  return v6;
}

uint64_t sub_100033F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100033FDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10001C120(result, a2);
  }

  return result;
}

void sub_100034038(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, kCFAllocatorNull);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t sub_1000340F4(uint64_t a1, CFTypeRef *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = SecItemAdd(isa, a2);

  return v4;
}

uint64_t sub_10003414C(uint64_t a1, CFTypeRef *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = SecItemCopyMatching(isa, a2);

  return v4;
}

uint64_t sub_1000341A4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = SecItemDelete(isa);

  return v1;
}

uint64_t sub_1000341F4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = SecItemUpdate(isa, v1);

  return v2;
}

uint64_t sub_1000342A8()
{
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v0 + 72));
  sub_10002171C((v0 + 16), v10);
  os_unfair_lock_unlock((v0 + 72));
  v1 = v10[1];
  v2 = v10[2];
  v3 = v10[3];
  v5 = v10[4];
  v4 = v11;
  v6 = v12;
  sub_10002159C(v11, v12);

  sub_10000ED48(v1, v2);
  sub_10000ED48(v3, v5);
  v7 = sub_10000ED48(v4, v6);
  if (v4)
  {
    v8 = v4(v7);
    sub_10000ED48(v4, v6);
    return v8;
  }

  else
  {
    type metadata accessor for GenericPasswordStore();

    return swift_allocObject();
  }
}

void sub_1000343E0(uint64_t a1, unint64_t a2)
{
  v40 = type metadata accessor for DIPError.Code();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v42 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10010150C(a1, a2, &v43);
    _os_log_impl(&_mh_execute_header, v10, v11, "Deleting keychain key with label %s", v13, 0xCu);
    sub_100005090(v14);
  }

  (*(v7 + 8))(v9, v6);
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AAFC0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v16;
  type metadata accessor for CFString(0);
  *(inited + 72) = v17;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v18;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v19;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a1;
  *(inited + 152) = a2;

  v20 = kSecClassGenericPassword;
  sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemDelete(isa);

  if (v22 != -25300 && v22)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v43 = 0xD000000000000029;
    v44 = 0x80000001001B3A20;
    v23 = SecCopyErrorMessageString(v22, 0);
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = v25;
    }

    else
    {
      v45 = v22;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v29;
    }

    v30 = v27;
    String.append(_:)(*&v28);

    (*(v39 + 104))(v41, enum case for DIPError.Code.failedToDeletePayloadProtectionKey(_:), v40);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v31 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1001AA160;
    v34 = v33 + v32;
    v35 = v34 + v31[14];
    v36 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v37 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v37 - 8) + 104))(v34, v36, v37);
    *(v35 + 24) = &type metadata for Int32;
    *(v35 + 32) = &protocol witness table for Int32;
    *v35 = v22;
    sub_10010C6F8(v33);
    swift_setDeallocating();
    sub_100005128(v34);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

unint64_t sub_100034A34(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100004E70(&qword_100200470, &qword_1001AAEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AB550;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  type metadata accessor for CFString(0);
  *(inited + 72) = v8;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v10;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v11;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v12 = kSecClassGenericPassword;

  v13 = sub_10010CA84(inited);
  swift_setDeallocating();
  sub_100004E70(&qword_100200490, &unk_1001AAEE0);
  swift_arrayDestroy();
  if (a3)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v22 = sub_100034BFC();
    *&v21 = a3;
    sub_100009268(&v21, v20);
    v17 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100121664(v20, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  return v13;
}

unint64_t sub_100034BFC()
{
  result = qword_1002012E8;
  if (!qword_1002012E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002012E8);
  }

  return result;
}

uint64_t sub_100034C5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100034D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IdentityReaderAuthenticator.Request(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100034E00(uint64_t a1)
{
  sub_100034ECC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for IdentityReaderAuthenticator.Request(319);
    if (v2 <= 0x3F)
    {
      sub_100034F24();
      if (v3 <= 0x3F)
      {
        sub_100034F88(319);
        if (v4 <= 0x3F)
        {
          sub_100034FEC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100034ECC()
{
  if (!qword_100201358)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100201358);
    }
  }
}

unint64_t sub_100034F24()
{
  result = qword_100201360;
  if (!qword_100201360)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100201360);
  }

  return result;
}

void sub_100034F88(uint64_t a1)
{
  if (!qword_100201368)
  {
    sub_100021ED0(&qword_100201370, &unk_1001AB6E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100201368);
    }
  }
}

void sub_100034FEC()
{
  if (!qword_100201378)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201378);
    }
  }
}

uint64_t getEnumTagSinglePayload for CertificateKnownIssuer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CertificateKnownIssuer(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000351EC(uint64_t a1)
{
  sub_100035260(319);
  if (v1 <= 0x3F)
  {
    sub_1000352D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100035260(uint64_t a1)
{
  if (!qword_100201438)
  {
    type metadata accessor for ISO18013ReaderRequest();
    type metadata accessor for ISO18013SessionTranscript();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100201438);
    }
  }
}

void sub_1000352D4(uint64_t a1)
{
  if (!qword_100201440)
  {
    sub_100021ED0(&unk_100201448, qword_1001AB738);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100201440);
    }
  }
}

unint64_t sub_100035350()
{
  result = qword_100201478;
  if (!qword_100201478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201478);
  }

  return result;
}

void *sub_1000353A4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004E70(&qword_100201578, &qword_1001AD1E0);
  __chkstk_darwin(v7 - 8);
  v49 = &v40 - v8;
  v50 = type metadata accessor for ISO18013KnownDocTypes();
  v9 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v41 = v4;
    v42 = v3;
    v40 = v1;
    v43 = v6;
    v58 = _swiftEmptyArrayStorage;
    sub_10010A6D4(0, v12, 0);
    v54 = a1 + 56;
    v55 = v58;
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v47 = a1;
    v48 = (v9 + 48);
    v45 = v12;
    v46 = (v9 + 32);
    v44 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      if ((*(v54 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      v51 = v15;
      v19 = v9;
      v52 = *(a1 + 36);
      v53 = v14 >> 6;
      v20 = (*(a1 + 48) + 16 * v14);
      v21 = *v20;
      v22 = v20[1];
      swift_bridgeObjectRetain_n();
      v23 = v49;
      v24 = v22;
      ISO18013KnownDocTypes.init(rawValue:)();
      v25 = v50;
      if ((*v48)(v23, 1, v50) == 1)
      {
        sub_10000A0D4(v23, &qword_100201578, &qword_1001AD1E0);
        v56 = 0;
        v57 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v56 = 0xD00000000000001BLL;
        v57 = 0x80000001001B4120;
        v39._countAndFlagsBits = v21;
        v39._object = v24;
        String.append(_:)(v39);
        (*(v41 + 104))(v43, enum case for DIPError.Code.idcsUnknownDocumentType(_:), v42);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      v26 = v23;
      v27 = *v46;
      (*v46)(v11, v26, v25);

      v28 = v55;
      v58 = v55;
      v30 = v55[2];
      v29 = v55[3];
      if (v30 >= v29 >> 1)
      {
        sub_10010A6D4((v29 > 1), v30 + 1, 1);
        v28 = v58;
      }

      v28[2] = v30 + 1;
      v9 = v19;
      v31 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v55 = v28;
      result = v27(v28 + v31 + *(v19 + 72) * v30, v11);
      a1 = v47;
      v16 = 1 << *(v47 + 32);
      if (v14 >= v16)
      {
        goto LABEL_26;
      }

      v32 = *(v54 + 8 * v53);
      if ((v32 & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (v52 != *(v47 + 36))
      {
        goto LABEL_28;
      }

      v33 = v32 & (-2 << (v14 & 0x3F));
      if (v33)
      {
        v16 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v45;
        v18 = v51;
      }

      else
      {
        v34 = v53 << 6;
        v35 = v53 + 1;
        v17 = v45;
        v36 = (v44 + 8 * v53);
        while (v35 < (v16 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_1000468A0(v14, v52, 0);
            v16 = __clz(__rbit64(v37)) + v34;
            goto LABEL_20;
          }
        }

        result = sub_1000468A0(v14, v52, 0);
LABEL_20:
        v18 = v51;
      }

      v15 = v18 + 1;
      v14 = v16;
      if (v15 == v17)
      {
        return v55;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

BOOL sub_100035954(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for ISO18013KnownDocTypes();
    ++v2;
    sub_10004697C(&qword_100201570, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

unint64_t sub_100035A64()
{
  result = qword_100201480;
  if (!qword_100201480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201480);
  }

  return result;
}

uint64_t sub_100035AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IdentityReaderAuthenticator(0);
  v10 = (a3 + v9[6]);
  v10[3] = type metadata accessor for DateProvider();
  v10[4] = &protocol witness table for DateProvider;
  sub_10001A9A4(v10);
  DateProvider.init()();
  *(a3 + v9[7]) = 0;
  *(a3 + v9[8]) = 3;
  v11 = ISO18013ReaderRequest.docRequests.getter();
  KeyPath = swift_getKeyPath();
  v13 = *(v11 + 16);
  if (v13)
  {
    v41 = KeyPath;
    v34 = v9;
    v35 = a3;
    v36 = a1;
    v37 = a2;
    v44 = _swiftEmptyArrayStorage;
    sub_10010A6B4(0, v13, 0);
    v14 = v44;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v17 = *(v15 + 64);
    v33 = v11;
    v18 = v11 + ((v17 + 32) & ~v17);
    v38 = *(v15 + 56);
    v39 = v16;
    v19 = (v15 - 8);
    do
    {
      v20 = v40;
      v21 = v15;
      v39(v8, v18, v40);
      swift_getAtKeyPath();
      (*v19)(v8, v20);
      v23 = v42;
      v22 = v43;
      v44 = v14;
      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        sub_10010A6B4((v24 > 1), v25 + 1, 1);
        v14 = v44;
      }

      v14[2] = v25 + 1;
      v26 = &v14[2 * v25];
      v26[4] = v23;
      v26[5] = v22;
      v18 += v38;
      --v13;
      v15 = v21;
    }

    while (v13);

    a1 = v36;
    a2 = v37;
    v9 = v34;
    a3 = v35;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v27 = sub_10010D640(v14);

  *a3 = v27;
  v28 = a3 + v9[5];
  v29 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
  v30 = type metadata accessor for ISO18013ReaderRequest();
  (*(*(v30 - 8) + 32))(v28, a1, v30);
  v31 = type metadata accessor for ISO18013SessionTranscript();
  (*(*(v31 - 8) + 32))(&v28[v29], a2, v31);
  type metadata accessor for IdentityReaderAuthenticator.Request(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100035E00(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return ISO18013ReaderRequest.DocRequest.itemsRequest.setter();
}

uint64_t sub_100035F10@<X0>(uint64_t *a1@<X8>)
{
  result = ISO18013ReaderRequest.ItemsRequest.docType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100035F7C(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for IDCSAnalytics.ReaderAuthFailureReason();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v5 = type metadata accessor for IDCSAnalytics.ReaderAuthTypeTag();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_100004E70(&qword_100201490, &qword_1001AB820);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v6 = type metadata accessor for IDCSAnalytics.ReaderAuthOutcome();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v3[54] = v7;
  v3[55] = *(v7 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v8 = type metadata accessor for Certificate();
  v3[59] = v8;
  v3[60] = *(v8 - 8);
  v3[61] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[62] = v9;
  v3[63] = *(v9 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v3[79] = v10;
  v3[80] = *(v10 - 8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = sub_100004E70(&qword_100201498, &qword_1001AB828);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = sub_100004E70(&qword_1002014A0, &qword_1001AB830);
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013Version();
  v3[89] = v11;
  v3[90] = *(v11 - 8);
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v12 = type metadata accessor for ISO18013SessionTranscript();
  v3[94] = v12;
  v3[95] = *(v12 - 8);
  v3[96] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013ReaderRequest();
  v3[97] = v13;
  v3[98] = *(v13 - 8);
  v3[99] = swift_task_alloc();
  v3[100] = type metadata accessor for IdentityReaderAuthenticator.Request(0);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();

  return _swift_task_switch(sub_1000365FC, 0, 0);
}

uint64_t sub_1000365FC()
{
  v213 = sub_10004ACB4();
  v1 = 0;
  *(v0 + 840) = sub_10004B654();
  v27 = *(v0 + 832);
  v28 = *(v0 + 288);
  v29 = type metadata accessor for IdentityReaderAuthenticator(0);
  *(v0 + 848) = v29;
  v30 = *(v29 + 20);
  *(v0 + 984) = v30;
  sub_100046244(v28 + v30, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = *(v0 + 832);
  if (EnumCaseMultiPayload == 1)
  {

    *(v0 + 856) = *v32;
    v33 = *(v32 + 1);
    *(v0 + 864) = v33;
    v34 = *(v32 + 2);
    v128 = sub_10004BCA8();
    v129 = [objc_opt_self() standardUserDefaults];
    v130._countAndFlagsBits = 0xD00000000000003ALL;
    v130._object = 0x80000001001B3BB0;
    v131 = NSUserDefaults.internalBool(forKey:)(v130);

    v209 = v131;
    if (v131)
    {
      defaultLogger()();
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&_mh_execute_header, v132, v133, "Internal setting enabled: truncate certificate chains to leaf only", v134, 2u);
      }

      v135 = *(v0 + 624);
      v33 = *(v0 + 496);
      v136 = *(v0 + 504);

      (*(v136 + 8))(v135, v33);
    }

    v137 = 0;
    v138 = *(v34 + 16);
    v139 = _swiftEmptyArrayStorage;
    while (v138 != v137)
    {
      if (v137 >= *(v34 + 16))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v33 = *(v34 + 8 * v137++ + 32);
      if (*(v33 + 16))
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v219 = v139;
        v141 = v139;
        v142 = v128;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10010A858(0, v141[2] + 1, 1);
          v141 = v219;
        }

        v144 = v141[2];
        v143 = v141[3];
        if (v144 >= v143 >> 1)
        {
          sub_10010A858((v143 > 1), v144 + 1, 1);
          v141 = v219;
        }

        v141[2] = v144 + 1;
        v141[v144 + 4] = v33;
        v128 = v142;
        v139 = v141;
      }
    }

    v145 = v139[2];
    if (v145)
    {
      v33 = *(v0 + 480);
      sub_10010A798(0, v145, 0);
      v146 = 0;
      v147 = _swiftEmptyArrayStorage;
      v208 = v139 + 4;
      v199 = v33;
      v148 = (v33 + 8);
      v202 = v139;
      v204 = v145;
      while (v146 < v139[2])
      {
        v149 = v208[v146];
        v211 = v146;
        v215 = v147;
        if (v209)
        {
          sub_100004E70(&qword_100200220, &unk_1001AA540);
          v150 = swift_allocObject();
          *(v150 + 16) = xmmword_1001AA180;
          if (!*(v149 + 16))
          {
            goto LABEL_96;
          }

          v151 = v150;
          v152 = *(v0 + 488);
          v153 = *(v0 + 472);
          (*(v199 + 16))(v152, v149 + ((*(v199 + 80) + 32) & ~*(v199 + 80)), v153);

          v154 = Certificate.wrapped.getter();
          (*(v199 + 8))(v152, v153);
          v151[4] = v154;
          v139 = v202;
        }

        else
        {
          v155 = *(v149 + 16);
          if (v155)
          {
            v217 = v1;

            specialized ContiguousArray.reserveCapacity(_:)();
            v156 = v149 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
            v157 = *(v199 + 72);
            v158 = *(v199 + 16);
            do
            {
              v159 = *(v0 + 488);
              v160 = *(v0 + 472);
              v158(v159, v156, v160);
              Certificate.wrapped.getter();
              (*v148)(v159, v160);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v156 += v157;
              --v155;
            }

            while (v155);
            v151 = _swiftEmptyArrayStorage;
            v1 = v217;
            v139 = v202;
          }

          else
          {

            v151 = _swiftEmptyArrayStorage;
          }
        }

        sub_1000FCA10(v161);

        v33 = v151;
        v147 = v215;
        v163 = v215[2];
        v162 = v215[3];
        if (v163 >= v162 >> 1)
        {
          sub_10010A798((v162 > 1), v163 + 1, 1);
          v147 = v215;
        }

        v146 = v211 + 1;
        v147[2] = v163 + 1;
        v147[v163 + 4] = v151;
        if (v211 + 1 == v204)
        {

          goto LABEL_90;
        }
      }

      goto LABEL_95;
    }

    v147 = _swiftEmptyArrayStorage;
LABEL_90:
    *(v0 + 872) = v147;
    v193 = swift_task_alloc();
    *(v0 + 880) = v193;
    *v193 = v0;
    v193[1] = sub_100038544;

    return sub_100041690(v147);
  }

  v86 = *(v0 + 792);
  v87 = *(v0 + 784);
  v33 = *(v0 + 776);
  v88 = *(v0 + 768);
  v89 = *(v0 + 760);
  v90 = *(v0 + 752);
  v91 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
  (*(v87 + 32))(v86, v32, v33);
  (*(v89 + 32))(v88, &v32[v91], v90);
  ISO18013ReaderRequest.version.getter();
  static ISO18013ReaderRequest.supportedVersion.getter();
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  sub_10004697C(&qword_1002014C0, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v92 = *(v0 + 728);
  v93 = *(v0 + 720);
  v94 = *(v0 + 712);
  v95 = *(v0 + 704);
  v207 = *(v0 + 688);
  v96 = *(v0 + 680);
  v97 = *(v0 + 672);
  v98 = *(v0 + 664);
  v99 = *(v93 + 32);
  v99(v96, *(v0 + 736), v94);
  v99(v96 + *(v98 + 48), v92, v94);
  sub_100046360(v96, v97, &qword_100201498, &qword_1001AB828);
  v197 = *(v98 + 48);
  v99(v95, v97, v94);
  v100 = *(v93 + 8);
  v100(v97 + v197, v94);
  sub_100046524(v96, v97, &qword_100201498, &qword_1001AB828);
  v198 = v98;
  v99(v95 + *(v207 + 36), v97 + *(v98 + 48), v94);
  v100(v97, v94);
  v101 = v100;
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v102 = *(v0 + 704);
    v103 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_10000A0D4(v102, &qword_1002014A0, &qword_1001AB830);
    if (v103)
    {
      v104 = *(v0 + 792);
      v105 = v101;
      v106 = *(v0 + 768);
      v105(*(v0 + 744), *(v0 + 712));
      v107 = sub_10003F088(v104, v106);
      goto LABEL_78;
    }
  }

  else
  {
    sub_10000A0D4(*(v0 + 704), &qword_1002014A0, &qword_1001AB830);
  }

  v201 = v101;
  v33 = *(v0 + 728);
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  static ISO18013ReaderRequest.nextMajorUnsupportedVersion.getter();
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v110 = *(v0 + 728);
  v111 = *(v0 + 712);
  v112 = *(v0 + 696);
  v113 = *(v0 + 680);
  v114 = *(v0 + 672);
  v99(v113, *(v0 + 736), v111);
  v99(v113 + *(v198 + 48), v110, v111);
  sub_100046360(v113, v114, &qword_100201498, &qword_1001AB828);
  v115 = *(v198 + 48);
  v99(v112, v114, v111);
  v201(v114 + v115, v111);
  sub_100046524(v113, v114, &qword_100201498, &qword_1001AB828);
  v99(v112 + *(v207 + 36), v114 + *(v198 + 48), v111);
  v201(v114, v111);
  v116 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v117 = *(v0 + 744);
  v118 = *(v0 + 712);
  v119 = *(v0 + 696);
  if ((v116 & 1) == 0)
  {

    sub_10000A0D4(v119, &qword_1002014A0, &qword_1001AB830);
    v201(v117, v118);
LABEL_77:
    v164 = *(v0 + 784);
    v216 = *(v0 + 768);
    v218 = *(v0 + 776);
    v165 = *(v0 + 760);
    v210 = *(v0 + 792);
    v212 = *(v0 + 752);
    v166 = *(v0 + 736);
    v167 = *(v0 + 712);
    v168 = *(v0 + 656);
    v169 = *(v0 + 640);
    v170 = *(v0 + 632);
    _StringGuts.grow(_:)(37);

    ISO18013ReaderRequest.version.getter();
    sub_10004697C(&qword_1002014C8, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
    v171._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v171);

    v201(v166, v167);
    (*(v169 + 104))(v168, enum case for DIPError.Code.idcsUnsupportedReaderRequestVersion(_:), v170);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v172 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v165 + 8))(v216, v212);
    (*(v164 + 8))(v210, v218);
    goto LABEL_2;
  }

  v120 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_10000A0D4(v119, &qword_1002014A0, &qword_1001AB830);
  v201(v117, v118);
  if ((v120 & 1) == 0)
  {

    goto LABEL_77;
  }

  v107 = sub_10004083C(*(v0 + 792), *(v0 + 768));
LABEL_78:
  v33 = v107;
  v173 = *(v0 + 792);
  v174 = *(v0 + 784);
  v175 = *(v0 + 776);
  v176 = *(v0 + 768);
  v177 = *(v0 + 752);
  v178 = *(*(v0 + 760) + 8);

  v178(v176, v177);
  (*(v174 + 8))(v173, v175);
  *(v0 + 912) = 0u;
  *(v0 + 904) = v213;
  *(v0 + 896) = v33;
  if (!(v33 >> 62))
  {
    result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_80;
  }

LABEL_99:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_80:
  if (!result)
  {
    v194 = *(v0 + 656);
    v195 = *(v0 + 640);
    v196 = *(v0 + 632);

    swift_bridgeObjectRelease_n();
    (*(v195 + 104))(v194, enum case for DIPError.Code.idcsMissingReaderAuth(_:), v196);
    sub_10002688C(_swiftEmptyArrayStorage);
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v172 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_2:
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];

    if (v4)
    {
      v5 = *(v0 + 584);
      v7 = *(v0 + 496);
      v6 = *(v0 + 504);
      v8 = *(v0 + 432);
      v9 = *(v0 + 440);
      v10 = *(v0 + 280);
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v6 + 8))(v5, v7);
      (*(v9 + 56))(v10, 1, 1, v8);
      goto LABEL_24;
    }

    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 328);
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      goto LABEL_5;
    }

    v19 = *(v0 + 640);
    v20 = *(v0 + 632);
    v21 = *(v0 + 320);
    sub_100046360(*(v0 + 328), v21, &qword_100201488, &qword_1001ACFD0);
    v22 = (*(v19 + 88))(v21, v20);
    if (v22 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
    {
      defaultLogger()();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Encountered invalid reader request", v25, 2u);
      }

      v26 = *(v0 + 512);
    }

    else if (v22 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
    {
      defaultLogger()();
      v23 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v23, v35, "Encountered missing or malformed auth certificates", v36, 2u);
      }

      v26 = *(v0 + 520);
    }

    else
    {
      if (v22 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v22 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
      {
        sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
        defaultLogger()();
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();
        v123 = os_log_type_enabled(v121, v122);
        v124 = *(v0 + 536);
        v126 = *(v0 + 496);
        v125 = *(v0 + 504);
        if (v123)
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&_mh_execute_header, v121, v122, "Encountered invalid signature during reader auth", v127, 2u);
        }

        (*(v125 + 8))(v124, v126);
        goto LABEL_17;
      }

      if (v22 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
      {
        (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_5:
        v14 = *(v0 + 584);
        v16 = *(v0 + 496);
        v15 = *(v0 + 504);
        v17 = *(v0 + 328);
        defaultLogger()();
        DIPLogError(_:message:log:)();
        (*(v15 + 8))(v14, v16);
        sub_10000A0D4(v17, &qword_100201488, &qword_1001ACFD0);
        v214 = 0;
        v18 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
LABEL_18:
        v205 = v18;
        v40 = v172;
        v41 = *(v0 + 808);
        v42 = *(v0 + 408);
        v43 = *(v0 + 416);
        v44 = *(v0 + 400);
        v45 = *(v0 + 384);
        v46 = *(v0 + 304);
        v47 = *(v0 + 312);
        v48 = *(v0 + 288);
        v49 = *(v0 + 296);
        sub_100041CE0(v40, v47);
        (*(v42 + 104))(v43, *v205, v44);
        (*(v46 + 16))(v45, v47, v49);
        (*(v46 + 56))(v45, 0, 1, v49);
        v50 = type metadata accessor for IdentityReaderAuthenticator(0);
        sub_100046244(v48 + *(v50 + 20), v41);
        v51 = swift_getEnumCaseMultiPayload();
        v52 = *(v0 + 808);
        if (v51 == 1)
        {
          v53 = *(v0 + 344);
          v54 = *(v0 + 352);
          v55 = *(v0 + 336);
          sub_1000462A8(*(v0 + 808));
          (*(v53 + 104))(v54, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v55);
        }

        else
        {
          v56 = *(v0 + 784);
          v57 = *(v0 + 776);
          v58 = *(v0 + 760);
          v59 = *(v0 + 752);
          v61 = *(v0 + 344);
          v60 = *(v0 + 352);
          v62 = *(v0 + 336);
          v63 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
          (*(v61 + 104))(v60, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v62);
          (*(v58 + 8))(v52 + v63, v59);
          (*(v56 + 8))(v52, v57);
        }

        v64 = *(v0 + 640);
        v203 = *(v0 + 656);
        v206 = *(v0 + 632);
        v65 = *(v0 + 408);
        v66 = *(v0 + 416);
        v200 = *(v0 + 400);
        v67 = *(v0 + 384);
        v68 = *(v0 + 352);
        v69 = *(v0 + 360);
        v70 = *(v0 + 336);
        v71 = *(v0 + 344);
        type metadata accessor for IDCSAnalytics();
        (*(v71 + 32))(v69, v68, v70);
        static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
        (*(v71 + 8))(v69, v70);
        sub_10000A0D4(v67, &qword_100201490, &qword_1001AB820);
        (*(v65 + 8))(v66, v200);
        (*(v64 + 104))(v203, enum case for DIPError.Code.internalError(_:), v206);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        if (v214)
        {
          v72 = *(v0 + 440);
          v73 = *(v0 + 448);
          v74 = *(v0 + 432);
          v76 = *(v0 + 304);
          v75 = *(v0 + 312);
          v77 = *(v0 + 296);
          sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          (*(v72 + 16))(v78, v73, v74);
          swift_willThrow();

          (*(v72 + 8))(v73, v74);
          (*(v76 + 8))(v75, v77);

          v79 = *(v0 + 8);
LABEL_25:

          return v79();
        }

        v81 = *(v0 + 440);
        v80 = *(v0 + 448);
        v82 = *(v0 + 432);
        v83 = *(v0 + 280);
        (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

        (*(v81 + 32))(v83, v80, v82);
        (*(v81 + 56))(v83, 0, 1, v82);
LABEL_24:
        v84 = *(v0 + 272);

        *(v84 + 89) = 0u;
        v84[4] = 0u;
        v84[5] = 0u;
        v84[2] = 0u;
        v84[3] = 0u;
        *v84 = 0u;
        v84[1] = 0u;
        v79 = *(v0 + 8);
        goto LABEL_25;
      }

      defaultLogger()();
      v23 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&_mh_execute_header, v23, v108, "Encountered revoked reader auth certificate", v109, 2u);
      }

      v26 = *(v0 + 528);
    }

    v38 = *(v0 + 496);
    v37 = *(v0 + 504);
    v39 = *(v0 + 328);

    (*(v37 + 8))(v26, v38);
    sub_10000A0D4(v39, &qword_100201488, &qword_1001ACFD0);
LABEL_17:
    v214 = 1;
    v18 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
    goto LABEL_18;
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
    v179 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v179 = *(v33 + 32);
  }

  *(v0 + 928) = v179;
  v180 = *(v0 + 848);
  v181 = *(v0 + 288);

  v182 = *v181;
  *(v0 + 936) = *v181;
  v183 = *(v180 + 24);
  *(v0 + 988) = v183;
  defaultLogger()();
  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    *v186 = 0;
    _os_log_impl(&_mh_execute_header, v184, v185, "Verifying trust with Apple issued roots", v186, 2u);
  }

  v187 = *(v0 + 840);
  v188 = *(v0 + 616);
  v189 = *(v0 + 496);
  v190 = *(v0 + 504);

  v191 = *(v190 + 8);
  *(v0 + 944) = v191;
  v191(v188, v189);
  v192 = swift_task_alloc();
  *(v0 + 952) = v192;
  *v192 = v0;
  v192[1] = sub_100039770;

  return sub_1000421D0(v182, 0, 0, v187, v33, v181 + v183);
}

uint64_t sub_100038544(uint64_t a1)
{
  *(*v1 + 888) = a1;

  return _swift_task_switch(sub_100038664, 0, 0);
}

uint64_t sub_100038664()
{
  v145 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 856);
  v144 = *(v0 + 864);
  *(v0 + 920) = v144;
  *(v0 + 912) = v2;
  *(v0 + 904) = 0;
  *(v0 + 896) = v1;

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v18 = *(v0 + 656);
    v19 = *(v0 + 640);
    v20 = *(v0 + 632);

    swift_bridgeObjectRelease_n();
    (*(v19 + 104))(v18, enum case for DIPError.Code.idcsMissingReaderAuth(_:), v20);
    sub_10002688C(_swiftEmptyArrayStorage);
    v21 = sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v22 = swift_allocError();
    strcpy(v108, "authenticate()");
    HIBYTE(v108[1]) = -18;
    v144 = "nauthenticated reader";
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v24];

    if (v25)
    {
      v26 = *(v0 + 584);
      v28 = *(v0 + 496);
      v27 = *(v0 + 504);
      v29 = *(v0 + 432);
      v30 = *(v0 + 440);
      v31 = *(v0 + 280);
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v27 + 8))(v26, v28);
      (*(v30 + 56))(v31, 1, 1, v29);
      goto LABEL_32;
    }

    v32 = *(v0 + 640);
    v33 = *(v0 + 632);
    v34 = *(v0 + 328);
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v35 = (*(v32 + 48))(v34, 1, v33);
    v136 = v21;
    if (v35 == 1)
    {
      goto LABEL_15;
    }

    v41 = *(v0 + 640);
    v42 = *(v0 + 632);
    v43 = *(v0 + 320);
    sub_100046360(*(v0 + 328), v43, &qword_100201488, &qword_1001ACFD0);
    v44 = (*(v41 + 88))(v43, v42);
    if (v44 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Encountered invalid reader request", v47, 2u);
      }

      v48 = *(v0 + 512);
    }

    else if (v44 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
    {
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v45, v49, "Encountered missing or malformed auth certificates", v50, 2u);
      }

      v48 = *(v0 + 520);
    }

    else
    {
      if (v44 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v44 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
      {
        sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        v103 = os_log_type_enabled(v101, v102);
        v104 = *(v0 + 536);
        v106 = *(v0 + 496);
        v105 = *(v0 + 504);
        if (v103)
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "Encountered invalid signature during reader auth", v107, 2u);
        }

        (*(v105 + 8))(v104, v106);
        goto LABEL_25;
      }

      if (v44 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
      {
        (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_15:
        v36 = *(v0 + 584);
        v38 = *(v0 + 496);
        v37 = *(v0 + 504);
        v39 = *(v0 + 328);
        defaultLogger()();
        DIPLogError(_:message:log:)();
        (*(v37 + 8))(v36, v38);
        sub_10000A0D4(v39, &qword_100201488, &qword_1001ACFD0);
        LODWORD(v142) = 0;
        v40 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
LABEL_26:
        v139 = v40;
        v54 = v22;
        v55 = *(v0 + 808);
        v140 = *(v0 + 800);
        v56 = *(v0 + 408);
        v57 = *(v0 + 416);
        v58 = *(v0 + 400);
        v59 = *(v0 + 384);
        v60 = *(v0 + 304);
        v61 = *(v0 + 312);
        v62 = *(v0 + 288);
        v63 = *(v0 + 296);
        v143 = v54;
        sub_100041CE0(v54, *(v0 + 312));
        v141 = *v62;
        (*(v56 + 104))(v57, *v139, v58);
        (*(v60 + 16))(v59, v61, v63);
        (*(v60 + 56))(v59, 0, 1, v63);
        v64 = type metadata accessor for IdentityReaderAuthenticator(0);
        sub_100046244(v62 + *(v64 + 20), v55);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v66 = *(v0 + 808);
        if (EnumCaseMultiPayload == 1)
        {
          v67 = *(v0 + 344);
          v68 = *(v0 + 352);
          v69 = *(v0 + 336);
          sub_1000462A8(*(v0 + 808));
          (*(v67 + 104))(v68, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v69);
        }

        else
        {
          v70 = *(v0 + 784);
          v71 = *(v0 + 776);
          v72 = *(v0 + 760);
          v73 = *(v0 + 752);
          v75 = *(v0 + 344);
          v74 = *(v0 + 352);
          v76 = *(v0 + 336);
          v77 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
          (*(v75 + 104))(v74, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v76);
          (*(v72 + 8))(v66 + v77, v73);
          (*(v70 + 8))(v66, v71);
        }

        v78 = *(v0 + 640);
        v138 = *(v0 + 656);
        v139 = *(v0 + 632);
        v140 = *(v0 + 448);
        v79 = *(v0 + 408);
        v80 = *(v0 + 416);
        v137 = *(v0 + 400);
        v81 = *(v0 + 384);
        v82 = *(v0 + 352);
        v83 = *(v0 + 360);
        v84 = *(v0 + 336);
        v85 = *(v0 + 344);
        type metadata accessor for IDCSAnalytics();
        (*(v85 + 32))(v83, v82, v84);
        static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
        (*(v85 + 8))(v83, v84);
        sub_10000A0D4(v81, &qword_100201490, &qword_1001AB820);
        (*(v79 + 8))(v80, v137);
        (*(v78 + 104))(v138, enum case for DIPError.Code.internalError(_:), v139);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        v108[2] = 267;
        HIBYTE(v108[1]) = -18;
        strcpy(v108, "authenticate()");
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        if (v142)
        {
          v108[4] = *(v0 + 824);
          v108[5] = *(v0 + 816);
          v108[6] = *(v0 + 808);
          v108[7] = *(v0 + 792);
          v108[8] = *(v0 + 768);
          v108[9] = *(v0 + 744);
          v108[10] = *(v0 + 736);
          v108[11] = *(v0 + 728);
          v108[12] = *(v0 + 704);
          v109 = *(v0 + 696);
          v110 = *(v0 + 680);
          v111 = *(v0 + 672);
          v112 = *(v0 + 656);
          v113 = *(v0 + 648);
          v114 = *(v0 + 624);
          v115 = *(v0 + 616);
          v116 = *(v0 + 608);
          v117 = *(v0 + 600);
          v118 = *(v0 + 592);
          v119 = *(v0 + 584);
          v120 = *(v0 + 576);
          v121 = *(v0 + 568);
          v122 = *(v0 + 560);
          v123 = *(v0 + 552);
          v124 = *(v0 + 544);
          v125 = *(v0 + 536);
          v126 = *(v0 + 528);
          v127 = *(v0 + 520);
          v128 = *(v0 + 512);
          v129 = *(v0 + 488);
          v130 = *(v0 + 464);
          v87 = *(v0 + 440);
          v86 = *(v0 + 448);
          v88 = *(v0 + 432);
          v131 = *(v0 + 456);
          v132 = *(v0 + 424);
          v133 = *(v0 + 416);
          v134 = *(v0 + 392);
          v135 = *(v0 + 384);
          v137 = *(v0 + 376);
          v139 = *(v0 + 368);
          v140 = *(v0 + 360);
          v141 = *(v0 + 352);
          v142 = *(v0 + 328);
          v144 = *(v0 + 320);
          v89 = *(v0 + 304);
          v90 = *(v0 + 312);
          v91 = *(v0 + 296);
          v138 = swift_allocError();
          (*(v87 + 16))(v92, v86, v88);
          swift_willThrow();

          (*(v87 + 8))(v86, v88);
          (*(v89 + 8))(v90, v91);

          v93 = *(v0 + 8);
LABEL_33:

          return v93();
        }

        v95 = *(v0 + 440);
        v94 = *(v0 + 448);
        v96 = *(v0 + 432);
        v97 = *(v0 + 280);
        (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

        (*(v95 + 32))(v97, v94, v96);
        (*(v95 + 56))(v97, 0, 1, v96);
LABEL_32:
        v109 = *(v0 + 704);
        v110 = *(v0 + 696);
        v111 = *(v0 + 680);
        v112 = *(v0 + 672);
        v113 = *(v0 + 656);
        v114 = *(v0 + 648);
        v115 = *(v0 + 624);
        v116 = *(v0 + 616);
        v117 = *(v0 + 608);
        v118 = *(v0 + 600);
        v119 = *(v0 + 592);
        v120 = *(v0 + 584);
        v121 = *(v0 + 576);
        v122 = *(v0 + 568);
        v123 = *(v0 + 560);
        v124 = *(v0 + 552);
        v125 = *(v0 + 544);
        v126 = *(v0 + 536);
        v127 = *(v0 + 528);
        v128 = *(v0 + 520);
        v129 = *(v0 + 512);
        v130 = *(v0 + 488);
        v131 = *(v0 + 464);
        v132 = *(v0 + 456);
        v133 = *(v0 + 448);
        v134 = *(v0 + 424);
        v135 = *(v0 + 416);
        v136 = *(v0 + 392);
        v137 = *(v0 + 384);
        v138 = *(v0 + 376);
        v139 = *(v0 + 368);
        v140 = *(v0 + 360);
        v141 = *(v0 + 352);
        v142 = *(v0 + 328);
        v143 = *(v0 + 320);
        v144 = *(v0 + 312);
        v98 = *(v0 + 272);

        *(v98 + 89) = 0u;
        v98[4] = 0u;
        v98[5] = 0u;
        v98[2] = 0u;
        v98[3] = 0u;
        *v98 = 0u;
        v98[1] = 0u;
        v93 = *(v0 + 8);
        goto LABEL_33;
      }

      defaultLogger()();
      v45 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v45, v99, "Encountered revoked reader auth certificate", v100, 2u);
      }

      v48 = *(v0 + 528);
    }

    v52 = *(v0 + 496);
    v51 = *(v0 + 504);
    v53 = *(v0 + 328);

    (*(v51 + 8))(v48, v52);
    sub_10000A0D4(v53, &qword_100201488, &qword_1001ACFD0);
LABEL_25:
    LODWORD(v142) = 1;
    v40 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
    goto LABEL_26;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v143 = v2;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v1 + 32);
  }

  *(v0 + 928) = v4;
  v5 = *(v0 + 848);
  v6 = *(v0 + 288);

  v7 = *v6;
  *(v0 + 936) = *v6;
  v8 = *(v5 + 24);
  *(v0 + 988) = v8;
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Verifying trust with Apple issued roots", v11, 2u);
  }

  v12 = *(v0 + 840);
  v13 = *(v0 + 616);
  v15 = *(v0 + 496);
  v14 = *(v0 + 504);

  v16 = *(v14 + 8);
  *(v0 + 944) = v16;
  v16(v13, v15);
  v17 = swift_task_alloc();
  *(v0 + 952) = v17;
  *v17 = v0;
  v17[1] = sub_100039770;

  return sub_1000421D0(v7, v143, v144, v12, v1, v6 + v8);
}

uint64_t sub_100039770(uint64_t a1)
{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = v1;
  v3[120] = v1;

  if (v1)
  {
    v4 = sub_10003B254;
  }

  else
  {
    v4 = sub_10003988C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003988C()
{
  v1 = (v0 + 64);
  v2 = *(v0 + 960);
  v205 = *(v0 + 144);

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Verified reader certificate chain", v5, 2u);
  }

  v6 = *(v0 + 944);
  v7 = *(v0 + 928);
  v8 = *(v0 + 600);
  v9 = *(v0 + 496);

  v6(v8, v9);
  v10 = v7;
  sub_100021A34((v0 + 64));
  v11 = v2;
  v12 = *(v0 + 928);
  if (v11)
  {

    goto LABEL_5;
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 984);
  v24 = *(v0 + 824);
  v25 = *(v0 + 288);
  v202 = *(v0 + 72);
  v203 = *(v0 + 64);
  v198 = *(v0 + 96);
  v201 = *(v0 + 88);
  v196 = *(v0 + 104);

  sub_100046244(v25 + v23, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *(v0 + 824);
  if (EnumCaseMultiPayload == 1)
  {
    v194 = v22;
    sub_1000462A8(v27);
    goto LABEL_14;
  }

  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v38 = *(v0 + 760);
  v39 = *(v0 + 752);
  v40 = sub_100004E70(&qword_1002014A8, &qword_1001AB838);
  (*(v38 + 8))(v27 + *(v40 + 48), v39);
  (*(v36 + 8))(v27, v37);
  *(v0 + 184) = *(v0 + 80);
  v41 = *(v0 + 192);
  if (v41)
  {
    *(v0 + 232) = *(v0 + 184);
    *(v0 + 240) = v41;
    sub_10004630C();
    Collection.nilIfEmpty.getter();
    if (*(v0 + 256))
    {
      v194 = v22;

LABEL_14:
      v42 = *(v0 + 816);
      v189 = *(v0 + 984);
      v43 = *(v0 + 584);
      v44 = *(v0 + 496);
      v180 = *(v0 + 424);
      v181 = *(v0 + 944);
      v46 = *(v0 + 400);
      v45 = *(v0 + 408);
      v47 = *(v0 + 304);
      v183 = *(v0 + 392);
      v185 = *(v0 + 296);
      v187 = *(v0 + 288);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v1;
      Logger.sensitive(_:)();

      v181(v43, v44);
      (*(v45 + 104))(v180, enum case for IDCSAnalytics.ReaderAuthOutcome.authenticated(_:), v46);
      (*(v47 + 56))(v183, 1, 1, v185);
      sub_100046244(v187 + v189, v42);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 816);
      if (v48 == 1)
      {
        v50 = *(v0 + 368);
        v51 = *(v0 + 336);
        v52 = *(v0 + 344);
        sub_1000462A8(*(v0 + 816));
        (*(v52 + 104))(v50, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v51);
      }

      else
      {
        v61 = *(v0 + 784);
        v62 = *(v0 + 776);
        v63 = *(v0 + 760);
        v64 = *(v0 + 752);
        v65 = *(v0 + 368);
        v66 = *(v0 + 336);
        v67 = *(v0 + 344);
        v68 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
        (*(v67 + 104))(v65, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v66);
        (*(v63 + 8))(v49 + v68, v64);
        (*(v61 + 8))(v49, v62);
      }

      v69 = *(v0 + 424);
      v70 = *(v0 + 408);
      v190 = *(v0 + 400);
      v71 = *(v0 + 392);
      v73 = *(v0 + 368);
      v72 = *(v0 + 376);
      v75 = *(v0 + 336);
      v74 = *(v0 + 344);
      type metadata accessor for IDCSAnalytics();
      (*(v74 + 32))(v72, v73, v75);
      static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
      (*(v74 + 8))(v72, v75);
      sub_10000A0D4(v71, &qword_100201490, &qword_1001AB820);
      (*(v70 + 8))(v69, v190);
      defaultLogger()();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Reader authenticated offline successfully", v78, 2u);
      }

      v79 = *(v0 + 944);
      v80 = *(v0 + 848);
      v81 = *(v0 + 576);
      v82 = *(v0 + 496);
      v83 = *(v0 + 288);

      v79(v81, v82);
      v84 = *(v80 + 28);

      *(v83 + v84) = v205;
      if (v205)
      {
        v85 = (v0 + 560);
        defaultLogger()();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          v89 = "Ongoing OCSP check in the background";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v86, v87, v89, v88, 2u);
          v94 = *v85;

LABEL_31:
          v95 = *(v0 + 944);
          v96 = *(v0 + 496);

          v95(v94, v96);
          v98 = *(v0 + 64);
          v97 = *(v0 + 72);
          if (v98 == 0x2E6173742E6C646DLL && v97 == 0xEF766F672E736864 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v99 = 1;
          }

          else
          {
            v99 = 2;
            if (v98 != 0x61696D656469 || v97 != 0xE600000000000000)
            {
              v161 = *(v0 + 960);
              v162 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v161)
              {
                v163 = 3;
              }

              else
              {
                v163 = 0;
              }

              if (v162)
              {
                v99 = 2;
              }

              else
              {
                v99 = v163;
              }
            }
          }

          v100 = *(v0 + 896);
          *(*(v0 + 288) + *(*(v0 + 848) + 32)) = v99;
          if (v100 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            result = *((*(v0 + 896) & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v102 = *(v0 + 896);
          if (result < 2)
          {

            defaultLogger()();
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.error.getter();
            v107 = os_log_type_enabled(v105, v106);
            v108 = *(v0 + 944);
            v109 = *(v0 + 544);
            v110 = *(v0 + 496);
            if (v107)
            {
              v111 = swift_slowAlloc();
              *v111 = 0;
              _os_log_impl(&_mh_execute_header, v105, v106, "Reader certificate is a root CA", v111, 2u);
            }

            v108(v109, v110);
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = 0;
            v168 = 0;
            v169 = 0;
          }

          else
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (result > *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v103 = *(v102 + 8 * (result - 1) + 32);
            }

            v104 = v103;
            sub_100021A34((v0 + 16));
            v164 = *(v0 + 16);
            v165 = *(v0 + 24);
            v166 = *(v0 + 32);
            v167 = *(v0 + 40);
            v168 = *(v0 + 48);
            v169 = *(v0 + 56);
          }

          v182 = v169;
          v184 = v99;
          v186 = v168;
          v188 = v167;
          v191 = v166;
          v192 = v165;
          v193 = v164;
          v206 = *(v0 + 928);
          (*(*(v0 + 440) + 56))(*(v0 + 280), 1, 1, *(v0 + 432));
          goto LABEL_73;
        }
      }

      else
      {
        v85 = (v0 + 568);
        defaultLogger()();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          v89 = "No OCSP check in the background";
          goto LABEL_29;
        }
      }

      v94 = *v85;
      goto LABEL_31;
    }
  }

  v90 = *(v0 + 928);
  v91 = *(v0 + 656);
  v92 = *(v0 + 640);
  v93 = *(v0 + 632);
  *(v0 + 200) = *v1;
  sub_10001A8EC(v0 + 200);
  sub_10000A0D4(v0 + 184, &qword_1002014B0, &unk_1001ACFE0);
  *(v0 + 216) = *(v0 + 96);
  sub_10000A0D4(v0 + 216, &qword_1002014B0, &unk_1001ACFE0);

  (*(v92 + 104))(v91, enum case for DIPError.Code.idcsMissingReaderOrganization(_:), v93);
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v11 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_5:

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    v16 = *(v0 + 584);
    v17 = *(v0 + 496);
    v18 = *(v0 + 504);
    v19 = *(v0 + 432);
    v20 = *(v0 + 440);
    v21 = *(v0 + 280);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v18 + 8))(v16, v17);
    (*(v20 + 56))(v21, 1, 1, v19);
LABEL_57:
    v203 = 0;
    v206 = 0;
    v201 = 0;
    v202 = 0;
    v194 = 0;
    v196 = 0;
    v198 = 0;
    v192 = 0;
    v193 = 0;
    v188 = 0;
    v191 = 0;
    v186 = 0;
    v182 = 0;
    v184 = 0;
LABEL_73:
    v172 = *(v0 + 272);

    *v172 = v206;
    *(v172 + 8) = v203;
    *(v172 + 16) = v202;
    *(v172 + 24) = v194;
    *(v172 + 32) = v201;
    *(v172 + 40) = v198;
    *(v172 + 48) = v196;
    *(v172 + 56) = v193;
    *(v172 + 64) = v192;
    *(v172 + 72) = v191;
    *(v172 + 80) = v188;
    *(v172 + 88) = v186;
    *(v172 + 96) = v182;
    *(v172 + 104) = v184;
    v156 = *(v0 + 8);
    goto LABEL_74;
  }

  v28 = *(v0 + 640);
  v29 = *(v0 + 632);
  v30 = *(v0 + 328);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    goto LABEL_10;
  }

  v53 = *(v0 + 640);
  v54 = *(v0 + 632);
  v55 = *(v0 + 320);
  sub_100046360(*(v0 + 328), v55, &qword_100201488, &qword_1001ACFD0);
  v56 = (*(v53 + 88))(v55, v54);
  if (v56 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Encountered invalid reader request", v59, 2u);
    }

    v60 = *(v0 + 512);
  }

  else if (v56 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v57, v112, "Encountered missing or malformed auth certificates", v113, 2u);
    }

    v60 = *(v0 + 520);
  }

  else
  {
    if (v56 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v56 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
    {
      sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
      defaultLogger()();
      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.error.getter();
      v175 = os_log_type_enabled(v173, v174);
      v176 = *(v0 + 536);
      v178 = *(v0 + 496);
      v177 = *(v0 + 504);
      if (v175)
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&_mh_execute_header, v173, v174, "Encountered invalid signature during reader auth", v179, 2u);
      }

      (*(v177 + 8))(v176, v178);
      goto LABEL_50;
    }

    if (v56 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
    {
      (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_10:
      v31 = *(v0 + 584);
      v32 = *(v0 + 496);
      v33 = *(v0 + 504);
      v34 = *(v0 + 328);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v33 + 8))(v31, v32);
      sub_10000A0D4(v34, &qword_100201488, &qword_1001ACFD0);
      v204 = 0;
      v35 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
      goto LABEL_51;
    }

    defaultLogger()();
    v57 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v57, v170, "Encountered revoked reader auth certificate", v171, 2u);
    }

    v60 = *(v0 + 528);
  }

  v115 = *(v0 + 496);
  v114 = *(v0 + 504);
  v116 = *(v0 + 328);

  (*(v114 + 8))(v60, v115);
  sub_10000A0D4(v116, &qword_100201488, &qword_1001ACFD0);
LABEL_50:
  v204 = 1;
  v35 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
LABEL_51:
  v199 = v35;
  v117 = v11;
  v118 = *(v0 + 808);
  v119 = *(v0 + 408);
  v120 = *(v0 + 416);
  v121 = *(v0 + 400);
  v122 = *(v0 + 384);
  v123 = *(v0 + 304);
  v124 = *(v0 + 312);
  v125 = *(v0 + 288);
  v126 = *(v0 + 296);
  sub_100041CE0(v117, v124);
  (*(v119 + 104))(v120, *v199, v121);
  (*(v123 + 16))(v122, v124, v126);
  (*(v123 + 56))(v122, 0, 1, v126);
  v127 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v125 + *(v127 + 20), v118);
  v128 = swift_getEnumCaseMultiPayload();
  v129 = *(v0 + 808);
  if (v128 == 1)
  {
    v130 = *(v0 + 344);
    v131 = *(v0 + 352);
    v132 = *(v0 + 336);
    sub_1000462A8(*(v0 + 808));
    (*(v130 + 104))(v131, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v132);
  }

  else
  {
    v133 = *(v0 + 784);
    v134 = *(v0 + 776);
    v135 = *(v0 + 760);
    v136 = *(v0 + 752);
    v138 = *(v0 + 344);
    v137 = *(v0 + 352);
    v139 = *(v0 + 336);
    v140 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v138 + 104))(v137, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v139);
    (*(v135 + 8))(v129 + v140, v136);
    (*(v133 + 8))(v129, v134);
  }

  v141 = *(v0 + 640);
  v197 = *(v0 + 656);
  v200 = *(v0 + 632);
  v142 = *(v0 + 408);
  v143 = *(v0 + 416);
  v195 = *(v0 + 400);
  v144 = *(v0 + 384);
  v145 = *(v0 + 352);
  v146 = *(v0 + 360);
  v147 = *(v0 + 336);
  v148 = *(v0 + 344);
  type metadata accessor for IDCSAnalytics();
  (*(v148 + 32))(v146, v145, v147);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v148 + 8))(v146, v147);
  sub_10000A0D4(v144, &qword_100201490, &qword_1001AB820);
  (*(v142 + 8))(v143, v195);
  (*(v141 + 104))(v197, enum case for DIPError.Code.internalError(_:), v200);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (!v204)
  {
    v158 = *(v0 + 440);
    v157 = *(v0 + 448);
    v159 = *(v0 + 432);
    v160 = *(v0 + 280);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    (*(v158 + 32))(v160, v157, v159);
    (*(v158 + 56))(v160, 0, 1, v159);
    goto LABEL_57;
  }

  v149 = *(v0 + 440);
  v150 = *(v0 + 448);
  v151 = *(v0 + 432);
  v153 = *(v0 + 304);
  v152 = *(v0 + 312);
  v154 = *(v0 + 296);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v149 + 16))(v155, v150, v151);
  swift_willThrow();

  (*(v149 + 8))(v150, v151);
  (*(v153 + 8))(v152, v154);

  v156 = *(v0 + 8);
LABEL_74:

  return v156();
}

uint64_t sub_10003B254()
{
  v176 = v0;
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  sub_10004353C(v1);
  defaultLogger()();
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  v7(v2, v1, v3);
  v8 = Logger.logObject.getter();
  LODWORD(v172) = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v8, v172);
  v10 = *(v0 + 944);
  v11 = *(v0 + 608);
  v12 = *(v0 + 496);
  v173 = *(v0 + 504);
  v13 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  if (v9)
  {
    v170 = v12;
    v16 = swift_slowAlloc();
    v171 = v5;
    v17 = swift_slowAlloc();
    v175[0] = v17;
    *v16 = 136315138;
    sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v168 = v11;
    v169 = v10;
    v18 = v6;
    v19 = Error.localizedDescription.getter();
    v21 = v20;
    v174 = *(v14 + 8);
    v174(v13, v15);
    v22 = v19;
    v6 = v18;
    v23 = sub_10010150C(v22, v21, v175);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v8, v172, "Failed to verify trust with Apple issued roots: %s", v16, 0xCu);
    sub_100005090(v17);

    v169(v168, v170);
  }

  else
  {

    v174 = *(v14 + 8);
    v174(v13, v15);
    v10(v11, v12);
  }

  v24 = *(v0 + 648);
  v25 = *(v0 + 640);
  v26 = *(v0 + 632);
  DIPError.code.getter();
  v27 = (*(v25 + 88))(v24, v26);
  if (v27 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:) && v27 != enum case for DIPError.Code.idcsExpiredReaderAuthCertificate(_:) && v27 != enum case for DIPError.Code.idcsUnknownDocumentType(_:) && v27 != enum case for DIPError.Code.idcsNotYetValidReaderAuthCertificate(_:))
  {
    v28 = *(v0 + 648);
    v29 = *(v0 + 640);
    v30 = *(v0 + 632);
    v174(*(v0 + 464), *(v0 + 432));

    (*(v29 + 8))(v28, v30);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Verifying trust with non Apple issued roots", v33, 2u);
    }

    v34 = *(v0 + 944);
    v35 = *(v0 + 988);
    v36 = *(v0 + 592);
    v37 = *(v0 + 496);
    v38 = *(v0 + 288);

    v34(v36, v37);
    v39 = swift_task_alloc();
    *(v0 + 968) = v39;
    *v39 = v0;
    v39[1] = sub_10003C608;
    v40 = *(v0 + 936);
    v41 = *(v0 + 920);
    v42 = *(v0 + 912);
    v43 = *(v0 + 904);
    v44 = *(v0 + 896);

    return sub_1000421D0(v40, v42, v41, v43, v44, v38 + v35);
  }

  LODWORD(v171) = enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:);
  v46 = *(v0 + 464);
  v47 = *(v0 + 432);
  v48 = sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6(v49, v46, v47);
  swift_willThrow();

  v174(v46, v47);
  v174 = *(v0 + 928);
  v50 = *(v0 + 656);
  v51 = *(v0 + 640);

  LODWORD(v173) = enum case for DIPError.Code.internalError(_:);
  (*(v51 + 104))(v50);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v172 = v48;
  v52 = swift_allocError();
  HIBYTE(v138[1]) = -18;
  strcpy(v138, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v53 = [objc_opt_self() standardUserDefaults];
  v54 = String._bridgeToObjectiveC()();
  v55 = [v53 BOOLForKey:v54];

  if (v55)
  {
    v56 = *(v0 + 584);
    v57 = *(v0 + 496);
    v58 = *(v0 + 504);
    v59 = *(v0 + 432);
    v60 = *(v0 + 440);
    v61 = *(v0 + 280);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v58 + 8))(v56, v57);
    (*(v60 + 56))(v61, 1, 1, v59);
LABEL_33:
    v139 = *(v0 + 704);
    v140 = *(v0 + 696);
    v141 = *(v0 + 680);
    v142 = *(v0 + 672);
    v143 = *(v0 + 656);
    v144 = *(v0 + 648);
    v145 = *(v0 + 624);
    v146 = *(v0 + 616);
    v147 = *(v0 + 608);
    v148 = *(v0 + 600);
    v149 = *(v0 + 592);
    v150 = *(v0 + 584);
    v151 = *(v0 + 576);
    v152 = *(v0 + 568);
    v153 = *(v0 + 560);
    v154 = *(v0 + 552);
    v155 = *(v0 + 544);
    v156 = *(v0 + 536);
    v157 = *(v0 + 528);
    v158 = *(v0 + 520);
    v159 = *(v0 + 512);
    v160 = *(v0 + 488);
    v161 = *(v0 + 464);
    v162 = *(v0 + 456);
    v163 = *(v0 + 448);
    v164 = *(v0 + 424);
    v165 = *(v0 + 416);
    v166 = *(v0 + 392);
    v167 = *(v0 + 384);
    v168 = *(v0 + 376);
    v169 = *(v0 + 368);
    v170 = *(v0 + 360);
    v171 = *(v0 + 352);
    v172 = *(v0 + 328);
    v173 = *(v0 + 320);
    v174 = *(v0 + 312);
    v128 = *(v0 + 272);

    *(v128 + 89) = 0u;
    v128[4] = 0u;
    v128[5] = 0u;
    v128[2] = 0u;
    v128[3] = 0u;
    *v128 = 0u;
    v128[1] = 0u;
    v123 = *(v0 + 8);
    goto LABEL_34;
  }

  v62 = *(v0 + 640);
  v63 = *(v0 + 632);
  v64 = *(v0 + 328);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v65 = (*(v62 + 48))(v64, 1, v63);
  v170 = "nauthenticated reader";
  if (v65 == 1)
  {
    goto LABEL_16;
  }

  v71 = *(v0 + 640);
  v72 = *(v0 + 632);
  v73 = *(v0 + 320);
  sub_100046360(*(v0 + 328), v73, &qword_100201488, &qword_1001ACFD0);
  v74 = (*(v71 + 88))(v73, v72);
  if (v74 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    defaultLogger()();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Encountered invalid reader request", v77, 2u);
    }

    v78 = *(v0 + 512);
  }

  else if (v74 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    defaultLogger()();
    v75 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v75, v79, "Encountered missing or malformed auth certificates", v80, 2u);
    }

    v78 = *(v0 + 520);
  }

  else
  {
    if (v74 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v74 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
    {
      sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
      defaultLogger()();
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      v133 = os_log_type_enabled(v131, v132);
      v134 = *(v0 + 536);
      v135 = *(v0 + 496);
      v136 = *(v0 + 504);
      if (v133)
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&_mh_execute_header, v131, v132, "Encountered invalid signature during reader auth", v137, 2u);
      }

      (*(v136 + 8))(v134, v135);
      goto LABEL_26;
    }

    if (v74 != v171)
    {
      (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_16:
      v66 = *(v0 + 584);
      v67 = *(v0 + 496);
      v68 = *(v0 + 504);
      v69 = *(v0 + 328);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v68 + 8))(v66, v67);
      sub_10000A0D4(v69, &qword_100201488, &qword_1001ACFD0);
      LODWORD(v171) = 0;
      v70 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
      goto LABEL_27;
    }

    defaultLogger()();
    v75 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v75, v129, "Encountered revoked reader auth certificate", v130, 2u);
    }

    v78 = *(v0 + 528);
  }

  v81 = *(v0 + 496);
  v82 = *(v0 + 504);
  v83 = *(v0 + 328);

  (*(v82 + 8))(v78, v81);
  sub_10000A0D4(v83, &qword_100201488, &qword_1001ACFD0);
LABEL_26:
  LODWORD(v171) = 1;
  v70 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
LABEL_27:
  v167 = v70;
  v84 = v52;
  v85 = *(v0 + 808);
  v168 = *(v0 + 800);
  v86 = *(v0 + 408);
  v87 = *(v0 + 416);
  v88 = *(v0 + 400);
  v89 = *(v0 + 384);
  v90 = *(v0 + 304);
  v91 = *(v0 + 312);
  v92 = *(v0 + 288);
  v93 = *(v0 + 296);
  v174 = v84;
  sub_100041CE0(v84, *(v0 + 312));
  v169 = *v92;
  (*(v86 + 104))(v87, *v167, v88);
  (*(v90 + 16))(v89, v91, v93);
  (*(v90 + 56))(v89, 0, 1, v93);
  v94 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v92 + *(v94 + 20), v85);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v96 = *(v0 + 808);
  if (EnumCaseMultiPayload == 1)
  {
    v97 = *(v0 + 344);
    v98 = *(v0 + 352);
    v99 = *(v0 + 336);
    sub_1000462A8(*(v0 + 808));
    (*(v97 + 104))(v98, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v99);
  }

  else
  {
    v100 = *(v0 + 784);
    v101 = *(v0 + 776);
    v102 = *(v0 + 760);
    v103 = *(v0 + 752);
    v105 = *(v0 + 344);
    v104 = *(v0 + 352);
    v106 = *(v0 + 336);
    v107 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v105 + 104))(v104, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v106);
    (*(v102 + 8))(v96 + v107, v103);
    (*(v100 + 8))(v96, v101);
  }

  v108 = *(v0 + 640);
  v166 = *(v0 + 656);
  v167 = *(v0 + 632);
  v168 = *(v0 + 448);
  v109 = *(v0 + 408);
  v110 = *(v0 + 416);
  v165 = *(v0 + 400);
  v111 = *(v0 + 384);
  v112 = *(v0 + 352);
  v113 = *(v0 + 360);
  v114 = *(v0 + 336);
  v115 = *(v0 + 344);
  type metadata accessor for IDCSAnalytics();
  (*(v115 + 32))(v113, v112, v114);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v115 + 8))(v113, v114);
  sub_10000A0D4(v111, &qword_100201490, &qword_1001AB820);
  (*(v109 + 8))(v110, v165);
  (*(v108 + 104))(v166, v173, v167);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  v138[2] = 267;
  HIBYTE(v138[1]) = -18;
  strcpy(v138, "authenticate()");
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (!v171)
  {
    v125 = *(v0 + 440);
    v124 = *(v0 + 448);
    v126 = *(v0 + 432);
    v127 = *(v0 + 280);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    (*(v125 + 32))(v127, v124, v126);
    (*(v125 + 56))(v127, 0, 1, v126);
    goto LABEL_33;
  }

  v138[4] = *(v0 + 824);
  v138[5] = *(v0 + 816);
  v138[6] = *(v0 + 808);
  v138[7] = *(v0 + 792);
  v138[8] = *(v0 + 768);
  v138[9] = *(v0 + 744);
  v138[10] = *(v0 + 736);
  v138[11] = *(v0 + 728);
  v139 = *(v0 + 704);
  v140 = *(v0 + 696);
  v141 = *(v0 + 680);
  v142 = *(v0 + 672);
  v143 = *(v0 + 656);
  v144 = *(v0 + 648);
  v145 = *(v0 + 624);
  v146 = *(v0 + 616);
  v147 = *(v0 + 608);
  v148 = *(v0 + 600);
  v149 = *(v0 + 592);
  v150 = *(v0 + 584);
  v151 = *(v0 + 576);
  v152 = *(v0 + 568);
  v153 = *(v0 + 560);
  v154 = *(v0 + 552);
  v155 = *(v0 + 544);
  v156 = *(v0 + 536);
  v157 = *(v0 + 528);
  v158 = *(v0 + 520);
  v159 = *(v0 + 512);
  v160 = *(v0 + 488);
  v161 = *(v0 + 464);
  v117 = *(v0 + 440);
  v116 = *(v0 + 448);
  v118 = *(v0 + 432);
  v162 = *(v0 + 456);
  v163 = *(v0 + 424);
  v164 = *(v0 + 416);
  v165 = *(v0 + 392);
  v166 = *(v0 + 384);
  v167 = *(v0 + 376);
  v168 = *(v0 + 368);
  v169 = *(v0 + 360);
  v170 = *(v0 + 352);
  v171 = *(v0 + 328);
  v173 = *(v0 + 320);
  v120 = *(v0 + 304);
  v119 = *(v0 + 312);
  v121 = *(v0 + 296);
  v172 = swift_allocError();
  (*(v117 + 16))(v122, v116, v118);
  swift_willThrow();

  (*(v117 + 8))(v116, v118);
  (*(v120 + 8))(v119, v121);

  v123 = *(v0 + 8);
LABEL_34:

  return v123();
}

uint64_t sub_10003C608(uint64_t a1)
{
  v3 = *v2;
  v3[20] = v2;
  v3[21] = a1;
  v3[22] = v1;
  v3[122] = v1;

  if (v1)
  {
    v4 = sub_10003E0EC;
  }

  else
  {
    v4 = sub_10003C724;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003C724()
{
  v1 = (v0 + 64);
  v2 = *(v0 + 976);
  v205 = *(v0 + 168);

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Verified reader certificate chain", v5, 2u);
  }

  v6 = *(v0 + 944);
  v7 = *(v0 + 928);
  v8 = *(v0 + 600);
  v9 = *(v0 + 496);

  v6(v8, v9);
  v10 = v7;
  sub_100021A34((v0 + 64));
  v11 = v2;
  v12 = *(v0 + 928);
  if (v11)
  {

    goto LABEL_5;
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 984);
  v24 = *(v0 + 824);
  v25 = *(v0 + 288);
  v202 = *(v0 + 72);
  v203 = *(v0 + 64);
  v198 = *(v0 + 96);
  v201 = *(v0 + 88);
  v196 = *(v0 + 104);

  sub_100046244(v25 + v23, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *(v0 + 824);
  if (EnumCaseMultiPayload == 1)
  {
    v194 = v22;
    sub_1000462A8(v27);
    goto LABEL_14;
  }

  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v38 = *(v0 + 760);
  v39 = *(v0 + 752);
  v40 = sub_100004E70(&qword_1002014A8, &qword_1001AB838);
  (*(v38 + 8))(v27 + *(v40 + 48), v39);
  (*(v36 + 8))(v27, v37);
  *(v0 + 184) = *(v0 + 80);
  v41 = *(v0 + 192);
  if (v41)
  {
    *(v0 + 232) = *(v0 + 184);
    *(v0 + 240) = v41;
    sub_10004630C();
    Collection.nilIfEmpty.getter();
    if (*(v0 + 256))
    {
      v194 = v22;

LABEL_14:
      v42 = *(v0 + 816);
      v189 = *(v0 + 984);
      v43 = *(v0 + 584);
      v44 = *(v0 + 496);
      v180 = *(v0 + 424);
      v181 = *(v0 + 944);
      v46 = *(v0 + 400);
      v45 = *(v0 + 408);
      v47 = *(v0 + 304);
      v183 = *(v0 + 392);
      v185 = *(v0 + 296);
      v187 = *(v0 + 288);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v1;
      Logger.sensitive(_:)();

      v181(v43, v44);
      (*(v45 + 104))(v180, enum case for IDCSAnalytics.ReaderAuthOutcome.authenticated(_:), v46);
      (*(v47 + 56))(v183, 1, 1, v185);
      sub_100046244(v187 + v189, v42);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 816);
      if (v48 == 1)
      {
        v50 = *(v0 + 368);
        v51 = *(v0 + 336);
        v52 = *(v0 + 344);
        sub_1000462A8(*(v0 + 816));
        (*(v52 + 104))(v50, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v51);
      }

      else
      {
        v61 = *(v0 + 784);
        v62 = *(v0 + 776);
        v63 = *(v0 + 760);
        v64 = *(v0 + 752);
        v65 = *(v0 + 368);
        v66 = *(v0 + 336);
        v67 = *(v0 + 344);
        v68 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
        (*(v67 + 104))(v65, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v66);
        (*(v63 + 8))(v49 + v68, v64);
        (*(v61 + 8))(v49, v62);
      }

      v69 = *(v0 + 424);
      v70 = *(v0 + 408);
      v190 = *(v0 + 400);
      v71 = *(v0 + 392);
      v73 = *(v0 + 368);
      v72 = *(v0 + 376);
      v75 = *(v0 + 336);
      v74 = *(v0 + 344);
      type metadata accessor for IDCSAnalytics();
      (*(v74 + 32))(v72, v73, v75);
      static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
      (*(v74 + 8))(v72, v75);
      sub_10000A0D4(v71, &qword_100201490, &qword_1001AB820);
      (*(v70 + 8))(v69, v190);
      defaultLogger()();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Reader authenticated offline successfully", v78, 2u);
      }

      v79 = *(v0 + 944);
      v80 = *(v0 + 848);
      v81 = *(v0 + 576);
      v82 = *(v0 + 496);
      v83 = *(v0 + 288);

      v79(v81, v82);
      v84 = *(v80 + 28);

      *(v83 + v84) = v205;
      if (v205)
      {
        v85 = (v0 + 560);
        defaultLogger()();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          v89 = "Ongoing OCSP check in the background";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v86, v87, v89, v88, 2u);
          v94 = *v85;

LABEL_31:
          v95 = *(v0 + 944);
          v96 = *(v0 + 496);

          v95(v94, v96);
          v98 = *(v0 + 64);
          v97 = *(v0 + 72);
          if (v98 == 0x2E6173742E6C646DLL && v97 == 0xEF766F672E736864 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v99 = 1;
          }

          else
          {
            v99 = 2;
            if (v98 != 0x61696D656469 || v97 != 0xE600000000000000)
            {
              v161 = *(v0 + 960);
              v162 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v161)
              {
                v163 = 3;
              }

              else
              {
                v163 = 0;
              }

              if (v162)
              {
                v99 = 2;
              }

              else
              {
                v99 = v163;
              }
            }
          }

          v100 = *(v0 + 896);
          *(*(v0 + 288) + *(*(v0 + 848) + 32)) = v99;
          if (v100 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            result = *((*(v0 + 896) & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v102 = *(v0 + 896);
          if (result < 2)
          {

            defaultLogger()();
            v105 = Logger.logObject.getter();
            v106 = static os_log_type_t.error.getter();
            v107 = os_log_type_enabled(v105, v106);
            v108 = *(v0 + 944);
            v109 = *(v0 + 544);
            v110 = *(v0 + 496);
            if (v107)
            {
              v111 = swift_slowAlloc();
              *v111 = 0;
              _os_log_impl(&_mh_execute_header, v105, v106, "Reader certificate is a root CA", v111, 2u);
            }

            v108(v109, v110);
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v167 = 0;
            v168 = 0;
            v169 = 0;
          }

          else
          {
            if ((v102 & 0xC000000000000001) != 0)
            {
              v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (result > *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v103 = *(v102 + 8 * (result - 1) + 32);
            }

            v104 = v103;
            sub_100021A34((v0 + 16));
            v164 = *(v0 + 16);
            v165 = *(v0 + 24);
            v166 = *(v0 + 32);
            v167 = *(v0 + 40);
            v168 = *(v0 + 48);
            v169 = *(v0 + 56);
          }

          v182 = v169;
          v184 = v99;
          v186 = v168;
          v188 = v167;
          v191 = v166;
          v192 = v165;
          v193 = v164;
          v206 = *(v0 + 928);
          (*(*(v0 + 440) + 56))(*(v0 + 280), 1, 1, *(v0 + 432));
          goto LABEL_73;
        }
      }

      else
      {
        v85 = (v0 + 568);
        defaultLogger()();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          v89 = "No OCSP check in the background";
          goto LABEL_29;
        }
      }

      v94 = *v85;
      goto LABEL_31;
    }
  }

  v90 = *(v0 + 928);
  v91 = *(v0 + 656);
  v92 = *(v0 + 640);
  v93 = *(v0 + 632);
  *(v0 + 200) = *v1;
  sub_10001A8EC(v0 + 200);
  sub_10000A0D4(v0 + 184, &qword_1002014B0, &unk_1001ACFE0);
  *(v0 + 216) = *(v0 + 96);
  sub_10000A0D4(v0 + 216, &qword_1002014B0, &unk_1001ACFE0);

  (*(v92 + 104))(v91, enum case for DIPError.Code.idcsMissingReaderOrganization(_:), v93);
  sub_10002688C(_swiftEmptyArrayStorage);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v11 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_5:

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  if (v15)
  {
    v16 = *(v0 + 584);
    v17 = *(v0 + 496);
    v18 = *(v0 + 504);
    v19 = *(v0 + 432);
    v20 = *(v0 + 440);
    v21 = *(v0 + 280);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v18 + 8))(v16, v17);
    (*(v20 + 56))(v21, 1, 1, v19);
LABEL_57:
    v203 = 0;
    v206 = 0;
    v201 = 0;
    v202 = 0;
    v194 = 0;
    v196 = 0;
    v198 = 0;
    v192 = 0;
    v193 = 0;
    v188 = 0;
    v191 = 0;
    v186 = 0;
    v182 = 0;
    v184 = 0;
LABEL_73:
    v172 = *(v0 + 272);

    *v172 = v206;
    *(v172 + 8) = v203;
    *(v172 + 16) = v202;
    *(v172 + 24) = v194;
    *(v172 + 32) = v201;
    *(v172 + 40) = v198;
    *(v172 + 48) = v196;
    *(v172 + 56) = v193;
    *(v172 + 64) = v192;
    *(v172 + 72) = v191;
    *(v172 + 80) = v188;
    *(v172 + 88) = v186;
    *(v172 + 96) = v182;
    *(v172 + 104) = v184;
    v156 = *(v0 + 8);
    goto LABEL_74;
  }

  v28 = *(v0 + 640);
  v29 = *(v0 + 632);
  v30 = *(v0 + 328);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    goto LABEL_10;
  }

  v53 = *(v0 + 640);
  v54 = *(v0 + 632);
  v55 = *(v0 + 320);
  sub_100046360(*(v0 + 328), v55, &qword_100201488, &qword_1001ACFD0);
  v56 = (*(v53 + 88))(v55, v54);
  if (v56 == enum case for DIPError.Code.idcsInvalidReaderRequest(_:))
  {
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Encountered invalid reader request", v59, 2u);
    }

    v60 = *(v0 + 512);
  }

  else if (v56 == enum case for DIPError.Code.idcsMissingReaderAuthCerts(_:))
  {
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v57, v112, "Encountered missing or malformed auth certificates", v113, 2u);
    }

    v60 = *(v0 + 520);
  }

  else
  {
    if (v56 == enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:) || v56 == enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:))
    {
      sub_10000A0D4(*(v0 + 328), &qword_100201488, &qword_1001ACFD0);
      defaultLogger()();
      v173 = Logger.logObject.getter();
      v174 = static os_log_type_t.error.getter();
      v175 = os_log_type_enabled(v173, v174);
      v176 = *(v0 + 536);
      v178 = *(v0 + 496);
      v177 = *(v0 + 504);
      if (v175)
      {
        v179 = swift_slowAlloc();
        *v179 = 0;
        _os_log_impl(&_mh_execute_header, v173, v174, "Encountered invalid signature during reader auth", v179, 2u);
      }

      (*(v177 + 8))(v176, v178);
      goto LABEL_50;
    }

    if (v56 != enum case for DIPError.Code.idcsRevokedReaderAuthCertificate(_:))
    {
      (*(*(v0 + 640) + 8))(*(v0 + 320), *(v0 + 632));
LABEL_10:
      v31 = *(v0 + 584);
      v32 = *(v0 + 496);
      v33 = *(v0 + 504);
      v34 = *(v0 + 328);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v33 + 8))(v31, v32);
      sub_10000A0D4(v34, &qword_100201488, &qword_1001ACFD0);
      v204 = 0;
      v35 = &enum case for IDCSAnalytics.ReaderAuthOutcome.unauthenticated(_:);
      goto LABEL_51;
    }

    defaultLogger()();
    v57 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v57, v170, "Encountered revoked reader auth certificate", v171, 2u);
    }

    v60 = *(v0 + 528);
  }

  v115 = *(v0 + 496);
  v114 = *(v0 + 504);
  v116 = *(v0 + 328);

  (*(v114 + 8))(v60, v115);
  sub_10000A0D4(v116, &qword_100201488, &qword_1001ACFD0);
LABEL_50:
  v204 = 1;
  v35 = &enum case for IDCSAnalytics.ReaderAuthOutcome.rejected(_:);
LABEL_51:
  v199 = v35;
  v117 = v11;
  v118 = *(v0 + 808);
  v119 = *(v0 + 408);
  v120 = *(v0 + 416);
  v121 = *(v0 + 400);
  v122 = *(v0 + 384);
  v123 = *(v0 + 304);
  v124 = *(v0 + 312);
  v125 = *(v0 + 288);
  v126 = *(v0 + 296);
  sub_100041CE0(v117, v124);
  (*(v119 + 104))(v120, *v199, v121);
  (*(v123 + 16))(v122, v124, v126);
  (*(v123 + 56))(v122, 0, 1, v126);
  v127 = type metadata accessor for IdentityReaderAuthenticator(0);
  sub_100046244(v125 + *(v127 + 20), v118);
  v128 = swift_getEnumCaseMultiPayload();
  v129 = *(v0 + 808);
  if (v128 == 1)
  {
    v130 = *(v0 + 344);
    v131 = *(v0 + 352);
    v132 = *(v0 + 336);
    sub_1000462A8(*(v0 + 808));
    (*(v130 + 104))(v131, enum case for IDCSAnalytics.ReaderAuthTypeTag.web(_:), v132);
  }

  else
  {
    v133 = *(v0 + 784);
    v134 = *(v0 + 776);
    v135 = *(v0 + 760);
    v136 = *(v0 + 752);
    v138 = *(v0 + 344);
    v137 = *(v0 + 352);
    v139 = *(v0 + 336);
    v140 = *(sub_100004E70(&qword_1002014A8, &qword_1001AB838) + 48);
    (*(v138 + 104))(v137, enum case for IDCSAnalytics.ReaderAuthTypeTag.physical(_:), v139);
    (*(v135 + 8))(v129 + v140, v136);
    (*(v133 + 8))(v129, v134);
  }

  v141 = *(v0 + 640);
  v197 = *(v0 + 656);
  v200 = *(v0 + 632);
  v142 = *(v0 + 408);
  v143 = *(v0 + 416);
  v195 = *(v0 + 400);
  v144 = *(v0 + 384);
  v145 = *(v0 + 352);
  v146 = *(v0 + 360);
  v147 = *(v0 + 336);
  v148 = *(v0 + 344);
  type metadata accessor for IDCSAnalytics();
  (*(v148 + 32))(v146, v145, v147);
  static IDCSAnalytics.sendReaderAuthOutcomeEvent(documentTypes:outcome:failureReason:readerAuthType:)();
  (*(v148 + 8))(v146, v147);
  sub_10000A0D4(v144, &qword_100201490, &qword_1001AB820);
  (*(v142 + 8))(v143, v195);
  (*(v141 + 104))(v197, enum case for DIPError.Code.internalError(_:), v200);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  if (!v204)
  {
    v158 = *(v0 + 440);
    v157 = *(v0 + 448);
    v159 = *(v0 + 432);
    v160 = *(v0 + 280);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    (*(v158 + 32))(v160, v157, v159);
    (*(v158 + 56))(v160, 0, 1, v159);
    goto LABEL_57;
  }

  v149 = *(v0 + 440);
  v150 = *(v0 + 448);
  v151 = *(v0 + 432);
  v153 = *(v0 + 304);
  v152 = *(v0 + 312);
  v154 = *(v0 + 296);
  sub_10004697C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v149 + 16))(v155, v150, v151);
  swift_willThrow();

  (*(v149 + 8))(v150, v151);
  (*(v153 + 8))(v152, v154);

  v156 = *(v0 + 8);
LABEL_74:

  return v156();
}