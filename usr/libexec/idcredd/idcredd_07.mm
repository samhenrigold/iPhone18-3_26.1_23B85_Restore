unint64_t sub_1000D13B0(uint64_t a1)
{
  _StringGuts.grow(_:)(39);

  sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
  v1._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000025;
}

unint64_t sub_1000D1458(uint64_t *a1)
{
  _StringGuts.grow(_:)(26);

  sub_100004E70(&qword_100202960, &qword_1001AD138);
  v1 = Dictionary.description.getter();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  return 0xD000000000000018;
}

uint64_t sub_1000D1528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for CredentialKeyType();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000D16C0, 0, 0);
}

uint64_t sub_1000D16C0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder signDeviceSignedData", v4, 2u);
  }

  v5 = v1[20];
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[16];
  v9 = v1[13];
  v10 = v1[14];
  v11 = v1[6];

  v12 = *(v7 + 8);
  v12(v5, v6);
  v13 = *(v11 + *(type metadata accessor for PresentmentProposal(0) + 40));
  v14 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
  v15 = *(v10 + 16);
  v15(v8, v13 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v9);
  v16 = (*(v10 + 88))(v8, v9);
  if (v16 == enum case for CredentialKeyType.legacySE(_:))
  {
    v17 = swift_task_alloc();
    v1[21] = v17;
    *v17 = v1;
    v17[1] = sub_1000D1C80;
    v18 = v1[8];
    v19 = v1[6];
    v20 = v1[7];
    v21 = v1[4];
    v22 = v1[5];

    return sub_1000D418C(v21, v22, v19, v20, v18);
  }

  else if (v16 == enum case for CredentialKeyType.ses(_:))
  {
    v24 = swift_task_alloc();
    v1[23] = v24;
    *v24 = v1;
    v24[1] = sub_1000D1E78;
    v25 = v1[8];
    v26 = v1[6];
    v27 = v1[7];
    v28 = v1[4];
    v29 = v1[5];

    return sub_1000D20C4(v28, v29, v26, v27, v25);
  }

  else
  {
    if (v16 == enum case for CredentialKeyType.externalSE(_:))
    {
      defaultLogger()();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Device signature with external SE key is not supported; skipping signature", v32, 2u);
      }

      v33 = v1[19];
      v34 = v1[17];

      v12(v33, v34);
      v35 = v1[4];
      v36 = type metadata accessor for COSE_Sign1();
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);

      v37 = v1[1];
    }

    else
    {
      v38 = v1[15];
      v46 = v1[16];
      v39 = v1[13];
      v40 = v1[14];
      v41 = v1[11];
      v44 = v1[12];
      v45 = v1[10];
      _StringGuts.grow(_:)(39);
      v1[2] = 0;
      v1[3] = 0xE000000000000000;
      v42._object = 0x80000001001B8D60;
      v42._countAndFlagsBits = 0xD000000000000025;
      String.append(_:)(v42);
      v15(v38, v13 + v14, v39);
      _print_unlocked<A, B>(_:_:)();
      v43 = *(v40 + 8);
      v43(v38, v39);
      (*(v41 + 104))(v44, enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v45);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v43(v46, v39);

      v37 = v1[1];
    }

    return v37();
  }
}

uint64_t sub_1000D1C80()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1000D1F8C;
  }

  else
  {
    v2 = sub_1000D1D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D1D94()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for COSE_Sign1();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D1E78()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000D2028;
  }

  else
  {
    v2 = sub_1000DD018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D1F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D2028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D20C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = type metadata accessor for PresentmentProposal(0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v6[18] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013SessionTranscript();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000D2404, 0, 0);
}

uint64_t sub_1000D2404(uint64_t a1)
{
  v135 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder signDeviceSignedDataSES", v4, 2u);
  }

  v5 = v1[32];
  v6 = v1[26];
  v7 = v1[27];

  v8 = *(v7 + 8);
  v1[33] = v8;
  v8(v5, v6);
  static IDCSSignposts.presentmentBuildResponseSignDeviceDataSES.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Signing device signed data with SES key", v11, 2u);
  }

  v12 = v1[31];
  v13 = v1[26];
  v14 = v1[19];
  v15 = v1[20];
  v16 = v1[18];
  v17 = v1[5];

  v8(v12, v13);
  sub_100046360(v17, v16, &qword_100202370, &qword_1001ACE68);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v19 = v1[10];
    v18 = v1[11];
    v20 = v1[9];
    sub_10000A0D4(v1[18], &qword_100202370, &qword_1001ACE68);
    (*(v19 + 104))(v18, enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:), v20);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_12;
  }

  v21 = v1[3];
  (*(v1[20] + 32))(v1[21], v1[18], v1[19]);
  v22 = [v21 authData];
  if (!v22)
  {
    v41 = v1[20];
    v40 = v1[21];
    v42 = v1[19];
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.idcsMissingAuthDataInPresentmentSelection(_:), v1[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v41 + 8))(v40, v42);
    goto LABEL_12;
  }

  v23 = v1[15];
  v24 = v1[4];
  v25 = v22;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v1[34] = v26;
  v1[35] = v28;
  v1[36] = *(v24 + *(v23 + 40));
  type metadata accessor for SESPresentmentKey(0);
  v29 = swift_dynamicCastClass();
  v30 = v1[21];
  if (!v29)
  {
    v43 = v1[20];
    v127 = v1[19];
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.badLogic(_:), v1[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v26, v28);
    (*(v43 + 8))(v30, v127);
    goto LABEL_12;
  }

  v132 = v23;
  v126 = v28;
  v129 = v26;
  v31 = v1[6];
  v32 = v1[4];
  v33 = v29 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob;
  v34 = *(v29 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob);
  v1[37] = v34;
  v35 = *(v33 + 8);
  v1[38] = v35;
  v37 = *(v32 + 8);
  v36 = *(v32 + 16);

  sub_100009708(v34, v35);
  v38 = sub_1000D66BC(v30, v37, v36, v31);
  v1[39] = v38;
  v1[40] = v39;
  v119 = v38;
  v123 = v34;
  v121 = v39;
  v50 = v1[16];
  v49 = v1[17];
  v51 = v1[4];
  defaultLogger()();
  sub_1000DC5D0(v51, v49, type metadata accessor for PresentmentProposal);
  sub_1000DC5D0(v51, v50, type metadata accessor for PresentmentProposal);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v131 = v52;
  v54 = os_log_type_enabled(v52, v53);
  v55 = v1[30];
  v56 = v1[26];
  v58 = v1[16];
  v57 = v1[17];
  if (v54)
  {
    v59 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v59 = 136315394;
    v60 = *(v57 + *(v132 + 40));
    v113 = v56;
    v114 = v55;
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);

    sub_1000DC488(v57, type metadata accessor for PresentmentProposal);
    v63 = sub_10010150C(v61, v62, &v133);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = (*(*(v58 + *(v132 + 40) + 8) + 16))(**(v58 + *(v132 + 40)));
    v66 = v65;
    v67 = Data.base16EncodedString()();
    sub_1000092BC(v64, v66);
    sub_1000DC488(v58, type metadata accessor for PresentmentProposal);
    v68 = sub_10010150C(v67._countAndFlagsBits, v67._object, &v133);

    *(v59 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v131, v53, "Signing device authentication with SES key %s, public key identifier %s", v59, 0x16u);
    swift_arrayDestroy();

    v8(v114, v113);
  }

  else
  {

    v8(v55, v56);
    sub_1000DC488(v57, type metadata accessor for PresentmentProposal);
    sub_1000DC488(v58, type metadata accessor for PresentmentProposal);
  }

  v70 = v123;
  v69 = v35;
  v71 = *(v1[4] + *(v1[15] + 44));
  if ((v71 - 1) >= 2)
  {
    if (v71)
    {
      v101 = v1[20];
      v125 = v1[21];
      v117 = v1[19];
      (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.internalError(_:), v1[9]);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v119, v121);
      sub_1000092BC(v70, v35);
      sub_1000092BC(v129, v126);

      (*(v101 + 8))(v125, v117);
    }

    else
    {
      defaultLogger()();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Auth policy is not required; using empty signature", v84, 2u);
      }

      v85 = v1[29];
      v86 = v1[26];

      v8(v85, v86);
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v87 = __DataStorage.init(length:)();
      v133 = 0x2000000000;
      v134 = v87;
      sub_1000D8EE8(&v133, 0);
      v88 = v133;
      v89 = v134 | 0x4000000000000000;
      v90 = v1[33];
      v91 = v1[28];
      v92 = v1[26];
      v93 = v1[8];
      defaultLogger()();
      v94 = swift_task_alloc();
      *(v94 + 16) = v88;
      *(v94 + 24) = v89;
      Logger.cryptoParam(_:)();

      v90(v91, v92);
      sub_100009708(v88, v89);
      COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
      v95 = type metadata accessor for COSE_Sign1();
      v96 = *(v95 - 8);
      if ((*(v96 + 48))(v93, 1, v95) != 1)
      {
        v102 = v1[39];
        v103 = v1[40];
        v110 = v1[38];
        v111 = v1[35];
        v108 = v1[37];
        v109 = v1[34];
        v105 = v1[24];
        v104 = v1[25];
        v112 = v1[23];
        v106 = v1[8];
        v107 = v1[2];
        (*(v1[20] + 8))();
        sub_1000092BC(v102, v103);
        sub_1000092BC(v108, v110);
        sub_1000092BC(v109, v111);

        sub_1000092BC(v88, v89);
        (*(v96 + 32))(v107, v106, v95);
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v105 + 8))(v104, v112);

        v47 = v1[1];
        goto LABEL_13;
      }

      v115 = v1[39];
      v116 = v1[40];
      v122 = v1[38];
      v124 = v1[35];
      v118 = v1[37];
      v120 = v1[34];
      v97 = v1[20];
      v128 = v1[19];
      v130 = v1[21];
      v99 = v1[10];
      v98 = v1[11];
      v100 = v1[9];
      sub_10000A0D4(v1[8], &qword_1002014D0, &unk_1001AD120);
      (*(v99 + 104))(v98, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v100);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v115, v116);
      sub_1000092BC(v118, v122);
      sub_1000092BC(v120, v124);

      sub_1000092BC(v88, v89);
      (*(v97 + 8))(v130, v128);
    }

LABEL_12:
    v45 = v1[24];
    v44 = v1[25];
    v46 = v1[23];
    (*(v1[10] + 104))(v1[11], enum case for DIPError.Code.internalError(_:), v1[9]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v45 + 8))(v44, v46);

    v47 = v1[1];
LABEL_13:

    return v47();
  }

  v73 = v1[13];
  v72 = v1[14];
  v74 = v1[12];
  v75 = v1[7];
  v76 = v1[3];
  v77 = *(v75 + 136);
  v1[41] = v77;
  v78 = *(v75 + 128);
  v1[42] = v78;

  v79 = [v76 seAccessEndpoint];
  v1[43] = v79;
  (*(v73 + 104))(v72, enum case for SESKeystore.SignatureOutputFormat.raw(_:), v74);
  v80 = swift_task_alloc();
  v1[44] = v80;
  *v80 = v1;
  v80[1] = sub_1000D36E8;
  v81 = v1[14];
  v137 = v77;
  v138 = v78;

  return sub_1000E9668(v119, v121, v123, v69, v129, v126, v81, v79);
}

uint64_t sub_1000D36E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[45] = v2;

  v7 = v6[43];
  v8 = v6[14];
  v9 = v6[13];
  v10 = v6[12];
  if (v2)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1000D3EC4;
  }

  else
  {
    v6[46] = a2;
    v6[47] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1000D3898;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000D3898()
{

  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[33];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[8];
  defaultLogger()();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  Logger.cryptoParam(_:)();

  v3(v4, v5);
  sub_100009708(v1, v2);
  COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
  v8 = type metadata accessor for COSE_Sign1();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    v32 = v0[40];
    v31 = v0[39];
    v35 = v0[38];
    v33 = v0[37];
    v36 = v0[35];
    v34 = v0[34];
    v10 = v0[20];
    v37 = v0[19];
    v38 = v0[21];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    sub_10000A0D4(v0[8], &qword_1002014D0, &unk_1001AD120);
    (*(v12 + 104))(v11, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v13);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v31, v32);
    sub_1000092BC(v33, v35);
    sub_1000092BC(v34, v36);

    sub_1000092BC(v1, v2);
    (*(v10 + 8))(v38, v37);
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[23];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v14 + 8))(v15, v16);
  }

  else
  {
    v19 = v0[39];
    v18 = v0[40];
    v28 = v0[38];
    v29 = v0[35];
    v26 = v0[37];
    v27 = v0[34];
    v21 = v0[24];
    v20 = v0[25];
    v30 = v0[23];
    v22 = v1;
    v23 = v0[8];
    v25 = v0[2];
    (*(v0[20] + 8))();
    sub_1000092BC(v19, v18);
    sub_1000092BC(v26, v28);
    sub_1000092BC(v27, v29);

    sub_1000092BC(v22, v2);
    (*(v9 + 32))(v25, v23, v8);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v21 + 8))(v20, v30);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000D3EC4()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[20];
  v13 = v0[19];
  v14 = v0[21];

  sub_1000092BC(v2, v1);
  sub_1000092BC(v4, v3);
  sub_1000092BC(v6, v5);

  (*(v7 + 8))(v14, v13);
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v6[13] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for PresentmentProposal(0);
  v6[18] = swift_task_alloc();
  sub_100004E70(&qword_100202370, &qword_1001ACE68);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for ISO18013SessionTranscript();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[27] = v10;
  v6[28] = *(v10 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000D447C, 0, 0);
}

uint64_t sub_1000D447C(uint64_t a1)
{
  v127 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentResponseBuilder signDeviceSignedDataLegacySE", v4, 2u);
  }

  v5 = v1[35];
  v6 = v1[27];
  v7 = v1[28];

  v8 = *(v7 + 8);
  v1[36] = v8;
  v8(v5, v6);
  static IDCSSignposts.presentmentBuildResponseSignDeviceDataLegacySE.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Signing device signed data with legacy SE key", v11, 2u);
  }

  v12 = v1[34];
  v13 = v1[27];
  v14 = v1[20];
  v15 = v1[21];
  v16 = v1[19];
  v17 = v1[10];

  v8(v12, v13);
  sub_100046360(v17, v16, &qword_100202370, &qword_1001ACE68);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v19 = v1[15];
    v18 = v1[16];
    v20 = v1[14];
    sub_10000A0D4(v1[19], &qword_100202370, &qword_1001ACE68);
    (*(v19 + 104))(v18, enum case for DIPError.Code.idcsInvalidPresentmentRequestSessionTranscript(_:), v20);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_14;
  }

  v21 = v1[8];
  (*(v1[21] + 32))(v1[22], v1[19], v1[20]);
  v22 = [v21 authData];
  if (!v22)
  {
    v35 = v1[21];
    v34 = v1[22];
    v36 = v1[20];
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.idcsMissingAuthDataInPresentmentSelection(_:), v1[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    goto LABEL_14;
  }

  v23 = v1[17];
  v24 = v1[9];
  v25 = v22;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v1[37] = v26;
  v1[38] = v28;
  v1[39] = *(v24 + *(v23 + 40));
  type metadata accessor for LegacySEPresentmentKey(0);
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    v37 = v1[21];
    v120 = v1[20];
    v124 = v1[22];
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.badLogic(_:), v1[14]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v26, v28);
    (*(v37 + 8))(v124, v120);
    goto LABEL_14;
  }

  v123 = v26;
  v30 = v29 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot;
  v31 = *(v29 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot);
  v1[40] = v31;
  v32 = v1[22];
  if (*(v30 + 8))
  {
    v33 = v1[21];
    v116 = v1[20];
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.idcsInvalidPresentmentKey(_:), v1[14]);

    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v123, v28);

    (*(v33 + 8))(v32, v116);
    goto LABEL_14;
  }

  v121 = v31;
  v38 = v1[11];
  v39 = v1[9];
  v40 = *(v39 + 8);
  v41 = *(v39 + 16);

  v42 = sub_1000D66BC(v32, v40, v41, v38);
  v1[41] = v42;
  v1[42] = v43;
  v113 = v42;
  v114 = v43;
  v49 = v1[18];
  v50 = v1[9];
  defaultLogger()();
  sub_1000DC5D0(v50, v49, type metadata accessor for PresentmentProposal);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v117 = v51;
  v53 = os_log_type_enabled(v51, v52);
  v54 = v1[33];
  v55 = v1[27];
  v56 = v1[18];
  if (v53)
  {
    v57 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v125 = v107;
    *v57 = 134349314;
    *(v57 + 4) = v121;
    *(v57 + 12) = 2080;
    v109 = v54;
    v58 = (*(*(v56 + *(v23 + 40) + 8) + 16))(**(v56 + *(v23 + 40)));
    v59 = v52;
    v61 = v60;
    v62 = Data.base16EncodedString()();
    sub_1000092BC(v58, v61);
    sub_1000DC488(v56, type metadata accessor for PresentmentProposal);
    v63 = sub_10010150C(v62._countAndFlagsBits, v62._object, &v125);

    *(v57 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v117, v59, "Signing device authentication with legacy SE key slot %{public}ld, public key identifier %s", v57, 0x16u);
    sub_100005090(v107);

    v8(v109, v55);
  }

  else
  {

    v8(v54, v55);
    sub_1000DC488(v56, type metadata accessor for PresentmentProposal);
  }

  v64 = v1[17];
  v65 = v1[9];
  v1[43] = sub_100046C68();
  v66 = *(v65 + *(v64 + 44));
  if (!v66)
  {
    defaultLogger()();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Auth policy is not required; using empty signature", v82, 2u);
    }

    v83 = v1[30];
    v84 = v1[27];

    v8(v83, v84);
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v85 = __DataStorage.init(length:)();
    v125 = 0x2000000000;
    v126 = v85;
    sub_1000D8EE8(&v125, 0);
    v87 = v125;
    v89 = v126 | 0x4000000000000000;
LABEL_36:
    v90 = v1[36];
    v91 = v1[29];
    v92 = v1[27];
    v93 = v1[13];
    defaultLogger()();
    v94 = swift_task_alloc();
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    Logger.cryptoParam(_:)();

    v90(v91, v92);
    sub_100009708(v87, v89);
    COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
    v95 = type metadata accessor for COSE_Sign1();
    v96 = *(v95 - 8);
    v97 = (*(v96 + 48))(v93, 1, v95);
    v119 = v1[41];
    v122 = v1[42];
    v115 = v1[38];
    v112 = v1[37];
    if (v97 != 1)
    {
      v102 = v1[25];
      v103 = v1[26];
      v106 = v1[24];
      v104 = v1[13];
      v105 = v1[7];
      (*(v1[21] + 8))(v1[22], v1[20]);

      sub_1000092BC(v112, v115);
      sub_1000092BC(v119, v122);

      sub_1000092BC(v87, v89);
      (*(v96 + 32))(v105, v104, v95);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v102 + 8))(v103, v106);

      v47 = v1[1];
      goto LABEL_15;
    }

    v98 = v1[21];
    v108 = v1[20];
    v110 = v1[22];
    v99 = v1[15];
    v100 = v1[16];
    v101 = v1[14];
    sub_10000A0D4(v1[13], &qword_1002014D0, &unk_1001AD120);
    (*(v99 + 104))(v100, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v101);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v112, v115);
    sub_1000092BC(v119, v122);

    sub_1000092BC(v87, v89);
    (*(v98 + 8))(v110, v108);
LABEL_14:
    v44 = v1[25];
    v45 = v1[26];
    v46 = v1[24];
    (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.internalError(_:), v1[14]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v44 + 8))(v45, v46);

    v47 = v1[1];
LABEL_15:

    return v47();
  }

  if (v66 != 2)
  {
    if (v66 != 1)
    {
      v86 = v1[21];
      v118 = v1[22];
      v111 = v1[20];
      (*(v1[15] + 104))(v1[16], enum case for DIPError.Code.internalError(_:), v1[14]);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_1000092BC(v123, v28);
      sub_1000092BC(v113, v114);

      (*(v86 + 8))(v118, v111);
      goto LABEL_14;
    }

    defaultLogger()();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Auth policy is biometric or passcode, performing non-bound signature", v69, 2u);
    }

    v70 = v1[32];
    v71 = v1[27];
    v72 = v1[8];

    v8(v70, v71);
    v73 = [v72 seAccessEndpoint];
    v87 = sub_100047814(v113, v114, v121, v123, v28, v73);
    v89 = v88;

    goto LABEL_36;
  }

  defaultLogger()();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "Auth policy is global binding, performing bound signature", v76, 2u);
  }

  v77 = v1[31];
  v78 = v1[27];

  v8(v77, v78);
  v79 = swift_task_alloc();
  v1[44] = v79;
  *v79 = v1;
  v79[1] = sub_1000D58F0;

  return sub_100006750(2);
}

uint64_t sub_1000D58F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {
    v5 = sub_1000D6380;
  }

  else
  {
    v5 = sub_1000D5A08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D5A08()
{
  if (*(v0 + 368) >> 60 == 15)
  {
    v50 = *(v0 + 328);
    v51 = *(v0 + 336);
    v48 = *(v0 + 304);
    v1 = *(v0 + 296);
    v2 = *(v0 + 168);
    v54 = *(v0 + 160);
    v56 = *(v0 + 176);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), *(v0 + 112));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v1, v48);
    sub_1000092BC(v50, v51);

    (*(v2 + 8))(v56, v54);
LABEL_6:
    v20 = *(v0 + 200);
    v21 = *(v0 + 208);
    v22 = *(v0 + 192);
    (*(*(v0 + 120) + 104))(*(v0 + 128), enum case for DIPError.Code.internalError(_:), *(v0 + 112));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v20 + 8))(v21, v22);

    v23 = *(v0 + 8);
    goto LABEL_7;
  }

  v57 = *(v0 + 376);
  type metadata accessor for AppleIDVManager();
  sub_1000215BC((v0 + 16));
  v3 = *(v0 + 48);
  sub_100009278((v0 + 16), *(v0 + 40));
  v45 = v3;
  dispatch thunk of AppleIDVManaging.authorizePresentmentForSignature(aclBlob:externalizedLAContext:seSlot:payloadDigest:)();
  if (v57)
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 336);
    v7 = *(v0 + 328);
    v8 = *(v0 + 304);
    v9 = *(v0 + 296);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_10001C120(v5, v4);

    sub_1000092BC(v9, v8);
    sub_1000092BC(v7, v6);

    sub_100005090((v0 + 16));
    goto LABEL_6;
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = [*(v0 + 64) seAccessEndpoint];
  v16 = sub_10004816C(v11, v10, v12, v14, v13, v15);
  v19 = *(v0 + 360);
  v18 = *(v0 + 368);
  v25 = v16;
  v26 = v17;

  type metadata accessor for IDCSAnalytics();
  static IDCSAnalytics.sendLegacyACLUsageEvent(presentmentType:)();
  sub_10001C120(v19, v18);
  sub_100005090((v0 + 16));
  v27 = *(v0 + 288);
  v28 = *(v0 + 232);
  v29 = *(v0 + 216);
  v30 = *(v0 + 104);
  defaultLogger()();
  v31 = swift_task_alloc();
  *(v31 + 16) = v25;
  *(v31 + 24) = v26;
  Logger.cryptoParam(_:)();

  v27(v28, v29);
  sub_100009708(v25, v26);
  COSE_Sign1.init(algorithmIdentifier:keyIdentifier:payload:signature:includeCBORTag:)();
  v32 = type metadata accessor for COSE_Sign1();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v30, 1, v32);
  v53 = *(v0 + 328);
  v55 = *(v0 + 336);
  v52 = *(v0 + 304);
  v35 = *(v0 + 296);
  if (v34 == 1)
  {
    v36 = *(v0 + 168);
    v47 = *(v0 + 160);
    v49 = *(v0 + 176);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    v39 = *(v0 + 112);
    sub_10000A0D4(*(v0 + 104), &qword_1002014D0, &unk_1001AD120);
    (*(v38 + 104))(v37, enum case for DIPError.Code.idcsCOSECreationFailed(_:), v39);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v35, v52);
    sub_1000092BC(v53, v55);

    sub_1000092BC(v25, v26);
    (*(v36 + 8))(v49, v47);
    goto LABEL_6;
  }

  v41 = *(v0 + 200);
  v40 = *(v0 + 208);
  v46 = *(v0 + 192);
  v42 = v26;
  v43 = *(v0 + 104);
  v44 = *(v0 + 56);
  (*(*(v0 + 168) + 8))();

  sub_1000092BC(v35, v52);
  sub_1000092BC(v53, v55);

  sub_1000092BC(v25, v42);
  (*(v33 + 32))(v44, v43, v32);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v41 + 8))(v40, v46);

  v23 = *(v0 + 8);
LABEL_7:

  return v23();
}

uint64_t sub_1000D6380()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[37];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];

  sub_1000092BC(v4, v3);
  sub_1000092BC(v2, v1);

  (*(v6 + 8))(v5, v7);
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  (*(v0[15] + 104))(v0[16], enum case for DIPError.Code.internalError(_:), v0[14]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

unint64_t sub_1000D662C()
{
  _StringGuts.grow(_:)(34);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000020;
}

uint64_t sub_1000D66BC(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v73 = a2;
  v71 = a4;
  v72 = a3;
  v70 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SHA256();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA256Digest();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RFC8152SigStructure();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004E70(&qword_100201520, &qword_1001AD110);
  v63 = *(v13 - 8);
  v64 = v13;
  __chkstk_darwin(v13);
  v66 = &v52 - v14;
  v15 = sub_100004E70(&qword_100202930, &qword_1001AD118);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = type metadata accessor for ISO18013SessionTranscript();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ISO18013DeviceAuthentication();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, v70, v19);
  (*(v16 + 16))(v18, v71, v15);

  ISO18013DeviceAuthentication.init(sessionTranscript:docType:deviceNamespaceBytes:)();
  sub_1000D8560();
  sub_1000DC984(&qword_100202938, &type metadata accessor for ISO18013DeviceAuthentication, &protocol conformance descriptor for ISO18013DeviceAuthentication);
  v27 = v77;
  v28 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v30 = v27;
  if (v27)
  {
    (*(v24 + 8))(v26, v23);

    (*(v67 + 104))(v69, enum case for DIPError.Code.internalError(_:), v68);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v32 = v63;
    v31 = v64;
    v73 = v26;
    v74 = v28;
    v33 = v24;
    v77 = v23;
    v75 = v28;
    v76 = v29;
    v34 = v29;
    sub_100009708(v28, v29);
    sub_100046428();
    sub_10004647C();

    CBOREncodedCBOR.init(value:tag:encoder:)();
    v72 = v34;
    v36 = v66;
    v37 = CBOREncodedCBOR.dataValue.getter();
    v39 = v38;
    (*(v32 + 8))(v36, v31);

    sub_100009708(v37, v39);
    RFC8152SigStructure.init(algorithm:payload:encoder:)();
    v71 = v39;
    sub_1000DC984(&qword_100202940, &type metadata accessor for RFC8152SigStructure, &protocol conformance descriptor for RFC8152SigStructure);
    v40 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v42 = v41;
    v69 = sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v43 = v52;
    v70 = v37;
    v44 = v53;
    dispatch thunk of HashFunction.init()();
    sub_100009708(v40, v42);
    v66 = v42;
    sub_1000D8FBC(v40, v42, v43);
    v64 = v40;
    sub_1000092BC(v40, v42);
    v45 = v54;
    dispatch thunk of HashFunction.finalize()();
    (*(v55 + 8))(v43, v44);
    sub_1000DC984(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v46 = v57;
    v30 = Digest.data.getter();
    (*(v56 + 8))(v45, v46);
    v47 = v58;
    v48 = defaultLogger()();
    __chkstk_darwin(v48);
    v49 = v66;
    Logger.cryptoParam(_:)();
    v50 = *(v59 + 8);
    v50(v47, v60);
    v51 = defaultLogger()();
    v69 = &v52;
    __chkstk_darwin(v51);
    Logger.cryptoParam(_:)();
    sub_1000092BC(v64, v49);
    sub_1000092BC(v70, v71);

    sub_1000092BC(v74, v72);
    v50(v47, v60);
    (*(v61 + 8))(v65, v62);
    (*(v33 + 8))(v73, v77);
  }

  return v30;
}

unint64_t sub_1000D71D4()
{
  _StringGuts.grow(_:)(37);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000023;
}

unint64_t sub_1000D7264()
{
  _StringGuts.grow(_:)(31);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001DLL;
}

uint64_t sub_1000D72F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004E70(&qword_100202918, &qword_1001AD108);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for ISO18013SessionData();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7448, 0, 0);
}

uint64_t sub_1000D7448(uint64_t a1)
{
  v1[11] = sub_1000D8560();
  type metadata accessor for ISO18013Response();
  sub_1000DC984(&qword_100202920, &type metadata accessor for ISO18013Response, &protocol conformance descriptor for ISO18013Response);
  v2 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v1[12] = 0;
  v1[13] = v2;
  v1[14] = v3;
  v4 = v2;
  v5 = v3;
  v7 = v1[9];
  v6 = v1[10];
  v8 = v1[8];
  v9 = v1[3];
  defaultLogger()();
  v10 = swift_task_alloc();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  Logger.sensitive(_:)();

  (*(v7 + 8))(v6, v8);
  v11._countAndFlagsBits = 0x6661363535363661;
  v12._object = 0x80000001001B89A0;
  v11._object = 0xE800000000000000;
  v12._countAndFlagsBits = 0xD000000000000058;
  logMilestone(tag:description:)(v11, v12);
  v13 = *(v9 + 72);
  v1[15] = v13;

  return _swift_task_switch(sub_1000D7638, v13, 0);
}

uint64_t sub_1000D7638()
{
  v1 = *(v0 + 96);
  v2 = sub_1000DEE04(*(v0 + 104), *(v0 + 112));
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  if (v1)
  {
    v4 = sub_1000D7910;
  }

  else
  {
    v4 = sub_1000D76C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D76C8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  v5 = type metadata accessor for ISO18013SessionData.Status();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100009708(v1, v2);
  ISO18013SessionData.init(data:status:)();
  sub_1000DC984(&qword_100202928, &type metadata accessor for ISO18013SessionData, &protocol conformance descriptor for ISO18013SessionData);
  v6 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v3)
  {
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1000092BC(v8, v9);
    sub_1000092BC(v0[17], v0[18]);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[17];
    v13 = v0[18];
    v15 = v0[13];
    v14 = v0[14];
    v16 = v6;
    v18 = v7;
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1000092BC(v15, v14);
    sub_1000092BC(v12, v13);

    v17 = v0[1];

    return v17(v16, v18);
  }
}

uint64_t sub_1000D7910()
{
  sub_1000092BC(v0[13], v0[14]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1000D79A4()
{
  _StringGuts.grow(_:)(25);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000016;
}

uint64_t sub_1000D7A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 154) = v14;
  *(v8 + 153) = a8;
  *(v8 + 152) = a7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for NWInterface.InterfaceType();
  *(v8 + 40) = v9;
  *(v8 + 48) = *(v9 - 8);
  *(v8 + 56) = swift_task_alloc();
  v10 = type metadata accessor for NWPath.Status();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  sub_100004E70(&qword_1002029C0, &qword_1001AD218);
  *(v8 + 96) = swift_task_alloc();
  v11 = type metadata accessor for NWPath();
  *(v8 + 104) = v11;
  *(v8 + 112) = *(v11 - 8);
  *(v8 + 120) = swift_task_alloc();
  sub_100004E70(&qword_1002029C8, &qword_1001AD220);
  *(v8 + 128) = swift_task_alloc();
  sub_100004E70(&qword_1002029D0, &qword_1001AD228);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000D7C94, 0, 0);
}

uint64_t sub_1000D7C94()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = type metadata accessor for IDCSAnalytics.NetworkStatus();
  v7 = *(v6 - 8);
  v42 = *(v7 + 56);
  v42(v1, 1, 1, v6);
  v8 = type metadata accessor for IDCSAnalytics.ConnectionType();
  v43 = *(v8 - 8);
  v45 = *(v43 + 56);
  v45(v2, 1, 1, v8);
  type metadata accessor for NetworkMonitor();
  static NetworkMonitor.shared.getter();
  NetworkMonitor.currentPath.getter();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10000A0D4(v0[12], &qword_1002029C0, &qword_1001AD218);
  }

  else
  {
    v41 = v8;
    v36 = v0[18];
    v37 = v6;
    v38 = v0[17];
    v9 = v0[11];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[8];
    v13 = v7;
    v14 = v0[6];
    v39 = v0[5];
    v40 = v0[7];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    NWPath.status.getter();
    (*(v10 + 104))(v11, enum case for NWPath.Status.satisfied(_:), v12);
    v15 = static NWPath.Status.== infix(_:_:)();
    v16 = *(v10 + 8);
    v16(v11, v12);
    v16(v9, v12);
    sub_10000A0D4(v36, &qword_1002029D0, &qword_1001AD228);
    v17 = &enum case for IDCSAnalytics.NetworkStatus.online(_:);
    if ((v15 & 1) == 0)
    {
      v17 = &enum case for IDCSAnalytics.NetworkStatus.offline(_:);
    }

    (*(v13 + 104))(v38, *v17, v37);
    v42(v38, 0, 1, v37);
    sub_100046524(v38, v36, &qword_1002029D0, &qword_1001AD228);
    v18 = *(v14 + 104);
    v18(v40, enum case for NWInterface.InterfaceType.cellular(_:), v39);
    v19 = NWPath.usesInterfaceType(_:)();
    v20 = *(v14 + 8);
    v20(v40, v39);
    v21 = v0[15];
    v22 = v0[16];
    v23 = v0[13];
    v24 = v0[14];
    if (v19)
    {
      (*(v24 + 8))(v0[15], v0[13]);
      sub_10000A0D4(v22, &qword_1002029C8, &qword_1001AD220);
      v25 = v41;
      (*(v43 + 104))(v22, enum case for IDCSAnalytics.ConnectionType.cellular(_:), v41);
    }

    else
    {
      v26 = v0[7];
      v27 = v0[5];
      v18(v26, enum case for NWInterface.InterfaceType.wifi(_:), v27);
      v28 = NWPath.usesInterfaceType(_:)();
      v20(v26, v27);
      (*(v24 + 8))(v21, v23);
      sub_10000A0D4(v22, &qword_1002029C8, &qword_1001AD220);
      if (v28)
      {
        v29 = &enum case for IDCSAnalytics.ConnectionType.wifi(_:);
      }

      else
      {
        v29 = &enum case for IDCSAnalytics.ConnectionType.other(_:);
      }

      v25 = v41;
      (*(v43 + 104))(v0[16], *v29, v41);
    }

    v45(v0[16], 0, 1, v25);
  }

  v30 = v0[3];
  if (v30 >> 60 != 15)
  {
    v31 = v0[2];
    type metadata accessor for SecAccessControl(0);
    sub_100009708(v31, v30);
    v32 = static SecAccessControlRef.fromData(_:)();
    v46 = v0[2];
    v47 = v0[3];
    v44 = v32;
    SecAccessControlRef.isBiometricAuth.getter();
    type metadata accessor for IDCSAnalytics();
    IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome.description.getter();
    static IDCSAnalytics.sendPhysicalPresentmentEvent(networkStatus:connectionType:presentmentResult:biometricAuthMethod:terminalAuthPerformed:portraitWasRequested:isAppleReader:)();

    sub_10001C120(v46, v47);
  }

  v33 = v0[18];
  sub_10000A0D4(v0[16], &qword_1002029C8, &qword_1001AD220);
  sub_10000A0D4(v33, &qword_1002029D0, &qword_1001AD228);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1000D8304()
{
  v1 = v0;
  v2 = type metadata accessor for ISO18013CodingKeyFormat();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ISO18013PresentmentType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  v16 = CBORDecoder.init()();
  v17 = &enum case for ISO18013PresentmentType.digital(_:);
  v18 = &enum case for ISO18013PresentmentType.webRequestForwarding(_:);
  v19 = *(v1 + 16);
  if (v19 != 2)
  {
    v18 = &enum case for ISO18013PresentmentType.physical(_:);
  }

  if (v19 != 1)
  {
    v17 = v18;
  }

  (*(v13 + 104))(v15, *v17, v12);
  CBORDecoder.presentmentType.setter();
  if ((*(v1 + 56) & 1) == 0)
  {
    sub_1000E1028(*(v1 + 48), v9);
    (*(v3 + 32))(v11, v9, v2);
    (*(v3 + 16))(v6, v11, v2);
    CBORDecoder.codingKeyFormat.setter();
    (*(v3 + 8))(v11, v2);
  }

  return v16;
}

uint64_t sub_1000D8560()
{
  v1 = type metadata accessor for CBOREncoder.DictionaryEncodingStrategy();
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ISO18013DictionaryEncodingStrategy();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ISO18013CodingKeyFormat();
  __chkstk_darwin(v7 - 8);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ISO18013PresentmentType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v16 = CBOREncoder.init()();
  v17 = &enum case for ISO18013PresentmentType.digital(_:);
  v18 = &enum case for ISO18013PresentmentType.webRequestForwarding(_:);
  v19 = *(v0 + 16);
  if (v19 != 2)
  {
    v18 = &enum case for ISO18013PresentmentType.physical(_:);
  }

  if (v19 != 1)
  {
    v17 = v18;
  }

  (*(v13 + 104))(v15, *v17, v12);
  CBOREncoder.presentmentType.setter();
  if ((*(v0 + 56) & 1) == 0)
  {
    v20 = *(v0 + 48);
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v4;
      v24 = v23;
      v34 = swift_slowAlloc();
      v41 = v34;
      *v24 = 136315138;
      v25 = DCPresentmentMessageEncodingFormatToString();
      v36 = v3;
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v6;
      v29 = v20;
      v31 = v30;

      v32 = sub_10010150C(v27, v31, &v41);
      v20 = v29;
      v6 = v28;

      *(v24 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Configuring CBOREncoder for message encoding format %s", v24, 0xCu);
      sub_100005090(v34);

      v4 = v35;
    }

    (*(v37 + 8))(v11, v38);
    sub_1000E1028(v20, v39);
    CBOREncoder.codingKeyFormat.setter();
    sub_1000E12CC(v20, v6);
    ISO18013DictionaryEncodingStrategy.cborEncoderStrategy.getter();
    (*(v40 + 8))(v6, v4);
    dispatch thunk of CBOREncoder.dictionaryEncodingStrategy.setter();
  }

  return v16;
}

uint64_t sub_1000D89A4()
{

  sub_100005090((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000D8B28, 0, 0);
}

uint64_t sub_1000D8B28()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000DC984(&qword_1002029A8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000DC984(&qword_1002029B0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000D8CB8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000D8CB8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000D8E74, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000D8E74()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000D8EE8(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t sub_1000D8FBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000D919C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000D919C(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000D919C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000DC984(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D92A8(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "PresentmentResponseBuilder determineElementsToPresent", v13, 2u);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  v15 = defaultLogger()();
  __chkstk_darwin(v15);
  *(&v18 - 2) = a2;
  Logger.sensitive(_:)();
  v14(v8, v4);
  if (a2)
  {
    a1 = sub_100020C3C(a2, a1);
  }

  else
  {
  }

  v16 = defaultLogger()();
  __chkstk_darwin(v16);
  *(&v18 - 2) = a1;
  Logger.sensitive(_:)();

  v14(v8, v4);
  return a1;
}

uint64_t sub_1000D9510(uint64_t a1)
{
  v1[2] = a1;
  sub_100004E70(&qword_100202378, &unk_1001ACE70);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for IdentityReaderAuthenticator(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9694, 0, 0);
}

uint64_t sub_1000D9694(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if the credential is valid after network check", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[4];
  v9 = v1[5];
  v11 = v1[2];
  v10 = v1[3];

  v12 = *(v7 + 8);
  v1[14] = v12;
  v12(v5, v6);
  sub_100046360(v11, v10, &qword_100202378, &unk_1001ACE70);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_10000A0D4(v1[3], &qword_100202378, &unk_1001ACE70);
LABEL_10:
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[10];
    v22 = v1[7];
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No server promise, meaning this passed using the cache, so success", v23, 2u);
    }

    v12(v21, v22);

    v24 = v1[1];

    return v24(1);
  }

  v13 = v1[6];
  v14 = v1[4];
  sub_1000DC9CC(v1[3], v13, type metadata accessor for IdentityReaderAuthenticator);
  v15 = *(v13 + *(v14 + 28));
  v1[15] = v15;
  if (!v15)
  {
    sub_1000DC488(v1[6], type metadata accessor for IdentityReaderAuthenticator);
    goto LABEL_10;
  }

  v16 = swift_task_alloc();
  v1[16] = v16;
  v17 = sub_100004E70(&qword_100200208, &qword_1001AA530);
  *v16 = v1;
  v16[1] = sub_1000D99F8;

  return Task.value.getter(v1 + 18, v15, &type metadata for ServerRevocationResponse, v17, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000D99F8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000D9D4C;
  }

  else
  {
    v2 = sub_1000D9B0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D9B0C(uint64_t a1)
{
  if (*(v1 + 144) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "After online revocation checking, the certificate might still be revoked", v4, 2u);
    }

    v5 = *(v1 + 112);
    v6 = *(v1 + 96);
    v7 = *(v1 + 56);

    v5(v6, v7);
  }

  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 112);
  v12 = *(v1 + 88);
  v13 = *(v1 + 56);
  v14 = *(v1 + 48);
  if (v10)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "No errors were thrown during revocation checking, there is a valid credential", v15, 2u);
  }

  else
  {
  }

  v11(v12, v13);
  sub_1000DC488(v14, type metadata accessor for IdentityReaderAuthenticator);

  v16 = *(v1 + 8);

  return v16(1);
}

uint64_t sub_1000D9D4C(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Validating server promise failed with reason %@", v4, 0xCu);
    sub_10000A0D4(v5, &qword_1002003B8, &unk_1001AB850);
  }

  v7 = v1[14];
  v8 = v1[9];
  v10 = v1[6];
  v9 = v1[7];

  v7(v8, v9);
  sub_1000DC488(v10, type metadata accessor for IdentityReaderAuthenticator);

  v11 = v1[1];

  return v11(0);
}

unint64_t sub_1000D9F3C(void *a1)
{
  v2 = sub_100004E70(&qword_100202988, &unk_1001AD140);
  __chkstk_darwin(v2 - 8);
  v4 = &v99 - v3;
  v5 = type metadata accessor for AnyCodable();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v121 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v120 = &v99 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v19 = &v99 - v18;
  v20 = [a1 deviceNamespaces];
  v122 = v10;
  if (!v20)
  {
    defaultLogger()();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "No device namespaces were provided", v98, 2u);
      v10 = v122;
    }

    (*(v11 + 8))(v14, v10);
    return sub_10010D428(_swiftEmptyArrayStorage);
  }

  v21 = v20;
  sub_100004E70(&qword_100201CE8, &qword_1001AC6F8);
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = defaultLogger()();
  __chkstk_darwin(v23);
  *(&v99 - 2) = v22;
  Logger.sensitive(_:)();
  v25 = *(v11 + 8);
  v24 = v11 + 8;
  v113 = v25;
  v25(v19, v10);
  v26 = sub_10010D428(_swiftEmptyArrayStorage);
  v28 = 0;
  v30 = v22 + 64;
  v29 = *(v22 + 64);
  v103 = v22;
  v31 = 1 << *(v22 + 32);
  v129 = v26;
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v119 = (v6 + 48);
  v117 = (v6 + 32);
  v111 = v6;
  v112 = (v6 + 16);
  v110 = v6 + 8;
  v106 = v6 + 40;
  *&v27 = 136315394;
  v107 = v27;
  v116 = v4;
  v118 = v5;
  v35 = v10;
  v101 = v22 + 64;
  v100 = v34;
  v114 = v24;
  v102 = v19;
  while (1)
  {
    if (v33)
    {
      v37 = v28;
    }

    else
    {
      do
      {
        v37 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_56;
        }

        if (v37 >= v34)
        {

          v94 = defaultLogger()();
          __chkstk_darwin(v94);
          *(&v99 - 2) = &v129;
          Logger.sensitive(_:)();
          v113(v19, v35);
          return v129;
        }

        v33 = *(v30 + 8 * v37);
        ++v28;
      }

      while (!v33);
    }

    v105 = v33;
    v104 = v37;
    v38 = __clz(__rbit64(v33)) | (v37 << 6);
    v39 = *(v103 + 56);
    v40 = (*(v103 + 48) + 16 * v38);
    v42 = *v40;
    v41 = v40[1];
    v108 = v42;
    v115 = v41;
    v43 = *(v39 + 8 * v38);
    if (v43 >> 62)
    {
      break;
    }

    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_40:
    v78 = v115;

    v126 = _swiftEmptyDictionarySingleton;
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v129;
    v128 = v129;
    v81 = sub_100099644(v108, v78);
    v83 = *(v80 + 16);
    v84 = (v82 & 1) == 0;
    v76 = __OFADD__(v83, v84);
    v85 = v83 + v84;
    if (v76)
    {
      goto LABEL_59;
    }

    v86 = v82;
    if (*(v80 + 24) >= v85)
    {
      v88 = v105;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = v81;
        sub_10010A3BC();
        v88 = v105;
        v81 = v93;
        v78 = v115;
      }
    }

    else
    {
      sub_100109168(v85, isUniquelyReferenced_nonNull_native);
      v81 = sub_100099644(v108, v78);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_61;
      }

      v88 = v105;
    }

    v33 = (v88 - 1) & v88;
    v89 = v128;
    if (v86)
    {
      *(v128[7] + 8 * v81) = v126;
      v36 = v33;

      v33 = v36;
    }

    else
    {
      v128[(v81 >> 6) + 8] |= 1 << v81;
      v90 = (v89[6] + 16 * v81);
      *v90 = v108;
      v90[1] = v78;
      *(v89[7] + 8 * v81) = v126;
      v91 = v89[2];
      v76 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v76)
      {
        goto LABEL_60;
      }

      v89[2] = v92;
    }

    v129 = v89;
    v28 = v104;
    v5 = v118;
    v19 = v102;
    v30 = v101;
    v34 = v100;
  }

  v44 = _CocoaArrayWrapper.endIndex.getter();
  if (!v44)
  {
    goto LABEL_40;
  }

LABEL_14:
  v125 = v43 & 0xC000000000000001;
  v109 = v43 & 0xFFFFFFFFFFFFFF8;

  v45 = 0;
  v126 = _swiftEmptyDictionarySingleton;
  v123 = v44;
  v124 = v43;
  while (1)
  {
    if (v125)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v45 >= *(v109 + 16))
      {
        goto LABEL_57;
      }

      v46 = *(v43 + 8 * v45 + 32);
    }

    v47 = v46;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    v127 = v45 + 1;
    v48 = [v46 elementIdentifier];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    sub_10019CC78(v4);
    if ((*v119)(v4, 1, v5) == 1)
    {
      sub_10000A0D4(v4, &qword_100202988, &unk_1001AD140);
      defaultLogger()();
      v52 = v115;

      v53 = Logger.logObject.getter();
      v54 = v17;
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v55))
      {
        v56 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *v56 = v107;
        v57 = sub_10010150C(v49, v51, &v128);

        *(v56 + 4) = v57;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_10010150C(v108, v52, &v128);
        _os_log_impl(&_mh_execute_header, v53, v55, "Could not convert element %s in namespace %s to codable value", v56, 0x16u);
        swift_arrayDestroy();
        v5 = v118;

        v4 = v116;
      }

      else
      {
      }

      v35 = v122;
      v113(v54, v122);
      v17 = v54;
      goto LABEL_17;
    }

    v58 = v17;
    v59 = *v117;
    v60 = v120;
    (*v117)(v120, v4, v5);
    (*v112)(v121, v60, v5);
    v61 = v126;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v61;
    v64 = sub_100099644(v49, v51);
    v65 = *(v61 + 16);
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_55;
    }

    v68 = v63;
    if (*(v61 + 24) >= v67)
    {
      if (v62)
      {
        v5 = v118;
        if ((v63 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_10010A13C();
        v5 = v118;
        if ((v68 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_100108DE8(v67, v62);
      v69 = sub_100099644(v49, v51);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_61;
      }

      v64 = v69;
      v5 = v118;
      if ((v68 & 1) == 0)
      {
LABEL_35:
        v72 = v128;
        v128[(v64 >> 6) + 8] |= 1 << v64;
        v73 = (v72[6] + 16 * v64);
        *v73 = v49;
        v73[1] = v51;
        v74 = v111;
        v59((v72[7] + *(v111 + 72) * v64), v121, v5);

        (*(v74 + 8))(v120, v5);
        v75 = v72[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_58;
        }

        v126 = v72;
        v72[2] = v77;
        goto LABEL_37;
      }
    }

    v126 = v128;
    v71 = v111;
    (*(v111 + 40))(v128[7] + *(v111 + 72) * v64, v121, v5);

    (*(v71 + 8))(v120, v5);
LABEL_37:
    v4 = v116;
    v17 = v58;
    v35 = v122;
LABEL_17:
    v43 = v124;
    ++v45;
    if (v127 == v123)
    {

      v78 = v115;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000DAA74()
{
  result = qword_100202958;
  if (!qword_100202958)
  {
    sub_100021ED0(&qword_100202960, &qword_1001AD138);
    sub_1000DC984(&qword_100202968, &type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202958);
  }

  return result;
}

uint64_t sub_1000DAB30(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(&qword_100202948, &qword_1001AD130);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DABB4()
{
  result = qword_100202978;
  if (!qword_100202978)
  {
    sub_100021ED0(&qword_100202960, &qword_1001AD138);
    sub_1000DC984(&qword_100202980, &type metadata accessor for AnyCodable, &protocol conformance descriptor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202978);
  }

  return result;
}

unint64_t sub_1000DAC80(unint64_t a1, uint64_t a2, const char *a3)
{
  v59 = a3;
  v58 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ISO18013PresentmentType();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DigitalPresentmentResponseCryptor();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for ISO18013SessionTranscript();
  v15 = __chkstk_darwin(v14);
  v53 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - v18;
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v23 = v22;
  sub_100046360(a2, v13, &qword_100202370, &qword_1001ACE68);
  if ((*(v23 + 48))(v13, 1, v14) == 1)
  {
    sub_10000A0D4(v13, &qword_100202370, &qword_1001ACE68);
    (*(v61 + 104))(v6, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v4);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v24 = v4;
LABEL_7:
    (*(v61 + 104))(v6, enum case for DIPError.Code.internalError(_:), v24);
    swift_errorRetain();
    v35 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v35;
  }

  v49 = v6;
  v50 = v4;
  (*(v23 + 32))(v21, v13, v14);
  v25 = *(v23 + 16);
  v25(v19, v21, v14);
  v26 = (*(v23 + 88))(v19, v14);
  v27 = enum case for ISO18013SessionTranscript.apple(_:);
  v30 = *(v23 + 8);
  v29 = v23 + 8;
  v28 = v30;
  v30(v19, v14);
  if (v26 != v27)
  {
    v60 = "onCertificateChain:)";
    v6 = v49;
    v24 = v50;
    (*(v61 + 104))(v49, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v50);
    v59 = "Unencrypted response: ";
    v58 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v28(v21, v14);
    goto LABEL_7;
  }

  v47 = v21;
  v48 = v28;
  v45 = v29;
  v46 = v14;
  v31 = v60;
  result = decodeCertificateChain(fromDER:)();
  v33 = v61;
  if (v31)
  {
    v60 = "n Apple session transcript";
    v6 = v49;
    v34 = v50;
    (*(v61 + 104))(v49, enum case for DIPError.Code.idcsMisformattedResponseEncryptionCertificate(_:), v50);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v24 = v34;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v48(v47, v46);
    goto LABEL_7;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_16:

    v60 = "tion certificate chain";
    v6 = v49;
    v44 = v50;
    (*(v33 + 104))(v49, enum case for DIPError.Code.idcsMissingResponseEncryptionCertificate(_:), v50);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v24 = v44;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v48(v47, v46);
    goto LABEL_7;
  }

  v42 = result;
  v43 = _CocoaArrayWrapper.endIndex.getter();
  result = v42;
  if (!v43)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((result & 0xC000000000000001) != 0)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v36 = v46;
    v37 = v47;
    goto LABEL_14;
  }

  v36 = v46;
  v37 = v47;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(result + 32);
LABEL_14:

    type metadata accessor for SecTrust(0);
    v39 = static SecTrustRef.newFromUnverifiedCertificate(_:)();
    v60 = v38;
    v40 = v36;
    v25(v53, v37, v36);
    (*(v55 + 104))(v54, enum case for ISO18013PresentmentType.digital(_:), v56);
    v41 = v57;
    DigitalPresentmentResponseCryptor.init(sessionTranscript:presentmentType:)();
    v35 = DigitalPresentmentResponseCryptor.encrypt(_:to:)();

    (*(v51 + 8))(v41, v52);
    v48(v37, v40);
    return v35;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000DB868(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v50 = a4;
  v49 = a3;
  v47 = a1;
  v55 = type metadata accessor for DIPError.Code();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ISO18013PresentmentType();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DigitalPresentmentResponseCryptor();
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v48 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_100202370, &qword_1001ACE68);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for ISO18013SessionTranscript();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v35 - v19;
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  sub_100046360(a2, v13, &qword_100202370, &qword_1001ACE68);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000A0D4(v13, &qword_100202370, &qword_1001ACE68);
    v23 = v52;
    v24 = v55;
    (*(v52 + 104))(v6, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v55);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v25 = v23;
LABEL_8:
    (*(v25 + 104))(v6, enum case for DIPError.Code.internalError(_:), v24);
    swift_errorRetain();
    v34 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v34;
  }

  v36 = v6;
  (*(v15 + 32))(v22, v13, v14);
  v26 = *(v15 + 16);
  v26(v20, v22, v14);
  v27 = (*(v15 + 88))(v20, v14);
  v28 = enum case for ISO18013SessionTranscript.digitalCredentialAPI(_:);
  v29 = *(v15 + 8);
  v29(v20, v14);
  v37 = v29;
  if (v27 != v28)
  {
    v51 = "wEncryptionKey:)";
    v25 = v52;
    v6 = v36;
    v24 = v55;
    (*(v52 + 104))(v36, enum case for DIPError.Code.idcsInvalidAppleSessionTranscript(_:), v55);
    v50 = "Unencrypted response: ";
    v49 = sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000DC984(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v37(v22, v14);
    goto LABEL_8;
  }

  v53 = v49;
  v54 = v50;
  sub_100009708(v49, v50);
  v30 = v48;
  v31 = v51;
  P256.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
  v24 = v55;
  v25 = v52;
  if (v31)
  {
    v37(v22, v14);
    v6 = v36;
    goto LABEL_8;
  }

  v26(v38, v22, v14);
  (*(v41 + 104))(v39, enum case for ISO18013PresentmentType.webRequestForwarding(_:), v43);
  v32 = v40;
  DigitalPresentmentResponseCryptor.init(sessionTranscript:presentmentType:)();
  v34 = DigitalPresentmentResponseCryptor.encrypt(_:to:)();
  (*(v45 + 8))(v32, v46);
  (*(v42 + 8))(v30, v44);
  v37(v22, v14);
  return v34;
}

uint64_t sub_1000DC1F0()
{

  sub_1000092BC(v0[4], v0[5]);
  sub_100005090(v0 + 6);
  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    sub_1000092BC(v0[11], v1);
  }

  sub_1000092BC(v0[13], v0[14]);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000DC270(uint64_t a1, uint64_t a2)
{
  v11 = v2[2];
  v10 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[11];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000105C8;

  return sub_1000C9298(a1, a2, v11, v10, v5, v6, (v2 + 6), v7);
}

uint64_t sub_1000DC388()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DC3C0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000104D4;

  return sub_1000BACE0(a1, a2, v6);
}

uint64_t sub_1000DC488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DC508()
{

  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000DC5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DC708@<X0>(uint64_t *a2@<X8>)
{
  result = ISO18013IssuerSignedItem.elementIdentifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000DC758(uint64_t a1)
{
  v4 = *(type metadata accessor for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  v10 = (v9 + *(v4 + 64));
  v11 = v10[1];
  v12 = *v10;
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1000105C8;

  return sub_1000D7A44(a1, v5, v6, v7, v8, v9, v12, v11);
}

uint64_t sub_1000DC8A4()
{
  v1 = type metadata accessor for IDCSAnalytics.PhysicalPresentmentRequestedEventOutcome();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);
  if (v5 >> 60 != 15)
  {
    sub_1000092BC(*(v0 + 32), v5);
  }

  v6 = (v3 + 48) & ~v3;
  v7 = v4 + v6;
  (*(v2 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 3, v3 | 7);
}

uint64_t sub_1000DC984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DC9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DCA44()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DCAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DCBC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DCC70(uint64_t a1)
{
  sub_1000DCFB4(319, &qword_100202A40, type metadata accessor for KeyLookupInfo);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000DCD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000DCDFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000DCEC4(uint64_t a1)
{
  sub_1000DCFB4(319, &qword_100202AD8, &type metadata accessor for COSE_Sign1);
  if (v1 <= 0x3F)
  {
    sub_1000BDC4C(319, &qword_100202AE0, &unk_100202AE8, &qword_1001AD248);
    if (v2 <= 0x3F)
    {
      sub_1000BDC4C(319, &qword_100202648, &qword_1002019B8, &qword_1001AD020);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000DCFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000DD01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v96 = a5;
  v89 = a4;
  v98 = a2;
  v99 = a3;
  v100 = a1;
  v105 = type metadata accessor for DIPError.Code();
  v7 = *(v105 - 8);
  __chkstk_darwin(v105);
  v106 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E70(&qword_100202BD8, &qword_1001AD2C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v84 = type metadata accessor for COSEKey();
  v83 = *(v84 - 8);
  v12 = __chkstk_darwin(v84);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v79 - v15;
  v16 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v16 - 8);
  v97 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DIPSignpost();
  v101 = *(v18 - 8);
  v102 = v18;
  v19 = __chkstk_darwin(v18);
  v86 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v81 = &v79 - v22;
  __chkstk_darwin(v21);
  v104 = &v79 - v23;
  v95 = type metadata accessor for ISO18013SessionCryptarch.Curve();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ISO18013SessionCryptarch.Variant();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ISO18013SessionCryptarch.Role();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v90 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Logger();
  v107 = *(v28 - 8);
  v108 = v28;
  v29 = __chkstk_darwin(v28);
  v85 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v79 - v31;
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v80 = v25;
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "PresentmentSessionCryptor decryptReaderRequest", v35, 2u);
    v25 = v80;
  }

  v36 = v108;
  v37 = *(v107 + 8);
  v37(v32, v108);
  v38 = sub_1000DF3C0();
  v39 = v38;
  if ((v38 - 2) < 2)
  {
    (*(v87 + 104))(v90, enum case for ISO18013SessionCryptarch.Role.device(_:), v88);
    v45 = &enum case for ISO18013SessionCryptarch.Variant.UA(_:);
    if (v39 != 2)
    {
      v45 = &enum case for ISO18013SessionCryptarch.Variant.ACWG(_:);
    }

    (*(v91 + 104))(v93, *v45, v92);
    (*(v94 + 104))(v25, enum case for ISO18013SessionCryptarch.Curve.P256(_:), v95);
    type metadata accessor for ISO18013SessionCryptarch();
    swift_allocObject();
    *(v6 + 160) = ISO18013SessionCryptarch.init(role:variant:curve:)();
    swift_retain_n();

    static IDCSSignposts.presentmentDeriveSessionKey.getter();
    v46 = v104;
    DIPSignpost.init(_:)();
    v47 = v103;
    ISO18013SessionCryptarch.deriveSessionKeys(sessionTranscript:ikm:)();
    if (v47)
    {

      (*(v7 + 104))(v106, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v105);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return (*(v101 + 8))(v104, v102);
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v52 = *(v101 + 8);
    v52(v46, v102);
    goto LABEL_18;
  }

  if (!v38)
  {
    if (!*(v6 + 160))
    {
      (*(v7 + 104))(v106, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v105);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_20;
    }

    v48 = *(v6 + 160);
    v49 = v7;

    ISO18013SessionEstablishment.readerKey.getter();
    v50 = sub_100004E70(&qword_100202BE0, &qword_1001AD2C8);
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v11, 1, v50) == 1)
    {
      sub_10000A0D4(v11, &qword_100202BD8, &qword_1001AD2C0);
      (*(v49 + 104))(v106, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v105);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    CBOREncodedCBOR.value.getter();
    (*(v51 + 8))(v11, v50);
    v57 = v83;
    v58 = v82;
    v59 = v84;
    (*(v83 + 32))(v82, v14, v84);
    if (COSEKey.type.getter() == 2)
    {
      COSEKey.ec2.getter();
      v60 = v113;
      if (v113 >> 60 != 15)
      {
        v62 = v114;
        v61 = v115;
        v64 = v111;
        v63 = v112;
        sub_1000092BC(v116, v117);
        v65 = v62;
        v57 = v83;
        sub_1000092BC(v65, v61);
        sub_1000092BC(v63, v60);
        if (v64 == 1)
        {
          v66 = COSEKey.publicKeyData.getter();
          if (v67 >> 60 == 15)
          {
            v108 = "invalid reader key algorithm ";
            (*(v49 + 104))(v106, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v105);
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return (*(v57 + 8))(v58, v59);
          }

          v104 = v66;
          v107 = v67;
          v77 = v103;
          ISO18013SessionCryptarch.setRemoteKey(_:)();
          if (v77)
          {
            (*(v49 + 104))(v106, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v105);
            swift_errorRetain();
            sub_10002688C(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_10001C120(v104, v107);

            v75 = *(v57 + 8);
            v76 = v82;
            return v75(v76, v84);
          }

          static IDCSSignposts.presentmentDeriveSessionKey.getter();
          v78 = v81;
          DIPSignpost.init(_:)();
          ISO18013SessionCryptarch.deriveSessionKeys(sessionTranscript:ikm:)();
          DIPSignpost.end(workflowID:isBackground:)(0, 2);
          sub_10001C120(v104, v107);
          v52 = *(v101 + 8);
          v52(v78, v102);
          (*(v83 + 8))(v58, v84);
LABEL_18:
          static IDCSSignposts.presentmentDecryptReaderRequest.getter();
          v53 = v86;
          DIPSignpost.init(_:)();
          v54 = ISO18013SessionEstablishment.data.getter();
          v56 = v55;
          v68 = ISO18013SessionCryptarch.decrypt(data:)();
          sub_1000092BC(v54, v56);
          DIPSignpost.end(workflowID:isBackground:)(0, 2);

          v52(v53, v102);
          return v68;
        }
      }

      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v73._countAndFlagsBits = 0xD00000000000001DLL;
      v73._object = 0x80000001001B98F0;
      String.append(_:)(v73);
      v118 = COSEKey.algorithm.getter();
      type metadata accessor for COSEAlgorithm(0);
      _print_unlocked<A, B>(_:_:)();
      v74 = *(v49 + 104);
      v108 = v48;
      v74(v106, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v105);
      v71 = v57;
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v72 = v58;
      swift_allocError();
    }

    else
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      v69._countAndFlagsBits = 0xD000000000000018;
      v69._object = 0x80000001001B98D0;
      String.append(_:)(v69);
      v118 = COSEKey.type.getter();
      type metadata accessor for COSEKeyKTYType(0);
      _print_unlocked<A, B>(_:_:)();
      v70 = *(v49 + 104);
      v108 = v48;
      v70(v106, enum case for DIPError.Code.idcsPresentmentSessionKeyDerivationFailed(_:), v105);
      v71 = v57;
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v72 = v58;
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v75 = *(v71 + 8);
    v76 = v72;
    return v75(v76, v84);
  }

  if (v38 != 1)
  {
    (*(v7 + 104))(v106, enum case for DIPError.Code.unexpectedDaemonState(_:), v105);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_20:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v40 = v85;
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Session encryption is disabled; no need to decrypt reader request", v43, 2u);
    v36 = v108;
  }

  v37(v40, v36);
  return ISO18013SessionEstablishment.data.getter();
}

uint64_t sub_1000DE724(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_1000DE850, v2, 0);
}

uint64_t sub_1000DE850(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PresentmentSessionCryptor decryptGenericDataRequest", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = sub_1000DF3C0();
  if ((v9 - 2) < 2 || v9 == 0)
  {
    if (*(v1[4] + 160))
    {

      if (ISO18013SessionCryptarch.isReadyForDecryption.getter())
      {
        v11 = ISO18013SessionCryptarch.decrypt(data:)();
        v13 = v12;

LABEL_15:

        v21 = v1[1];

        return v21(v11, v13);
      }
    }

    v23 = *(v1[6] + 104);
    v23(v1[7], enum case for DIPError.Code.idcsSessionKeyNotDerived(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  else
  {
    if (v9 == 1)
    {
      defaultLogger()();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Session encryption is disabled; no need to decrypt reader request", v16, 2u);
      }

      v17 = v1[10];
      v18 = v1[8];
      v20 = v1[2];
      v19 = v1[3];

      v8(v17, v18);
      sub_100009708(v20, v19);
      v11 = v1[2];
      v13 = v1[3];
      goto LABEL_15;
    }

    v23 = *(v1[6] + 104);
    v23(v1[7], enum case for DIPError.Code.badLogic(_:), v1[5]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v23(v1[7], enum case for DIPError.Code.internalError(_:), v1[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v24 = v1[1];

  return v24();
}

char *sub_1000DEE04(char *a1, uint64_t *a2)
{
  v43 = a2;
  v42 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for DIPSignpost();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "PresentmentSessionCryptor encryptResponsePayload", v19, 2u);
  }

  v20 = *(v8 + 8);
  v20(v16, v7);
  v21 = v40;
  if (sub_1000DF3C0() == 1)
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v43;
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Session encryption is disabled; no need to encrypt response payload", v26, 2u);
    }

    v20(v14, v7);
    v14 = v42;
    sub_100009708(v42, v25);
  }

  else
  {
    static IDCSSignposts.presentmentEncryptResponse.getter();
    DIPSignpost.init(_:)();
    if (*(v21 + 160))
    {

      v27 = v39;
      v28 = ISO18013SessionCryptarch.encrypt(data:)();
      if (!v27)
      {
        v14 = v28;
        v30 = defaultLogger()();
        v43 = &v33;
        __chkstk_darwin(v30);
        Logger.sensitive(_:)();

        v20(v11, v7);
        v31 = v41;
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v37 + 8))(v31, v38);
        return v14;
      }
    }

    else
    {
      (*(v34 + 104))(v36, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v35);
      v14 = "h is not available";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    v29 = v41;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v37 + 8))(v29, v38);
  }

  return v14;
}

uint64_t sub_1000DF3C0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  if ((*(v0 + 152) & 1) == 0)
  {
    v21 = *(v0 + 120);
    if (v21 == 3)
    {
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v28))
      {
        v20 = 3;
        v16 = v11;
        goto LABEL_19;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v17, v28, "Presentment session is using ACWG session encryption", v29, 2u);
      v20 = 3;
      v16 = v11;
    }

    else if (v21 == 2)
    {
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      v20 = 2;
      if (!os_log_type_enabled(v17, v26))
      {
        v16 = v14;
        goto LABEL_19;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v17, v26, "Presentment session is using UA session encryption", v27, 2u);
      v16 = v14;
    }

    else if (v21 == 1 && ((_isInternalBuild.getter() & 1) != 0 || *(v0 + 112) == 1))
    {
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v22))
      {
        v20 = 1;
        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v22, "Presentment session has disabled session encryption", v23, 2u);
      v20 = 1;
    }

    else
    {
      defaultLogger()();
      v17 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v17, v24))
      {
        v20 = 0;
        v16 = v8;
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v17, v24, "Presentment session is using default session encryption", v25, 2u);
      v20 = 0;
      v16 = v8;
    }

    goto LABEL_18;
  }

  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "No presentment options set; using default session encryption", v19, 2u);
    v20 = 0;
    v16 = v5;
LABEL_18:

    goto LABEL_19;
  }

  v20 = 0;
  v16 = v5;
LABEL_19:

  (*(v2 + 8))(v16, v1);
  return v20;
}

uint64_t sub_1000DF7BC(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 4)
  {
    return 1u >> (a1 & 0xF);
  }

  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unknown session encryption mode %lu", v9, 0xCu);
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

unint64_t sub_1000DF924()
{
  _StringGuts.grow(_:)(23);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000014;
}

uint64_t sub_1000DF9C4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

char *sub_1000DFA34(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v68 = a1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v79 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ISO18013PresentmentType();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v8 - 8);
  v60 = &v55 - v9;
  v61 = type metadata accessor for COSEKey();
  v76 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ISO18013SessionCryptarch.Curve();
  v72 = *(v74 - 8);
  v11 = __chkstk_darwin(v74);
  v67 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v55 - v13;
  v73 = type metadata accessor for ISO18013SessionCryptarch.Variant();
  v69 = *(v73 - 8);
  v14 = __chkstk_darwin(v73);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v55 - v16;
  v17 = type metadata accessor for ISO18013SessionCryptarch.Role();
  v70 = *(v17 - 8);
  v71 = v17;
  v18 = __chkstk_darwin(v17);
  v63 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v62 = &v55 - v20;
  v21 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v21 - 8);
  v22 = type metadata accessor for DIPSignpost();
  v80 = *(v22 - 8);
  v81 = v22;
  __chkstk_darwin(v22);
  v82 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v78 = v5;
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "PresentmentSessionCryptor generateTransportKey", v30, 2u);
    v5 = v78;
  }

  (*(v25 + 8))(v27, v24);
  static IDCSSignposts.presentmentGenerateTransportKey.getter();
  v31 = v82;
  DIPSignpost.init(_:)();
  v32 = sub_1000DF3C0();
  if ((sub_1000DF7BC(v32) & 1) != 0 && !*(v3 + 160))
  {
    v78 = v5;
    v34 = *(v70 + 104);
    v35 = &enum case for ISO18013SessionCryptarch.Variant.standard(_:);
    v36 = (v69 + 104);
    if (v32 == 3)
    {
      v35 = &enum case for ISO18013SessionCryptarch.Variant.ACWG(_:);
    }

    if (v32 == 2)
    {
      v37 = &enum case for ISO18013SessionCryptarch.Variant.UA(_:);
    }

    else
    {
      v37 = v35;
    }

    v38 = (v72 + 104);
    v39 = v75;
    if (v75 >> 60 == 15)
    {
      v34(v63, enum case for ISO18013SessionCryptarch.Role.device(_:), v71);
      (*v36)(v64, *v37, v73);
      (*v38)(v67, enum case for ISO18013SessionCryptarch.Curve.P256(_:), v74);
      type metadata accessor for ISO18013SessionCryptarch();
      swift_allocObject();
      v40 = ISO18013SessionCryptarch.init(role:variant:curve:)();
      v42 = v76;
      v41 = v77;
    }

    else
    {
      v34(v62, enum case for ISO18013SessionCryptarch.Role.device(_:), v71);
      (*v36)(v65, *v37, v73);
      (*v38)(v66, enum case for ISO18013SessionCryptarch.Curve.P256(_:), v74);
      type metadata accessor for ISO18013SessionCryptarch();
      swift_allocObject();
      sub_100009708(v68, v39);
      v43 = v77;
      v44 = ISO18013SessionCryptarch.init(role:curve:variant:localKey:)();
      v41 = v43;
      v42 = v76;
      if (v43)
      {
        goto LABEL_6;
      }

      v40 = v44;
    }

    v45 = ISO18013SessionCryptarch.publicKey.getter();
    v47 = v46;

    if (v47 >> 60 == 15)
    {
      (*(v78 + 104))(v79, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v4);
      v4 = "h is not available";
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      *(v3 + 160) = v40;

      sub_100009708(v45, v47);
      v77 = v40;
      v48 = v60;
      COSEKey.init(ec2CurveIdentifier:publicKey:)();
      v49 = v61;
      if ((*(v42 + 48))(v48, 1, v61) == 1)
      {
        sub_10000A0D4(v48, &qword_100201070, &unk_1001AD2D0);
        (*(v78 + 104))(v79, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v4);
        sub_10002688C(_swiftEmptyArrayStorage);
        v4 = type metadata accessor for DIPError();
        sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v31 = v82;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10001C120(v45, v47);
        goto LABEL_6;
      }

      v79 = v45;
      v50 = v56;
      (*(v42 + 32))(v56, v48, v49);
      type metadata accessor for CBOREncoder();
      swift_allocObject();
      CBOREncoder.init()();
      v51 = &enum case for ISO18013PresentmentType.digital(_:);
      v52 = &enum case for ISO18013PresentmentType.webRequestForwarding(_:);
      v53 = *(v3 + 112);
      if (v53 != 2)
      {
        v52 = &enum case for ISO18013PresentmentType.physical(_:);
      }

      if (v53 != 1)
      {
        v51 = v52;
      }

      v4 = v57;
      (*(v58 + 104))(v57, *v51, v59);
      CBOREncoder.presentmentType.setter();
      sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
      v54 = dispatch thunk of CBOREncoder.encode<A>(_:)();
      if (!v41)
      {
        v4 = v54;
        (*(v42 + 8))(v50, v49);

        sub_10001C120(v79, v47);

        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v80 + 8))(v31, v81);
        return v4;
      }

      (*(v42 + 8))(v50, v49);

      sub_10001C120(v79, v47);
    }

    goto LABEL_6;
  }

  (*(v5 + 104))(v79, enum case for DIPError.Code.idcsPreconditionNotMet(_:), v4);
  v4 = "h is not available";
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_6:
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v80 + 8))(v31, v81);
  return v4;
}

uint64_t sub_1000E08AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000E08F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E0900(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E0920(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000E095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(140);
  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x80000001001B9A80;
  String.append(_:)(v4);
  v5 = DCPresentmentSessionEncryptionModeToString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v10._object = 0x80000001001B9AC0;
  String.append(_:)(v10);
  v11 = DCCredentialReaderAuthenticationPolicyToString();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._object = 0x80000001001B9AE0;
  v16._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v16);
  v17 = DCPresentmentElementFallbackModeToString();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD00000000000001ALL;
  v22._object = 0x80000001001B9B00;
  String.append(_:)(v22);
  v23 = DCPresentmentMessageEncodingFormatToString();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  return 0;
}

uint64_t sub_1000E0B54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E0C24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004E70(&qword_1002014D0, &unk_1001AD120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PresentmentProposal(uint64_t a1)
{
  result = qword_100202C48;
  if (!qword_100202C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E0D20(uint64_t a1)
{
  sub_1000E0E6C();
  if (v1 <= 0x3F)
  {
    sub_1000E0EB8(319);
    if (v2 <= 0x3F)
    {
      sub_1000E0FC4(319, &qword_100202C58, &qword_100202C60, &qword_1001AD370);
      if (v3 <= 0x3F)
      {
        sub_1000E0F1C(319);
        if (v4 <= 0x3F)
        {
          sub_1000E0F74();
          if (v5 <= 0x3F)
          {
            sub_1000BD8E8();
            if (v6 <= 0x3F)
            {
              type metadata accessor for DCCredentialPresentmentAuthPolicy(319);
              if (v7 <= 0x3F)
              {
                sub_1000E0FC4(319, &qword_100202C68, &unk_100202C70, &qword_1001AD378);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000E0E6C()
{
  result = qword_100201DA0;
  if (!qword_100201DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100201DA0);
  }

  return result;
}

void sub_1000E0EB8(uint64_t a1)
{
  if (!qword_100202AE0)
  {
    sub_100021ED0(&unk_100202AE8, &qword_1001AD248);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100202AE0);
    }
  }
}

void sub_1000E0F1C(uint64_t a1)
{
  if (!qword_100202AD8)
  {
    type metadata accessor for COSE_Sign1();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100202AD8);
    }
  }
}

void sub_1000E0F74()
{
  if (!qword_100202650)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100202650);
    }
  }
}

void sub_1000E0FC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100021ED0(a3, a4);
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000E1028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a1 == 2)
  {
    v9 = &enum case for ISO18013CodingKeyFormat.standard(_:);
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v9 = &enum case for ISO18013CodingKeyFormat.ACWG(_:);
LABEL_6:
    v10 = *v9;
    v11 = type metadata accessor for ISO18013CodingKeyFormat();
    v12 = *(*(v11 - 8) + 104);

    return v12(a2, v10, v11);
  }

  v25 = v6;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = DCPresentmentMessageEncodingFormatToString();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10010150C(v19, v21, &v26);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unknown message encoding format: %s", v16, 0xCu);
    sub_100005090(v17);
  }

  (*(v5 + 8))(v8, v25);
  v23 = enum case for ISO18013CodingKeyFormat.standard(_:);
  v24 = type metadata accessor for ISO18013CodingKeyFormat();
  return (*(*(v24 - 8) + 104))(a2, v23, v24);
}

uint64_t sub_1000E12CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2)
  {
    v9 = &enum case for ISO18013DictionaryEncodingStrategy.coreDeterministic(_:);
LABEL_6:
    v10 = *v9;
    v11 = type metadata accessor for ISO18013DictionaryEncodingStrategy();
    v12 = *(*(v11 - 8) + 104);

    return v12(a2, v10, v11);
  }

  if (a1 == 2)
  {
    v9 = &enum case for ISO18013DictionaryEncodingStrategy.unifiedAccess(_:);
    goto LABEL_6;
  }

  v26 = v6;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = DCPresentmentMessageEncodingFormatToString();
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10010150C(v20, v22, &v27);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unknown dictionary encoding strategy: %s", v17, 0xCu);
    sub_100005090(v18);
  }

  (*(v5 + 8))(v8, v26);
  v24 = enum case for ISO18013DictionaryEncodingStrategy.coreDeterministic(_:);
  v25 = type metadata accessor for ISO18013DictionaryEncodingStrategy();
  return (*(*(v25 - 8) + 104))(a2, v24, v25);
}

void sub_1000E15E0(uint64_t a1)
{
  sub_1000E16E4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ISO18013ReaderRequest();
    if (v2 <= 0x3F)
    {
      sub_1000E9144(319, &qword_100201378, &type metadata for CertificateKnownIssuer, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000E9144(319, &unk_100202D38, &type metadata for String, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E16E4(uint64_t a1)
{
  if (!qword_100202D28)
  {
    sub_100021ED0(&qword_100202D30, &qword_1001AD3C8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100202D28);
    }
  }
}

uint64_t sub_1000E174C()
{
  v1 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for ReaderMetadataProvider(0) + 28)) || (ISO18013ReaderRequest.interpretWillNotRetainIntentAsDisplayOnly.getter() & 1) == 0)
  {
    return 0;
  }

  v5 = ISO18013ReaderRequest.docRequests.getter();
  swift_getKeyPath();
  v6 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v24[0] = v5;
    v12 = v5 + v11;
    v13 = *(v8 + 56);
    do
    {
      v9(v4, v12, v1);
      swift_getAtKeyPath();
      (*(v8 - 8))(v4, v1);
      sub_1000FCD88(v25);
      v12 += v13;
      --v7;
    }

    while (v7);

    v14 = v26;
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  result = swift_getKeyPath();
  v26 = _swiftEmptyArrayStorage;
  v16 = v14[2];
  if (v16)
  {
    v17 = 0;
    while (v17 < v14[2])
    {
      v18 = v17 + 1;
      v24[1] = v14[v17 + 4];

      swift_getAtKeyPath();

      result = sub_1000FCB00(v25);
      v17 = v18;
      if (v16 == v18)
      {
        v6 = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    v19 = v6[2];
    v20 = (v6 + 4);
    do
    {
      v21 = v19 == 0;
      if (!v19)
      {
        break;
      }

      v22 = *v20++;
      --v19;
    }

    while (v22 != 1);
    v23 = v21;

    return v23;
  }

  return result;
}

uint64_t sub_1000E19D8()
{
  v2 = sub_100004E70(&qword_100202DF8, &qword_1001AD4C8);
  __chkstk_darwin(v2);
  v4 = v25 - v3;
  v5 = sub_100004E70(&qword_100202E00, &qword_1001AD4D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = type metadata accessor for ReaderAuthenticationAllowableElements();
  v32 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100046360(v0, &v28, &qword_100202D90, &qword_1001AD400);
  if (!v29)
  {
    sub_10000A0D4(&v28, &qword_100202D90, &qword_1001AD400);
    return 0;
  }

  sub_10001AA08(&v28, v30);
  if (*(v0 + *(type metadata accessor for ReaderMetadataProvider(0) + 28)))
  {
    sub_100005090(v30);
    return 0;
  }

  v26 = v2;
  v27 = sub_1000E174C();
  sub_100009278(v30, v31);
  dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDisplayOnly.getter();
  if (v1)
  {
    return sub_100005090(v30);
  }

  sub_100009278(v30, v31);
  dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDataTransfer.getter();
  v25[1] = 0;
  v18 = &v4[*(v26 + 48)];
  v19 = &v4[*(v26 + 64)];
  *v4 = v27 & 1;
  v20 = v13;
  v21 = v18;
  sub_100046524(v20, v18, &qword_100202E00, &qword_1001AD4D0);
  sub_100046524(v11, v19, &qword_100202E00, &qword_1001AD4D0);
  v22 = v32;
  v23 = *(v32 + 48);
  if (v23(v21, 1, v14) == 1)
  {
    if (v23(v19, 1, v14) == 1)
    {
      sub_10000A0D4(v21, &qword_100202E00, &qword_1001AD4D0);
      sub_100005090(v30);
      return 0;
    }

    if (v27)
    {
      v21 = v19;
LABEL_19:
      sub_10000A0D4(v21, &qword_100202E00, &qword_1001AD4D0);
      sub_100005090(v30);
      return 1;
    }
  }

  else
  {
    sub_100046360(v21, v8, &qword_100202E00, &qword_1001AD4D0);
    if (v27)
    {
      (*(v22 + 32))(v16, v8, v14);
      sub_10000A0D4(v19, &qword_100202E00, &qword_1001AD4D0);
LABEL_21:
      sub_10000A0D4(v21, &qword_100202E00, &qword_1001AD4D0);
      v24 = ReaderAuthenticationAllowableElements.documentTypes.getter();
      ReaderAuthenticationAllowableElements.elements.getter();
      (*(v22 + 8))(v16, v14);
      sub_100005090(v30);
      return v24;
    }

    (*(v22 + 8))(v8, v14);
  }

  if (v23(v19, 1, v14) != 1)
  {
    (*(v22 + 32))(v16, v19, v14);
    goto LABEL_21;
  }

  if (v23(v21, 1, v14) != 1)
  {
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E1EF0()
{
  v0 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ReaderMetadataProvider(0);
  v4 = ISO18013ReaderRequest.docRequests.getter();
  v5 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v1 + 8);
    while (v7 < *(v4 + 16))
    {
      (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v0);
      sub_1000E20B8(v3, &v12);
      ++v7;
      (*v8)(v3, v0);
      sub_1000FC91C(v12);
      if (v6 == v7)
      {
        v5 = v13;
        goto LABEL_6;
      }
    }

    __break(1u);

    (*v8)(v3, v0);

    __break(1u);
  }

  else
  {
LABEL_6:

    v9 = sub_10010D640(v5);

    return v9;
  }

  return result;
}

void sub_1000E20B8(void *a1@<X0>, void *a2@<X8>)
{
  v121 = a2;
  v3 = sub_100004E70(&qword_100202E08, &qword_1001AD4D8);
  v4 = __chkstk_darwin(v3 - 8);
  v125 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v123 = &v119 - v6;
  v135 = type metadata accessor for ISO18013ReaderRequest.ElementReference();
  v126 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v132 = (&v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = &v119 - v12;
  v14 = sub_100004E70(&qword_1002014F8, &qword_1001AB880);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v129 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v119 - v18;
  v137 = a1;
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  CBOREncodedCBOR.value.getter();
  v20 = *(v15 + 8);
  v130 = (v15 + 8);
  v131 = v14;
  v128 = v20;
  v20(v19, v14);
  v21 = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
  v22 = *(v9 + 8);
  v136 = v8;
  v133 = v9 + 8;
  v127 = v22;
  (v22)(v13, v8);
  v23 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 64);
  v27 = (v24 + 63) >> 6;
  v138 = v21;

  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v26)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
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
      return;
    }

    if (v31 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v31);
    ++v29;
    if (v26)
    {
      v29 = v31;
LABEL_10:
      v32 = *(v138[6] + 16 * (__clz(__rbit64(v26)) | (v29 << 6)) + 8);
      __chkstk_darwin(v28);
      *(&v119 - 2) = v33;
      *(&v119 - 1) = v32;

      v35 = v122;
      v37 = sub_1000E85BC(v34, sub_1000E8DA4, v36);
      v122 = v35;

      v38 = v37[2];
      v39 = v30[2];
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_108;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v40 > v30[3] >> 1)
      {
        if (v39 <= v40)
        {
          v42 = v39 + v38;
        }

        else
        {
          v42 = v39;
        }

        v30 = sub_100100B68(isUniquelyReferenced_nonNull_native, v42, 1, v30);
      }

      v26 &= v26 - 1;
      if (v37[2])
      {
        if ((v30[3] >> 1) - v30[2] < v38)
        {
          goto LABEL_110;
        }

        sub_100004E70(&qword_100200468, &qword_1001AAE98);
        swift_arrayInitWithCopy();

        if (v38)
        {
          v43 = v30[2];
          v44 = __OFADD__(v43, v38);
          v45 = v43 + v38;
          if (v44)
          {
            goto LABEL_111;
          }

          v30[2] = v45;
        }
      }

      else
      {

        if (v38)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_5;
    }
  }

  v120 = v30;

  v46 = v129;
  ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
  v47 = v131;
  v48 = v132;
  CBOREncodedCBOR.value.getter();
  v128(v46, v47);
  v49 = ISO18013ReaderRequest.ItemsRequest.alternativeElements.getter();
  (v127)(v48, v136);
  swift_getKeyPath();
  v139 = _swiftEmptyArrayStorage;
  v50 = 1 << *(v49 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v49 + 64);
  v53 = (v50 + 63) >> 6;

  v54 = 0;
  if (v52)
  {
    while (1)
    {
      v55 = v54;
LABEL_30:
      v56 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v141 = *(*(v49 + 56) + ((v55 << 9) | (8 * v56)));

      swift_getAtKeyPath();

      sub_1000FD274(v142);
      if (!v52)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
LABEL_26:
    v55 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_96;
    }

    if (v55 >= v53)
    {
      break;
    }

    v52 = *(v49 + 64 + 8 * v55);
    ++v54;
    if (v52)
    {
      v54 = v55;
      goto LABEL_30;
    }
  }

  v57 = v139;
  v58 = v139[2];
  if (v58)
  {
    v59 = 0;
    v60 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v59 >= v57[2])
      {
        goto LABEL_97;
      }

      v61 = v57[v59 + 4];
      v62 = *(v61 + 16);
      v63 = v60[2];
      v64 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        goto LABEL_98;
      }

      v65 = swift_isUniquelyReferenced_nonNull_native();
      if (v65 && v64 <= v60[3] >> 1)
      {
        if (!*(v61 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v63 <= v64)
        {
          v67 = v63 + v62;
        }

        else
        {
          v67 = v63;
        }

        v60 = sub_100101004(v65, v67, 1, v60, v66);
        if (!*(v61 + 16))
        {
LABEL_34:

          if (v62)
          {
            goto LABEL_99;
          }

          goto LABEL_35;
        }
      }

      if ((v60[3] >> 1) - v60[2] < v62)
      {
        goto LABEL_104;
      }

      sub_100004E70(&qword_100202E10, &qword_1001AD520);
      swift_arrayInitWithCopy();

      if (v62)
      {
        v68 = v60[2];
        v44 = __OFADD__(v68, v62);
        v69 = v68 + v62;
        if (v44)
        {
          goto LABEL_106;
        }

        v60[2] = v69;
      }

LABEL_35:
      if (v58 == ++v59)
      {
        goto LABEL_51;
      }
    }
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_51:

  v128 = v60[2];
  if (v128)
  {
    v70 = 0;
    v127 = v60 + 4;
    v132 = (v126 + 8);
    v133 = v126 + 16;
    v71 = _swiftEmptyArrayStorage;
    v124 = v60;
    while (1)
    {
      if (v70 >= v60[2])
      {
        goto LABEL_101;
      }

      v72 = v127[v70];
      v73 = *(v72 + 2);
      if (v73)
      {
        v130 = v71;
        v131 = v70;
        v139 = _swiftEmptyArrayStorage;

        sub_10010A9A0(0, v73, 0);
        v74 = v139;
        v75 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v129 = v72;
        v76 = &v72[v75];
        v77 = *(v126 + 72);
        v136 = *(v126 + 16);
        v137 = v77;
        do
        {
          v79 = v134;
          v78 = v135;
          (v136)(v134, v76, v135);
          v138 = ISO18013ReaderRequest.ElementReference.namespace.getter();
          v81 = v80;
          v82 = ISO18013ReaderRequest.ElementReference.elementIdentifier.getter();
          v84 = v83;
          (*v132)(v79, v78);
          v139 = v74;
          v86 = v74[2];
          v85 = v74[3];
          if (v86 >= v85 >> 1)
          {
            sub_10010A9A0((v85 > 1), v86 + 1, 1);
            v74 = v139;
          }

          v74[2] = v86 + 1;
          v87 = &v74[4 * v86];
          v87[4] = v138;
          v87[5] = v81;
          v87[6] = v82;
          v87[7] = v84;
          v76 = v137 + v76;
          --v73;
        }

        while (v73);

        v60 = v124;
        v71 = v130;
        v70 = v131;
      }

      else
      {
        v74 = _swiftEmptyArrayStorage;
      }

      v88 = v74[2];
      v89 = v71[2];
      v90 = v89 + v88;
      if (__OFADD__(v89, v88))
      {
        goto LABEL_102;
      }

      v91 = swift_isUniquelyReferenced_nonNull_native();
      if (v91 && v90 <= v71[3] >> 1)
      {
        if (!v74[2])
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v89 <= v90)
        {
          v92 = v89 + v88;
        }

        else
        {
          v92 = v89;
        }

        v71 = sub_100100B68(v91, v92, 1, v71);
        if (!v74[2])
        {
LABEL_53:

          if (v88)
          {
            goto LABEL_103;
          }

          goto LABEL_54;
        }
      }

      if ((v71[3] >> 1) - v71[2] < v88)
      {
        goto LABEL_105;
      }

      sub_100004E70(&qword_100200468, &qword_1001AAE98);
      swift_arrayInitWithCopy();

      if (v88)
      {
        v93 = v71[2];
        v44 = __OFADD__(v93, v88);
        v94 = v93 + v88;
        if (v44)
        {
          goto LABEL_107;
        }

        v71[2] = v94;
      }

LABEL_54:
      if (++v70 == v128)
      {
        goto LABEL_77;
      }
    }
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_77:

  v139 = v120;
  sub_1000FD170(v71);
  v95 = v139;
  v96 = v139[2];
  if (v96)
  {
    v142 = _swiftEmptyArrayStorage;
    sub_10010A6B4(0, v96, 0);
    v97 = 0;
    v98 = v142;
    LODWORD(v134) = enum case for ISO18013KnownNamespaces.iso18013_5_1(_:);
    LODWORD(v133) = enum case for ISO18013KnownNamespaces.iso23220_1(_:);
    v99 = (v95 + 7);
    v100 = v123;
    v136 = v96;
    v137 = v95;
    while (1)
    {
      if (v97 >= v95[2])
      {
        goto LABEL_100;
      }

      v138 = v98;
      v101 = *(v99 - 3);
      v102 = *(v99 - 2);
      v104 = *(v99 - 1);
      v103 = *v99;
      swift_bridgeObjectRetain_n();

      ISO18013KnownNamespaces.init(rawValue:)();
      v105 = type metadata accessor for ISO18013KnownNamespaces();
      v106 = *(v105 - 8);
      if ((*(v106 + 48))(v100, 1, v105) == 1)
      {
        goto LABEL_88;
      }

      v135 = v104;
      v107 = v125;
      sub_100046360(v100, v125, &qword_100202E08, &qword_1001AD4D8);
      v108 = (*(v106 + 88))(v107, v105);
      if (v108 == v134)
      {
        v104 = v135;
        v109 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();
        v100 = v123;
        if ((v109 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v104 = v135;
        if (v108 != v133)
        {
          (*(v106 + 8))(v125, v105);
          v100 = v123;
LABEL_88:
          v139 = v101;
          v140 = v102;

          v114._countAndFlagsBits = 58;
          v114._object = 0xE100000000000000;
          String.append(_:)(v114);
          v115._countAndFlagsBits = v104;
          v115._object = v103;
          String.append(_:)(v115);
          v113 = v139;
          v112 = v140;
          sub_10000A0D4(v100, &qword_100202E08, &qword_1001AD4D8);

          goto LABEL_89;
        }

        v110 = static ISO23220_1_ElementIdentifier.isAgeOverElement(_:)();
        v100 = v123;
        if ((v110 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      sub_10000A0D4(v100, &qword_100202E08, &qword_1001AD4D8);
      v139 = v101;
      v140 = v102;

      v111._countAndFlagsBits = 0x65766F5F6567613ALL;
      v111._object = 0xEC0000004E4E5F72;
      String.append(_:)(v111);

      v113 = v139;
      v112 = v140;
LABEL_89:
      v98 = v138;
      v142 = v138;
      v117 = v138[2];
      v116 = v138[3];
      if (v117 >= v116 >> 1)
      {
        sub_10010A6B4((v116 > 1), v117 + 1, 1);
        v100 = v123;
        v98 = v142;
      }

      ++v97;
      v98[2] = v117 + 1;
      v118 = &v98[2 * v117];
      v118[4] = v113;
      v118[5] = v112;
      v99 += 4;
      v95 = v137;
      if (v136 == v97)
      {

        goto LABEL_94;
      }
    }
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_94:
  *v121 = v98;
}

uint64_t sub_1000E2D74()
{
  v1 = type metadata accessor for DIPError.Code();
  v134 = *(v1 - 8);
  v135 = v1;
  __chkstk_darwin(v1);
  v137 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = (&v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = type metadata accessor for Logger();
  v138 = *(v136 - 8);
  v4 = __chkstk_darwin(v136);
  v141 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v133 = &v123 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v123 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v123 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v123 - v15;
  __chkstk_darwin(v14);
  v18 = &v123 - v17;
  v19 = sub_1000E174C();
  v20 = v19;
  if (v19)
  {
    v21 = 0x2079616C70736964;
  }

  else
  {
    v21 = 0x6172742061746164;
  }

  if (v19)
  {
    v22 = 0xEC000000796C6E6FLL;
  }

  else
  {
    v22 = 0xED0000726566736ELL;
  }

  v23 = sub_1000E1EF0();
  v24 = v142;
  v25 = sub_1000E19D8();
  v139 = v24;
  if (v24)
  {
  }

  v142 = v21;
  v132 = v23;
  v130 = v20;
  v128 = v13;
  v131 = v0;
  v129 = v10;
  v28 = v137;
  if (v25)
  {
    v29 = v16;
    v30 = v132;
    v31 = v22;
    if (v25 == 1)
    {
      type metadata accessor for IDCSAnalytics();
      type metadata accessor for ReaderMetadataProvider(0);
      static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)();

      v32 = v141;
      defaultLogger()();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v145 = v36;
        *v35 = 136446210;
        v37 = v142;
        *(v35 + 4) = sub_10010150C(v142, v22, &v145);
        _os_log_impl(&_mh_execute_header, v33, v34, "Reader certificate is not allowed to make %{public}s requests", v35, 0xCu);
        sub_100005090(v36);

        (*(v138 + 8))(v32, v136);
      }

      else
      {

        (*(v138 + 8))(v32, v136);
        v37 = v142;
      }

      v145 = 0;
      v146 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v64._countAndFlagsBits = 0xD00000000000002ALL;
      v64._object = 0x80000001001B9CC0;
      String.append(_:)(v64);
      v65._countAndFlagsBits = v37;
      v65._object = v22;
      String.append(_:)(v65);

      v66._countAndFlagsBits = 0x7473657571657220;
      v66._object = 0xE900000000000073;
      String.append(_:)(v66);
      (*(v134 + 104))(v28, enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:), v135);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_46;
    }

    v46 = v29;
    v47 = v26;
    v48 = v25;
    defaultLogger()();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v127 = v47;
    v126 = v48;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v141 = v46;
      LODWORD(v125) = v50;
      v53 = v52;
      v124 = swift_slowAlloc();
      v145 = v124;
      *v53 = 136446722;
      v54 = sub_10010150C(v142, v31, &v145);

      *(v53 + 4) = v54;
      *(v53 + 12) = 2080;
      v147 = v48;
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      sub_1000E8470();
      v55 = BidirectionalCollection<>.joined(separator:)();
      v57 = sub_10010150C(v55, v56, &v145);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2080;
      v58 = v138;
      v147 = v47;
      v59 = BidirectionalCollection<>.joined(separator:)();
      v61 = sub_10010150C(v59, v60, &v145);

      *(v53 + 24) = v61;
      _os_log_impl(&_mh_execute_header, v49, v125, "Allowable elements for %{public}s request: documentTypes=[%s] elements=[%s]", v53, 0x20u);
      swift_arrayDestroy();

      v62 = *(v58 + 8);
      v63 = v141;
    }

    else
    {

      v62 = *(v138 + 8);
      v63 = v46;
    }

    v67 = v136;
    v125 = v62;
    v62(v63, v136);
    v68 = v144;
    v124 = type metadata accessor for ReaderMetadataProvider(0);
    v69 = ISO18013ReaderRequest.docRequests.getter();
    KeyPath = swift_getKeyPath();
    v71 = *(v69 + 16);
    if (v71)
    {
      v142 = KeyPath;
      v147 = _swiftEmptyArrayStorage;
      sub_10010A6B4(0, v71, 0);
      v72 = v147;
      v73 = v140 + 16;
      v141 = *(v140 + 16);
      v74 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v123 = v69;
      v75 = v69 + v74;
      v140 = *(v140 + 72);
      v76 = (v73 - 8);
      v77 = v143;
      do
      {
        v78 = v73;
        (v141)(v77, v75, v68);
        swift_getAtKeyPath();
        (*v76)(v77, v68);
        v80 = v145;
        v79 = v146;
        v147 = v72;
        v82 = v72[2];
        v81 = v72[3];
        if (v82 >= v81 >> 1)
        {
          sub_10010A6B4((v81 > 1), v82 + 1, 1);
          v72 = v147;
        }

        v72[2] = v82 + 1;
        v83 = &v72[2 * v82];
        v83[4] = v80;
        v83[5] = v79;
        v75 += v140;
        --v71;
        v77 = v143;
        v68 = v144;
        v73 = v78;
      }

      while (v71);

      v67 = v136;
      v84 = v139;
      v30 = v132;
    }

    else
    {

      v72 = _swiftEmptyArrayStorage;
      v84 = v139;
    }

    v85 = sub_10010D640(v72);

    v86 = sub_10016515C(v126, v85);

    if (v86[2])
    {

      type metadata accessor for IDCSAnalytics();
      static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)();

      v87 = v133;
      defaultLogger()();

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v145 = v91;
        *v90 = 136315138;
        v92 = v67;
        v93 = Set.description.getter();
        v95 = v94;

        v96 = sub_10010150C(v93, v95, &v145);

        *(v90 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v88, v89, "Reader certificate is not allowed to request elements for document types: %s", v90, 0xCu);
        sub_100005090(v91);

        v97 = v87;
        v98 = v92;
      }

      else
      {

        v97 = v87;
        v98 = v67;
      }

      v125(v97, v98);
      (*(v134 + 104))(v137, enum case for DIPError.Code.idcsRequestedDocumentTypesNotPermitted(_:), v135);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_46;
    }

    v99 = sub_10010D640(v127);

    v100 = v84;
    v101 = sub_1000E8A58(v30, v99);

    if (v101[2])
    {
      type metadata accessor for IDCSAnalytics();
      static IDCSAnalytics.sendRequestedElementsNotPermittedEvent(rpIdentifier:isDisplayOnly:notPermittedElements:)();
      v102 = v129;
      defaultLogger()();

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();

      LODWORD(v144) = v104;
      if (!os_log_type_enabled(v103, v104))
      {

        v116 = v102;
        v117 = v67;
LABEL_45:
        v125(v116, v117);
        (*(v134 + 104))(v137, enum case for DIPError.Code.idcsRequestedElementsNotPermitted(_:), v135);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
LABEL_46:
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        return swift_willThrow();
      }

      v139 = v100;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      v147 = v106;
      *v105 = 136315138;
      v108 = v101[2];
      if (v108)
      {
        v142 = v106;
        v109 = sub_100101488(v108, 0);
        v143 = sub_10012261C(&v145, v109 + 4, v108, v101);
        v110 = v145;

        sub_1000BAE9C(v110);
        if (v143 != v108)
        {
          __break(1u);
LABEL_48:

          __break(1u);
          return result;
        }

        v111 = v129;
        v107 = v142;
      }

      else
      {
        v109 = _swiftEmptyArrayStorage;
        v111 = v129;
      }

      v145 = v109;
      v118 = v139;
      sub_1000E7560(&v145);
      if (!v118)
      {

        v119 = Array.description.getter();
        v121 = v120;

        v122 = sub_10010150C(v119, v121, &v147);

        *(v105 + 4) = v122;
        _os_log_impl(&_mh_execute_header, v103, v144, "Reader certificate is not allowed to request these elements: %s", v105, 0xCu);
        sub_100005090(v107);

        v116 = v111;
        v117 = v136;
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    v112 = v128;
    defaultLogger()();
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "Reader certificate passed allowable fields validation for requested elements", v115, 2u);
    }

    return (v125)(v112, v67);
  }

  else
  {

    v38 = v18;
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v138;
      v43 = v41;
      v44 = swift_slowAlloc();
      v145 = v44;
      *v43 = 136446210;
      v45 = sub_10010150C(v142, v22, &v145);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Reader certificate pased allowable fields validation for %{public}s request", v43, 0xCu);
      sub_100005090(v44);

      return (*(v42 + 8))(v38, v136);
    }

    else
    {

      return (*(v138 + 8))(v18, v136);
    }
  }
}

uint64_t sub_1000E3EFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v142 = a2;
  v118 = type metadata accessor for AlgorithmIdentifier();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Logger();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v122 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v146 = *(v5 - 8);
  v147 = v5;
  __chkstk_darwin(v5);
  v145 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100004E70(&qword_100202DA0, &qword_1001AD408);
  v123 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v114 - v7;
  v125 = sub_100004E70(&qword_100202DA8, &qword_1001AD410);
  __chkstk_darwin(v125);
  v124 = &v114 - v8;
  v130 = type metadata accessor for HashDigest();
  v128 = *(v130 - 8);
  v9 = __chkstk_darwin(v130);
  v119 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v129 = &v114 - v11;
  v12 = sub_100004E70(&qword_100202DB0, &qword_1001AD418);
  __chkstk_darwin(v12 - 8);
  v140 = &v114 - v13;
  v132 = sub_100004E70(&qword_100202DB8, &qword_1001AD420);
  __chkstk_darwin(v132);
  v131 = &v114 - v14;
  v136 = type metadata accessor for URL();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LogotypeDetails();
  v138 = *(v16 - 8);
  v139 = v16;
  __chkstk_darwin(v16);
  v137 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004E70(&qword_100202DC0, &qword_1001AD428);
  __chkstk_darwin(v18 - 8);
  v143 = &v114 - v19;
  v20 = sub_100004E70(&qword_100202DC8, &qword_1001AD430);
  __chkstk_darwin(v20 - 8);
  v141 = &v114 - v21;
  v22 = sub_100004E70(&qword_100202DD0, &qword_1001AD438);
  __chkstk_darwin(v22 - 8);
  v24 = &v114 - v23;
  v25 = type metadata accessor for Logotype();
  v144 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004E70(&qword_100202DD8, &qword_1001AD440);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v114 - v33;
  __chkstk_darwin(v32);
  v36 = &v114 - v35;
  sub_100009278(a1, a1[3]);
  v37 = v148;
  dispatch thunk of ReaderAuthenticationCertificate.logotype.getter();
  if (v37)
  {
    (*(v146 + 104))(v145, enum case for DIPError.Code.internalError(_:), v147);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v148 = 0;
  v39 = v143;
  v114 = v24;
  v115 = v27;
  sub_100046524(v34, v36, &qword_100202DD8, &qword_1001AD440);
  sub_100046360(v36, v31, &qword_100202DD8, &qword_1001AD440);
  v40 = v144;
  if ((*(v144 + 48))(v31, 1, v25) == 1)
  {
    sub_10000A0D4(v36, &qword_100202DD8, &qword_1001AD440);
    v41 = v31;
    v42 = &qword_100202DD8;
    v43 = &qword_1001AD440;
LABEL_13:
    sub_10000A0D4(v41, v42, v43);
    v61 = v142;
    v62 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
    return (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  }

  v44 = v25;
  v45 = v115;
  (*(v40 + 32))(v115, v31, v44);
  Logotype.subjectLogo.getter();
  v46 = type metadata accessor for LogotypeInfo();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v39, 1, v46) == 1)
  {
    (*(v40 + 8))(v45, v44);
    sub_10000A0D4(v36, &qword_100202DD8, &qword_1001AD440);
    v42 = &qword_100202DC0;
    v43 = &qword_1001AD428;
    v41 = v39;
    goto LABEL_13;
  }

  v48 = v141;
  LogotypeInfo.data.getter();
  (*(v47 + 8))(v39, v46);
  v49 = type metadata accessor for LogotypeData();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 48))(v48, 1, v49);
  v52 = v148;
  if (v51 == 1)
  {
    (*(v40 + 8))(v45, v44);
    sub_10000A0D4(v36, &qword_100202DD8, &qword_1001AD440);
    v42 = &qword_100202DC8;
    v43 = &qword_1001AD430;
    v41 = v48;
    goto LABEL_13;
  }

  v143 = v36;
  v53 = v114;
  LogotypeData.image.getter();
  (*(v50 + 8))(v48, v49);
  v54 = v53;
  v55 = type metadata accessor for LogotypeImage();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    (*(v40 + 8))(v45, v44);
    sub_10000A0D4(v143, &qword_100202DD8, &qword_1001AD440);
    v42 = &qword_100202DD0;
    v43 = &qword_1001AD438;
    v41 = v54;
    goto LABEL_13;
  }

  v57 = v137;
  LogotypeImage.imageDetails.getter();
  (*(v56 + 8))(v54, v55);
  v58 = LogotypeDetails.logotypes.getter();
  (*(v138 + 8))(v57, v139);
  v59 = v140;
  Logotype.readerMetadata.getter();
  v60 = sub_100004E70(&qword_100202DE0, &qword_1001AD448);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
  {

    (*(v40 + 8))(v45, v44);
    sub_10000A0D4(v143, &qword_100202DD8, &qword_1001AD440);
    v42 = &qword_100202DB0;
    v43 = &qword_1001AD418;
    v41 = v59;
    goto LABEL_13;
  }

  v139 = v58;
  v141 = v44;
  v63 = &v59[*(v60 + 48)];
  v64 = *v63;
  v65 = *(v63 + 1);
  v67 = v131;
  v66 = v132;
  v68 = &v131[*(v132 + 48)];
  v69 = *(v134 + 32);
  v70 = v136;
  v69(v131, v59, v136);
  *v68 = v64;
  *(v68 + 1) = v65;
  v71 = &v67[*(v66 + 48)];
  v73 = *v71;
  v72 = v71[1];
  v132 = v73;
  v140 = v72;
  v74 = v135;
  v75 = v67;
  v76 = v70;
  v137 = v69;
  v69(v135, v75, v70);
  type metadata accessor for ReaderMetadataProvider(0);
  v138 = ISO18013ReaderRequest.logotypeIconData.getter();
  if (v77 >> 60 == 15)
  {

LABEL_21:
    v108 = 0;
    v91 = 0xF000000000000000;
    v109 = v141;
LABEL_22:
    (*(v144 + 8))(v115, v109);
    sub_10000A0D4(v143, &qword_100202DD8, &qword_1001AD440);
    v110 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
    v111 = v142;
    (v137)(v142 + *(v110 + 20), v74, v76);
    *v111 = v108;
    v111[1] = v91;
    v112 = (v111 + *(v110 + 24));
    v113 = v140;
    *v112 = v132;
    v112[1] = v113;
    return (*(*(v110 - 8) + 56))(v111, 0, 1, v110);
  }

  v78 = v77;
  if (!*(v139 + 16))
  {

    sub_10001C120(v138, v78);
    goto LABEL_21;
  }

  v79 = v126;
  sub_100046360(v139 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v126, &qword_100202DA0, &qword_1001AD408);

  v80 = (v79 + *(v127 + 48));
  v82 = *v80;
  v81 = v80[1];
  v133 = v82;
  v131 = v81;
  v83 = v124;
  v84 = &v124[*(v125 + 48)];
  v85 = v128;
  v139 = v78;
  v86 = *(v128 + 32);
  v87 = v79;
  v88 = v130;
  v86(v124, v87, v130);
  v89 = v131;
  *v84 = v133;
  *(v84 + 1) = v89;

  v90 = v129;
  v86(v129, v83, v88);
  v91 = v139;
  v92 = HashDigest.equalsHash(of:)();
  if (v52)
  {

    v93 = v122;
    defaultLogger()();
    v94 = v119;
    (*(v85 + 16))(v119, v90, v88);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    v97 = v88;
    v98 = v85;
    if (os_log_type_enabled(v95, v96))
    {
      v99 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v149 = v148;
      *v99 = 136315138;
      v100 = v94;
      v101 = v116;
      LODWORD(v142) = v96;
      HashDigest.algorithm.getter();
      sub_1000E856C(&qword_100202DE8, &type metadata accessor for AlgorithmIdentifier, &protocol conformance descriptor for AlgorithmIdentifier);
      v102 = v118;
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      (*(v117 + 8))(v101, v102);
      v106 = *(v98 + 8);
      v106(v100, v130);
      v107 = sub_10010150C(v103, v105, &v149);
      v97 = v130;

      *(v99 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v95, v142, "Unable to verify logotype data hash, unknown hash algorithm identifier: %s", v99, 0xCu);
      sub_100005090(v148);

      (*(v120 + 8))(v122, v121);
    }

    else
    {

      v106 = *(v85 + 8);
      v106(v94, v97);
      (*(v120 + 8))(v93, v121);
    }

    (*(v146 + 104))(v145, enum case for DIPError.Code.internalError(_:), v147);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v138, v139);

    v106(v129, v97);
    (*(v134 + 8))(v135, v136);
    (*(v144 + 8))(v115, v141);
    return sub_10000A0D4(v143, &qword_100202DD8, &qword_1001AD440);
  }

  else
  {
    v76 = v136;
    if (v92)
    {
      (*(v128 + 8))(v90, v130);
      v74 = v135;
      v109 = v141;
      v108 = v138;
      goto LABEL_22;
    }

    (*(v146 + 104))(v145, enum case for DIPError.Code.idcsCertificateLogoHashMismatch(_:), v147);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v138, v91);
    (*(v128 + 8))(v129, v130);
    (*(v134 + 8))(v135, v76);
    (*(v144 + 8))(v115, v141);
    return sub_10000A0D4(v143, &qword_100202DD8, &qword_1001AD440);
  }
}

id sub_1000E539C()
{
  v2 = type metadata accessor for DIPError.Code();
  v273 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v233 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  v5 = *(v270 - 8);
  v6 = __chkstk_darwin(v270);
  v236 = &v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v237 = &v233 - v8;
  v9 = sub_100004E70(&qword_100202D78, &qword_1001AD3E0);
  __chkstk_darwin(v9 - 8);
  v249 = &v233 - v10;
  v263 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNamePair();
  v245 = *(v263 - 8);
  v11 = __chkstk_darwin(v263);
  v242 = &v233 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v241 = &v233 - v14;
  v15 = __chkstk_darwin(v13);
  v243 = &v233 - v16;
  __chkstk_darwin(v15);
  v260 = &v233 - v17;
  v262 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  v261 = *(v262 - 8);
  __chkstk_darwin(v262);
  v251 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for Logger();
  v19 = *(v266 - 8);
  v20 = __chkstk_darwin(v266);
  v258 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v233 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v233 - v26;
  v28 = __chkstk_darwin(v25);
  v250 = &v233 - v29;
  v30 = __chkstk_darwin(v28);
  v244 = &v233 - v31;
  v32 = __chkstk_darwin(v30);
  v238 = &v233 - v33;
  v34 = __chkstk_darwin(v32);
  v240 = &v233 - v35;
  v36 = __chkstk_darwin(v34);
  v246 = &v233 - v37;
  __chkstk_darwin(v36);
  v39 = &v233 - v38;
  v40 = sub_100004E70(&qword_100202D80, &unk_1001AD3E8);
  v41 = __chkstk_darwin(v40 - 8);
  v247 = &v233 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v255 = &v233 - v44;
  __chkstk_darwin(v43);
  v269 = &v233 - v45;
  v46 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v47 = __chkstk_darwin(v46 - 8);
  v267 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v271 = &v233 - v50;
  v51 = __chkstk_darwin(v49);
  v252 = (&v233 - v52);
  __chkstk_darwin(v51);
  v274 = &v233 - v53;
  v54 = sub_100004E70(&qword_100202D88, &qword_1001AD3F8);
  v55 = __chkstk_darwin(v54 - 8);
  v248 = (&v233 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = __chkstk_darwin(v55);
  v239 = &v233 - v58;
  v59 = __chkstk_darwin(v57);
  v253 = (&v233 - v60);
  v61 = __chkstk_darwin(v59);
  v254 = (&v233 - v62);
  __chkstk_darwin(v61);
  v280 = (&v233 - v63);
  v264 = v0;
  sub_1000E2D74();
  v272 = v1;
  if (v1)
  {
    v259 = v19;
    v64 = [objc_opt_self() standardUserDefaults];
    v65._countAndFlagsBits = 0xD00000000000002ALL;
    v65._object = 0x80000001001B9B20;
    v66 = NSUserDefaults.internalBool(forKey:)(v65);

    if (!v66)
    {
      (*(v273 + 104))(v4, enum case for DIPError.Code.internalError(_:), v2);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      v74 = type metadata accessor for DIPError();
      sub_1000E856C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return v74;
    }

    defaultLogger()();
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    v69 = os_log_type_enabled(v67, v68);
    v268 = v5;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      swift_errorRetain();
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&_mh_execute_header, v67, v68, "Ignoring requested fields validation error due to user defaults setting: %@", v70, 0xCu);
      sub_10000A0D4(v71, &qword_1002003B8, &unk_1001AB850);
    }

    else
    {
    }

    v73 = v264;
    v19 = v259;
    (*(v259 + 8))(v24, v266);
    v272 = 0;
  }

  else
  {
    v268 = v5;
    v73 = v264;
  }

  v75 = v262;
  v76 = v268[7];
  v76(v280, 1, 1, v270);
  v77 = type metadata accessor for URL();
  v265 = *(v77 - 8);
  v78 = *(v265 + 56);
  v273 = v77;
  v257 = v265 + 56;
  v256 = v78;
  (v78)(v274, 1, 1);
  (*(v261 + 56))(v269, 1, 1, v75);
  v79 = type metadata accessor for ReaderMetadataProvider(0);
  if (*(v73 + *(v79 + 28)))
  {
    goto LABEL_10;
  }

  v233 = v76;
  sub_100046360(v73, &v276, &qword_100202D90, &qword_1001AD400);
  if (v277)
  {
    v234 = v79;
    sub_10001AA08(&v276, &v278);
    defaultLogger()();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Certificate is issued by Apple: reading read icon metadata and privacy policy URL", v92, 2u);
    }

    v93 = *(v19 + 8);
    v94 = v39;
    v95 = v266;
    v93(v94, v266);
    sub_100009278(&v278, v279);
    v96 = v252;
    v97 = v272;
    dispatch thunk of ReaderAuthenticationCertificate.privacyPolicyURL.getter();
    v98 = v268;
    v259 = v19 + 8;
    if (v97)
    {
      v99 = v258;
      defaultLogger()();
      DIPLogError(_:message:log:)();

      v93(v99, v95);
    }

    else
    {
      v100 = v268;
      v101 = v274;
      sub_10000A0D4(v274, &qword_1002019B0, &unk_1001ABDD0);
      v102 = v101;
      v98 = v100;
      sub_100046524(v96, v102, &qword_1002019B0, &unk_1001ABDD0);
    }

    v103 = v254;
    v104 = v264;
    sub_1000E3EFC(&v278, v254);
    v235 = v93;
    sub_1000E82DC(v103, v280);
    sub_100009278(&v278, v279);
    v105 = v255;
    dispatch thunk of ReaderAuthenticationCertificate.localizedRelyingPartyNames.getter();
    v272 = 0;
    v106 = v269;
    sub_10000A0D4(v269, &qword_100202D80, &unk_1001AD3E8);
    sub_100046524(v105, v106, &qword_100202D80, &unk_1001AD3E8);
    sub_100009278(&v278, v279);
    v254 = dispatch thunk of ReaderAuthenticationCertificate.pseudonym.getter();
    v108 = v107;
    v109 = v253;
    sub_100046360(v280, v253, &qword_100202D88, &qword_1001AD3F8);
    v268 = v98;
    v110 = v98[6];
    LODWORD(v106) = v110(v109, 1, v270);
    sub_10000A0D4(v109, &qword_100202D88, &qword_1001AD3F8);
    v111 = v106 == 1;
    v112 = v108;
    if (v111 || !v108)
    {
      v120 = v250;
      defaultLogger()();

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v121, v122))
      {
        v258 = v112;
        v123 = swift_slowAlloc();
        *&v276 = swift_slowAlloc();
        *v123 = 136315394;
        v124 = v280;
        swift_beginAccess();
        v125 = v124;
        v126 = v239;
        sub_100046360(v125, v239, &qword_100202D88, &qword_1001AD3F8);
        v127 = v110(v126, 1, v270);
        v128 = 7104878;
        v129 = 0xE300000000000000;
        if (v127 != 1)
        {
          v130 = v126;
          v131 = v237;
          sub_1000E834C(v130, v237);
          sub_1000E83B0(v131, v236);
          v132 = String.init<A>(describing:)();
          v129 = v133;
          sub_1000E8414(v131);
          v128 = v132;
        }

        v134 = sub_10010150C(v128, v129, &v276);

        *(v123 + 4) = v134;
        *(v123 + 12) = 2080;
        if (v258)
        {
          v135 = v254;
        }

        else
        {
          v135 = 7104878;
        }

        if (v258)
        {
          v136 = v258;
        }

        else
        {
          v136 = 0xE300000000000000;
        }

        v137 = sub_10010150C(v135, v136, &v276);

        *(v123 + 14) = v137;
        _os_log_impl(&_mh_execute_header, v121, v122, "Received icon metadata (%s) and pseudonym (%s), at least one is nil: ignoring MCC, organization and organizational unit", v123, 0x16u);
        swift_arrayDestroy();

        v235(v250, v266);
        v87 = v270;
      }

      else
      {

        v235(v120, v266);
        v87 = v270;
      }

      v138 = v248;
      v233(v248, 1, 1, v87);
      v89 = v280;
      swift_beginAccess();
      sub_1000E82DC(v138, v89);
      v255 = 0;
      v266 = 0;
      v86 = 0;
      v254 = 0;
      v258 = 0;
      v88 = v268;
      goto LABEL_62;
    }

    v258 = v108;
    v113 = v246;
    defaultLogger()();
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Icon metadata and pseudonym are present: reading MCC, forwarding organization and organizational unit", v116, 2u);
    }

    v235(v113, v266);
    sub_100009278(&v278, v279);
    v117 = dispatch thunk of ReaderAuthenticationCertificate.merchantCategoryCode.getter();
    v88 = v268;
    v89 = v280;
    v118 = v249;
    if (v119)
    {
      v255 = 0;
    }

    else
    {
      v255 = [objc_allocWithZone(NSNumber) initWithInteger:v117];
    }

    v139 = v262;
    v140 = v261;
    v141 = v251;
    v142 = v247;
    sub_100046360(v269, v247, &qword_100202D80, &unk_1001AD3E8);
    if ((*(v140 + 48))(v142, 1, v139) == 1)
    {
      v143 = &qword_100202D80;
      v144 = &unk_1001AD3E8;
    }

    else
    {
      (*(v140 + 32))(v141, v142, v139);
      v145 = ReaderAuthenticationLocalizedRelyingPartyNames.localizedNames.getter();
      v146 = *(v145 + 16);
      if (v146)
      {
        v275 = _swiftEmptyArrayStorage;
        sub_10010A6B4(0, v146, 0);
        v147 = v275;
        v252 = *(v245 + 16);
        v148 = (*(v245 + 80) + 32) & ~*(v245 + 80);
        v247 = v145;
        v149 = v145 + v148;
        v250 = *(v245 + 72);
        v253 = (v245 + 16);
        v248 = (v245 + 8);
        do
        {
          v150 = v260;
          v151 = v263;
          v252(v260, v149, v263);
          *&v276 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localeIdentifier.getter();
          *(&v276 + 1) = v152;
          v153._countAndFlagsBits = 2112800;
          v153._object = 0xE300000000000000;
          String.append(_:)(v153);
          v154._countAndFlagsBits = ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
          String.append(_:)(v154);

          v155 = v276;
          (*v248)(v150, v151);
          v275 = v147;
          v157 = v147[2];
          v156 = v147[3];
          if (v157 >= v156 >> 1)
          {
            sub_10010A6B4((v156 > 1), v157 + 1, 1);
            v147 = v275;
          }

          v147[2] = v157 + 1;
          *&v147[2 * v157 + 4] = v155;
          v149 += v250;
          --v146;
        }

        while (v146);

        v88 = v268;
        v89 = v280;
        v104 = v264;
        v142 = v249;
      }

      else
      {

        v147 = _swiftEmptyArrayStorage;
        v142 = v118;
      }

      v158 = v240;
      *&v276 = v147;
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      sub_1000E8470();
      v159 = BidirectionalCollection<>.joined(separator:)();
      v161 = v160;

      defaultLogger()();

      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *&v276 = v165;
        *v164 = 136315138;
        v166 = sub_10010150C(v159, v161, &v276);

        *(v164 + 4) = v166;
        _os_log_impl(&_mh_execute_header, v162, v163, "Localized relying party names are present: %s", v164, 0xCu);
        sub_100005090(v165);
        v89 = v280;

        v88 = v268;
      }

      else
      {
      }

      v235(v158, v266);
      v167 = v251;
      ReaderAuthenticationLocalizedRelyingPartyNames.preferredLocalization(preferredLanguages:)();
      v168 = v245;
      v169 = v263;
      if ((*(v245 + 48))(v142, 1) != 1)
      {
        v177 = *(v168 + 32);
        v178 = v168;
        v179 = v243;
        v180 = v142;
        v181 = v169;
        v177(v243, v180, v169);
        v182 = v238;
        defaultLogger()();
        v183 = v178;
        v184 = *(v178 + 16);
        v184(v241, v179, v181);
        v184(v242, v179, v181);
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          LODWORD(v254) = v186;
          v188 = v187;
          v260 = swift_slowAlloc();
          *&v276 = v260;
          *v188 = 136315394;
          v189 = v241;
          v253 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localeIdentifier.getter();
          v191 = v190;
          v192 = *(v183 + 8);
          v192(v189, v181);
          v193 = sub_10010150C(v253, v191, &v276);

          *(v188 + 4) = v193;
          *(v188 + 12) = 2080;
          v194 = v242;
          v195 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
          v253 = v185;
          v196 = v195;
          v198 = v197;
          v192(v194, v181);
          v199 = sub_10010150C(v196, v198, &v276);
          v89 = v280;

          *(v188 + 14) = v199;
          v200 = v253;
          _os_log_impl(&_mh_execute_header, v253, v254, "Overriding pseudonym with localization %s: %s", v188, 0x16u);
          swift_arrayDestroy();
          v88 = v268;

          v201 = v238;
        }

        else
        {

          v192 = *(v183 + 8);
          v192(v242, v181);
          v192(v241, v181);
          v201 = v182;
        }

        v235(v201, v266);
        v202 = v243;
        v254 = ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
        v204 = v203;
        v192(v202, v181);
        (*(v261 + 8))(v251, v262);

        v258 = v204;
        goto LABEL_60;
      }

      (*(v261 + 8))(v167, v262);
      v143 = &qword_100202D78;
      v144 = &qword_1001AD3E0;
    }

    sub_10000A0D4(v142, v143, v144);
    v170 = v244;
    defaultLogger()();
    v171 = v258;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *&v276 = v175;
      *v174 = 136315138;
      *(v174 + 4) = sub_10010150C(v254, v171, &v276);
      _os_log_impl(&_mh_execute_header, v172, v173, "No suitable localized relying party name found, using organization as pseudonym: %s", v174, 0xCu);
      sub_100005090(v175);
      v176 = v234;

      v235(v170, v266);
      v87 = v270;
LABEL_61:
      v205 = v104 + *(v176 + 24);
      v86 = *(v205 + 40);
      v266 = *(v205 + 32);

LABEL_62:
      sub_100005090(&v278);
      goto LABEL_63;
    }

    v235(v170, v266);
LABEL_60:
    v87 = v270;
    v176 = v234;
    goto LABEL_61;
  }

  sub_10000A0D4(&v276, &qword_100202D90, &qword_1001AD400);
LABEL_10:
  v80 = v19;
  defaultLogger()();
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "Certificate not present or not issued by Apple: will not read icon metadata, privacy policy URL, or merchant category code", v83, 2u);
  }

  (*(v80 + 8))(v27, v266);
  v84 = *(v79 + 24);
  v85 = *(v73 + v84 + 24);
  v254 = *(v73 + v84 + 16);
  v86 = *(v73 + v84 + 40);
  v266 = *(v73 + v84 + 32);

  v258 = v85;

  v255 = 0;
  v87 = v270;
  v88 = v268;
  v89 = v280;
LABEL_63:
  swift_beginAccess();
  v206 = v88[6];
  v207 = v87;
  if (v206(v89, 1, v87))
  {
    v263 = 0;
    v208 = 0xF000000000000000;
  }

  else
  {
    v208 = v89[1];
    v263 = *v89;
    sub_100032EBC(v263, v208);
  }

  v209 = 1;
  if (!v206(v89, 1, v207))
  {
    (*(v265 + 16))(v271, v89 + *(v207 + 20), v273);
    v209 = 0;
  }

  v256(v271, v209, 1, v273);
  if (v206(v89, 1, v207))
  {
    v264 = 0;
    v210 = 0;
  }

  else
  {
    v211 = (v89 + *(v207 + 24));
    v210 = v211[1];
    v264 = *v211;
  }

  v212 = v265;
  sub_100046360(v274, v267, &qword_1002019B0, &unk_1001ABDD0);
  v270 = String._bridgeToObjectiveC()();
  v213 = v271;
  if (v258)
  {
    v268 = String._bridgeToObjectiveC()();

    if (v86)
    {
LABEL_73:
      v266 = String._bridgeToObjectiveC()();

      goto LABEL_76;
    }
  }

  else
  {
    v268 = 0;
    if (v86)
    {
      goto LABEL_73;
    }
  }

  v266 = 0;
LABEL_76:
  if (v208 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v215 = v263;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(v215, v208);
  }

  v216 = *(v212 + 48);
  v217 = v273;
  if (v216(v213, 1, v273) != 1)
  {
    URL._bridgeToObjectiveC()(v218);
    v219 = v222;
    (*(v212 + 8))(v213, v217);
    v220 = v267;
    if (v210)
    {
      goto LABEL_81;
    }

LABEL_83:
    v221 = 0;
    goto LABEL_84;
  }

  v219 = 0;
  v220 = v267;
  if (!v210)
  {
    goto LABEL_83;
  }

LABEL_81:
  v221 = String._bridgeToObjectiveC()();

LABEL_84:
  v223 = v273;
  if (v216(v220, 1, v273) == 1)
  {
    v225 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v224);
    v225 = v226;
    (*(v265 + 8))(v220, v223);
  }

  v227 = objc_allocWithZone(DCPresentmentProposalReaderMetadata);
  v228 = v255;
  v229 = v270;
  v230 = v268;
  v231 = v266;
  v74 = [v227 initWithIdentifier:v270 organization:v268 organizationalUnit:v266 iconData:isa iconURL:v219 iconMediaType:v221 privacyPolicyURL:v225 merchantCategoryCode:v255];

  sub_10000A0D4(v269, &qword_100202D80, &unk_1001AD3E8);
  sub_10000A0D4(v274, &qword_1002019B0, &unk_1001ABDD0);
  sub_10000A0D4(v280, &qword_100202D88, &qword_1001AD3F8);
  return v74;
}

__n128 sub_1000E73CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  *(a7 + 32) = *(a1 + 32);
  v14 = a6[5];
  v15 = type metadata accessor for ISO18013ReaderRequest();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  v16 = a6[7];
  v17 = a7 + a6[6];
  v18 = *(a3 + 16);
  *v17 = *a3;
  *(v17 + 16) = v18;
  result = *(a3 + 32);
  *(v17 + 32) = result;
  *(a7 + v16) = a4;
  *(a7 + a6[8]) = a5;
  return result;
}

void *sub_1000E74C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000E884C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

Swift::Int sub_1000E7560(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000E813C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000E75CC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000E75CC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000E7794(v7, v8, a1, v4);
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
    return sub_1000E76C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E76C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E7794(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000E8024(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000E7D70((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000E8038(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000E8038((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000E7D70((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000E8024(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000E7F98(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1000E7D70(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000E7F98(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000E8024(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1000E8038(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100202DF0, &qword_1001AD4C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000E8150(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (v4 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_100032EBC(*a1, v4);
      sub_100032EBC(v7, v6);
      sub_10001C120(v5, v4);
      goto LABEL_7;
    }

LABEL_5:
    sub_100032EBC(*a1, v4);
    sub_100032EBC(v7, v6);
    sub_10001C120(v5, v4);
    sub_10001C120(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_100032EBC(*a1, v4);
  sub_100032EBC(v7, v6);
  v9 = sub_1000EBB34(v5, v4, v7, v6);
  sub_10001C120(v7, v6);
  sub_10001C120(v5, v4);
  if (!v9)
  {
    return 0;
  }

LABEL_7:
  v10 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v10 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E82DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100202D88, &qword_1001AD3F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E834C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E83B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E8414(uint64_t a1)
{
  v2 = type metadata accessor for ReaderMetadataProvider.IconMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E8470()
{
  result = qword_100202D98;
  if (!qword_100202D98)
  {
    sub_100021ED0(&qword_100201580, &qword_1001AB980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202D98);
  }

  return result;
}

uint64_t sub_1000E856C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000E85BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), __n128 a3)
{
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_10010A9A0(0, v4, 0);
    v38 = _swiftEmptyArrayStorage;
    v6 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(a1 + 36);
    v33 = v4;
    v34 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v36 = v8;
      v12 = (*(a1 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + v7);

      v16 = a2(v13, v14, v15);
      v18 = v17;
      v37 = v19;
      v21 = v20;

      v22 = v38;
      v24 = v38[2];
      v23 = v38[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_10010A9A0((v23 > 1), v24 + 1, 1);
        v22 = v38;
      }

      v22[2] = v24 + 1;
      v25 = &v22[4 * v24];
      v25[4] = v16;
      v25[5] = v18;
      v25[6] = v37;
      v25[7] = v21;
      v10 = 1 << *(a1 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v6 = a1 + 64;
      v26 = *(a1 + 64 + 8 * v11);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v38 = v22;
      v9 = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v11 << 6;
        v29 = v11 + 1;
        v30 = (a1 + 72 + 8 * v11);
        while (v29 < (v10 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1000468A0(v7, v34, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1000468A0(v7, v34, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v10;
      if (v36 + 1 == v33)
      {
        return v38;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

Swift::Int sub_1000E884C(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v15 = v12 | (v5 << 6);
    if (!*(a4 + 16))
    {
      goto LABEL_23;
    }

    v31 = v9;
    v29 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(a4 + 48) + 16 * v21);
        v24 = *v23 == v18 && v23[1] == v17;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v9 = v31;
    }

    else
    {
LABEL_22:

      v9 = v31;
      v15 = v29;
LABEL_23:
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_26:

        return sub_100165C84(v27, a2, v28, a3);
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000E8A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v33[0] = v3;
    v33[1] = v33;
    v34 = v8;
    __chkstk_darwin(v10);
    v35 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v9);
    v36 = 0;
    v37 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v15 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v38 = v16 | (v11 << 6);
      v39 = v14;
      v20 = (*(v5 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = -1 << *(a2 + 32);
      v9 = v23 & ~v24;
      if ((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v25 = ~v24;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v9);
          v27 = *v26 == v22 && v26[1] == v21;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v25;
          if (((*(v15 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v5 = v37;
        v14 = v39;
      }

      else
      {
LABEL_23:

        v5 = v37;
        v19 = v38;
        v14 = v39;
LABEL_24:
        *&v35[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_27:
          v29 = sub_100165C84(v35, v34, v36, v5);

          return v29;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();

  v32 = sub_1000E74C4(v31, v8, v5, a2);

  return v32;
}

uint64_t sub_1000E8DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);

  return v3;
}

double sub_1000E8E00@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_1000E8E14@<X0>(uint64_t *a2@<X8>)
{
  result = ISO18013ReaderRequest.ItemsRequest.namespaces.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000E8E6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1000E8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24) + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1000E8FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000E9094(uint64_t a1)
{
  sub_1000E9144(319, &qword_100201A40, &type metadata for Data, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E9144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1000E91B0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v39 = type metadata accessor for ISO18013KnownDocTypes();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DocumentRequest();
  __chkstk_darwin(v42);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v5 + 16);
    v9 = v5 + 16;
    v40 = v10;
    v11 = (a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64)));
    v37 = *(v9 + 56);
    v36 = enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
    v34 = (v3 + 8);
    v35 = (v3 + 104);
    v33 = (v9 - 8);
    v12 = _swiftEmptyArrayStorage;
    v41 = v9;
    v10(v7, v11, v42);
    while (1)
    {
      v13 = DocumentRequest.docType.getter();
      v15 = v14;
      v17 = v38;
      v16 = v39;
      (*v35)(v38, v36, v39);
      v18 = ISO18013KnownDocTypes.rawValue.getter();
      v20 = v19;
      (*v34)(v17, v16);
      if (v18 == v13 && v20 == v15)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          (*v33)(v7, v42);
          goto LABEL_4;
        }
      }

      v22 = type metadata accessor for MDLRequestValidator(0);
      v47 = v22;
      v48 = &off_1001F7478;
      v23 = sub_10001A9A4(v46);
      v40(v23, v7, v42);
      *(v23 + *(v22 + 20)) = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1001007B8(0, v12[2] + 1, 1, v12);
      }

      v25 = v12[2];
      v24 = v12[3];
      if (v25 >= v24 >> 1)
      {
        v12 = sub_1001007B8((v24 > 1), v25 + 1, 1, v12);
      }

      (*v33)(v7, v42);
      v26 = sub_1000129AC(v46, v47);
      __chkstk_darwin(v26);
      v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      v44 = v22;
      v45 = &off_1001F7478;
      v30 = sub_10001A9A4(&v43);
      sub_1000E9604(v28, v30);
      v12[2] = v25 + 1;
      sub_10001AA08(&v43, &v12[5 * v25 + 4]);
      sub_100005090(v46);
LABEL_4:
      v11 += v37;
      if (!--v8)
      {
        return v12;
      }

      v40(v7, v11, v42);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000E9604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MDLRequestValidator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = v17;
  v8[27] = v18;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = type metadata accessor for DIPError.Code();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  v10 = sub_100004E70(&qword_100202EB0, &qword_1001AD668);
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v11 = type metadata accessor for SESKeystore.SignatureOutputFormat();
  v8[34] = v11;
  v8[35] = *(v11 - 8);
  v8[36] = swift_task_alloc();
  v12 = type metadata accessor for SHA256();
  v8[37] = v12;
  v8[38] = *(v12 - 8);
  v8[39] = swift_task_alloc();
  v13 = type metadata accessor for SHA256Digest();
  v8[40] = v13;
  v8[41] = *(v13 - 8);
  v8[42] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v8[43] = v14;
  v8[44] = *(v14 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return _swift_task_switch(sub_1000E9924, 0, 0);
}

uint64_t sub_1000E9924()
{
  v34 = v0;
  v1 = dispatch thunk of SESKeystore.getACLConstraints(of:)();
  v0[47] = v1;
  v0[48] = v2;
  v3 = v1;
  v4 = v2;
  type metadata accessor for SecAccessControl(0);
  v5 = static SecAccessControlRef.fromConstraintsData(_:)();
  v0[49] = v5;
  v32 = v5;
  v6 = SecAccessControlRef.osgnParentKey.getter();
  v0[50] = v6;
  v0[51] = v7;
  if (v7 >> 60 == 15)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Not a child key; signing digest directly", v10, 2u);
    }

    v11 = v0[44];
    v12 = v0[43];
    v31 = v0[45];

    (*(v11 + 8))(v31, v12);
    v13 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
    v15 = v14;

    sub_1000092BC(v3, v4);

    v16 = v0[1];

    return v16(v13, v15);
  }

  else
  {
    v18 = v6;
    v19 = v7;
    defaultLogger()();
    sub_100009708(v18, v19);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    sub_10001C120(v18, v19);
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[46];
    v24 = v0[43];
    v25 = v0[44];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = Data.base16EncodedString()();
      v29 = sub_10010150C(v28._countAndFlagsBits, v28._object, &v33);

      *(v26 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Child key of %s, using key chaining", v26, 0xCu);
      sub_100005090(v27);
    }

    (*(v25 + 8))(v23, v24);
    v30 = swift_task_alloc();
    v0[52] = v30;
    *v30 = v0;
    v30[1] = sub_1000E9E90;

    return sub_10012ED08(0);
  }
}

uint64_t sub_1000E9E90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v4 = sub_1000EB7C4;
  }

  else
  {
    v4 = sub_1000E9FA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E9FA4()
{
  v1 = v0[53];
  v3 = v0[50];
  v2 = v0[51];
  if (v1)
  {
    v4 = (v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v5 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v6 = *(v1 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
    sub_100009708(v5, v6);
    v7 = sub_1000EBB34(v3, v2, v5, v6);
    sub_1000092BC(v5, v6);
    if (v7)
    {
      v8 = [objc_allocWithZone(LAContext) init];
      v0[55] = v8;
      v9 = swift_task_alloc();
      v0[56] = v9;
      *v9 = v0;
      v9[1] = sub_1000EA594;
      v10 = v0[49];

      return sub_1000EBC9C(v8, v10);
    }

    v23 = v0[50];
    v24 = v0[51];
    v28 = v0[48];
    v25 = v0[49];
    v27 = v0[47];
    v15 = v0[29];
    v14 = v0[30];
    v29 = v0[28];
    _StringGuts.grow(_:)(76);
    v16._object = 0x80000001001B9E60;
    v16._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v16);
    v17 = Data.base16EncodedString()();
    String.append(_:)(v17);

    v18._object = 0x80000001001B9E90;
    v18._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v18);
    v19 = *v4;
    v20 = v4[1];
    sub_100009708(*v4, v20);
    v21 = Data.base16EncodedString()();
    sub_1000092BC(v19, v20);
    String.append(_:)(v21);

    (*(v15 + 104))(v14, enum case for DIPError.Code.idcsProgenitorKeyACLMismatch(_:), v29);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10001C120(v23, v24);

    v13 = v27;
  }

  else
  {
    v26 = v0[49];
    v28 = v0[48];
    v12 = v0[47];
    (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[28]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v3, v2);

    v13 = v12;
  }

  sub_1000092BC(v13, v28);
  (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.internalError(_:), v0[28]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000EA594(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[57] = a1;
  v4[58] = a2;
  v4[59] = v2;

  if (v2)
  {
    v5 = sub_1000EAD64;
  }

  else
  {
    v5 = sub_1000EA6AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000EA6AC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[57];
  v4 = v0[42];
  v5 = v0[39];
  v30 = v0[40];
  v31 = v0[41];
  v7 = v0[37];
  v6 = v0[38];
  v32 = v0[35];
  v33 = v0[36];
  v34 = v0[34];
  sub_1000EC98C(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100009708(v3, v2);
  sub_1000D8FBC(v3, v2, v5);
  sub_1000092BC(v3, v2);
  dispatch thunk of HashFunction.finalize()();
  (*(v6 + 8))(v5, v7);
  sub_1000EC98C(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v8 = Digest.data.getter();
  v10 = v9;
  (*(v31 + 8))(v4, v30);
  (*(v32 + 104))(v33, enum case for SESKeystore.SignatureOutputFormat.der(_:), v34);
  v11 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
  v0[60] = v1;
  v0[61] = v11;
  v0[62] = v12;
  if (v1)
  {
    v36 = v0[57];
    v38 = v0[58];
    v39 = v0[55];
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[28];
    (*(v0[35] + 8))(v0[36], v0[34]);
    sub_1000092BC(v8, v10);
    v16 = enum case for DIPError.Code.internalError(_:);
    (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v15);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v36, v38);

    v18 = v0[50];
    v17 = v0[51];
    v19 = v0[48];
    v20 = v0[49];
    v21 = v0[47];

    sub_10001C120(v18, v17);

    sub_1000092BC(v21, v19);
    (*(v0[29] + 104))(v0[30], v16, v0[28]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v40 = v0[55];
    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[34];
    v27 = v0[32];
    v35 = v0[31];
    v37 = v0[33];
    sub_1000092BC(v8, v10);
    (*(v25 + 8))(v24, v26);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[63] = isa;
    v0[2] = v0;
    v0[7] = v0 + 65;
    v0[3] = sub_1000EAF74;
    swift_continuation_init();
    v0[17] = v35;
    v29 = sub_10001A9A4(v0 + 14);
    sub_100004E70(&qword_100200208, &qword_1001AA530);
    CheckedContinuation.init(continuation:function:)();
    (*(v27 + 32))(v29, v37, v35);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000EB9BC;
    v0[13] = &unk_1001F7758;
    [v40 setCredential:isa type:-11 reply:?];
    (*(v27 + 8))(v29, v35);

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000EAD64()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);

  sub_10001C120(v1, v2);

  sub_1000092BC(v5, v3);
  (*(*(v0 + 232) + 104))(*(v0 + 240), enum case for DIPError.Code.internalError(_:), *(v0 + 224));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000EAF74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_1000EB588;
  }

  else
  {
    v2 = sub_1000EB084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EB084()
{
  v1 = *(v0 + 440);

  v2 = [v1 externalizedContext];
  if (!v2)
  {
    v15 = *(v0 + 488);
    v14 = *(v0 + 496);
    v16 = *(v0 + 456);
    v30 = *(v0 + 464);
    v32 = *(v0 + 440);
    (*(*(v0 + 232) + 104))(*(v0 + 240), enum case for DIPError.Code.localAuthenticationCannotExternalizeContext(_:), *(v0 + 224));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v15, v14);
    sub_1000092BC(v16, v30);

    goto LABEL_5;
  }

  v34 = *(v0 + 480);
  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = dispatch thunk of SESKeystore.signDigest(_:withKey:externalizedLAContext:outputFormat:seAccessEndpoint:)();
  v10 = *(v0 + 488);
  v9 = *(v0 + 496);
  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  v13 = *(v0 + 440);
  if (v34)
  {
    sub_1000092BC(v4, v6);
    sub_1000092BC(v10, v9);
    sub_1000092BC(v12, v11);

LABEL_5:
    v17 = *(v0 + 400);
    v18 = *(v0 + 408);
    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    v21 = *(v0 + 376);

    sub_10001C120(v17, v18);

    sub_1000092BC(v21, v19);
    (*(*(v0 + 232) + 104))(*(v0 + 240), enum case for DIPError.Code.internalError(_:), *(v0 + 224));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = *(v0 + 400);
  v28 = *(v0 + 408);
  v29 = *(v0 + 392);
  v31 = *(v0 + 376);
  v33 = *(v0 + 384);
  v35 = v7;
  v25 = v4;
  v26 = v8;
  sub_1000092BC(v25, v6);
  sub_1000092BC(v10, v9);
  sub_1000092BC(v12, v11);

  sub_10001C120(v24, v28);

  sub_1000092BC(v31, v33);

  v27 = *(v0 + 8);

  return v27(v35, v26);
}

uint64_t sub_1000EB588(uint64_t a1)
{
  v2 = v1[63];
  v3 = v1[61];
  v4 = v1[62];
  v6 = v1[57];
  v5 = v1[58];
  v7 = v1[55];
  swift_willThrow();
  sub_1000092BC(v3, v4);
  sub_1000092BC(v6, v5);

  v8 = v1[50];
  v9 = v1[51];
  v10 = v1[48];
  v11 = v1[49];
  v12 = v1[47];

  sub_10001C120(v8, v9);

  sub_1000092BC(v12, v10);
  (*(v1[29] + 104))(v1[30], enum case for DIPError.Code.internalError(_:), v1[28]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_1000EB7C4()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  sub_10001C120(v0[50], v0[51]);

  sub_1000092BC(v3, v1);
  (*(v0[29] + 104))(v0[30], enum case for DIPError.Code.internalError(_:), v0[28]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_1000EB9BC(uint64_t a1, char a2, void *a3)
{
  sub_100009278((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100004E70(&qword_100202EB0, &qword_1001AD668);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100004E70(&qword_100202EB0, &qword_1001AD668);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1000EBA60(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100009278((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100004E70(&qword_100202EB8, &qword_1001AD678);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100004E70(&qword_100202EB8, &qword_1001AD678);
    CheckedContinuation.resume(returning:)();
  }
}

BOOL sub_1000EBB34(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100009708(a3, a4);
          return sub_100100288(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000EBC9C(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = sub_100004E70(&qword_100202EB8, &qword_1001AD678);
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EBDC4, 0, 0);
}

uint64_t sub_1000EBDC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 24;
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v11 = v1[26];
  v10 = v1[25];
  sub_10010CEF0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[33] = isa;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1000EBFDC;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_10001A9A4(v1 + 14);
  sub_100004E70(&qword_100202EC0, &unk_1001AD680);
  sub_100004E70(&qword_100200208, &qword_1001AA530);
  CheckedContinuation.init(continuation:function:)();
  (*(v4 + 32))(v8, v5, v6);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000EBA60;
  v1[13] = &unk_1001F7780;
  [v10 evaluateAccessControl:v11 operation:3 options:isa reply:?];
  (*(v4 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000EBFDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1000EC5A4;
  }

  else
  {
    v2 = sub_1000EC0EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EC0EC()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);

  v4 = enum case for DIPError.Code.localAuthenticationInvalidContext(_:);
  (*(v2 + 104))(v1, enum case for DIPError.Code.localAuthenticationInvalidContext(_:), v3);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v23 = _convertErrorToNSError(_:)();
  v5 = [v23 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v23 code] == -1026)
  {
    v11 = [v23 userInfo];
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v12 + 16))
    {
      v15 = sub_100099644(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_10000B558(*(v12 + 56) + 32 * v15, v0 + 144);

        if (swift_dynamicCast())
        {

          v18 = *(v0 + 176);
          v19 = *(v0 + 184);

          v20 = *(v0 + 8);

          return v20(v18, v19);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

LABEL_15:
    (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for DIPError.Code.localAuthenticationMissingNonce(_:), *(v0 + 216));
    goto LABEL_16;
  }

LABEL_12:
  (*(*(v0 + 224) + 104))(*(v0 + 232), v4, *(v0 + 216));
  swift_errorRetain();
LABEL_16:
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000EC5A4(uint64_t a1)
{
  v2 = v1[33];
  swift_willThrow();

  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v3 code] != -1026)
  {
LABEL_15:
    (*(v1[28] + 104))(v1[29], enum case for DIPError.Code.localAuthenticationInvalidContext(_:), v1[27]);
    swift_errorRetain();
LABEL_19:
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000EC98C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v22 = v1[1];

    return v22();
  }

  v11 = [v3 userInfo];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v12 + 16))
  {

    goto LABEL_17;
  }

  v15 = sub_100099644(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  sub_10000B558(*(v12 + 56) + 32 * v15, (v1 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    (*(v1[28] + 104))(v1[29], enum case for DIPError.Code.localAuthenticationMissingNonce(_:), v1[27]);
    goto LABEL_19;
  }

  v18 = v1[22];
  v19 = v1[23];

  v20 = v1[1];

  return v20(v18, v19);
}

uint64_t sub_1000EC98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000EC9F4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000ECAB8, v2, 0);
}

uint64_t sub_1000ECAB8()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1000ECADC, v1, 0);
}

uint64_t sub_1000ECADC()
{
  sub_100113200(*(v0 + 72), *(v0 + 16));
  *(v0 + 64) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ECBA0()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000ECCF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000ECDB0, v1, 0);
}

uint64_t sub_1000ECDB0()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1000ECDD4, v1, 0);
}

uint64_t sub_1000ECDD4()
{
  v1 = sub_10011B9DC(*(v0 + 16));
  *(v0 + 64) = 0;
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000ECEA0()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000ECFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return _swift_task_switch(sub_1000ED0BC, v5, 0);
}

uint64_t sub_1000ED0BC()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_1000ED0E0, v1, 0);
}

uint64_t sub_1000ED0E0()
{
  v1 = sub_10011C098();
  v2 = sub_100111F78(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1, *(v0 + 40), *(v0 + 48));

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000ED2D8()
{
  (*(v0 + 96))(*(v0 + 80), *(v0 + 136), *(v0 + 64));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED418(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED4D8, v1, 0);
}

uint64_t sub_1000ED4D8()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1000ED4FC, v1, 0);
}

uint64_t sub_1000ED4FC()
{
  sub_10011BBF8(v0[2]);
  v0[8] = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000ED5BC()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000ED710()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED7D0, v0, 0);
}

uint64_t sub_1000ED7D0()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_1000ED7F4, v1, 0);
}

uint64_t sub_1000ED7F4()
{
  v1 = sub_10011DE30();
  *(v0 + 56) = 0;
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}