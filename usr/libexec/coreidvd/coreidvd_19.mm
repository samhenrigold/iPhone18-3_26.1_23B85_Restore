uint64_t sub_1001ECAC0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[351] = a1;
  v5[352] = a2;
  v5[353] = v2;

  v6 = v4[349];
  v7 = v4[348];
  v8 = v4[347];

  sub_10000B90C(v8, v7);

  if (v2)
  {

    v9 = sub_1001ED580;
  }

  else
  {
    v9 = sub_1001ECCB0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001ECCB0(uint64_t a1)
{
  v75 = v1;
  v2 = *(v1 + 2816);
  v3 = *(v1 + 2808);
  defaultLogger()();
  sub_10000B8B8(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10000B90C(v3, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 2816);
    v7 = *(v1 + 2808);
    v72 = *(v1 + 1896);
    v71 = *(v1 + 1720);
    v8 = *(v1 + 1680);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v73 = v10;
    *v9 = 136315138;
    sub_10000B8B8(v7, v6);
    v11 = Data.description.getter();
    v13 = v12;
    sub_10000B90C(v7, v6);
    v14 = sub_100141FE4(v11, v13, &v73);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Key signing data generated for watch : %s", v9, 0xCu);
    sub_10000BB78(v10);

    v72(v71, v8);
  }

  else
  {
    v15 = *(v1 + 1896);
    v16 = *(v1 + 1720);
    v17 = *(v1 + 1680);

    v15(v16, v17);
  }

  v18 = Data.base64EncodedString(options:)(0);
  v19 = *(v1 + 1216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1003C5E7C(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1003C5E7C((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v1 + 2728);
  v23 = *(v1 + 2368);
  *(v19 + 2) = v21 + 1;
  v24 = &v19[32 * v21];
  v24[2] = v18;
  v24[3]._countAndFlagsBits = v22;
  v24[3]._object = v23;
  *(v1 + 1216) = v19;
  IdentityProofingConfiguration.documentType.getter();
  v25 = IdentityDocumentType.rawValue.getter();
  if (v25 != IdentityDocumentType.rawValue.getter())
  {
    v30 = *(v1 + 2816);
    v31 = *(v1 + 2808);

    sub_10000B90C(v31, v30);

LABEL_24:
    v63 = *(*(*(v1 + 1280) + 120) + 128);
    *(v1 + 2912) = v63;
    v63;
    v64 = swift_task_alloc();
    *(v1 + 2920) = v64;
    *v64 = v1;
    v64[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  v26 = *(v1 + 1256);
  if (((sub_1005A0FE0() | 1) & ~v26) != 0)
  {
    v32 = IdentityProofingConfiguration.piiTokenIdentifier.getter();
    if (!v33)
    {
      v29 = &enum case for DIPError.Code.piiHashIdentifierUnavailable(_:);
      goto LABEL_21;
    }

    *(v1 + 2832) = *(*(v1 + 1280) + 72);
    v73 = v32;
    v74 = v33;

    v34._countAndFlagsBits = 0x7361682D6969702DLL;
    v34._object = 0xE900000000000068;
    String.append(_:)(v34);
    v36 = v73;
    v35 = v74;
    *(v1 + 2840) = v74;
    v37 = swift_task_alloc();
    *(v1 + 2848) = v37;
    *v37 = v1;
    v37[1] = sub_1001EDBC4;

    return sub_1002AD55C(v36, v35);
  }

  else
  {
    v27 = *(*(v1 + 1280) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash;
    v28 = *(v27 + 8);
    if (v28 >> 60 == 15)
    {
      v29 = &enum case for DIPError.Code.failedToStoreHashIsNil(_:);
LABEL_21:
      v46 = *(v1 + 1672);
      v47 = *(v1 + 1664);
      v48 = *(v1 + 1656);

      (*(v47 + 104))(v46, *v29, v48);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      defaultLogger()();
      swift_errorRetain();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v53;
        *v52 = v53;
        _os_log_impl(&_mh_execute_header, v49, v50, "(Non terminal error): Failed to store PII hash on watch with error: %@", v51, 0xCu);
        sub_10000BE18(v52, &unk_100833B50, &unk_1006D8FB0);
      }

      v68 = *(v1 + 2808);
      v69 = *(v1 + 2816);
      v70 = *(v1 + 2712);
      v54 = *(v1 + 1896);
      v55 = *(v1 + 1696);
      v56 = *(v1 + 1680);
      v67 = *(v1 + 1856);
      v57 = *(v1 + 1672);
      v58 = *(v1 + 1664);
      v59 = *(v1 + 1656);
      v60 = v49;
      v61 = *(v1 + 1296);
      v65 = *(v1 + 1304);
      v66 = *(v1 + 1288);

      v54(v55, v56);
      (*(v58 + 104))(v57, enum case for DIPError.Code.internalError(_:), v59);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v61 + 16))(v62, v65, v66);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      sub_10000B90C(v68, v69);

      v54(v67, v56);
      (*(v61 + 8))(v65, v66);

      goto LABEL_24;
    }

    v39 = *v27;
    sub_10000B8B8(*v27, *(v27 + 8));
    *(v1 + 2888) = v28;
    *(v1 + 2880) = v39;
    v40 = *(*(v1 + 2568) + *(v1 + 2640));
    *(v1 + 856) = type metadata accessor for DIPWatch();
    *(v1 + 864) = &off_10080D850;
    *(v1 + 832) = v40;
    v41 = v40;
    v42 = swift_task_alloc();
    *(v1 + 2896) = v42;
    *v42 = v1;
    v42[1] = sub_1001EE620;
    v44 = *(v1 + 2672);
    v45 = *(v1 + 2664);

    return sub_100205870(v45, v44, v43, v39, v28);
  }
}

uint64_t sub_1001ED580()
{
  v1 = *(v0 + 2824);
  if (*(v0 + 1256))
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v11, 2u);
    }

    v12 = *(v0 + 1896);
    v13 = *(v0 + 1856);
    v14 = *(v0 + 1704);
    v15 = *(v0 + 1680);
    v16 = *(v0 + 1280);

    v12(v14, v15);
    *(v16 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v12(v13, v15);
    v17 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v17;
    v17;
    v18 = swift_task_alloc();
    *(v0 + 2920) = v18;
    *v18 = v0;
    v18[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v3 = *(v0 + 1584);
    v4 = *(v0 + 1576);
    v5 = *(v0 + 1528);
    v19 = *(v0 + 1592);
    v20 = *(v0 + 1512);
    v6 = *(v0 + 1240);

    swift_willThrow();

    sub_10000BE18(v5, &qword_100835E40, &qword_1006C49F8);
    (*(v3 + 8))(v19, v4);
    sub_10021EA28(v20, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1001EDBC4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 2856) = v2;

  if (v2)
  {

    v7 = sub_1001EE28C;
  }

  else
  {

    *(v6 + 2864) = a2;
    *(v6 + 2872) = a1;
    v7 = sub_1001EDD50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EDD50()
{
  v1 = Data.init(base16Encoded:)();
  if (v2 >> 60 == 15)
  {
    v3 = v0[209];
    v4 = v0[208];
    v5 = v0[207];

    (*(v4 + 104))(v3, enum case for DIPError.Code.failedToStoreHashIsNil(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "(Non terminal error): Failed to store PII hash on watch with error: %@", v8, 0xCu);
      sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);
    }

    v34 = v0[351];
    v35 = v0[352];
    v36 = v0[339];
    v11 = v0[237];
    v12 = v6;
    v13 = v0[212];
    v14 = v0[210];
    v33 = v0[232];
    v15 = v0[209];
    v16 = v0[208];
    v17 = v0[207];
    v18 = v0[162];
    v31 = v0[163];
    v32 = v0[161];

    v11(v13, v14);
    (*(v16 + 104))(v15, enum case for DIPError.Code.internalError(_:), v17);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    (*(v18 + 16))(v19, v31, v32);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    sub_10000B90C(v34, v35);

    v11(v33, v14);
    (*(v18 + 8))(v31, v32);

    v20 = *(*(v0[160] + 120) + 128);
    v0[364] = v20;
    v20;
    v21 = swift_task_alloc();
    v0[365] = v21;
    *v21 = v0;
    v21[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v0[361] = v2;
    v0[360] = v1;
    v22 = *(v0[321] + v0[330]);
    v23 = v1;
    v24 = v2;
    v0[107] = type metadata accessor for DIPWatch();
    v0[108] = &off_10080D850;
    v0[104] = v22;
    v25 = v22;
    v26 = swift_task_alloc();
    v0[362] = v26;
    *v26 = v0;
    v26[1] = sub_1001EE620;
    v28 = v0[334];
    v29 = v0[333];

    return sub_100205870(v29, v28, v27, v23, v24);
  }
}

uint64_t sub_1001EE28C(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "(Non terminal error): Failed to store PII hash on watch with error: %@", v4, 0xCu);
    sub_10000BE18(v5, &unk_100833B50, &unk_1006D8FB0);
  }

  v22 = v1[351];
  v23 = v1[352];
  v24 = v1[339];
  v7 = v1[237];
  v8 = v1[212];
  v9 = v1[210];
  v21 = v1[232];
  v10 = v1[209];
  v11 = v1[208];
  v12 = v1[207];
  v13 = v2;
  v14 = v1[162];
  v19 = v1[163];
  v20 = v1[161];

  v7(v8, v9);
  (*(v11 + 104))(v10, enum case for DIPError.Code.internalError(_:), v12);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v14 + 16))(v15, v19, v20);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  sub_10000B90C(v22, v23);

  v7(v21, v9);
  (*(v14 + 8))(v19, v20);

  v16 = *(*(v1[160] + 120) + 128);
  v1[364] = v16;
  v16;
  v17 = swift_task_alloc();
  v1[365] = v17;
  *v17 = v1;
  v17[1] = sub_1001EE834;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001EE620()
{
  v2 = *v1;
  *(*v1 + 2904) = v0;

  if (v0)
  {
    v3 = sub_1001F2FE0;
  }

  else
  {
    sub_10000BB78((v2 + 832));
    v3 = sub_1001EE74C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001EE74C()
{
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2880);
  v3 = *(v0 + 2816);
  v4 = *(v0 + 2808);

  sub_10000B90C(v4, v3);
  sub_10000B90C(v2, v1);
  v5 = *(*(*(v0 + 1280) + 120) + 128);
  *(v0 + 2912) = v5;
  v5;
  v6 = swift_task_alloc();
  *(v0 + 2920) = v6;
  *v6 = v0;
  v6[1] = sub_1001EE834;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001EE834()
{
  v1 = *(*v0 + 2912);

  return _swift_task_switch(sub_1001EE948, 0, 0);
}

uint64_t sub_1001EE948()
{
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1592);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1240);
  sub_10000BBC4(*(v0 + 1280) + *(v0 + 2016), *(v0 + 1536), &qword_10083D6A8, &qword_1006DB710);
  *(v0 + 816) = v4;
  *(v0 + 824) = &protocol witness table for HPKESuiteKwV1;
  v6 = sub_100032DBC((v0 + 792));
  v1(v6, v3, v4);
  v7 = swift_task_alloc();
  *(v0 + 2928) = v7;
  *v7 = v0;
  v7[1] = sub_1001EEA6C;
  v8 = *(v0 + 1536);
  v9 = *(v0 + 1256);
  v10 = *(v0 + 521);

  return sub_100212598(v8, v5, v0 + 656, v0 + 992, v2, v0 + 792, v10, v9);
}

uint64_t sub_1001EEA6C(uint64_t a1)
{
  v3 = *v2;
  v3[367] = a1;
  v3[368] = v1;

  sub_10000BE18(v3[192], &qword_10083D6A8, &qword_1006DB710);
  if (v1)
  {

    v4 = sub_1001EEE0C;
  }

  else
  {
    sub_10000BB78(v3 + 99);
    v4 = sub_1001EEBD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001EEBD8()
{
  v1 = *(v0 + 521);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1320);
  v6 = sub_10000BA08((v0 + 992), *(v0 + 1016));
  v7 = v6[1];
  v19 = *v6;
  *(v0 + 2952) = v7;
  sub_10021E958(v2, v5, type metadata accessor for TiberiusWrappedAssessment);
  (*(v3 + 56))(v5, 0, 1, v4);
  v18 = *(v0 + 1216);
  *(v0 + 2960) = v18;

  IdentityProofingConfiguration.productIdentifier.getter();
  *(v0 + 2968) = v8;
  *(v0 + 2976) = *(v0 + 1224);
  IdentityProofingConfiguration.accountKeyIdentifier.getter();
  *(v0 + 2984) = v9;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v10 = 0xEA00000000004543;
    }

    else
    {
      v10 = 0x80000001007063E0;
    }
  }

  else if (v1)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  *(v0 + 2992) = v10;
  v11 = *(v0 + 2200);
  v12 = *(v0 + 2056);
  v13 = swift_task_alloc();
  *(v0 + 3000) = v13;
  *v13 = v0;
  v13[1] = sub_1001EF294;
  v14 = *(v0 + 2936);
  v15 = *(v0 + 1320);
  v16 = *(v0 + 1232);

  return sub_1001FD70C(v16, v19, v7, v14, v15, v11, v12, v18);
}

uint64_t sub_1001EEE0C()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1512);
  v6 = *(v0 + 1240);

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_10021EA28(v5, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);
  sub_10000BB78((v0 + 792));

  sub_10000BB78((v0 + 992));
  sub_1001F3808();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001EF294()
{
  v2 = *v1;
  *(*v1 + 3008) = v0;

  sub_10000BE18(*(v2 + 1320), &qword_100835E38, &qword_1006C49F0);

  if (v5)
  {
    v3 = sub_1001F3388;
  }

  else
  {
    v3 = sub_1001EF4F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001EF4F8()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1512);
  v6 = *(v0 + 1240);

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_10021EA28(v5, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001EF978(uint64_t a1)
{
  v2 = v1[255];
  v3 = v1[254];
  v4 = v1[199];
  v5 = v1[198];
  v6 = v1[197];
  v7 = v1[155];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  sub_1001B7154((v1 + 82));

  sub_10000BB78(v1 + 124);
  sub_1001F3808();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1001EFDC0()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[155];

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001F0208()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[190];
  v6 = v0[155];

  sub_10021EA28(v5, type metadata accessor for TiberiusWrappedAssessment);
  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 82));
  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001F0670()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[155];

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001F0AC4()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[191];
  v5 = v0[155];

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_1001B7154((v0 + 82));

  sub_10000BB78(v0 + 124);
  sub_1001F3808();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001F0F18()
{
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 1592);
  v5 = *(v0 + 1584);
  v6 = *(v0 + 1576);
  v7 = *(v0 + 1528);
  v10 = *(v0 + 1512);

  sub_10000B90C(v2, v1);

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v5 + 8))(v4, v6);
  sub_10021EA28(v10, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001F13B0()
{
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2384);
  v4 = *(v0 + 2376);
  v5 = *(v0 + 2352);
  v6 = *(v0 + 1584);
  v10 = *(v0 + 1576);
  v11 = *(v0 + 1592);
  v7 = *(v0 + 1528);
  v12 = *(v0 + 1512);

  sub_10000B90C(v2, v1);
  sub_10000B90C(v4, v3);

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v6 + 8))(v11, v10);
  sub_10021EA28(v12, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001F185C()
{
  v1 = *(v0 + 2456);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2416);
  v4 = *(v0 + 2384);
  v5 = *(v0 + 2376);
  v10 = *(v0 + 2352);
  v11 = *(v0 + 2464);
  v6 = *(v0 + 1584);
  v12 = *(v0 + 1576);
  v13 = *(v0 + 1592);
  v7 = *(v0 + 1528);
  v14 = *(v0 + 1512);

  sub_10000B90C(v3, v2);
  sub_10000B90C(v5, v4);

  sub_10000BD94(v1, v11);

  sub_10000BE18(v7, &qword_100835E40, &qword_1006C49F8);
  (*(v6 + 8))(v13, v12);
  sub_10021EA28(v14, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001F1D24(uint64_t a1)
{
  v2 = *(v1 + 2624);
  if (*(v1 + 1256))
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v12, 2u);
    }

    v13 = *(v1 + 1896);
    v14 = *(v1 + 1856);
    v15 = *(v1 + 1704);
    v16 = *(v1 + 1680);
    v17 = *(v1 + 1280);

    v13(v15, v16);
    *(v17 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v2;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v13(v14, v16);
    v18 = *(*(*(v1 + 1280) + 120) + 128);
    *(v1 + 2912) = v18;
    v18;
    v19 = swift_task_alloc();
    *(v1 + 2920) = v19;
    *v19 = v1;
    v19[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v3 = *(v1 + 2352);
    v4 = *(v1 + 1584);
    v5 = *(v1 + 1576);
    v6 = *(v1 + 1528);
    v20 = *(v1 + 1592);
    v21 = *(v1 + 1512);
    v7 = *(v1 + 1240);

    swift_willThrow();

    sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
    (*(v4 + 8))(v20, v5);
    sub_10021EA28(v21, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v1 + 656);

    sub_10000BB78((v1 + 992));
    sub_1001F3808();

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1001F2360(uint64_t a1)
{
  v2 = *(v1 + 2680);
  if (*(v1 + 1256))
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v12, 2u);
    }

    v13 = *(v1 + 1896);
    v14 = *(v1 + 1856);
    v15 = *(v1 + 1704);
    v16 = *(v1 + 1680);
    v17 = *(v1 + 1280);

    v13(v15, v16);
    *(v17 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v2;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v13(v14, v16);
    v18 = *(*(*(v1 + 1280) + 120) + 128);
    *(v1 + 2912) = v18;
    v18;
    v19 = swift_task_alloc();
    *(v1 + 2920) = v19;
    *v19 = v1;
    v19[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v3 = *(v1 + 2352);
    v4 = *(v1 + 1584);
    v5 = *(v1 + 1576);
    v6 = *(v1 + 1528);
    v20 = *(v1 + 1592);
    v21 = *(v1 + 1512);
    v7 = *(v1 + 1240);

    swift_willThrow();

    sub_10000BE18(v6, &qword_100835E40, &qword_1006C49F8);
    (*(v4 + 8))(v20, v5);
    sub_10021EA28(v21, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v1 + 656);

    sub_10000BB78((v1 + 992));
    sub_1001F3808();

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1001F299C()
{
  v1 = *(v0 + 2760);
  if (*(v0 + 1256))
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Encountered a watch specific failure during combo proofing, will skip saving watch proofing session in the database", v11, 2u);
    }

    v12 = *(v0 + 1896);
    v13 = *(v0 + 1856);
    v14 = *(v0 + 1704);
    v15 = *(v0 + 1680);
    v16 = *(v0 + 1280);

    v12(v14, v15);
    *(v16 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = v1;
    swift_errorRetain();

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v12(v13, v15);
    v17 = *(*(*(v0 + 1280) + 120) + 128);
    *(v0 + 2912) = v17;
    v17;
    v18 = swift_task_alloc();
    *(v0 + 2920) = v18;
    *v18 = v0;
    v18[1] = sub_1001EE834;

    return OS_dispatch_group.wait()();
  }

  else
  {
    v2 = *(v0 + 2352);
    v3 = *(v0 + 1584);
    v4 = *(v0 + 1576);
    v5 = *(v0 + 1528);
    v19 = *(v0 + 1592);
    v20 = *(v0 + 1512);
    v6 = *(v0 + 1240);

    swift_willThrow();

    sub_10000BE18(v5, &qword_100835E40, &qword_1006C49F8);
    (*(v3 + 8))(v19, v4);
    sub_10021EA28(v20, type metadata accessor for TiberiusWrappedAssessment);
    sub_1001B7154(v0 + 656);

    sub_10000BB78((v0 + 992));
    sub_1001F3808();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1001F2FE0()
{
  sub_10000B90C(v0[360], v0[361]);
  sub_10000BB78(v0 + 104);
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "(Non terminal error): Failed to store PII hash on watch with error: %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  v21 = v0[351];
  v22 = v0[352];
  v23 = v0[339];
  v6 = v0[237];
  v7 = v0[212];
  v8 = v0[210];
  v20 = v0[232];
  v9 = v0[209];
  v10 = v0[208];
  v11 = v0[207];
  v12 = v1;
  v13 = v0[162];
  v18 = v0[163];
  v19 = v0[161];

  v6(v7, v8);
  (*(v10 + 104))(v9, enum case for DIPError.Code.internalError(_:), v11);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v13 + 16))(v14, v18, v19);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  sub_10000B90C(v21, v22);

  v6(v20, v8);
  (*(v13 + 8))(v18, v19);

  v15 = *(*(v0[160] + 120) + 128);
  v0[364] = v15;
  v15;
  v16 = swift_task_alloc();
  v0[365] = v16;
  *v16 = v0;
  v16[1] = sub_1001EE834;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001F3388()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1512);
  v6 = *(v0 + 1240);

  sub_10000BE18(v4, &qword_100835E40, &qword_1006C49F8);
  (*(v2 + 8))(v1, v3);
  sub_10021EA28(v5, type metadata accessor for TiberiusWrappedAssessment);
  sub_1001B7154(v0 + 656);

  sub_10000BB78((v0 + 992));
  sub_1001F3808();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001F3808()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100141FE4(0xD000000000000069, 0x8000000100706280, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s end", v6, 0xCu);
    sub_10000BB78(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1001F39A0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  __chkstk_darwin(v2);
  v4 = v19 - v3;
  v5 = type metadata accessor for PDF417Data();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v19[1] = 0;
  v19[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v20 = 0xD000000000000012;
  v21 = 0x8000000100706DC0;
  v12 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  swift_beginAccess();
  sub_10000BBC4(a1 + v12, v11, &qword_10083D6A8, &qword_1006DB710);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_10000BE18(v11, &qword_10083D6A8, &qword_1006DB710);
    v13 = 0x8000000100706DE0;
    v14 = 0xD000000000000016;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_10000BE18(v11, &qword_10083D6A8, &qword_1006DB710);
    PDF417Data.parsedData.getter();
    (*(v6 + 8))(v8, v5);
    v15 = Optional.debugDescription.getter();
    v13 = v16;
    sub_10000BE18(v4, &qword_10083D6A0, &unk_1006DB700);
    v14 = v15;
  }

  v17 = v13;
  String.append(_:)(*&v14);

  return v20;
}

uint64_t sub_1001F3C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v9 = type metadata accessor for Milestone();
  v6[33] = v9;
  v6[34] = *(v9 - 8);
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_1001F3E14, 0, 0);
}

uint64_t sub_1001F3E14(uint64_t a1)
{
  *(v1 + 288) = IdentityProofingConfiguration.accountKeyIdentifier.getter();
  *(v1 + 296) = v2;
  if (v2)
  {
    v3 = IdentityProofingConfiguration.accountKeyIdentifier.getter();
    v5 = v4;
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    type metadata accessor for IdentityProofingDeviceMigrationManager();
    inited = swift_initStackObject();
    *(v1 + 304) = inited;
    inited[2] = 0;
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v7 = qword_100882228;
    *(v1 + 312) = qword_100882228;
    v8 = *(v7 + 16);
    inited[3] = v8;
    inited[4] = v3;
    inited[5] = v5;
    sub_10001F358((v1 + 104), (inited + 6));
    v9 = v8;
    v10 = swift_task_alloc();
    *(v1 + 320) = v10;
    *v10 = v1;
    v10[1] = sub_1001F40BC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 464, 0, 0, 0xD00000000000001FLL, 0x8000000100703A20, sub_100189A00, inited, &type metadata for Bool);
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v1 + 224);
    v14 = *(v1 + 232);
    v16 = *(v1 + 216);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "accountKeyIdentifier doesn't exist. Will not generate AccountKAK based authorizations", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);

    v18 = *(v1 + 8);

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001F40BC()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_1001F43B0;
  }

  else
  {
    v2 = sub_1001F41D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F41D8()
{
  if (*(v0 + 464) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    *v1 = v0;
    v1[1] = sub_1001F4460;

    return sub_100188990();
  }

  else
  {

    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "isAccountKeySigningKeyAvailable -> False. Will not generate AccountKAK based authorizations", v5, 2u);
    }

    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);

    (*(v8 + 8))(v6, v7);

    v9 = *(v0 + 8);

    return v9(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001F43B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F4460(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {

    v4 = sub_1001F5204;
  }

  else
  {
    v4 = sub_1001F457C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F457C()
{
  object = v0[21]._object;
  countAndFlagsBits = v0[17]._countAndFlagsBits;
  v2 = v0[17]._object;
  v4 = v0[16]._object;
  static DeviceMigrationMilestone.accountKAKRetrieved.getter();
  Milestone.log()();
  (*(countAndFlagsBits + 8))(v2, v4);
  v5 = [object casdAttestation];
  if (!v5)
  {
    v19 = v0[21]._object;
    v21 = v0[12]._object;
    v20 = v0[13]._countAndFlagsBits;
    v22 = v0[12]._countAndFlagsBits;

    v21[13](v20, enum case for DIPError.Code.invalidAccountKeySigningKey(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_5:

    goto LABEL_6;
  }

  v6 = v0[21]._object;
  v7 = v0[22]._countAndFlagsBits;
  v8 = v0[11]._object;
  v9 = v0[9]._object;
  v10 = v5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v11, v13);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v15 = swift_allocObject();
  v0[22]._object = v15;
  *(v15 + 16) = xmmword_1006BF520;
  *(v15 + 32) = v14;

  v16 = sub_1002ABFE0(v6, v9);
  v0[23]._countAndFlagsBits = v16;
  v0[23]._object = v17;
  if (v7)
  {
    v18 = v0[21]._object;

LABEL_6:

    v23 = v0->_object;

    return v23();
  }

  v25 = v16;
  v26 = v17;
  v27 = v0[9]._object;

  v0[24] = Data.base64EncodedString(options:)(0);
  v0[25]._countAndFlagsBits = v27[5];

  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;

    _os_log_impl(&_mh_execute_header, v28, v29, "Proofing Key signing account key signing key authorization generated", v30, 2u);
  }

  else
  {
  }

  v31 = v0[16]._countAndFlagsBits;
  v33 = v0[13]._object;
  v32 = v0[14]._countAndFlagsBits;
  v34 = v0[10]._object;

  v35 = *(v32 + 8);
  v0[25]._object = v35;
  v35(v31, v33);
  if (!v34)
  {
    v44 = v0[21]._object;
    v45 = v0[12]._object;
    v46 = v0[13]._countAndFlagsBits;
    v47 = v0[12]._countAndFlagsBits;
    swift_bridgeObjectRelease_n();

    v45[13](v46, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v47);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v25, v26);

    goto LABEL_5;
  }

  v36 = v0[19]._object;
  v37 = v0[18]._object;
  v38 = v0[10]._object;
  v0[26]._countAndFlagsBits = v8[9];
  v39 = v36[2];
  v0[26]._object = v39;

  v40 = v39;
  v41 = swift_task_alloc();
  v0[27]._countAndFlagsBits = v41;
  *v41 = v0;
  v41[1] = sub_1001F4B78;
  v42 = v0[18]._countAndFlagsBits;
  v43 = v0[10]._countAndFlagsBits;

  return sub_1002AC6F0(v43, v38, v42, v37, v40);
}

uint64_t sub_1001F4B78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[55] = a1;
  v5[56] = a2;
  v5[57] = v2;

  v6 = v4[53];
  if (v2)
  {
    swift_bridgeObjectRelease_n();

    v7 = sub_1001F5140;
  }

  else
  {

    v7 = sub_1001F4D20;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001F4D20()
{
  v1 = v0[22];
  v3 = v0[55];
  v2 = v0[56];
  if (v1)
  {
    v4 = Data.base64EncodedString(options:)(0);

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Account Key signing key signing device key signing key authorization generated", v7, 2u);
    }

    v8 = v0[51];
    v9 = v0[48];
    v22 = v0[49];
    v23 = v0[50];
    v26 = v0[47];
    v27 = v0[56];
    v24 = v0[46];
    v25 = v0[55];
    v10 = v0[45];
    v28 = v0[43];
    v11 = v0[38];
    v12 = v0[31];
    v13 = v0[27];

    v8(v12, v13);
    sub_100007224(&qword_10083DC20, &qword_1006DB730);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006BF740;
    *(v14 + 32) = v9;
    *(v14 + 40) = v22;
    *(v14 + 48) = v10;
    *(v14 + 56) = v23;
    *(v14 + 64) = v4;
    *(v14 + 80) = v1;
    *(v14 + 88) = v10;
    sub_10000B90C(v25, v27);
    sub_10000B90C(v24, v26);

    swift_setDeallocating();

    sub_10000BB78((v11 + 48));

    v15 = v0[1];

    return v15(v14);
  }

  else
  {
    v17 = v0[46];
    v29 = v0[47];
    v30 = v0[43];
    v19 = v0[25];
    v18 = v0[26];
    v20 = v0[24];
    swift_bridgeObjectRelease_n();

    (*(v19 + 104))(v18, enum case for DIPError.Code.invalidDeviceKeySigningKeyAttestation(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v3, v2);
    sub_10000B90C(v17, v29);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1001F5140()
{
  v1 = v0[43];
  sub_10000B90C(v0[46], v0[47]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001F5204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F52B4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource(0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for PDF417Data();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  v3[37] = swift_task_alloc();
  v7 = type metadata accessor for PDF417ParsedData();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  sub_100007224(&qword_10083DC10, &qword_1006DB718);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v3[43] = swift_task_alloc();
  v8 = type metadata accessor for ProofingSession();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[47] = v9;
  v3[48] = *(v9 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return _swift_task_switch(sub_1001F566C, 0, 0);
}

uint64_t sub_1001F566C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "saveBiomeMetadata called", v4, 2u);
  }

  v5 = v1[53];
  v6 = v1[47];
  v7 = v1[48];
  v8 = v1[25];

  v9 = *(v7 + 8);
  v1[54] = v9;
  v9(v5, v6);
  v10 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments;
  v1[55] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments;
  v11 = *(v8 + v10);
  v1[56] = v11;
  if (v11)
  {
    v1[57] = *(v1[25] + 56);
    v12 = v11;

    v13 = swift_task_alloc();
    v1[58] = v13;
    *v13 = v1;
    v13[1] = sub_1001F5AB4;
    v14 = v1[43];
    v15 = v1[23];

    return sub_1002D7508(v14, v15);
  }

  else
  {
    v17 = v1[49];
    v22 = v1[47];
    v18 = v1[33];
    v23 = v1[35];
    v24 = v1[32];
    v25 = v1[25];
    (*(v1[27] + 104))(v1[28], enum case for DIPError.Code.missingProofingDocuments(_:), v1[26]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v17, v22);

    v19 = *(v8 + v10);
    *(v8 + v10) = 0;

    (*(v18 + 56))(v23, 1, 1, v24);
    v20 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
    swift_beginAccess();
    sub_1000B2764(v23, v25 + v20, &qword_10083D6A8, &qword_1006DB710);
    swift_endAccess();

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_1001F5AB4()
{

  return _swift_task_switch(sub_1001F5BCC, 0, 0);
}

unint64_t sub_1001F5BCC()
{
  v154 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[46], v3, v1);
    v15 = ProofingSession.proofingSessionID.getter();
    v0[59] = v16;
    if (!v16)
    {
      v159 = (v0 + 8);
      v32 = v0[49];
      v124 = v0[47];
      v126 = v0[56];
      v33 = v0[45];
      v138 = v0[46];
      v143 = v0[55];
      v130 = v0[44];
      v134 = v0[54];
      v34 = v0[33];
      v147 = v0[35];
      v151 = v0[32];
      v35 = v0[25];
      (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.proofingSessionDoesntExist(_:), v0[26]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v134(v32, v124);
      (*(v33 + 8))(v138, v130);

      v36 = *(v35 + v143);
      *(v35 + v143) = 0;

      (*(v34 + 56))(v147, 1, 1, v151);
      v37 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
      swift_beginAccess();
      v13 = v35 + v37;
      v14 = v147;
      goto LABEL_33;
    }

    v17 = v16;
    v18 = v0[25];
    v20 = *(v18 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
    v19 = *(v18 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier + 8);
    v0[60] = v19;
    v21 = v0[56];
    if (!v19)
    {
      v159 = (v0 + 11);
      v38 = v0[49];
      v127 = v0[47];
      v39 = v0[45];
      v139 = v0[46];
      v144 = v0[55];
      v131 = v0[44];
      v135 = v0[54];
      v40 = v0[33];
      v148 = v0[35];
      v152 = v0[32];
      v41 = v0[27];
      v42 = v0[28];
      v43 = v0[26];

      (*(v41 + 104))(v42, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v43);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v135(v38, v127);
      (*(v39 + 8))(v139, v131);

      v44 = *(v18 + v144);
      *(v18 + v144) = 0;

      v45 = v148;
      (*(v40 + 56))(v148, 1, 1, v152);
      v46 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
      swift_beginAccess();
      v13 = v18 + v46;
LABEL_32:
      v14 = v45;
      goto LABEL_33;
    }

    v22 = v15;

    v23 = IdentityProofingDocuments.selfie.getter();
    v150 = v19;
    v142 = v20;
    if (v23)
    {
      v24 = v23;
      v25 = IdentityDocument.imageMetrics.getter();

      if (v25)
      {
        v26 = IdentityImageQualityMetrics.captureMetrics.getter();

        if (v26 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
          if (v27)
          {
LABEL_9:
            v28 = __OFSUB__(v27, 1);
            result = v27 - 1;
            if (v28)
            {
              __break(1u);
            }

            else if ((v26 & 0xC000000000000001) == 0)
            {
              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v30 = *(v26 + 8 * result + 32);
LABEL_14:
                v31 = v30;

                dispatch thunk of ImageQualityMetrics.skinTone.getter();

                goto LABEL_19;
              }

              __break(1u);
              return result;
            }

            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_14;
          }
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            goto LABEL_9;
          }
        }
      }
    }

LABEL_19:
    defaultLogger()();

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[54];
    v51 = v0[52];
    v52 = v0[47];
    if (v49)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v22;
      v56 = v54;
      v153[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_100141FE4(v55, v17, v153);
      _os_log_impl(&_mh_execute_header, v47, v48, "Trying to persist biome metadata for proofingSessionID: %s", v53, 0xCu);
      sub_10000BB78(v56);
    }

    v50(v51, v52);
    defaultLogger()();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[25];
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 67109120;
      *(v61 + 4) = *(*(v60 + 112) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect) != 0;

      _os_log_impl(&_mh_execute_header, v57, v58, "fetchedAssetManager.biomeFedStatsFieldsToCollect -> %{BOOL}d", v61, 8u);
    }

    else
    {
    }

    v62 = v0[42];
    v63 = v0[36];
    v64 = v0[32];
    v65 = v0[33];
    v67 = v0[29];
    v66 = v0[30];
    v68 = v0[25];
    (v0[54])(v0[51], v0[47]);
    v159 = *(v66 + 56);
    (v159)(v62, 1, 1, v67);
    v69 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
    v0[61] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
    swift_beginAccess();
    v125 = v69;
    v128 = v68;
    sub_10000BBC4(v68 + v69, v63, &qword_10083D6A8, &qword_1006DB710);
    v70 = (*(v65 + 48))(v63, 1, v64);
    v71 = v0[38];
    v72 = v0[39];
    v73 = v0[37];
    if (v70)
    {
      sub_10000BE18(v0[36], &qword_10083D6A8, &qword_1006DB710);
      (*(v72 + 56))(v73, 1, 1, v71);
    }

    else
    {
      v75 = v0[33];
      v74 = v0[34];
      v76 = v0[32];
      v77 = v0[36];
      (*(v75 + 16))(v74, v77, v76);
      sub_10000BE18(v77, &qword_10083D6A8, &qword_1006DB710);
      PDF417Data.parsedData.getter();
      (*(v75 + 8))(v74, v76);
      if ((*(v72 + 48))(v73, 1, v71) != 1)
      {
        v110 = v0[42];
        v111 = v0[39];
        v112 = v0[40];
        v114 = v0[37];
        v113 = v0[38];
        v115 = v0[29];
        sub_10000BE18(v110, &qword_10083DC10, &qword_1006DB718);
        v116 = *(v111 + 32);
        v116(v112, v114, v113);
        v116(v110, v112, v113);
        swift_storeEnumTagMultiPayload();
        (v159)(v110, 0, 1, v115);
        goto LABEL_28;
      }
    }

    sub_10000BE18(v0[37], &qword_10083D6A0, &unk_1006DB700);
LABEL_28:
    v78 = *(*(v0[25] + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
    if (v78)
    {
      v79 = v0[42];
      v80 = v0[29];

      sub_10000BE18(v79, &qword_10083DC10, &qword_1006DB718);
      *v79 = v78;
      swift_storeEnumTagMultiPayload();
      (v159)(v79, 0, 1, v80);
    }

    v81 = v0[41];
    v83 = v0[29];
    v82 = v0[30];
    sub_10000BBC4(v0[42], v81, &qword_10083DC10, &qword_1006DB718);
    if ((*(v82 + 48))(v81, 1, v83) != 1)
    {
      sub_10021E9C0(v0[41], v0[31], type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource);
      defaultLogger()();
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v0[54];
      v97 = v0[50];
      v98 = v0[47];
      if (v95)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v159 = v96;
        v101 = v100;
        v153[0] = v100;
        *v99 = 136315138;
        v102 = IdentityDocumentType.description.getter();
        v104 = sub_100141FE4(v102, v103, v153);

        *(v99 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v93, v94, "The documentType being saved to donate to biome is %s", v99, 0xCu);
        sub_10000BB78(v101);

        (v159)(v97, v98);
      }

      else
      {

        (v96)(v97, v98);
      }

      v105 = v0[25];
      v0[62] = *(v105 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_biomeManager);
      v106 = *(*(v105 + 112) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect);
      v0[63] = v106;
      v159 = sub_100301468;
      if (v106)
      {
        v107 = v106;
      }

      else
      {
        v107 = &_swiftEmptySetSingleton;
      }

      v108 = swift_task_alloc();
      v0[64] = v108;
      *v108 = v0;
      v108[1] = sub_1001F6E0C;
      v157 = v150;
      v158 = v107;
      v156 = v142;
      v109 = v159;

      __asm { BR              X8 }
    }

    v159 = (v0 + 17);
    v119 = v0[56];
    v120 = v0[54];
    v84 = v0[49];
    v132 = v0[46];
    v136 = v0[55];
    v85 = v0[45];
    v86 = v0[41];
    v117 = v0[42];
    v118 = v0[47];
    v87 = v0[33];
    v140 = v0[35];
    v145 = v0[32];
    v88 = v0[27];
    v89 = v0[28];
    v90 = v0[26];
    v121 = v0[25];
    v122 = v0[44];

    sub_10000BE18(v86, &qword_10083DC10, &qword_1006DB718);
    (*(v88 + 104))(v89, enum case for DIPError.Code.proofingBiomeDataDoesntExist(_:), v90);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v120(v84, v118);
    sub_10000BE18(v117, &qword_10083DC10, &qword_1006DB718);
    (*(v85 + 8))(v132, v122);

    v91 = *(v121 + v136);
    *(v121 + v136) = 0;

    v45 = v140;
    (*(v87 + 56))(v140, 1, 1, v145);
    swift_beginAccess();
    v13 = v128 + v125;
    goto LABEL_32;
  }

  v159 = (v0 + 5);
  v141 = v0[55];
  v133 = v0[56];
  v137 = v0[54];
  v4 = v0[49];
  v129 = v0[47];
  v146 = v0[35];
  v123 = v0[33];
  v149 = v0[32];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  sub_10000BE18(v3, &qword_10083DC18, &unk_1006DB720);
  v153[0] = 0;
  v153[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v9._countAndFlagsBits = 0xD000000000000037;
  v9._object = 0x8000000100706020;
  String.append(_:)(v9);
  v10._countAndFlagsBits = IdentityDocumentType.description.getter();
  String.append(_:)(v10);

  (*(v5 + 104))(v6, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v137(v4, v129);

  v11 = *(v7 + v141);
  *(v7 + v141) = 0;

  (*(v123 + 56))(v146, 1, 1, v149);
  v12 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data;
  swift_beginAccess();
  v13 = v7 + v12;
  v14 = v146;
LABEL_33:
  sub_1000B2764(v14, v13, &qword_10083D6A8, &qword_1006DB710);
  swift_endAccess();
  v159 = v0[28];

  v92 = v0[1];

  return v92();
}

uint64_t sub_1001F6E0C()
{

  return _swift_task_switch(sub_1001F6F90, 0, 0);
}

uint64_t sub_1001F6F90()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v13 = *(v0 + 256);
  v14 = *(v0 + 488);
  v8 = *(v0 + 248);
  v9 = *(v0 + 200);

  sub_10021EA28(v8, type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource);
  sub_10000BE18(v5, &qword_10083DC10, &qword_1006DB718);
  (*(v3 + 8))(v2, v4);
  v10 = *(v9 + v1);
  *(v9 + v1) = 0;

  (*(v7 + 56))(v6, 1, 1, v13);
  swift_beginAccess();
  sub_1000B2764(v6, v9 + v14, &qword_10083D6A8, &qword_1006DB710);
  swift_endAccess();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001F7198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[118] = v4;
  v5[117] = a4;
  v5[116] = a3;
  v5[115] = a2;
  v5[114] = a1;
  v6 = type metadata accessor for DIPError();
  v5[119] = v6;
  v5[120] = *(v6 - 8);
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[123] = v7;
  v5[124] = *(v7 - 8);
  v5[125] = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v5[126] = v8;
  v5[127] = *(v8 - 8);
  v5[128] = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v5[129] = swift_task_alloc();
  v9 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v5[130] = v9;
  v5[131] = *(v9 - 8);
  v5[132] = swift_task_alloc();
  v10 = type metadata accessor for DeviceInformationProvider();
  v5[133] = v10;
  v5[134] = *(v10 - 8);
  v5[135] = swift_task_alloc();
  v5[136] = type metadata accessor for IdentityProofingRequestV2(0);
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v5[139] = type metadata accessor for DIPHTTPSession.Configuration(0);
  v5[140] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[141] = v11;
  v5[142] = *(v11 - 8);
  v5[143] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[144] = v12;
  v5[145] = *(v12 - 8);
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();

  return _swift_task_switch(sub_1001F7588, 0, 0);
}

uint64_t sub_1001F7588(uint64_t a1)
{
  v41 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "----STARTING EXTENDED REVIEW PROOFING REQUEST----", v4, 2u);
  }

  v5 = *(v1 + 1216);
  v6 = *(v1 + 1160);
  v7 = *(v1 + 1152);
  v8 = *(v1 + 1144);
  v9 = *(v1 + 1136);
  v10 = *(v1 + 1128);

  v11 = *(v6 + 8);
  *(v1 + 1224) = v11;
  v11(v5, v7);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = *(v9 + 8);
  *(v1 + 1232) = v15;
  *(v1 + 1240) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v8, v10);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  if (qword_100832D08 != -1)
  {
    swift_once();
  }

  v16 = *(v1 + 1120);
  v17 = *(v1 + 944);
  v18 = sub_10003170C(*(v1 + 1112), qword_100882448);
  sub_10021E958(v18, v16, type metadata accessor for DIPHTTPSession.Configuration);
  v19 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService(0));
  v20 = sub_1005D7D88(v12, v14, v40, v16);
  v21 = *(v17 + 16);
  *(v17 + 16) = v20;

  v22 = *(v17 + 112);
  swift_beginAccess();
  sub_10000BBC4(v22 + 144, v1 + 648, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v1 + 672))
  {
    sub_10001F358((v1 + 648), v1 + 608);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Workflow exists, going forward with proofing", v25, 2u);
    }

    v26 = *(v1 + 1208);
    v27 = *(v1 + 1152);

    v11(v26, v27);
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "encrypting authcode idv data for issuer", v30, 2u);
    }

    v31 = *(v1 + 1200);
    v32 = *(v1 + 1152);

    v11(v31, v32);
    *(v1 + 1248) = *(v17 + 112);

    v33 = swift_task_alloc();
    *(v1 + 1256) = v33;
    *v33 = v1;
    v33[1] = sub_1001F7BC0;
    v34 = *(v1 + 912);

    return sub_1001AAAAC(v1 + 560, v1 + 608, v34);
  }

  else
  {
    v36 = *(v1 + 1000);
    v37 = *(v1 + 992);
    v38 = *(v1 + 984);
    sub_10000BE18(v1 + 648, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v37 + 104))(v36, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v39 = *(v1 + 8);

    return v39();
  }
}

uint64_t sub_1001F7BC0()
{
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v2 = sub_1001FB3D0;
  }

  else
  {

    v2 = sub_1001F7CDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001F7CDC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = v0[158];
  v2 = qword_100881E78;
  v0[159] = qword_100881E78;
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_100031B5C(&v3[4], (v0 + 2));
  os_unfair_lock_unlock(v3 + 54);
  if (!v1)
  {
    v4 = v0[117];
    v5 = v0[114];
    v0[160] = v0[9];

    sub_100031918((v0 + 2));
    v6 = swift_allocObject();
    v0[161] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    v0[162] = v7;
    *(v7 + 16) = sub_10021C248;
    *(v7 + 24) = v6;
    v8 = v5;

    v9 = swift_task_alloc();
    v0[163] = v9;
    v10 = sub_100007224(&qword_10083DC08, &qword_1006DB6E8);
    *v9 = v0;
    v9[1] = sub_1001F7EB4;

    AsyncCoreDataContainer.performRead<A>(_:)(v0 + 91, sub_10021C264, v7, v10);
  }
}

uint64_t sub_1001F7EB4()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = sub_1001F8B54;
  }

  else
  {

    *(v2 + 1320) = *(v2 + 728);
    *(v2 + 1328) = *(v2 + 736);
    *(v2 + 1336) = *(v2 + 744);
    *(v2 + 1352) = *(v2 + 760);
    v3 = sub_1001F8018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F8018()
{
  v96 = v0;
  v1 = *(v0 + 1312);
  v2 = sub_10021C9B0(*(v0 + 920), *(v0 + 928), (v0 + 560), (v0 + 608));
  if (v1)
  {
    v3 = *(v0 + 1352);
    sub_1001B7154(v0 + 560);

LABEL_10:
    v87 = *(v0 + 1176);
    v41 = *(v0 + 1160);
    v42 = *(v0 + 1000);
    v43 = *(v0 + 992);
    v74 = *(v0 + 976);
    v91 = *(v0 + 1152);
    v93 = *(v0 + 968);
    v44 = *(v0 + 960);
    v77 = *(v0 + 952);
    v80 = *(v0 + 984);
    _StringGuts.grow(_:)(34);

    v95[0] = 0xD000000000000020;
    v95[1] = 0x8000000100705EA0;
    swift_getErrorValue();
    v45._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v45);

    (*(v43 + 104))(v42, enum case for DIPError.Code.extendedReviewProofingError(_:), v80);
    *(v0 + 720) = 0;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    swift_errorRetain();
    sub_100203358(v0 + 688);
    sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v46 = *(v44 + 16);
    v46(v47, v74, v77);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v81 = *(v41 + 8);
    v81(v87, v91);

    defaultLogger()();
    v88 = v46;
    v46(v93, v74, v77);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 1168);
    v52 = *(v0 + 1152);
    v53 = *(v0 + 968);
    v54 = *(v0 + 960);
    v55 = *(v0 + 952);
    if (v50)
    {
      v84 = *(v0 + 1152);
      v56 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v56 = 136315138;
      v72 = Error.localizedDescription.getter();
      v58 = v57;
      v78 = v51;
      v59 = *(v54 + 8);
      v59(v53, v55);
      v60 = v59;
      v61 = sub_100141FE4(v72, v58, v95);

      *(v56 + 4) = v61;
      sub_10000BB78(v75);

      v81(v78, v84);
    }

    else
    {

      v62 = *(v54 + 8);
      v62(v53, v55);
      v60 = v62;
      v81(v51, v52);
    }

    v63 = *(v0 + 976);
    v64 = *(v0 + 952);

    sub_1002E1B4C(0, 0, 10);

    swift_allocError();
    v88(v65, v63, v64);
    swift_willThrow();

    v60(v63, v64);
    sub_10000BB78((v0 + 608));

    v66 = *(v0 + 8);

    return v66();
  }

  v89 = v2;
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "encrypting authcode idv data for issuer complete.", v6, 2u);
  }

  v82 = *(v0 + 1336);
  v85 = *(v0 + 1344);
  v79 = *(v0 + 1328);
  v73 = *(v0 + 1320);
  v7 = *(v0 + 1224);
  v8 = *(v0 + 1192);
  v9 = *(v0 + 1152);
  v10 = *(v0 + 1144);
  v70 = *(v0 + 1128);
  v71 = *(v0 + 1232);
  v11 = *(v0 + 1104);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1080);
  v92 = *(v0 + 1072);
  v94 = *(v0 + 1064);
  v76 = *(v0 + 944);

  v7(v8, v9);
  v14 = sub_10000BA08((v0 + 608), *(v0 + 632));
  v16 = *v14;
  v15 = v14[1];
  v17 = v12[9];
  v18 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v18 - 8) + 56))(v11 + v17, 1, 1, v18);
  v19 = v12[15];
  v20 = type metadata accessor for LivenessDataV2(0);
  (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);

  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  v71(v10, v70);
  *v11 = 0;
  *(v11 + 8) = 0xE000000000000000;
  *(v11 + 16) = v21;
  *(v11 + 24) = v23;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = v16;
  *(v11 + 88) = v15;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = v89;
  *(v11 + v12[10]) = 0;
  *(v11 + v12[11]) = 0;
  *(v11 + v12[12]) = _swiftEmptyArrayStorage;
  v24 = (v11 + v12[13]);
  *v24 = v73;
  v24[1] = v79;
  v25 = (v11 + v12[14]);
  *v25 = v82;
  v25[1] = v85;
  *(v11 + v12[16]) = 0;
  v26 = (v11 + v12[17]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v11 + v12[18]);
  *v27 = 0;
  v27[1] = 0;
  v28 = *(v76 + 16);
  v29 = *&v28[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
  *v11 = *&v28[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *(v11 + 8) = v29;
  sub_100020260(*&v28[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 768);
  sub_10000BA08((v0 + 768), *(v0 + 792));
  v90 = v28;

  v30 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v83 = v31;
  v86 = v30;
  sub_10000BB78((v0 + 768));
  DeviceInformationProvider.init()();
  v32 = DeviceInformationProvider.uniqueDeviceID.getter();
  v34 = v33;
  (*(v92 + 8))(v13, v94);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1104);
  v36 = *(v0 + 1096);
  v37 = xmmword_100882478;

  *(v11 + 32) = v86;
  *(v11 + 40) = v83;
  *(v11 + 48) = v32;
  *(v11 + 56) = v34;
  *(v11 + 64) = v37;
  sub_10021E958(v35, v36, type metadata accessor for IdentityProofingRequestV2);
  sub_10021E908(&qword_100836910, type metadata accessor for IdentityProofingRequestV2, &unk_1006C8488);
  sub_10021E908(&qword_100836918, type metadata accessor for IdentityProofingRequestV2, &unk_1006C8460);
  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(*(v0 + 600));
  if (v38)
  {
    v39 = *(v0 + 1352);
    v40 = *(v0 + 1104);
    (*(*(v0 + 1048) + 8))(*(v0 + 1056), *(v0 + 1040));

    sub_10021EA28(v40, type metadata accessor for IdentityProofingRequestV2);
    sub_1001B7154(v0 + 560);
    goto LABEL_10;
  }

  JWSSignedJSON.setKid(_:)();
  v68 = swift_task_alloc();
  *(v0 + 1360) = v68;
  *v68 = v0;
  v68[1] = sub_1001F9158;
  v69 = *(v0 + 1040);

  return JWSSignedJSON.sign(_:)(v0 + 560, v69);
}

uint64_t sub_1001F8B54()
{
  v41 = v0;

  sub_1001B7154(v0 + 560);
  v36 = *(v0 + 1176);
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v38 = *(v0 + 1152);
  v39 = *(v0 + 968);
  v5 = *(v0 + 960);
  v30 = *(v0 + 976);
  v32 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v40[0] = 0xD000000000000020;
  v40[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v6);

  (*(v3 + 104))(v2, enum case for DIPError.Code.extendedReviewProofingError(_:), v4);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v30, v32);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v34 = *(v1 + 8);
  v34(v36, v38);

  defaultLogger()();
  v37 = v7;
  v7(v39, v30, v32);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 968);
  v15 = *(v0 + 960);
  v16 = *(v0 + 952);
  if (v11)
  {
    v35 = *(v0 + 1152);
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v17 = 136315138;
    v29 = Error.localizedDescription.getter();
    v19 = v18;
    v33 = v12;
    v20 = *(v15 + 8);
    v20(v14, v16);
    v21 = v20;
    v22 = sub_100141FE4(v29, v19, v40);

    *(v17 + 4) = v22;
    sub_10000BB78(v31);

    v34(v33, v35);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v14, v16);
    v21 = v23;
    v34(v12, v13);
  }

  v24 = *(v0 + 976);
  v25 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v37(v26, v24, v25);
  swift_willThrow();

  v21(v24, v25);
  sub_10000BB78((v0 + 608));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001F9158()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_1001FB9B4;
  }

  else
  {
    v2 = sub_1001F926C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F926C()
{
  v1 = sub_10000BA08(v0 + 76, v0[79]);
  v3 = *v1;
  v2 = v1[1];
  v0[172] = v2;
  v4 = sub_10000BA08(v0 + 76, v0[79]);
  v5 = v4[6];
  v6 = v4[7];
  v0[173] = v6;

  v7 = swift_task_alloc();
  v0[174] = v7;
  *v7 = v0;
  v7[1] = sub_1001F936C;
  v8 = v0[132];
  v9 = v0[117];

  return sub_1001FF1C8((v0 + 52), v3, v2, v8, 1, v9, v5, v6);
}

uint64_t sub_1001F936C()
{
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v2 = sub_1001FBFE4;
  }

  else
  {
    v2 = sub_1001F94BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001F94BC()
{
  v1 = *(v0 + 1400);
  v2 = *(*(v0 + 1272) + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], v0 + 216);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 54);
  }

  else
  {
    v3 = *(v0 + 1352);
    os_unfair_lock_unlock(v2 + 54);
    *(v0 + 1408) = *(v0 + 272);

    sub_100031918(v0 + 216);
    sub_100020260(v0 + 608, v0 + 808);
    v4 = swift_allocObject();
    *(v0 + 1416) = v4;
    v5 = *(v0 + 528);
    *(v4 + 112) = *(v0 + 512);
    *(v4 + 128) = v5;
    *(v4 + 144) = *(v0 + 544);
    v6 = *(v0 + 464);
    *(v4 + 48) = *(v0 + 448);
    *(v4 + 64) = v6;
    v7 = *(v0 + 496);
    *(v4 + 80) = *(v0 + 480);
    *(v4 + 96) = v7;
    v8 = *(v0 + 432);
    *(v4 + 16) = *(v0 + 416);
    *(v4 + 32) = v8;
    *(v4 + 160) = v3;
    sub_10001F358((v0 + 808), v4 + 168);
    v9 = swift_allocObject();
    *(v0 + 1424) = v9;
    *(v9 + 16) = sub_10021E70C;
    *(v9 + 24) = v4;
    v10 = v3;

    v11 = swift_task_alloc();
    *(v0 + 1432) = v11;
    *v11 = v0;
    v11[1] = sub_1001F9698;

    AsyncCoreDataContainer.performWrite<A>(_:)(v11, sub_10021F3D0, v9, &type metadata for () + 8);
  }
}

uint64_t sub_1001F9698()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_1001F99D4;
  }

  else
  {

    v2 = sub_1001F97CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F97CC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "----EXTENDED REVIEW PROOFING REQUEST SUCCESSFULLY COMPLETED----", v4, 2u);
  }

  v5 = v1[148];
  v6 = v1[145];
  v7 = v1[144];
  v8 = v1[118];

  (*(v6 + 8))(v5, v7);
  v9 = type metadata accessor for IdentityManagementSessionDelegate();
  v10 = [objc_opt_self() defaultCenter];
  v11 = String._bridgeToObjectiveC()();
  v1[113] = v9;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v10 postNotificationName:v11 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v1[181] = *(v8 + 112);

  v12 = IdentityProofingConfiguration.documentType.getter();
  v13 = swift_task_alloc();
  v1[182] = v13;
  *v13 = v1;
  v13[1] = sub_1001FA024;
  v14 = v1[129];

  return sub_1001AA1E4(v14, v12);
}

uint64_t sub_1001F99D4()
{
  v46 = v0;
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);

  (*(v4 + 8))(v3, v5);
  sub_10021EA28(v2, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v41 = *(v0 + 1176);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v43 = *(v0 + 1152);
  v44 = *(v0 + 968);
  v10 = *(v0 + 960);
  v35 = *(v0 + 976);
  v37 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v45[0] = 0xD000000000000020;
  v45[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  (*(v8 + 104))(v7, enum case for DIPError.Code.extendedReviewProofingError(_:), v9);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v12 = *(v10 + 16);
  v12(v13, v35, v37);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v39 = *(v6 + 8);
  v39(v41, v43);

  defaultLogger()();
  v42 = v12;
  v12(v44, v35, v37);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 968);
  v20 = *(v0 + 960);
  v21 = *(v0 + 952);
  if (v16)
  {
    v40 = *(v0 + 1152);
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v22 = 136315138;
    v34 = Error.localizedDescription.getter();
    v24 = v23;
    v38 = v17;
    v25 = *(v20 + 8);
    v25(v19, v21);
    v26 = v25;
    v27 = sub_100141FE4(v34, v24, v45);

    *(v22 + 4) = v27;
    sub_10000BB78(v36);

    v39(v38, v40);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v19, v21);
    v26 = v28;
    v39(v17, v18);
  }

  v29 = *(v0 + 976);
  v30 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v42(v31, v29, v30);
  swift_willThrow();

  v26(v29, v30);
  sub_10000BB78((v0 + 608));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1001FA024()
{
  *(*v1 + 1464) = v0;

  if (v0)
  {
    v2 = sub_1001FC614;
  }

  else
  {
    v2 = sub_1001FA158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FA158()
{
  v1 = v0[129];
  v0[184] = *(v0[118] + 32);
  v2 = *(v1 + 64);

  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[185] = v4;
  *v4 = v0;
  v4[1] = sub_1001FA228;
  v5 = v0[128];

  return sub_1002A77FC(v5, v2, v3);
}

uint64_t sub_1001FA228()
{
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v2 = sub_1001FAD78;
  }

  else
  {
    v2 = sub_1001FA33C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FA33C()
{
  v68 = v0;
  v1 = *(v0 + 1488);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10021E908(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v4 = *(v0 + 1024);
    v5 = *(v0 + 1016);
    v6 = *(v0 + 1008);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 1104);
    v8 = *(v0 + 1056);
    v9 = *(v0 + 1048);
    v10 = *(v0 + 1040);
    v11 = *(v0 + 1032);

    (*(v9 + 8))(v8, v10);
    sub_10021EA28(v7, type metadata accessor for IdentityProofingRequestV2);
    sub_10021EA28(v11, type metadata accessor for IdentityProofingStaticWorkflow);
    sub_1001B7154(v0 + 560);
    v63 = *(v0 + 1176);
    v12 = *(v0 + 1160);
    v13 = *(v0 + 1000);
    v14 = *(v0 + 992);
    v15 = *(v0 + 984);
    v65 = *(v0 + 1152);
    v66 = *(v0 + 968);
    v16 = *(v0 + 960);
    v57 = *(v0 + 976);
    v59 = *(v0 + 952);
    _StringGuts.grow(_:)(34);

    v67[0] = 0xD000000000000020;
    v67[1] = 0x8000000100705EA0;
    swift_getErrorValue();
    v17._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v17);

    (*(v14 + 104))(v13, enum case for DIPError.Code.extendedReviewProofingError(_:), v15);
    *(v0 + 720) = 0;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    swift_errorRetain();
    sub_100203358(v0 + 688);
    sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v18 = *(v16 + 16);
    v18(v19, v57, v59);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v61 = *(v12 + 8);
    v61(v63, v65);

    defaultLogger()();
    v64 = v18;
    v18(v66, v57, v59);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 1168);
    v24 = *(v0 + 1152);
    v25 = *(v0 + 968);
    v26 = *(v0 + 960);
    v27 = *(v0 + 952);
    if (v22)
    {
      v62 = *(v0 + 1152);
      v28 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67[0] = v58;
      *v28 = 136315138;
      v56 = Error.localizedDescription.getter();
      v30 = v29;
      v60 = v23;
      v31 = *(v26 + 8);
      v31(v25, v27);
      v32 = v31;
      v33 = sub_100141FE4(v56, v30, v67);

      *(v28 + 4) = v33;
      sub_10000BB78(v58);

      v61(v60, v62);
    }

    else
    {

      v46 = *(v26 + 8);
      v46(v25, v27);
      v32 = v46;
      v61(v23, v24);
    }

    v47 = *(v0 + 976);
    v48 = *(v0 + 952);

    sub_1002E1B4C(0, 0, 10);

    swift_allocError();
    v64(v49, v47, v48);
    swift_willThrow();

    v32(v47, v48);
    sub_10000BB78((v0 + 608));

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v34 = v2;
    v35 = v3;
    v53 = *(v0 + 1352);
    v54 = *(v0 + 1104);
    v36 = *(v0 + 1048);
    v51 = *(v0 + 1040);
    v52 = *(v0 + 1056);
    v55 = *(v0 + 1032);
    v37 = *(v0 + 1024);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 1008);

    (*(v38 + 8))(v37, v39);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006DAE90;
    v41 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v40 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_10000B8B8(v34, v35);
    IdentityProofingConfiguration.documentType.getter();
    v42 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v43 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v34, v35);

    (*(v36 + 8))(v52, v51);
    sub_10021EA28(v54, type metadata accessor for IdentityProofingRequestV2);
    sub_10021EA28(v55, type metadata accessor for IdentityProofingStaticWorkflow);
    sub_1001B7154(v0 + 560);
    sub_10000BB78((v0 + 608));

    v44 = *(v0 + 8);

    return v44(v43);
  }
}

uint64_t sub_1001FAD78()
{
  v46 = v0;

  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_10021EA28(v5, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_1001B7154(v0 + 560);
  v41 = *(v0 + 1176);
  v6 = *(v0 + 1160);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v43 = *(v0 + 1152);
  v44 = *(v0 + 968);
  v10 = *(v0 + 960);
  v35 = *(v0 + 976);
  v37 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v45[0] = 0xD000000000000020;
  v45[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  (*(v8 + 104))(v7, enum case for DIPError.Code.extendedReviewProofingError(_:), v9);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v12 = *(v10 + 16);
  v12(v13, v35, v37);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v39 = *(v6 + 8);
  v39(v41, v43);

  defaultLogger()();
  v42 = v12;
  v12(v44, v35, v37);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 968);
  v20 = *(v0 + 960);
  v21 = *(v0 + 952);
  if (v16)
  {
    v40 = *(v0 + 1152);
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v22 = 136315138;
    v34 = Error.localizedDescription.getter();
    v24 = v23;
    v38 = v17;
    v25 = *(v20 + 8);
    v25(v19, v21);
    v26 = v25;
    v27 = sub_100141FE4(v34, v24, v45);

    *(v22 + 4) = v27;
    sub_10000BB78(v36);

    v39(v38, v40);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v19, v21);
    v26 = v28;
    v39(v17, v18);
  }

  v29 = *(v0 + 976);
  v30 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v42(v31, v29, v30);
  swift_willThrow();

  v26(v29, v30);
  sub_10000BB78((v0 + 608));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1001FB3D0()
{
  v41 = v0;

  v36 = *(v0 + 1176);
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v38 = *(v0 + 1152);
  v39 = *(v0 + 968);
  v5 = *(v0 + 960);
  v30 = *(v0 + 976);
  v32 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v40[0] = 0xD000000000000020;
  v40[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v6);

  (*(v3 + 104))(v2, enum case for DIPError.Code.extendedReviewProofingError(_:), v4);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v30, v32);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v34 = *(v1 + 8);
  v34(v36, v38);

  defaultLogger()();
  v37 = v7;
  v7(v39, v30, v32);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 968);
  v15 = *(v0 + 960);
  v16 = *(v0 + 952);
  if (v11)
  {
    v35 = *(v0 + 1152);
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v17 = 136315138;
    v29 = Error.localizedDescription.getter();
    v19 = v18;
    v33 = v12;
    v20 = *(v15 + 8);
    v20(v14, v16);
    v21 = v20;
    v22 = sub_100141FE4(v29, v19, v40);

    *(v17 + 4) = v22;
    sub_10000BB78(v31);

    v34(v33, v35);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v14, v16);
    v21 = v23;
    v34(v12, v13);
  }

  v24 = *(v0 + 976);
  v25 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v37(v26, v24, v25);
  swift_willThrow();

  v21(v24, v25);
  sub_10000BB78((v0 + 608));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001FB9B4()
{
  v45 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v40 = *(v0 + 1176);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v42 = *(v0 + 1152);
  v43 = *(v0 + 968);
  v9 = *(v0 + 960);
  v34 = *(v0 + 976);
  v36 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v44[0] = 0xD000000000000020;
  v44[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  (*(v7 + 104))(v6, enum case for DIPError.Code.extendedReviewProofingError(_:), v8);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v11 = *(v9 + 16);
  v11(v12, v34, v36);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v38 = *(v5 + 8);
  v38(v40, v42);

  defaultLogger()();
  v41 = v11;
  v11(v43, v34, v36);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  if (v15)
  {
    v39 = *(v0 + 1152);
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v21 = 136315138;
    v33 = Error.localizedDescription.getter();
    v23 = v22;
    v37 = v16;
    v24 = *(v19 + 8);
    v24(v18, v20);
    v25 = v24;
    v26 = sub_100141FE4(v33, v23, v44);

    *(v21 + 4) = v26;
    sub_10000BB78(v35);

    v38(v37, v39);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v18, v20);
    v25 = v27;
    v38(v16, v17);
  }

  v28 = *(v0 + 976);
  v29 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v41(v30, v28, v29);
  swift_willThrow();

  v25(v28, v29);
  sub_10000BB78((v0 + 608));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001FBFE4()
{
  v45 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v40 = *(v0 + 1176);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v42 = *(v0 + 1152);
  v43 = *(v0 + 968);
  v9 = *(v0 + 960);
  v34 = *(v0 + 976);
  v36 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v44[0] = 0xD000000000000020;
  v44[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  (*(v7 + 104))(v6, enum case for DIPError.Code.extendedReviewProofingError(_:), v8);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v11 = *(v9 + 16);
  v11(v12, v34, v36);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v38 = *(v5 + 8);
  v38(v40, v42);

  defaultLogger()();
  v41 = v11;
  v11(v43, v34, v36);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  if (v15)
  {
    v39 = *(v0 + 1152);
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v21 = 136315138;
    v33 = Error.localizedDescription.getter();
    v23 = v22;
    v37 = v16;
    v24 = *(v19 + 8);
    v24(v18, v20);
    v25 = v24;
    v26 = sub_100141FE4(v33, v23, v44);

    *(v21 + 4) = v26;
    sub_10000BB78(v35);

    v38(v37, v39);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v18, v20);
    v25 = v27;
    v38(v16, v17);
  }

  v28 = *(v0 + 976);
  v29 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v41(v30, v28, v29);
  swift_willThrow();

  v25(v28, v29);
  sub_10000BB78((v0 + 608));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001FC614()
{
  v45 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);

  (*(v3 + 8))(v2, v4);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 560);
  v40 = *(v0 + 1176);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v42 = *(v0 + 1152);
  v43 = *(v0 + 968);
  v9 = *(v0 + 960);
  v34 = *(v0 + 976);
  v36 = *(v0 + 952);
  _StringGuts.grow(_:)(34);

  v44[0] = 0xD000000000000020;
  v44[1] = 0x8000000100705EA0;
  swift_getErrorValue();
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v10);

  (*(v7 + 104))(v6, enum case for DIPError.Code.extendedReviewProofingError(_:), v8);
  *(v0 + 720) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;
  swift_errorRetain();
  sub_100203358(v0 + 688);
  sub_10000BE18(v0 + 688, &qword_10083D0A0, &qword_1006DAFC0);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v11 = *(v9 + 16);
  v11(v12, v34, v36);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v38 = *(v5 + 8);
  v38(v40, v42);

  defaultLogger()();
  v41 = v11;
  v11(v43, v34, v36);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 968);
  v19 = *(v0 + 960);
  v20 = *(v0 + 952);
  if (v15)
  {
    v39 = *(v0 + 1152);
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v21 = 136315138;
    v33 = Error.localizedDescription.getter();
    v23 = v22;
    v37 = v16;
    v24 = *(v19 + 8);
    v24(v18, v20);
    v25 = v24;
    v26 = sub_100141FE4(v33, v23, v44);

    *(v21 + 4) = v26;
    sub_10000BB78(v35);

    v38(v37, v39);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v18, v20);
    v25 = v27;
    v38(v16, v17);
  }

  v28 = *(v0 + 976);
  v29 = *(v0 + 952);

  sub_1002E1B4C(0, 0, 10);

  swift_allocError();
  v41(v30, v28, v29);
  swift_willThrow();

  v25(v28, v29);
  sub_10000BB78((v0 + 608));

  v31 = *(v0 + 8);

  return v31();
}

void sub_1001FCC44(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v4 = type metadata accessor for Logger();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = IdentityProofingConfiguration.documentType.getter();
  v13 = sub_10057A388(v11, v12, 0);
  if (v2)
  {
    return;
  }

  v14 = v8;
  v15 = v7;
  v16 = v44;
  if (!v13)
  {
LABEL_21:
    (*(v14 + 104))(v10, enum case for DIPError.Code.extendedReviewProofingError(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v17 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    v38 = v13;
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v13 = v38;
    v18 = v4;
    if (v39)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v18 = v4;
  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_8:
  v42 = 0;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v19 = v6;
  }

  else
  {
    if (!*(v17 + 16))
    {
      __break(1u);
      return;
    }

    v19 = v6;
    v20 = *(v13 + 32);
  }

  v21 = v20;

  v22 = [v21 proofingSessionID];
  if (v22)
  {
    v41 = v21;
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ProofingSessionID from the previous proofing attempt exists. Continuing the proofing flow", v29, 2u);
      v18 = v4;
    }

    (*(v16 + 8))(v19, v18);
    v30 = v43;
    *v43 = v24;
    v30[1] = v26;
    v31 = v41;
    v32 = [v41 productIdentifier];
    if (v32)
    {
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v30[2] = v34;
    v30[3] = v36;
    v37 = [v31 objectID];

    v30[4] = v37;
  }

  else
  {
    (*(v14 + 104))(v10, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void sub_1001FD1C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42 = a4;
  v46 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = *(a2 + 128);
  v17 = *(&v45 + 1);
  if (!*(&v45 + 1) || (*(a2 + 120) & 1) != 0)
  {
    (*(v8 + 104))(v10, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v41 = v16;
  isEscapingClosureAtFileLocation = &v39 - v15;
  v19 = v45;
  v20 = *(a2 + 112);
  v21 = sub_10057886C(a3);
  if (!v4)
  {
    v22 = v21;
    v40 = v19;
    v23 = sub_10000BA08(v42, v42[3]);
    v25 = *v23;
    v24 = v23[1];

    Date.init()();
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(isEscapingClosureAtFileLocation, 0, 1, v26);
    v27 = [v22 managedObjectContext];
    if (v27)
    {
      v39 = v27;
      sub_10000BBC4(isEscapingClosureAtFileLocation, v14, &unk_100849400, &unk_1006BFBB0);
      v28 = *(v41 + 80);
      v42 = v22;
      v29 = (v28 + 64) & ~v28;
      v30 = swift_allocObject();
      v30[2] = v42;
      v30[3] = v25;
      v31 = v40;
      v30[4] = v24;
      v30[5] = v31;
      v30[6] = v17;
      v30[7] = v20;
      sub_1000B1FC8(v14, v30 + v29, &unk_100849400, &unk_1006BFBB0);
      v32 = swift_allocObject();
      *(v32 + 16) = sub_10021E860;
      *(v32 + 24) = v30;
      aBlock[4] = sub_10021E8E8;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10057E264;
      aBlock[3] = &unk_10080AA70;
      v33 = isEscapingClosureAtFileLocation;
      v34 = _Block_copy(aBlock);
      v35 = v42;
      sub_10000BBC4(&v45, v43, &qword_10084A1D0, &qword_1006DB410);

      v36 = v39;
      [v39 performBlockAndWait:v34];

      _Block_release(v34);
      v37 = v33;
      v22 = v42;
      sub_10000BE18(v37, &unk_100849400, &unk_1006BFBB0);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_9:
        v38 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v38, 0);
        sub_1005783D4();

        return;
      }

      __break(1u);
    }

    sub_10000BE18(isEscapingClosureAtFileLocation, &unk_100849400, &unk_1006BFBB0);
    goto LABEL_9;
  }
}

uint64_t sub_1001FD70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 312) = v21;
  *(v9 + 320) = v8;
  *(v9 + 304) = v20;
  *(v9 + 272) = v18;
  *(v9 + 288) = v19;
  *(v9 + 240) = v16;
  *(v9 + 256) = v17;
  *(v9 + 224) = a7;
  *(v9 + 232) = a8;
  *(v9 + 208) = a5;
  *(v9 + 216) = a6;
  *(v9 + 192) = a3;
  *(v9 + 200) = a4;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 328) = v10;
  *(v9 + 336) = *(v10 - 8);
  *(v9 + 344) = swift_task_alloc();
  v11 = type metadata accessor for DeviceInformationProvider();
  *(v9 + 352) = v11;
  *(v9 + 360) = *(v11 - 8);
  *(v9 + 368) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v9 + 376) = v12;
  *(v9 + 384) = *(v12 - 8);
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = type metadata accessor for IdentityProofingRequestV2(0);
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 424) = v13;
  *(v9 + 432) = *(v13 - 8);
  *(v9 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_1001FD948, 0, 0);
}

uint64_t sub_1001FD948(uint64_t a1)
{
  v71 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 432);
  v5 = *(v1 + 440);
  v7 = *(v1 + 424);
  if (v4)
  {
    v9 = *(v1 + 184);
    v8 = *(v1 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v70[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100141FE4(v9, v8, v70);
    _os_log_impl(&_mh_execute_header, v2, v3, "Building and signing proofing request for workflow ID %{public}s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = *(*(v1 + 320) + 112);
  v13 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
  swift_beginAccess();
  sub_10000BBC4(v12 + v13, v1 + 64, &qword_10083D4B8, &qword_1006DB470);
  if (*(v1 + 88))
  {
    v14 = *(v1 + 416);
    v15 = *(v1 + 400);
    v52 = *(v1 + 392);
    v55 = *(v1 + 384);
    v56 = *(v1 + 376);
    v63 = *(v1 + 368);
    v64 = *(v1 + 360);
    v65 = *(v1 + 352);
    v53 = *(v1 + 312);
    v60 = *(v1 + 304);
    v61 = *(v1 + 320);
    v51 = *(v1 + 296);
    v59 = *(v1 + 288);
    v68 = *(v1 + 280);
    v46 = *(v1 + 272);
    v66 = *(v1 + 264);
    v57 = *(v1 + 240);
    v58 = *(v1 + 256);
    v47 = *(v1 + 232);
    v48 = *(v1 + 248);
    v16 = *(v1 + 224);
    v18 = *(v1 + 200);
    v17 = *(v1 + 208);
    v49 = *(v1 + 216);
    v50 = *(v1 + 192);
    v54 = *(v1 + 184);
    v19 = *(v1 + 80);
    *(v1 + 16) = *(v1 + 64);
    *(v1 + 32) = v19;
    *(v1 + 48) = *(v1 + 96);
    sub_10000BBC4(v17, v14 + v15[9], &qword_100835E38, &qword_1006C49F0);
    sub_10000BBC4(v46, v14 + v15[15], &qword_100835E40, &qword_1006C49F8);

    UUID.init()();
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v55 + 8))(v52, v56);
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = v20;
    *(v14 + 24) = v22;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 80) = v54;
    *(v14 + 88) = v50;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0;
    *(v14 + 112) = v18;
    *(v14 + v15[10]) = v49;
    *(v14 + v15[11]) = v16;
    *(v14 + v15[12]) = v47;
    v23 = (v14 + v15[13]);
    *v23 = v57;
    v23[1] = v48;
    v24 = (v14 + v15[14]);
    *v24 = v58;
    v24[1] = v66;
    *(v14 + v15[16]) = v68;
    v25 = (v14 + v15[17]);
    *v25 = v59;
    v25[1] = v51;
    v26 = (v14 + v15[18]);
    *v26 = v60;
    v26[1] = v53;
    v27 = *(v61 + 16);
    v28 = *&v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8];
    *v14 = *&v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
    *(v14 + 8) = v28;
    sub_100020260(*&v27[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v1 + 112);
    sub_10000BA08((v1 + 112), *(v1 + 136));
    v69 = v27;

    v67 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
    v62 = v29;
    sub_10000BB78((v1 + 112));
    DeviceInformationProvider.init()();
    v30 = DeviceInformationProvider.uniqueDeviceID.getter();
    v32 = v31;
    (*(v64 + 8))(v63, v65);
    if (qword_100832D18 != -1)
    {
      swift_once();
    }

    v34 = *(v1 + 408);
    v33 = *(v1 + 416);
    v35 = xmmword_100882478;

    *(v14 + 32) = v67;
    *(v14 + 40) = v62;
    *(v14 + 48) = v30;
    *(v14 + 56) = v32;
    *(v14 + 64) = v35;
    sub_10021E958(v33, v34, type metadata accessor for IdentityProofingRequestV2);
    sub_10021E908(&qword_100836910, type metadata accessor for IdentityProofingRequestV2, &unk_1006C8488);
    sub_10021E908(&qword_100836918, type metadata accessor for IdentityProofingRequestV2, &unk_1006C8460);
    JWSSignedJSON.init(payload:)();
    v36._rawValue = *(v1 + 56);
    v37 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
    *(v1 + 448) = v37;
    JWSSignedJSON.setCertificateChain(_:)(v36);
    if (!v38)
    {
      JWSSignedJSON.setKid(_:)();
      v45 = swift_task_alloc();
      *(v1 + 456) = v45;
      *v45 = v1;
      v45[1] = sub_1001FE148;

      return JWSSignedJSON.sign(_:)(v1 + 16, v37);
    }

    v39 = *(v1 + 416);
    (*(*(v37 - 8) + 8))(*(v1 + 176), v37);
    sub_10021EA28(v39, type metadata accessor for IdentityProofingRequestV2);
    sub_1001B7154(v1 + 16);
  }

  else
  {
    v41 = *(v1 + 336);
    v40 = *(v1 + 344);
    v42 = *(v1 + 328);
    sub_10000BE18(v1 + 64, &qword_10083D4B8, &qword_1006DB470);
    (*(v41 + 104))(v40, enum case for DIPError.Code.internalError(_:), v42);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v43 = *(v1 + 8);

  return v43();
}

uint64_t sub_1001FE148()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1001FE330;
  }

  else
  {
    v2 = sub_1001FE25C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FE25C()
{
  sub_10021EA28(*(v0 + 416), type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FE330()
{
  v1 = v0[52];
  (*(*(v0[56] - 8) + 8))(v0[22]);
  sub_10021EA28(v1, type metadata accessor for IdentityProofingRequestV2);
  sub_1001B7154((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001FE434(char a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for DaemonAnalytics.PIITokenOrigin();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DaemonAnalytics.PIITokenUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083DC40, &unk_1006DB7A0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = *(v7 + 56);
  v18(&v28 - v16, 1, 1, v6);
  if (a1 == 2)
  {
    sub_10000BE18(v17, &qword_10083DC40, &unk_1006DB7A0);
    v19 = &enum case for DaemonAnalytics.PIITokenUseCase.giftWatch(_:);
    goto LABEL_5;
  }

  if (a1 == 3)
  {
    sub_10000BE18(v17, &qword_10083DC40, &unk_1006DB7A0);
    v19 = &enum case for DaemonAnalytics.PIITokenUseCase.deviceMigration(_:);
LABEL_5:
    (*(v7 + 104))(v17, *v19, v6);
    v20 = 0;
    goto LABEL_9;
  }

  v30 = a2;
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v29 = v4;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Invalid token usecase", v23, 2u);
    v4 = v29;
  }

  (*(v31 + 8))(v11, v32);
  sub_10000BE18(v17, &qword_10083DC40, &unk_1006DB7A0);
  v20 = 1;
LABEL_9:
  v18(v17, v20, 1, v6);
  sub_10000BBC4(v17, v15, &qword_10083DC40, &unk_1006DB7A0);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_10000BE18(v17, &qword_10083DC40, &unk_1006DB7A0);
  }

  else
  {
    v24 = v33;
    (*(v7 + 32))(v33, v15, v6);
    type metadata accessor for DaemonAnalytics();
    v26 = v34;
    v25 = v35;
    (*(v35 + 104))(v34, enum case for DaemonAnalytics.PIITokenOrigin.keychain(_:), v4);
    static DaemonAnalytics.sendPIITokenRetrievalEvent(origin:didRetreivePIIToken:usecase:)();
    (*(v25 + 8))(v26, v4);
    (*(v7 + 8))(v24, v6);
    v15 = v17;
  }

  return sub_10000BE18(v15, &qword_10083DC40, &unk_1006DB7A0);
}

uint64_t sub_1001FE8EC(char *a1, uint64_t a2)
{
  v44 = a2;
  v45 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Logger();
  v47 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v41 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v48 = &v36 - v8;
  __chkstk_darwin(v7);
  v46 = &v36 - v9;
  v10 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v43 = v2;
  v17 = *(*(v2 + 88) + 16);
  v18 = OBJC_IVAR____TtC8coreidvd38IdentityProofingLivenessConfigProvider_currentSignedConfigV2;
  swift_beginAccess();
  sub_10000BBC4(v17 + v18, v12, &qword_100835970, &unk_1006C1EA0);
  if ((v14[6])(v12, 1, v13) == 1)
  {
    sub_10000BE18(v12, &qword_100835970, &unk_1006C1EA0);
    (*(v39 + 104))(v42, enum case for DIPError.Code.livenessConfigFetchError(_:), v40);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v19 = v41;
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v47 + 8))(v19, v59);

    return 0;
  }

  else
  {
    v41 = v14;
    v14[4](v16, v12, v13);
    JWSSignedJSON.payload.getter();
    memcpy(v56, v55, 0x10AuLL);
    sub_10000BBC4(v56, v52, &qword_100835828, &qword_1006C1B18);
    sub_10009F310(v56);
    v57[8] = v56[8];
    v58[0] = v56[9];
    *(v58 + 14) = *(&v56[9] + 14);
    v57[4] = v56[4];
    v57[5] = v56[5];
    v57[7] = v56[7];
    v57[6] = v56[6];
    v57[0] = v56[0];
    v57[1] = v56[1];
    v57[3] = v56[3];
    v57[2] = v56[2];
    v21 = sub_10021C1F8(v57);
    v22 = v47;
    if (v21 == 1)
    {
      LODWORD(v42) = 0;
      v23 = v59;
      v24 = v46;
    }

    else
    {
      sub_10000BE18(v56, &qword_100835828, &qword_1006C1B18);
      JWSSignedJSON.payload.getter();
      memcpy(v52, v51, 0x10AuLL);
      sub_10000BBC4(&v52[22], v50, &qword_100835840, &unk_1006DB6D0);
      sub_10009F310(v52);
      LODWORD(v42) = v52[25] != 0;
      v23 = v59;
      v24 = v46;
      if (v52[25])
      {
        sub_10000BE18(&v52[22], &qword_100835840, &unk_1006DB6D0);
      }
    }

    JWSSignedJSON.payload.getter();
    memcpy(v55, v52, 0x10AuLL);
    sub_10000BBC4(v55, v51, &qword_100835828, &qword_1006C1B18);
    sub_10009F310(v55);
    v53[8] = v55[8];
    v54[0] = v55[9];
    *(v54 + 14) = *(&v55[9] + 14);
    v53[4] = v55[4];
    v53[5] = v55[5];
    v53[7] = v55[7];
    v53[6] = v55[6];
    v53[0] = v55[0];
    v53[1] = v55[1];
    v53[3] = v55[3];
    v53[2] = v55[2];
    v25 = sub_10021C1F8(v53);
    v37 = v16;
    v38 = v13;
    if (v25 == 1)
    {
      LODWORD(v46) = 0;
    }

    else
    {
      sub_10000BE18(v55, &qword_100835828, &qword_1006C1B18);
      JWSSignedJSON.payload.getter();
      memcpy(v51, v50, 0x10AuLL);
      sub_10000BBC4(&v51[22], &v49, &qword_100835840, &unk_1006DB6D0);
      sub_10009F310(v51);
      LODWORD(v46) = v51[25] == 0;
      if (v51[25])
      {
        sub_10000BE18(&v51[22], &qword_100835840, &unk_1006DB6D0);
      }
    }

    if (v44 == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    sub_1002E22CC(v26, v45);

    v27 = IdentityProofingActionStatus.rawValue.getter();
    v28 = IdentityProofingActionStatus.rawValue.getter();
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      *(v31 + 4) = v27 == v28;
      v23 = v59;
      _os_log_impl(&_mh_execute_header, v29, v30, "isPerformingLivenessStepUp -> %{BOOL}d", v31, 8u);
    }

    v32 = *(v22 + 8);
    v32(v24, v23);
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109632;
      *(v35 + 4) = v42;
      *(v35 + 8) = 1024;
      *(v35 + 10) = v46;
      *(v35 + 14) = 1024;
      *(v35 + 16) = v27 == v28;
      v23 = v59;
      _os_log_impl(&_mh_execute_header, v33, v34, "Liveness type isInlineStepUp: %{BOOL}d activeLiveness: %{BOOL}d isPushNotificationStepup: %{BOOL}d", v35, 0x14u);
    }

    v32(v48, v23);
    v41[1](v37, v38);
    if (v27 == v28)
    {
      return 1;
    }

    else
    {
      return v42 | v46;
    }
  }
}

uint64_t sub_1001FF1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 416) = a8;
  *(v9 + 424) = v8;
  *(v9 + 400) = a6;
  *(v9 + 408) = a7;
  *(v9 + 544) = a5;
  *(v9 + 384) = a3;
  *(v9 + 392) = a4;
  *(v9 + 368) = a1;
  *(v9 + 376) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 432) = v10;
  *(v9 + 440) = *(v10 - 8);
  *(v9 + 448) = swift_task_alloc();
  v11 = sub_100007224(&qword_10083DBF8, &unk_1006DB6A0);
  *(v9 + 456) = v11;
  *(v9 + 464) = *(v11 - 8);
  *(v9 + 472) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v9 + 480) = v12;
  *(v9 + 488) = *(v12 - 8);
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_1001FF368, 0, 0);
}

uint64_t sub_1001FF368(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing identity proofing request", v4, 2u);
  }

  v5 = *(v1 + 504);
  v6 = *(v1 + 480);
  v7 = *(v1 + 488);
  v8 = *(v1 + 400);

  v9 = *(v7 + 8);
  v9(v5, v6);
  if ((v8 & 2) != 0 && (v10 = (*(*(*(v1 + 424) + 40) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService) + OBJC_IVAR____TtC8coreidvd8DIPWatch_bridgedClientInfo), (v11 = v10[1]) != 0))
  {
    v12 = *v10;

    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Adding Bridge-Client-Info headers to proofing request", v15, 2u);
    }

    v16 = *(v1 + 496);
    v17 = *(v1 + 480);

    v9(v16, v17);
    sub_100007224(&qword_100838818, &unk_1006D0F90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF520;
    *(inited + 32) = 0xD00000000000001BLL;
    v19 = inited + 32;
    *(inited + 40) = 0x8000000100705C70;
    *(inited + 48) = v12;
    *(inited + 56) = v11;
    v20 = sub_10003D21C(inited);
    swift_setDeallocating();
    sub_10000BE18(v19, &qword_100838820, &unk_1006DB6B0);
  }

  else
  {
    v20 = 0;
  }

  *(v1 + 512) = v20;
  v21 = *(*(v1 + 424) + 16);
  *(v1 + 520) = v21;
  v21;
  v22 = swift_task_alloc();
  *(v1 + 528) = v22;
  *v22 = v1;
  v22[1] = sub_1001FF640;
  v23 = *(v1 + 472);
  v24 = *(v1 + 408);
  v25 = *(v1 + 416);
  v27 = *(v1 + 384);
  v26 = *(v1 + 392);
  v28 = *(v1 + 376);
  v29 = *(v1 + 544);

  return sub_1005E7B5C(v23, v26, v28, v27, v20, v29, v24, v25);
}

uint64_t sub_1001FF640()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_1001FF874;
  }

  else
  {

    v3 = sub_1001FF768;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FF768()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = *(v0 + 368);
  JWSSignedJSON.payload.getter();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 272);
  *(v0 + 112) = v5;
  *(v0 + 128) = v6;
  v7 = *(v0 + 288);
  *(v0 + 144) = v7;
  v8 = *(v0 + 208);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v8;
  v10 = *(v0 + 224);
  v9 = *(v0 + 240);
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v11 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v11;
  v4[7] = v6;
  v4[8] = v7;
  v4[5] = v9;
  v4[6] = v5;
  *v4 = *(v0 + 16);
  v12 = *(v0 + 48);
  v4[3] = *(v0 + 64);
  v4[4] = v10;
  v4[1] = v11;
  v4[2] = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1001FF874()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FFA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 672) = v8;
  *(v9 + 1009) = v18;
  *(v9 + 664) = v17;
  *(v9 + 1008) = v16;
  *(v9 + 656) = a8;
  *(v9 + 648) = a7;
  *(v9 + 640) = a6;
  *(v9 + 632) = a5;
  *(v9 + 624) = a4;
  *(v9 + 616) = a3;
  *(v9 + 608) = a2;
  *(v9 + 600) = a1;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v9 + 680) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v9 + 688) = v10;
  v11 = *(v10 - 8);
  *(v9 + 696) = v11;
  *(v9 + 704) = *(v11 + 64);
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v9 + 736) = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  *(v9 + 744) = v12;
  *(v9 + 752) = *(v12 - 8);
  *(v9 + 760) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 768) = v13;
  *(v9 + 776) = *(v13 - 8);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();

  return _swift_task_switch(sub_1001FFCA4, 0, 0);
}

uint64_t sub_1001FFCA4(uint64_t a1)
{
  v52 = v1;
  v2 = *(v1 + 656);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 808);
  v7 = *(v1 + 776);
  v8 = *(v1 + 768);
  if (v5)
  {
    v50 = *(v1 + 808);
    v9 = *(v1 + 656);
    v48 = *(v1 + 648);
    v49 = *(v1 + 768);
    v10 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = IdentityTarget.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, v51);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    if (v9)
    {
      v14 = v48;
    }

    else
    {
      v14 = 7104878;
    }

    if (v9)
    {
      v15 = v2;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_100141FE4(v14, v15, v51);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "IdentityProofingRequestManager trying to save proofing session for target : %{public}s with pairingID : %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v17 = *(v7 + 8);
    v17(v50, v49);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v6, v8);
  }

  *(v1 + 816) = v17;
  IdentityProofingConfiguration.state.getter();
  if (!v18)
  {
    (*(*(v1 + 752) + 104))(*(v1 + 760), enum case for DIPError.Code.idStateUnavailable(_:), *(v1 + 744));
    *(v1 + 248) = 0;
    *(v1 + 232) = 0u;
    *(v1 + 216) = 0u;
    sub_100203358(v1 + 216);
    sub_10000BE18(v1 + 216, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_20:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_25:

    v43 = *(v1 + 8);

    return v43();
  }

  v19 = String.lowercased()();

  *(v1 + 824) = v19;
  IdentityProofingConfiguration.country.getter();
  if (!v20)
  {
    v30 = *(v1 + 760);
    v31 = *(v1 + 752);
    v32 = *(v1 + 744);

    (*(v31 + 104))(v30, enum case for DIPError.Code.idCountryUnavailable(_:), v32);
    *(v1 + 288) = 0;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    sub_100203358(v1 + 256);
    sub_10000BE18(v1 + 256, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

  v21 = *(v1 + 672);
  v22 = String.lowercased()();

  *(v1 + 840) = v22;
  v23 = *(v21 + 112);
  swift_beginAccess();
  sub_10000BBC4(v23 + 144, v1 + 336, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v1 + 360))
  {
    v33 = *(v1 + 760);
    v34 = *(v1 + 752);
    v35 = *(v1 + 744);

    sub_10000BE18(v1 + 336, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v34 + 104))(v33, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v35);
    *(v1 + 408) = 0;
    *(v1 + 376) = 0u;
    *(v1 + 392) = 0u;
    sub_100203358(v1 + 376);
    sub_10000BE18(v1 + 376, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_20;
  }

  v24 = *(v1 + 640);
  sub_10001F358((v1 + 336), v1 + 296);
  if (!v24)
  {
    v36 = *(v1 + 760);
    v37 = *(v1 + 752);
    v38 = *(v1 + 744);

    (*(v37 + 104))(v36, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v38);
    *(v1 + 448) = 0;
    *(v1 + 416) = 0u;
    *(v1 + 432) = 0u;
    sub_100203358(v1 + 416);
    sub_10000BE18(v1 + 416, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_24;
  }

  v25 = *(v1 + 656);

  v26 = IdentityTarget.rawValue.getter();
  if (v26 == IdentityTarget.rawValue.getter() && !v25)
  {
    v27 = *(v1 + 760);
    v28 = *(v1 + 752);
    v29 = *(v1 + 744);

    (*(v28 + 104))(v27, enum case for DIPError.Code.watchPairingIDDoesNotExist(_:), v29);
    *(v1 + 568) = 0;
    *(v1 + 536) = 0u;
    *(v1 + 552) = 0u;
    sub_100203358(v1 + 536);
    sub_10000BE18(v1 + 536, &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_24:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BB78((v1 + 296));
    goto LABEL_25;
  }

  v39 = *(v1 + 672) + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_manualCheckInterval;
  *(v1 + 856) = *v39;
  if (*(v39 + 8))
  {
    v40 = *(v1 + 760);
    v41 = *(v1 + 752);
    v42 = *(v1 + 744);

    *(v1 + 488) = 0;
    *(v1 + 456) = 0u;
    *(v1 + 472) = 0u;
    sub_100203358(v1 + 456);
    sub_10000BE18(v1 + 456, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v41 + 104))(v40, enum case for DIPError.Code.internalError(_:), v42);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_24;
  }

  *(v1 + 864) = *(v21 + 112);

  v45 = IdentityProofingConfiguration.documentType.getter();
  v46 = swift_task_alloc();
  *(v1 + 872) = v46;
  *v46 = v1;
  v46[1] = sub_1002007D4;
  v47 = *(v1 + 736);

  return sub_1001AA1E4(v47, v45);
}

uint64_t sub_1002007D4()
{
  *(*v1 + 880) = v0;

  if (v0)
  {

    v2 = sub_100201FF8;
  }

  else
  {
    v2 = sub_100200930;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100200930(uint64_t a1)
{
  v49 = v1;
  v2 = v1[92];
  v3 = (v2 + *(v1[91] + 44));
  v1[111] = *v3;
  v4 = v3[1];
  v1[112] = v4;
  if (v4)
  {
    defaultLogger()();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[102];
    v9 = v1[100];
    v10 = v1[96];
    if (v7)
    {
      v46 = v1[102];
      v11 = v1[78];
      v12 = v1[77];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v48[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(v12, v11, v48);
      _os_log_impl(&_mh_execute_header, v5, v6, "----- PROOFING SESSION IDENTIFIER -----> %s", v13, 0xCu);
      sub_10000BB78(v14);

      v46(v9, v10);
    }

    else
    {

      v8(v9, v10);
    }

    defaultLogger()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v1[102];
    v24 = v1[99];
    v25 = v1[96];
    if (v22)
    {
      v47 = v1[102];
      v26 = v1[80];
      v27 = v1[79];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100141FE4(v27, v26, v48);
      _os_log_impl(&_mh_execute_header, v20, v21, "----- CREDENTIAL IDENTIFIER -----> %s", v28, 0xCu);
      sub_10000BB78(v29);

      v47(v24, v25);
    }

    else
    {

      v23(v24, v25);
    }

    v30 = v1[75];
    defaultLogger()();
    v31 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      v35 = IdentityProofingConfiguration.supplementalProvisioningData.getter();
      if (v36 >> 60 == 15)
      {
        v37 = 0;
      }

      else
      {
        sub_10000BD94(v35, v36);
        v37 = 1;
      }

      v38 = v1[75];
      *(v34 + 4) = v37;

      _os_log_impl(&_mh_execute_header, v32, v33, "supplementalProvisioningData exists in configuration %{BOOL}d", v34, 8u);
    }

    else
    {

      v32 = v1[75];
    }

    v39 = v1[102];
    v40 = v1[98];
    v41 = v1[96];
    v42 = v1[84];

    v39(v40, v41);
    v1[113] = *(v42 + 56);

    v43 = IdentityProofingConfiguration.documentType.getter();
    v44 = swift_task_alloc();
    v1[114] = v44;
    *v44 = v1;
    v44[1] = sub_100200F84;
    v45 = v1[76];

    return sub_1002E0570(v45, v43, 0);
  }

  else
  {
    v15 = v1[95];
    v16 = v1[94];
    v17 = v1[93];

    (*(v16 + 104))(v15, enum case for DIPError.Code.learnMoreURLDoesntExist(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10021EA28(v2, type metadata accessor for IdentityProofingStaticWorkflow);
    sub_10000BB78(v1 + 37);

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_100200F84()
{
  *(*v1 + 920) = v0;

  if (v0)
  {

    v2 = sub_100201648;
  }

  else
  {
    v2 = sub_1002010E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1002010E0()
{
  v1 = *(v0 + 672);
  v2 = sub_10000BA08((v0 + 296), *(v0 + 320));
  v72 = *v2;
  v74 = *(*(v1 + 112) + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount);
  v71 = v2[1];

  v73 = IdentityProofingConfiguration.documentType.getter();
  v3 = sub_10000BA08((v0 + 296), *(v0 + 320));
  v4 = type metadata accessor for Workflow(0);
  v5 = v3 + *(v4 + 128);
  v65 = *v5;
  v63 = v5[8];
  v6 = sub_10000BA08((v0 + 296), *(v0 + 320)) + *(v4 + 132);
  v7 = *v6;
  v8 = v6[8];
  v9 = IdentityProofingConfiguration.productIdentifier.getter();
  v69 = v10;
  v70 = v9;
  v11 = IdentityProofingConfiguration.supplementalProvisioningData.getter();
  v13 = v12;
  *(v0 + 928) = v11;
  *(v0 + 936) = v12;
  v67 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
  v68 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  v14 = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage;
  *(v0 + 944) = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage;
  v15 = (v1 + v14);
  v16 = *v15;
  *(v0 + 952) = *v15;
  v17 = v15[1];
  *(v0 + 960) = v17;

  sub_1000363B4(v16, v17);
  Date.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 920);
  v19 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v19 + 54);
  sub_100031B5C(&v19[4], v0 + 16);
  os_unfair_lock_unlock(v19 + 54);
  if (!v18)
  {
    v20 = 2;
    if (!v8)
    {
      v20 = v7;
    }

    v61 = *(v0 + 896);
    v62 = v20;
    v21 = v65;
    if (v63)
    {
      v21 = 0;
    }

    v59 = *(v0 + 888);
    v60 = v21;
    v55 = *(v0 + 856);
    v66 = *(v0 + 848);
    v54 = *(v0 + 840);
    v64 = *(v0 + 832);
    v51 = *(v0 + 824);
    v22 = *(v0 + 720);
    v23 = *(v0 + 712);
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    v26 = *(v0 + 688);
    v45 = v23;
    v58 = *(v0 + 1009);
    v57 = *(v0 + 664);
    v56 = *(v0 + 1008);
    v52 = *(v0 + 648);
    v53 = *(v0 + 656);
    v47 = *(v0 + 632);
    v48 = *(v0 + 640);
    v49 = *(v0 + 616);
    v50 = *(v0 + 624);
    v46 = *(v0 + 608);
    *(v0 + 968) = *(v0 + 72);

    sub_100031918(v0 + 16);
    (*(v25 + 16))(v23, v22, v26);
    v37 = (*(v25 + 80) + 128) & ~*(v25 + 80);
    v43 = (v24 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v27 + 39) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = v11;
    v28 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v28 + 39) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v0 + 976) = v29;
    *(v29 + 2) = v51;
    *(v29 + 3) = v64;
    *(v29 + 4) = v54;
    *(v29 + 5) = v66;
    *(v29 + 6) = v47;
    *(v29 + 7) = v48;
    *(v29 + 8) = v46;
    *(v29 + 9) = v72;
    *(v29 + 10) = v71;
    *(v29 + 11) = v49;
    *(v29 + 12) = v50;
    *(v29 + 13) = v52;
    *(v29 + 14) = v53;
    *(v29 + 15) = v55;
    (*(v25 + 32))(&v29[v37], v45, v26);
    *&v29[v43] = 1;
    *&v29[v42] = v74;
    *&v29[v27] = v73;
    v30 = &v29[(v27 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v30 = v59;
    *(v30 + 1) = v61;
    v30[16] = v56;
    *&v29[v41] = v60;
    *&v29[v39] = v57;
    *&v29[v28] = v62;
    v31 = &v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v31 = v70;
    *(v31 + 1) = v69;
    v31[16] = v58;
    v32 = &v29[v38];
    *v32 = v44;
    v32[1] = v13;
    v33 = &v29[v40];
    *v33 = v68;
    *(v33 + 1) = v67;
    v34 = &v29[(v40 + 23) & 0xFFFFFFFFFFFFFFF8];
    *v34 = v16;
    v34[1] = v17;

    sub_1000363B4(v16, v17);

    sub_1000363B4(v44, v13);
    v35 = swift_allocObject();
    *(v0 + 984) = v35;
    *(v35 + 16) = sub_10021BEB4;
    *(v35 + 24) = v29;

    v36 = swift_task_alloc();
    *(v0 + 992) = v36;
    *v36 = v0;
    v36[1] = sub_100201890;

    AsyncCoreDataContainer.performWrite<A>(_:)(v36, sub_10017F710, v35, &type metadata for () + 8);
  }
}

uint64_t sub_100201648()
{
  v1 = enum case for DIPError.Code.internalError(_:);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v7 = *(v0 + 736);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0;
  swift_errorRetain();
  sub_100203358(v0 + 496);
  sub_10000BE18(v0 + 496, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v3 + 104))(v2, v1, v4);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10021EA28(v7, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78((v0 + 296));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100201890()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {

    v2 = sub_100201C7C;
  }

  else
  {

    v2 = sub_1002019F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002019F8()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);
  v3 = *(v0 + 720);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = (*(v0 + 672) + *(v0 + 944));
  sub_10000BD94(*(v0 + 952), *(v0 + 960));
  sub_10000BD94(v2, v1);
  (*(v4 + 8))(v3, v5);
  v7 = *v6;
  v8 = v6[1];
  *v6 = xmmword_1006BF650;
  sub_10000BD94(v7, v8);
  v9 = IdentityTarget.rawValue.getter();
  v10 = IdentityTarget.rawValue.getter();
  v11 = *(v0 + 848);
  if (v9 == v10)
  {
    v12 = *(v0 + 840);
    v23 = *(v0 + 824);
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);
    v15 = *(v0 + 640);
    v16 = *(v0 + 632);
    v17 = *(v0 + 600);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v14;
    *(v19 + 40) = v23;
    *(v19 + 56) = v12;
    *(v19 + 64) = v11;
    *(v19 + 72) = v17;
    *(v19 + 80) = v16;
    *(v19 + 88) = v15;
    v20 = v17;

    sub_1003E653C(0, 0, v13, &unk_1006DB690, v19);
  }

  else
  {
  }

  sub_10021EA28(*(v0 + 736), type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78((v0 + 296));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100201C7C()
{
  v9 = *(v0 + 952);
  v10 = *(v0 + 960);
  v11 = *(v0 + 928);
  v12 = *(v0 + 936);
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 720);

  v16 = enum case for DIPError.Code.internalError(_:);
  (*(v2 + 104))(v1);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BD94(v9, v10);
  sub_10000BD94(v11, v12);

  (*(v3 + 8))(v14, v13);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v15 = *(v0 + 736);
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0;
  swift_errorRetain();
  sub_100203358(v0 + 496);
  sub_10000BE18(v0 + 496, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v5 + 104))(v4, v16, v6);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10021EA28(v15, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78((v0 + 296));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100201FF8()
{
  sub_10000BB78((v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002020E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v14;
  *(v8 + 184) = v13;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v8 + 208) = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10020226C, 0, 0);
}

uint64_t sub_10020226C(uint64_t a1)
{
  v1[35] = IdentityProofingConfiguration.documentType.getter();
  v2 = IdentityProofingConfiguration.productIdentifier.getter();
  v1[36] = v3;
  v1[37] = v2;
  v4 = swift_task_alloc();
  v1[38] = v4;
  *v4 = v1;
  v4[1] = sub_100202324;

  return sub_1006738C8();
}

uint64_t sub_100202324(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100202424, 0, 0);
}

uint64_t sub_100202424(uint64_t a1)
{
  v39 = v1;
  if (v1[39])
  {
    v37 = v1[39];
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v1[34];
    v7 = v1[30];
    v6 = v1[31];
    if (v4)
    {
      v8 = v1[21];
      v34 = v1[22];
      v10 = v1[19];
      v9 = v1[20];
      v11 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_100141FE4(v10, v9, v38);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_100141FE4(v8, v34, v38);
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityWatchSessionManagementListener saving initial watch proofing session for state: '%s', country: '%s'", v11, 0x16u);
      swift_arrayDestroy();

      v12 = *(v6 + 8);
      v12(v5, v7);
    }

    else
    {

      v12 = *(v6 + 8);
      v12(v5, v7);
    }

    v1[40] = v12;
    v18 = v1[35];
    if (v18 > 3)
    {
      v36 = 0;
    }

    else
    {
      v36 = qword_1006DB8F8[v18];
    }

    v19 = v1[26];
    String.lowercased()();
    String.lowercased()();
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v19, 1, 1, v20);
    v35 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v27 = 0;
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      v28 = v1[26];
      URL._bridgeToObjectiveC()(v26);
      v27 = v29;
      (*(v21 + 8))(v28, v20);
    }

    v30 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v35 country:v22 target:2 credentialIdentifier:v23 status:2 productIdentifier:v24 accountKeyIdentifier:v25 idType:v36 learnMoreURL:v27 proofingErrorMessage:0];
    v1[41] = v30;

    v1[2] = v1;
    v1[3] = sub_100202B24;
    v31 = swift_continuation_init();
    v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_100429100;
    v1[13] = &unk_10080A958;
    v1[14] = v31;
    [v37 updateProofingConfiguration:v30 completion:v1 + 10];

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    (*(v1[28] + 104))(v1[29], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v1[27]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    defaultLogger()();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "IdentityProofingRequestManager failed to store proofing session to watch database: %@", v15, 0xCu);
      sub_10000BE18(v16, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v1[31] + 8))(v1[32], v1[30]);

    v32 = v1[1];

    return v32();
  }
}

uint64_t sub_100202B24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_100202E6C;
  }

  else
  {
    v2 = sub_100202C34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100202C34()
{
  v17 = v0;

  defaultLogger()();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  if (v3)
  {
    v15 = *(v0 + 264);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v14 = *(v0 + 320);
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v16);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100141FE4(v10, v9, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityWatchSessionManagementListener saved watch proofing session for state: '%s', country: '%s'", v11, 0x16u);
    swift_arrayDestroy();

    v14(v15, v8);
  }

  else
  {

    v5(v7, v8);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100202E6C(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[39];
  swift_willThrow();

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingRequestManager failed to store proofing session to watch database: %@", v6, 0xCu);
    sub_10000BE18(v7, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1[31] + 8))(v1[32], v1[30]);

  v9 = v1[1];

  return v9();
}

void sub_10020304C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v33[-v15];
  v17 = swift_projectBox();
  if (a1)
  {
    sub_10057BE48(a3, a4, 1);
    if (!v6 && v23)
    {
      v24 = v23;
      v25 = [v23 createdAt];
      if (v25)
      {
        v26 = v25;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = type metadata accessor for Date();
        (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
      }

      else
      {
        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
      }

      swift_beginAccess();
      sub_1000B2764(v16, v17, &unk_100849400, &unk_1006BFBB0);
      v29 = v24;
      v30 = [v24 manualCheckInterval];
      goto LABEL_15;
    }
  }

  else if ((a1 & 2) != 0)
  {
    sub_10057BE48(a3, a4, 2);
    if (!v6)
    {
      if (v18)
      {
        v19 = v18;
        v20 = [v18 createdAt];
        if (v20)
        {
          v21 = v20;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = type metadata accessor for Date();
          (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
        }

        else
        {
          v31 = type metadata accessor for Date();
          (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
        }

        swift_beginAccess();
        sub_1000B2764(v14, v17, &unk_100849400, &unk_1006BFBB0);
        v29 = v19;
        v30 = [v19 manualCheckInterval];
LABEL_15:
        v32 = v30;

        swift_beginAccess();
        *(a6 + 16) = v32;
        *(a6 + 24) = 0;
      }
    }
  }
}

uint64_t sub_100203358(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.PropertyKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C9C0(_swiftEmptyArrayStorage);
  sub_10000BBC4(a1, &v44, &qword_10083D0A0, &qword_1006DAFC0);
  if (v45)
  {
    sub_10001F358(&v44, &v47);
    v8 = *(v4 + 104);
    v8(v6, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v9 = sub_10000BA08(&v47, v48);
    v10 = *v9;
    v11 = v9[1];
    v45 = &type metadata for String;
    v46 = &protocol witness table for String;
    *&v44 = v10;
    *(&v44 + 1) = v11;
    sub_10001F358(&v44, v41);

    LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v7;
    v12 = sub_10001F370(v41, v42);
    __chkstk_darwin(v12);
    v14 = (&v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    sub_100658FF4(*v14, v14[1], v6, v11, v43);
    v16 = *(v4 + 8);
    v16(v6, v3);
    sub_10000BB78(v41);
    v17 = v43[0];
    v8(v6, enum case for DIPError.PropertyKey.inoProviderID(_:), v3);
    v18 = sub_10000BA08(&v47, v48);
    v19 = v18[6];
    v20 = v18[7];
    v45 = &type metadata for String;
    v46 = &protocol witness table for String;
    *&v44 = v19;
    *(&v44 + 1) = v20;
    sub_10001F358(&v44, v41);

    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v17;
    v21 = sub_10001F370(v41, v42);
    __chkstk_darwin(v21);
    v23 = (&v41[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_100658FF4(*v23, v23[1], v6, v20, v43);
    v16(v6, v3);
    sub_10000BB78(v41);
    v7 = v43[0];
  }

  else
  {
    sub_10000BE18(&v44, &qword_10083D0A0, &qword_1006DAFC0);
    v25 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId + 8);
    if (v25)
    {
      v26 = *(v1 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId);
      (*(v4 + 104))(v6, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
      v48 = &type metadata for String;
      v49 = &protocol witness table for String;
      *&v47 = v26;
      *(&v47 + 1) = v25;
      sub_10001F358(&v47, &v44);

      LOBYTE(v26) = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v7;
      v27 = sub_10001F370(&v44, v45);
      __chkstk_darwin(v27);
      v29 = (&v41[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29);
      sub_100658FF4(*v29, v29[1], v6, v26, v41);
      (*(v4 + 8))(v6, v3);
      sub_10000BB78(&v44);
      return v41[0];
    }

    v32 = *(v1 + 112);
    swift_beginAccess();
    sub_10000BBC4(v32 + 144, &v44, &qword_10083D0A0, &qword_1006DAFC0);
    if (!v45)
    {
      sub_10000BE18(&v44, &qword_10083D0A0, &qword_1006DAFC0);
      return v7;
    }

    sub_10001F358(&v44, &v47);
    (*(v4 + 104))(v6, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v33 = sub_10000BA08(&v47, v48);
    v34 = *v33;
    v35 = v33[1];
    v45 = &type metadata for String;
    v46 = &protocol witness table for String;
    *&v44 = v34;
    *(&v44 + 1) = v35;
    sub_10001F358(&v44, v41);

    LOBYTE(v35) = swift_isUniquelyReferenced_nonNull_native();
    v40 = v7;
    v36 = sub_10001F370(v41, v42);
    __chkstk_darwin(v36);
    v38 = (&v41[-1] - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    sub_100658FF4(*v38, v38[1], v6, v35, &v40);
    (*(v4 + 8))(v6, v3);
    sub_10000BB78(v41);
    v7 = v40;
  }

  sub_10000BB78(&v47);
  return v7;
}

uint64_t sub_100203A18(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100203B64, 0, 0);
}

uint64_t sub_100203B64()
{
  v0[11] = *(v0[3] + 112);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_100203C1C;
  v3 = v0[10];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_100203C1C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1002043A4;
  }

  else
  {

    v2 = sub_100203D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100203D38()
{
  v1 = v0[10];
  v0[14] = *(v0[3] + 32);
  v2 = *(v1 + 64);

  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100203E04;
  v5 = v0[9];

  return sub_1002A77FC(v5, v2, v3);
}

uint64_t sub_100203E04()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100204300;
  }

  else
  {
    v2 = sub_100203F18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100203F18()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10021E908(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    sub_10021EA28(*(v0 + 80), type metadata accessor for IdentityProofingStaticWorkflow);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    if (*(v0 + 136))
    {
      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "User has opted to wait for wifi. Show Waiting for Wifi UI", v12, 2u);
      }

      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      v15 = *(v0 + 32);

      (*(v14 + 8))(v13, v15);
    }

    v16 = *(v0 + 80);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006DAE90;
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v17 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_10000B8B8(v5, v7);
    IdentityProofingConfiguration.documentType.getter();
    v19 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v20 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    sub_10000B90C(v5, v7);
    sub_10021EA28(v16, type metadata accessor for IdentityProofingStaticWorkflow);

    v21 = *(v0 + 8);

    return v21(v20);
  }
}

uint64_t sub_100204300()
{

  sub_10021EA28(*(v0 + 80), type metadata accessor for IdentityProofingStaticWorkflow);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002043A4()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_10020442C(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  sub_1002E22CC(v8, a1);

  v9 = IdentityProofingActionStatus.rawValue.getter();
  v10 = IdentityProofingActionStatus.rawValue.getter();
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v16 = v4;
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 == v10;
    v4 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "isPerformingLivenessStepUp -> %{BOOL}d", v13, 8u);
  }

  (*(v5 + 8))(v7, v4);
  return v9 == v10;
}

void sub_1002045FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = IdentityProofingConfiguration.documentType.getter();
  v13 = String.lowercased()();
  swift_beginAccess();
  if (*(a5 + 16) == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  sub_10057C320(v12, v13._countAndFlagsBits, v13._object, v14, 0, 0);
  if (v6)
  {
LABEL_5:

    return;
  }

  v16 = v15;

  if (v16)
  {
    v17 = [v16 proofingSessionID];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      LOBYTE(v18) = [v16 didAttemptComboProofing];
      if ((v18 & 1) == 0)
      {
        swift_beginAccess();
        *(a5 + 16) = 1;
      }

      v22 = v24;
      swift_beginAccess();
      *(v22 + 16) = v19;
      *(v22 + 24) = v21;
      goto LABEL_5;
    }

    (*(v9 + 104))(v11, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v9 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_100204A00(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = type metadata accessor for Logger();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100204AC4, 0, 0);
}

uint64_t sub_100204AC4()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v0[35] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[36] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_allocObject();
  v0[37] = v6;
  *(v6 + 16) = &unk_1006DB670;
  *(v6 + 24) = v5;
  v7 = v4;

  v8 = swift_task_alloc();
  v0[38] = v8;
  v9 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v8 = v0;
  v8[1] = sub_100204CB0;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 27, &unk_1006DB680, v6, v9);
}

uint64_t sub_100204CB0()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100204E20, 0, 0);
  }

  else
  {

    v3 = v2[27];
    v4 = v2[28];

    v5 = v2[1];

    return v5(v3, v4);
  }
}

uint64_t sub_100204E20()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);
  v6 = *(v4 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  v5 = *(v4 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);

  v7 = v0[1];

  return v7(v6, v5);
}

uint64_t sub_100204F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100204FF4, 0, 0);
}

uint64_t sub_100204FF4()
{
  v1 = v0[10];
  v2 = v0[8];
  v15 = v0[9];
  v16 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = swift_allocObject();
  v0[12] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_allocObject();
  v0[13] = v7;
  *(v7 + 16) = sub_10021BC64;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);
  v10 = v4;

  v9(v16, v8, v15);

  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v11 = v0;
  v11[1] = sub_100205190;
  v13 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_10021BCBC, v7, v12);
}

uint64_t sub_100205190()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    return _swift_task_switch(sub_100205348, 0, 0);
  }

  else
  {
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v5 = *(v2 + 72);
    v6 = *(v2 + 32);

    (*(v4 + 8))(v3, v5);
    *v6 = *(v2 + 16);

    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_100205348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002053B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v6 = type metadata accessor for Logger();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = IdentityProofingConfiguration.state.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v43 = v11;
    v16 = IdentityProofingConfiguration.country.getter();
    if (v17)
    {
      if (a1 == 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      v19 = sub_100578AD0(v14, v15, v16, v17, v18);
      if (v3)
      {
      }

      v28 = v19;

      if (v28 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v46;
      v29 = v43;
      if (!result)
      {

        goto LABEL_10;
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v30 = *(v28 + 32);
      }

      v31 = v30;

      v32 = [v31 analyticsSessionID];

      if (v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        defaultLogger()();

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v47 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_100141FE4(v33, v35, &v47);
          _os_log_impl(&_mh_execute_header, v36, v37, "fetchAnalyticsSessionID returning EXISTING id %s", v38, 0xCu);
          sub_10000BB78(v39);
        }

        (*(v44 + 8))(v29, v45);
        v40 = (v46 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
        *v40 = v33;
        v40[1] = v35;

        *a3 = v33;
        a3[1] = v35;
        return result;
      }
    }

    else
    {
    }
  }

  v21 = v46;
LABEL_10:
  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v47 = v25;
    *v24 = 136315138;
    if (*(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8))
    {
      v26 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
      v27 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
    }

    else
    {
      v27 = 0xE300000000000000;
      v26 = 7104878;
    }

    v41 = sub_100141FE4(v26, v27, &v47);

    *(v24 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v22, v23, "fetchAnalyticsSessionID returning NEW id %s", v24, 0xCu);
    sub_10000BB78(v25);

    (*(v44 + 8))(v9, v45);
    v21 = v46;
  }

  else
  {

    (*(v44 + 8))(v9, v45);
  }

  v42 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
  *a3 = *(v21 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  a3[1] = v42;
}

uint64_t sub_100205870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  v7 = type metadata accessor for Logger();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100205938, 0, 0);
}

uint64_t sub_100205938()
{
  v27 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v25 = v0[2];
  v26 = v2;

  v3._countAndFlagsBits = 0x632D73736F72632DLL;
  v3._object = 0xEC0000006B636568;
  String.append(_:)(v3);
  v4 = v25;
  v5 = v26;
  v0[10] = v26;
  v6 = *(*(v1 + 40) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v0[11] = v6;
  v6;
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];
  if (v9)
  {
    v24 = v5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    v15 = IdentityTarget.debugDescription.getter();
    v23 = v11;
    v17 = v4;
    v18 = sub_100141FE4(v15, v16, &v25);

    *(v13 + 4) = v18;
    v4 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "storePIIHash called for %{public}s", v13, 0xCu);
    sub_10000BB78(v14);

    v5 = v24;

    (*(v10 + 8))(v23, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_100205B88;
  v20 = v0[4];
  v21 = v0[5];

  return sub_10067EF30(v4, v5, v20, v21);
}

uint64_t sub_100205B88()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id *sub_100205CD4()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data, &qword_10083D6A8, &qword_1006DB710);

  sub_10000BD94(*(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage), *(v0 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage + 8));

  return v0;
}

uint64_t sub_100205E48()
{
  sub_100205CD4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingRequestManager(uint64_t a1)
{
  result = qword_10083D740;
  if (!qword_10083D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100205EF4(uint64_t a1)
{
  sub_1001D07C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10020601C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F344(*a1);
  *a2 = result;
  return result;
}

void sub_10020604C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656369766564;
  v5 = 0xEB0000000043464ELL;
  v6 = 0x74726F7073736170;
  if (v2 != 6)
  {
    v6 = 0x6E656B6F54696970;
    v5 = 0xE800000000000000;
  }

  v7 = 0x80000001006FA3E0;
  v8 = 0x74726F7073736170;
  if (v2 == 4)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xEB000000005A524DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000064657372;
  v10 = 0xD000000000000017;
  if (v2 == 2)
  {
    v10 = 0x6150373134666470;
  }

  else
  {
    v9 = 0x80000001006FA3C0;
  }

  if (*v1)
  {
    v4 = 0x6152373134666470;
    v3 = 0xE900000000000077;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100206178(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();

  return _swift_task_switch(sub_1002062A4, 0, 0);
}

uint64_t sub_1002062A4(uint64_t a1)
{
  v41 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[57];
  v6 = v1[54];
  v7 = v1[55];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136446210;
    v10 = IdentityTarget.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v40);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "createCredentialIdentifier called for %{public}s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[58] = v13;
  v14 = v1[50];
  v15 = [objc_allocWithZone(DCCredentialOptions) init];
  v16 = v15;
  v1[59] = v15;
  v17 = *(v14 + 16);
  if (!v17)
  {
    [v15 setDeleteInactiveKeysAfterDays:60];
LABEL_12:
    v32 = 60;
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_10000BBC4(v17 + 144, (v1 + 28), &qword_10083D0A0, &qword_1006DAFC0);
  v18 = v1[31];
  if (!v18)
  {
    sub_10000BE18((v1 + 28), &qword_10083D0A0, &qword_1006DAFC0);
    goto LABEL_9;
  }

  v19 = sub_10000BA08(v1 + 28, v1[31]);
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  sub_10000BE18((v1 + 28), &qword_10083D0A0, &qword_1006DAFC0);
  v22 = v21 + *(type metadata accessor for Workflow(0) + 140);
  v23 = *v22;
  v24 = *(v22 + 8);
  (*(v20 + 8))(v21, v18);

  if (v24)
  {
LABEL_9:
    v23 = 60;
  }

  [v16 setDeleteInactiveKeysAfterDays:{v23, v40}];
  swift_beginAccess();
  sub_10000BBC4(v17 + 144, (v1 + 23), &qword_10083D0A0, &qword_1006DAFC0);
  v25 = v1[26];
  if (v25)
  {
    v26 = sub_10000BA08(v1 + 23, v1[26]);
    v27 = *(v25 - 8);
    v28 = swift_task_alloc();
    (*(v27 + 16))(v28, v26, v25);
    sub_10000BE18((v1 + 23), &qword_10083D0A0, &qword_1006DAFC0);
    v29 = v28 + *(type metadata accessor for Workflow(0) + 136);
    v30 = *v29;
    v31 = *(v29 + 8);
    (*(v27 + 8))(v28, v25);

    if (v31)
    {
      goto LABEL_12;
    }

    v32 = v30;
  }

  else
  {
    sub_10000BE18((v1 + 23), &qword_10083D0A0, &qword_1006DAFC0);
    v32 = 60;
  }

LABEL_15:
  [v16 setDeleteIncompleteCredentialAfterDays:{v32, v40}];
  [v16 setReaderAuthenticationPolicy:1];
  [v16 setPresentmentAuthPolicy:2];
  [v16 setPayloadProtectionPolicy:1];
  if (v17)
  {
    swift_beginAccess();
    sub_10000BBC4(v17 + 144, (v1 + 18), &qword_10083D0A0, &qword_1006DAFC0);
    v33 = v1[21];
    if (v33)
    {
      v34 = sub_10000BA08(v1 + 18, v1[21]);
      v35 = *(v33 - 8);
      v36 = swift_task_alloc();
      (*(v35 + 16))(v36, v34, v33);
      sub_10000BE18((v1 + 18), &qword_10083D0A0, &qword_1006DAFC0);
      v37 = *(v36 + *(type metadata accessor for Workflow(0) + 180));
      (*(v35 + 8))(v36, v33);

      goto LABEL_20;
    }

    sub_10000BE18((v1 + 18), &qword_10083D0A0, &qword_1006DAFC0);
  }

  v37 = 0;
LABEL_20:
  [v16 setIsPIIHashMismatchTerminal:v37 & 1];
  v38 = v16;

  return _swift_task_switch(sub_100206864, 0, 0);
}

uint64_t sub_100206864()
{
  v1 = v0[59];
  v2 = v0[49];
  v3 = String._bridgeToObjectiveC()();
  v0[60] = v3;
  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = sub_1002069B4;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_10080ABD8;
  v0[14] = v4;
  [v2 createCredentialInPartition:v3 options:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002069B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 488) = v4;
  v5 = v2[60];
  v6 = v2[59];
  if (v4)
  {
    swift_willThrow();

    v7 = sub_100206E30;
  }

  else
  {
    v8 = v3[46];
    v3[62] = v3[45];
    v3[63] = v8;

    v7 = sub_100206B10;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100206B10()
{
  v37 = v0;

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 496);
    v3 = *(v0 + 504);
    v33 = *(v0 + 448);
    v34 = *(v0 + 464);
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100141FE4(v4, v3, &v35);
    *(v6 + 12) = 2082;
    v7 = IdentityTarget.debugDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v35);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully generated credential identifier : %s for %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    v34(v33, v5);
  }

  else
  {
    v10 = *(v0 + 464);
    v11 = *(v0 + 448);
    v12 = *(v0 + 432);

    v10(v11, v12);
  }

  v13 = *(v0 + 384);
  if (v13 == 2)
  {
    v23 = *(v0 + 496);
    v22 = *(v0 + 504);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v35 = IdentityTarget.debugDescription.getter();
    v36 = v24;
    v25._object = 0x8000000100706980;
    v25._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v25);
    v26._countAndFlagsBits = v23;
    v26._object = v22;
    String.append(_:)(v26);
    v19 = v35;
    v20 = v36;
    v21 = 0x3239343564643663;
  }

  else
  {
    if (v13 != 1)
    {
      goto LABEL_9;
    }

    v15 = *(v0 + 496);
    v14 = *(v0 + 504);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v35 = IdentityTarget.debugDescription.getter();
    v36 = v16;
    v17._object = 0x8000000100706980;
    v17._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v15;
    v18._object = v14;
    String.append(_:)(v18);
    v19 = v35;
    v20 = v36;
    v21 = 0x3964373436373838;
  }

  v27 = 0xE800000000000000;
  v28 = v20;
  logMilestone(tag:description:)(*&v21, *&v19);

LABEL_9:

  v29 = *(v0 + 8);
  v30 = *(v0 + 496);
  v31 = *(v0 + 504);

  return v29(v30, v31);
}

uint64_t sub_100206E30()
{
  v9 = v0[59];
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  _StringGuts.grow(_:)(59);
  v4._countAndFlagsBits = 0xD000000000000039;
  v4._object = 0x8000000100706900;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  v6 = *(v2 + 104);
  v6(v1, enum case for DIPError.Code.unableToGenerateCredentialIdentifier(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100207100(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_10020722C, 0, 0);
}

uint64_t sub_10020722C(uint64_t a1)
{
  v41 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[39];
  v6 = v1[36];
  v7 = v1[37];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136446210;
    v10 = IdentityTarget.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v40);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "createCredentialIdentifier called for %{public}s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[40] = v13;
  v14 = v1[32];
  v15 = [objc_allocWithZone(DCCredentialOptions) init];
  v16 = v15;
  v1[41] = v15;
  v17 = *(v14 + 16);
  if (!v17)
  {
    [v15 setDeleteInactiveKeysAfterDays:60];
LABEL_12:
    v32 = 60;
    goto LABEL_15;
  }

  swift_beginAccess();
  sub_10000BBC4(v17 + 144, (v1 + 12), &qword_10083D0A0, &qword_1006DAFC0);
  v18 = v1[15];
  if (!v18)
  {
    sub_10000BE18((v1 + 12), &qword_10083D0A0, &qword_1006DAFC0);
    goto LABEL_9;
  }

  v19 = sub_10000BA08(v1 + 12, v1[15]);
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  sub_10000BE18((v1 + 12), &qword_10083D0A0, &qword_1006DAFC0);
  v22 = v21 + *(type metadata accessor for Workflow(0) + 140);
  v23 = *v22;
  v24 = *(v22 + 8);
  (*(v20 + 8))(v21, v18);

  if (v24)
  {
LABEL_9:
    v23 = 60;
  }

  [v16 setDeleteInactiveKeysAfterDays:{v23, v40}];
  swift_beginAccess();
  sub_10000BBC4(v17 + 144, (v1 + 7), &qword_10083D0A0, &qword_1006DAFC0);
  v25 = v1[10];
  if (v25)
  {
    v26 = sub_10000BA08(v1 + 7, v1[10]);
    v27 = *(v25 - 8);
    v28 = swift_task_alloc();
    (*(v27 + 16))(v28, v26, v25);
    sub_10000BE18((v1 + 7), &qword_10083D0A0, &qword_1006DAFC0);
    v29 = v28 + *(type metadata accessor for Workflow(0) + 136);
    v30 = *v29;
    v31 = *(v29 + 8);
    (*(v27 + 8))(v28, v25);

    if (v31)
    {
      goto LABEL_12;
    }

    v32 = v30;
  }

  else
  {
    sub_10000BE18((v1 + 7), &qword_10083D0A0, &qword_1006DAFC0);
    v32 = 60;
  }

LABEL_15:
  [v16 setDeleteIncompleteCredentialAfterDays:{v32, v40}];
  [v16 setReaderAuthenticationPolicy:1];
  [v16 setPresentmentAuthPolicy:2];
  [v16 setPayloadProtectionPolicy:1];
  if (v17)
  {
    swift_beginAccess();
    sub_10000BBC4(v17 + 144, (v1 + 2), &qword_10083D0A0, &qword_1006DAFC0);
    v33 = v1[5];
    if (v33)
    {
      v34 = sub_10000BA08(v1 + 2, v1[5]);
      v35 = *(v33 - 8);
      v36 = swift_task_alloc();
      (*(v35 + 16))(v36, v34, v33);
      sub_10000BE18((v1 + 2), &qword_10083D0A0, &qword_1006DAFC0);
      LOBYTE(v17) = *(v36 + *(type metadata accessor for Workflow(0) + 180));
      (*(v35 + 8))(v36, v33);
    }

    else
    {
      sub_10000BE18((v1 + 2), &qword_10083D0A0, &qword_1006DAFC0);
      LOBYTE(v17) = 0;
    }
  }

  [v16 setIsPIIHashMismatchTerminal:v17 & 1];
  v37 = v16;
  v38 = swift_task_alloc();
  v1[42] = v38;
  *v38 = v1;
  v38[1] = sub_100207838;

  return sub_10067B0EC(0x797469746E656469, 0xE800000000000000, v16);
}

uint64_t sub_100207838(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;

  if (v2)
  {
    v6 = sub_100207C98;
  }

  else
  {
    v6 = sub_100207978;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100207978()
{
  v37 = v0;

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 344);
    v3 = *(v0 + 352);
    v33 = *(v0 + 304);
    v34 = *(v0 + 320);
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100141FE4(v4, v3, &v35);
    *(v6 + 12) = 2082;
    v7 = IdentityTarget.debugDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v35);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully generated credential identifier : %s for %{public}s", v6, 0x16u);
    swift_arrayDestroy();

    v34(v33, v5);
  }

  else
  {
    v10 = *(v0 + 320);
    v11 = *(v0 + 304);
    v12 = *(v0 + 288);

    v10(v11, v12);
  }

  v13 = *(v0 + 240);
  if (v13 == 2)
  {
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v35 = IdentityTarget.debugDescription.getter();
    v36 = v24;
    v25._object = 0x8000000100706980;
    v25._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v25);
    v26._countAndFlagsBits = v23;
    v26._object = v22;
    String.append(_:)(v26);
    v19 = v35;
    v20 = v36;
    v21 = 0x3239343564643663;
  }

  else
  {
    if (v13 != 1)
    {
      goto LABEL_9;
    }

    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v35 = IdentityTarget.debugDescription.getter();
    v36 = v16;
    v17._object = 0x8000000100706980;
    v17._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v17);
    v18._countAndFlagsBits = v15;
    v18._object = v14;
    String.append(_:)(v18);
    v19 = v35;
    v20 = v36;
    v21 = 0x3964373436373838;
  }

  v27 = 0xE800000000000000;
  v28 = v20;
  logMilestone(tag:description:)(*&v21, *&v19);

LABEL_9:

  v29 = *(v0 + 8);
  v30 = *(v0 + 344);
  v31 = *(v0 + 352);

  return v29(v30, v31);
}

uint64_t sub_100207C98()
{
  v9 = v0[41];
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  _StringGuts.grow(_:)(59);
  v4._countAndFlagsBits = 0xD000000000000039;
  v4._object = 0x8000000100706900;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  v6 = *(v2 + 104);
  v6(v1, enum case for DIPError.Code.unableToGenerateCredentialIdentifier(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

unint64_t *sub_100207F68(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100209B00(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_100208004(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10003ADCC(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100165FC0(v15, v4 & 1);
    v10 = sub_10003ADCC(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_10016F53C();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100706DA0;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10003ADCC(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_100165FC0(v31, 1);
        v27 = sub_10003ADCC(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1002083B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
}

uint64_t sub_10020840C(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 32) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v3;
  v5[1] = sub_10020850C;

  return v7(v3 + 16, v4);
}

uint64_t sub_10020850C()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 32) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_10020861C()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10020874C, 0, 0);
}

uint64_t sub_10020874C()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateRecoverableError.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_100208A04;
LABEL_7:

    return sub_1003DA1A4(5000000000000000000, 0, 0, 0, 1);
  }

  v6 = [v1 standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateProvisioningError.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    static Clock<>.continuous.getter();
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_100208D98;
    goto LABEL_7;
  }

  v10 = [v1 standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateIdAlreadyAddedOnTheICloudAccount.getter();
  v12 = NSUserDefaults.internalBool(forKey:)(v11);

  if (v12)
  {
    static Clock<>.continuous.getter();
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_10020912C;
    goto LABEL_7;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100208A04()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100208D0C;
  }

  else
  {
    v5 = sub_100208B74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100208B74()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.topekaInternalServerError(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100208D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100208D98()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1002090A0;
  }

  else
  {
    v5 = sub_100208F08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100208F08()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.provisioningIdentityFailed(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002090A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020912C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100209434;
  }

  else
  {
    v5 = sub_10020929C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10020929C()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.idAlreadyProvisionedOnTheICloudAccount(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100209434()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1002094C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for IdentityDocumentType.Category();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v13 = IdentityProofingConfiguration.state.getter();
    if (!v14)
    {
      (*(v5 + 104))(v7, enum case for DIPError.Code.idStateUnavailable(_:), v4);
      v15 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_11:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v15;
    }
  }

  else
  {
    if (v12 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      (*(v5 + 104))(v7, enum case for DIPError.Code.idTypeUnavailable(_:), v4);
      v15 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      return v15;
    }

    v13 = IdentityProofingConfiguration.country.getter();
    if (!v14)
    {
      (*(v5 + 104))(v7, enum case for DIPError.Code.idCountryUnavailable(_:), v4);
      v15 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_11;
    }
  }

  v16 = v13;
  v17 = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0xE000000000000000;
  type metadata accessor for IdentityProofingDataContext();
  v15 = swift_allocObject();
  v20 = v29;
  sub_10057E28C();
  if (v20)
  {
  }

  else
  {
    v22 = v21;
    v23 = swift_allocObject();
    v24 = v16;
    v25 = v23;
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = v24;
    v23[5] = v17;
    v23[6] = v18;
    v23[7] = v19;

    v26 = a1;

    sub_10057C18C(sub_10021EB70, v25);

    swift_beginAccess();
    v15 = *(v18 + 16);
    swift_beginAccess();
  }

  return v15;
}

unint64_t *sub_100209B00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    __chkstk_darwin(result);
    v19[2] = v25;

    v16 = v26;
    v17 = sub_10035C8E4(sub_1000307C0, v19, v23);
    v26 = v16;

    if (v17)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1003D3DCC(v21, v20, v22, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1003D3DCC(v21, v20, v22, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100209CC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100207F68(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100209B00((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_100209E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 224) = a4;
  *(v6 + 232) = v5;
  *(v6 + 983) = a5;
  *(v6 + 208) = a2;
  *(v6 + 216) = a3;
  *(v6 + 200) = a1;
  sub_100007224(&qword_10083DC38, &unk_1006DB790);
  *(v6 + 240) = swift_task_alloc();
  v7 = type metadata accessor for PassportFields();
  *(v6 + 248) = v7;
  *(v6 + 256) = *(v7 - 8);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 - 8);
  *(v6 + 312) = swift_task_alloc();
  sub_100007224(&qword_10083D6A8, &qword_1006DB710);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = swift_task_alloc();
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_task_alloc();
  *(v6 + 864) = swift_task_alloc();
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  *(v6 + 888) = swift_task_alloc();
  *(v6 + 896) = swift_task_alloc();
  *(v6 + 904) = swift_task_alloc();

  return _swift_task_switch(sub_10020A404, 0, 0);
}

uint64_t sub_10020A404()
{
  v1 = *(*(v0 + 200) + 16);
  *(v0 + 912) = v1;
  v2 = sub_1003C5D2C(0, v1, 0, _swiftEmptyArrayStorage);
  if (!v1)
  {
LABEL_225:

    v401 = *(v0 + 8);

    return v401(v2);
  }

  v3 = 0;
  v426 = (v0 + 968);
  v429 = (v0 + 992);
  v430 = (v0 + 984);
  v427 = (v0 + 976);
  v428 = (v0 + 1000);
  *(v0 + 1008) = enum case for PassportFields.firstName(_:);
  *(v0 + 1012) = enum case for PassportFields.lastName(_:);
  *(v0 + 1016) = enum case for PassportFields.issuer(_:);
  v557 = v0;
  while (1)
  {
    *(v0 + 936) = v2;
    *(v0 + 928) = v3;
    *(v0 + 920) = 0;
    v11 = *(*(v0 + 200) + v3 + 32);
    if (v11 > 4)
    {
      break;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        v31 = *(v0 + 328);
        sub_10000BBC4(*(v0 + 208), v31, &qword_10083D6A8, &qword_1006DB710);
        v32 = type metadata accessor for PDF417Data();
        v33 = v0;
        v34 = *(v32 - 8);
        v35 = (*(v34 + 48))(v31, 1, v32);
        v36 = *(v33 + 328);
        if (v35 == 1)
        {
          sub_10000BE18(*(v33 + 328), &qword_10083D6A8, &qword_1006DB710);
          v541 = 0;
          v547 = 0;
        }

        else
        {
          v96 = PDF417Data.rawData.getter();
          v541 = v97;
          v547 = v96;
          (*(v34 + 8))(v36, v32);
        }

        v98 = *(v557 + 808);
        v99 = *(v557 + 800);
        v100 = type metadata accessor for PDF417ParsedData();
        v101 = *(v100 - 8);
        (*(v101 + 56))(v98, 1, 1, v100);
        sub_10000BBC4(v98, v99, &qword_10083D6A0, &unk_1006DB700);
        v102 = *(v101 + 48);
        v103 = v102(v99, 1, v100);
        v104 = *(v557 + 800);
        if (v103 == 1)
        {
          sub_10000BE18(*(v557 + 800), &qword_10083D6A0, &unk_1006DB700);
          v529 = 0;
          v535 = 0;
        }

        else
        {
          v105 = PDF417ParsedData.firstName.getter();
          v529 = v106;
          v535 = v105;
          (*(v101 + 8))(v104, v100);
        }

        v107 = *(v557 + 792);
        sub_10000BBC4(*(v557 + 808), v107, &qword_10083D6A0, &unk_1006DB700);
        v108 = v102(v107, 1, v100);
        v109 = *(v557 + 792);
        if (v108 == 1)
        {
          sub_10000BE18(*(v557 + 792), &qword_10083D6A0, &unk_1006DB700);
          v518 = 0;
          v523 = 0;
        }

        else
        {
          v110 = PDF417ParsedData.middleName.getter();
          v518 = v111;
          v523 = v110;
          (*(v101 + 8))(v109, v100);
        }

        v112 = *(v557 + 784);
        sub_10000BBC4(*(v557 + 808), v112, &qword_10083D6A0, &unk_1006DB700);
        v113 = v102(v112, 1, v100);
        v114 = *(v557 + 784);
        if (v113 == 1)
        {
          sub_10000BE18(*(v557 + 784), &qword_10083D6A0, &unk_1006DB700);
          v506 = 0;
          v512 = 0;
        }

        else
        {
          v115 = PDF417ParsedData.lastName.getter();
          v506 = v116;
          v512 = v115;
          (*(v101 + 8))(v114, v100);
        }

        v117 = *(v557 + 776);
        sub_10000BBC4(*(v557 + 808), v117, &qword_10083D6A0, &unk_1006DB700);
        v118 = v102(v117, 1, v100);
        v119 = *(v557 + 776);
        if (v118 == 1)
        {
          sub_10000BE18(*(v557 + 776), &qword_10083D6A0, &unk_1006DB700);
          v496 = 0;
          v501 = 0;
        }

        else
        {
          v120 = PDF417ParsedData.street1.getter();
          v496 = v121;
          v501 = v120;
          (*(v101 + 8))(v119, v100);
        }

        v122 = *(v557 + 768);
        sub_10000BBC4(*(v557 + 808), v122, &qword_10083D6A0, &unk_1006DB700);
        v123 = v102(v122, 1, v100);
        v124 = *(v557 + 768);
        if (v123 == 1)
        {
          sub_10000BE18(*(v557 + 768), &qword_10083D6A0, &unk_1006DB700);
          v486 = 0;
          v491 = 0;
        }

        else
        {
          v125 = PDF417ParsedData.street2.getter();
          v486 = v126;
          v491 = v125;
          (*(v101 + 8))(v124, v100);
        }

        v127 = *(v557 + 760);
        sub_10000BBC4(*(v557 + 808), v127, &qword_10083D6A0, &unk_1006DB700);
        v128 = v102(v127, 1, v100);
        v129 = *(v557 + 760);
        if (v128 == 1)
        {
          sub_10000BE18(*(v557 + 760), &qword_10083D6A0, &unk_1006DB700);
          v476 = 0;
          v481 = 0;
        }

        else
        {
          v130 = PDF417ParsedData.city.getter();
          v476 = v131;
          v481 = v130;
          (*(v101 + 8))(v129, v100);
        }

        v132 = *(v557 + 752);
        sub_10000BBC4(*(v557 + 808), v132, &qword_10083D6A0, &unk_1006DB700);
        v133 = v102(v132, 1, v100);
        v134 = *(v557 + 752);
        if (v133 == 1)
        {
          sub_10000BE18(*(v557 + 752), &qword_10083D6A0, &unk_1006DB700);
          v466 = 0;
          v471 = 0;
        }

        else
        {
          v135 = PDF417ParsedData.state.getter();
          v466 = v136;
          v471 = v135;
          (*(v101 + 8))(v134, v100);
        }

        v137 = *(v557 + 744);
        sub_10000BBC4(*(v557 + 808), v137, &qword_10083D6A0, &unk_1006DB700);
        v138 = v102(v137, 1, v100);
        v139 = *(v557 + 744);
        if (v138 == 1)
        {
          sub_10000BE18(*(v557 + 744), &qword_10083D6A0, &unk_1006DB700);
          v456 = 0;
          v461 = 0;
        }

        else
        {
          v140 = PDF417ParsedData.postalCode.getter();
          v456 = v141;
          v461 = v140;
          (*(v101 + 8))(v139, v100);
        }

        v142 = *(v557 + 736);
        sub_10000BBC4(*(v557 + 808), v142, &qword_10083D6A0, &unk_1006DB700);
        v143 = v102(v142, 1, v100);
        v144 = *(v557 + 736);
        if (v143 == 1)
        {
          sub_10000BE18(*(v557 + 736), &qword_10083D6A0, &unk_1006DB700);
          v447 = 0;
          v451 = 0;
        }

        else
        {
          v145 = PDF417ParsedData.country.getter();
          v447 = v146;
          v451 = v145;
          (*(v101 + 8))(v144, v100);
        }

        v147 = *(v557 + 728);
        sub_10000BBC4(*(v557 + 808), v147, &qword_10083D6A0, &unk_1006DB700);
        v148 = v102(v147, 1, v100);
        v149 = *(v557 + 728);
        v150 = v2;
        if (v148 == 1)
        {
          sub_10000BE18(*(v557 + 728), &qword_10083D6A0, &unk_1006DB700);
          v439 = 0;
          v443 = 0;
        }

        else
        {
          v151 = PDF417ParsedData.dob.getter();
          v439 = v152;
          v443 = v151;
          (*(v101 + 8))(v149, v100);
        }

        v153 = *(v557 + 720);
        sub_10000BBC4(*(v557 + 808), v153, &qword_10083D6A0, &unk_1006DB700);
        v154 = v102(v153, 1, v100);
        v155 = *(v557 + 808);
        v156 = *(v557 + 720);
        if (v154 == 1)
        {
          sub_10000BE18(*(v557 + 808), &qword_10083D6A0, &unk_1006DB700);
          sub_10000BE18(v156, &qword_10083D6A0, &unk_1006DB700);
          v157 = 0;
          v158 = 0;
        }

        else
        {
          v157 = PDF417ParsedData.issuer.getter();
          v158 = v159;
          sub_10000BE18(v155, &qword_10083D6A0, &unk_1006DB700);
          (*(v101 + 8))(v156, v100);
        }

        v2 = v150;
        v161 = *(v150 + 2);
        v160 = *(v150 + 3);
        if (v161 >= v160 >> 1)
        {
          v2 = sub_1003C5D2C((v160 > 1), v161 + 1, 1, v150);
        }

        *(v2 + 2) = v161 + 1;
        v8 = &v2[336 * v161];
        v8[32] = 0;
        v162 = *v429;
        *(v8 + 9) = *(v429 + 3);
        *(v8 + 33) = v162;
        *(v8 + 5) = v547;
        *(v8 + 6) = v541;
        v10 = 0uLL;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 15) = 0;
        *(v8 + 16) = v535;
        *(v8 + 17) = v529;
        *(v8 + 18) = v523;
        *(v8 + 19) = v518;
        *(v8 + 20) = v512;
        *(v8 + 21) = v506;
        *(v8 + 22) = v501;
        *(v8 + 23) = v496;
        *(v8 + 24) = v491;
        *(v8 + 25) = v486;
        *(v8 + 26) = v481;
        *(v8 + 27) = v476;
        *(v8 + 28) = v471;
        *(v8 + 29) = v466;
        *(v8 + 30) = v461;
        *(v8 + 31) = v456;
        *(v8 + 32) = v451;
        *(v8 + 33) = v447;
        *(v8 + 34) = v443;
        *(v8 + 35) = v439;
        *(v8 + 36) = v157;
        *(v8 + 37) = v158;
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_9;
        }

        v12 = *(v0 + 320);
        sub_10000BBC4(*(v0 + 208), v12, &qword_10083D6A8, &qword_1006DB710);
        v13 = type metadata accessor for PDF417Data();
        v14 = v0;
        v15 = *(v13 - 8);
        v16 = (*(v15 + 48))(v12, 1, v13);
        v17 = *(v14 + 712);
        v18 = *(v14 + 320);
        v553 = v2;
        if (v16 == 1)
        {
          sub_10000BE18(v18, &qword_10083D6A8, &qword_1006DB710);
          v19 = type metadata accessor for PDF417ParsedData();
          (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
        }

        else
        {
          PDF417Data.parsedData.getter();
          (*(v15 + 8))(v18, v13);
        }

        v163 = *(v557 + 704);
        sub_10000BBC4(*(v557 + 712), v163, &qword_10083D6A0, &unk_1006DB700);
        v164 = type metadata accessor for PDF417ParsedData();
        v165 = *(v164 - 8);
        v166 = *(v165 + 48);
        v167 = v166(v163, 1, v164);
        v168 = *(v557 + 704);
        if (v167 == 1)
        {
          sub_10000BE18(*(v557 + 704), &qword_10083D6A0, &unk_1006DB700);
          v543 = 0;
          v549 = 0;
        }

        else
        {
          v169 = PDF417ParsedData.firstName.getter();
          v543 = v170;
          v549 = v169;
          (*(v165 + 8))(v168, v164);
        }

        v171 = *(v557 + 696);
        sub_10000BBC4(*(v557 + 712), v171, &qword_10083D6A0, &unk_1006DB700);
        v172 = v166(v171, 1, v164);
        v173 = *(v557 + 696);
        if (v172 == 1)
        {
          sub_10000BE18(*(v557 + 696), &qword_10083D6A0, &unk_1006DB700);
          v530 = 0;
          v536 = 0;
        }

        else
        {
          v174 = PDF417ParsedData.middleName.getter();
          v530 = v175;
          v536 = v174;
          (*(v165 + 8))(v173, v164);
        }

        v176 = *(v557 + 688);
        sub_10000BBC4(*(v557 + 712), v176, &qword_10083D6A0, &unk_1006DB700);
        v177 = v166(v176, 1, v164);
        v178 = *(v557 + 688);
        if (v177 == 1)
        {
          sub_10000BE18(*(v557 + 688), &qword_10083D6A0, &unk_1006DB700);
          v519 = 0;
          v524 = 0;
        }

        else
        {
          v179 = PDF417ParsedData.lastName.getter();
          v519 = v180;
          v524 = v179;
          (*(v165 + 8))(v178, v164);
        }

        v181 = *(v557 + 680);
        sub_10000BBC4(*(v557 + 712), v181, &qword_10083D6A0, &unk_1006DB700);
        v182 = v166(v181, 1, v164);
        v183 = *(v557 + 680);
        if (v182 == 1)
        {
          sub_10000BE18(*(v557 + 680), &qword_10083D6A0, &unk_1006DB700);
          v507 = 0;
          v513 = 0;
        }

        else
        {
          v184 = PDF417ParsedData.street1.getter();
          v507 = v185;
          v513 = v184;
          (*(v165 + 8))(v183, v164);
        }

        v186 = *(v557 + 672);
        sub_10000BBC4(*(v557 + 712), v186, &qword_10083D6A0, &unk_1006DB700);
        v187 = v166(v186, 1, v164);
        v188 = *(v557 + 672);
        if (v187 == 1)
        {
          sub_10000BE18(*(v557 + 672), &qword_10083D6A0, &unk_1006DB700);
          v497 = 0;
          v502 = 0;
        }

        else
        {
          v189 = PDF417ParsedData.street2.getter();
          v497 = v190;
          v502 = v189;
          (*(v165 + 8))(v188, v164);
        }

        v191 = *(v557 + 664);
        sub_10000BBC4(*(v557 + 712), v191, &qword_10083D6A0, &unk_1006DB700);
        v192 = v166(v191, 1, v164);
        v193 = *(v557 + 664);
        if (v192 == 1)
        {
          sub_10000BE18(*(v557 + 664), &qword_10083D6A0, &unk_1006DB700);
          v487 = 0;
          v492 = 0;
        }

        else
        {
          v194 = PDF417ParsedData.city.getter();
          v487 = v195;
          v492 = v194;
          (*(v165 + 8))(v193, v164);
        }

        v196 = *(v557 + 656);
        sub_10000BBC4(*(v557 + 712), v196, &qword_10083D6A0, &unk_1006DB700);
        v197 = v166(v196, 1, v164);
        v198 = *(v557 + 656);
        if (v197 == 1)
        {
          sub_10000BE18(*(v557 + 656), &qword_10083D6A0, &unk_1006DB700);
          v477 = 0;
          v482 = 0;
        }

        else
        {
          v199 = PDF417ParsedData.state.getter();
          v477 = v200;
          v482 = v199;
          (*(v165 + 8))(v198, v164);
        }

        v201 = *(v557 + 648);
        sub_10000BBC4(*(v557 + 712), v201, &qword_10083D6A0, &unk_1006DB700);
        v202 = v166(v201, 1, v164);
        v203 = *(v557 + 648);
        if (v202 == 1)
        {
          sub_10000BE18(*(v557 + 648), &qword_10083D6A0, &unk_1006DB700);
          v467 = 0;
          v472 = 0;
        }

        else
        {
          v204 = PDF417ParsedData.postalCode.getter();
          v467 = v205;
          v472 = v204;
          (*(v165 + 8))(v203, v164);
        }

        v206 = *(v557 + 640);
        sub_10000BBC4(*(v557 + 712), v206, &qword_10083D6A0, &unk_1006DB700);
        v207 = v166(v206, 1, v164);
        v208 = *(v557 + 640);
        if (v207 == 1)
        {
          sub_10000BE18(*(v557 + 640), &qword_10083D6A0, &unk_1006DB700);
          v457 = 0;
          v462 = 0;
        }

        else
        {
          v209 = PDF417ParsedData.country.getter();
          v457 = v210;
          v462 = v209;
          (*(v165 + 8))(v208, v164);
        }

        v211 = *(v557 + 632);
        sub_10000BBC4(*(v557 + 712), v211, &qword_10083D6A0, &unk_1006DB700);
        v212 = v166(v211, 1, v164);
        v213 = *(v557 + 632);
        if (v212 == 1)
        {
          sub_10000BE18(*(v557 + 632), &qword_10083D6A0, &unk_1006DB700);
          v452 = 0;
          v214 = 0;
        }

        else
        {
          v452 = PDF417ParsedData.dob.getter();
          v214 = v215;
          (*(v165 + 8))(v213, v164);
        }

        v216 = *(v557 + 624);
        sub_10000BBC4(*(v557 + 712), v216, &qword_10083D6A0, &unk_1006DB700);
        v217 = v166(v216, 1, v164);
        v218 = *(v557 + 712);
        v219 = *(v557 + 624);
        if (v217 == 1)
        {
          sub_10000BE18(*(v557 + 712), &qword_10083D6A0, &unk_1006DB700);
          sub_10000BE18(v219, &qword_10083D6A0, &unk_1006DB700);
          v220 = 0;
          v221 = 0;
        }

        else
        {
          v220 = PDF417ParsedData.issuer.getter();
          v221 = v222;
          sub_10000BE18(v218, &qword_10083D6A0, &unk_1006DB700);
          (*(v165 + 8))(v219, v164);
        }

        v2 = v553;
        v224 = *(v553 + 2);
        v223 = *(v553 + 3);
        if (v224 >= v223 >> 1)
        {
          v2 = sub_1003C5D2C((v223 > 1), v224 + 1, 1, v553);
        }

        *(v2 + 2) = v224 + 1;
        v8 = &v2[336 * v224];
        v8[32] = 0;
        v225 = *v430;
        *(v8 + 9) = *(v430 + 3);
        *(v8 + 33) = v225;
        v10 = 0uLL;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 15) = 0;
        *(v8 + 16) = v549;
        *(v8 + 17) = v543;
        *(v8 + 18) = v536;
        *(v8 + 19) = v530;
        *(v8 + 20) = v524;
        *(v8 + 21) = v519;
        *(v8 + 22) = v513;
        *(v8 + 23) = v507;
        *(v8 + 24) = v502;
        *(v8 + 25) = v497;
        *(v8 + 26) = v492;
        *(v8 + 27) = v487;
        *(v8 + 28) = v482;
        *(v8 + 29) = v477;
        *(v8 + 30) = v472;
        *(v8 + 31) = v467;
        *(v8 + 32) = v462;
        *(v8 + 33) = v457;
        *(v8 + 34) = v452;
        *(v8 + 35) = v214;
        *(v8 + 36) = v220;
        *(v8 + 37) = v221;
      }
    }

    else
    {
      v554 = v2;
      v23 = *(v0 + 904);
      v24 = *(v0 + 896);
      v25 = *(v557 + 224);
      v26 = type metadata accessor for PDF417ParsedData();
      v27 = *(v26 - 8);
      (*(v27 + 56))(v23, 1, 1, v26);
      OS_dispatch_group.wait()();
      v546 = v25[14];

      OS_dispatch_group.wait()();
      v533 = v25[10];
      v540 = v25[11];

      OS_dispatch_group.wait()();
      v522 = v25[15];
      v527 = v25[16];

      OS_dispatch_group.wait()();
      v511 = v25[17];
      v517 = v25[18];

      OS_dispatch_group.wait()();
      v28 = v25[13];
      v500 = v25[12];
      sub_10000BBC4(v23, v24, &qword_10083D6A0, &unk_1006DB700);
      v29 = *(v27 + 48);
      LODWORD(v24) = v29(v24, 1, v26);
      v505 = v28;

      v30 = *(v557 + 896);
      if (v24 == 1)
      {
        sub_10000BE18(*(v557 + 896), &qword_10083D6A0, &unk_1006DB700);
        v490 = 0;
        v495 = 0;
      }

      else
      {
        v45 = PDF417ParsedData.firstName.getter();
        v490 = v46;
        v495 = v45;
        (*(v27 + 8))(v30, v26);
      }

      v47 = *(v557 + 888);
      sub_10000BBC4(*(v557 + 904), v47, &qword_10083D6A0, &unk_1006DB700);
      v48 = v29(v47, 1, v26);
      v49 = *(v557 + 888);
      if (v48 == 1)
      {
        sub_10000BE18(*(v557 + 888), &qword_10083D6A0, &unk_1006DB700);
        v480 = 0;
        v485 = 0;
      }

      else
      {
        v50 = PDF417ParsedData.middleName.getter();
        v480 = v51;
        v485 = v50;
        (*(v27 + 8))(v49, v26);
      }

      v52 = *(v557 + 880);
      sub_10000BBC4(*(v557 + 904), v52, &qword_10083D6A0, &unk_1006DB700);
      v53 = v29(v52, 1, v26);
      v54 = *(v557 + 880);
      if (v53 == 1)
      {
        sub_10000BE18(*(v557 + 880), &qword_10083D6A0, &unk_1006DB700);
        v470 = 0;
        v475 = 0;
      }

      else
      {
        v55 = PDF417ParsedData.lastName.getter();
        v470 = v56;
        v475 = v55;
        (*(v27 + 8))(v54, v26);
      }

      v57 = *(v557 + 872);
      sub_10000BBC4(*(v557 + 904), v57, &qword_10083D6A0, &unk_1006DB700);
      v58 = v29(v57, 1, v26);
      v59 = *(v557 + 872);
      if (v58 == 1)
      {
        sub_10000BE18(*(v557 + 872), &qword_10083D6A0, &unk_1006DB700);
        v465 = 0;
        v460 = 0;
      }

      else
      {
        v465 = PDF417ParsedData.street1.getter();
        v460 = v60;
        (*(v27 + 8))(v59, v26);
      }

      v61 = *(v557 + 864);
      sub_10000BBC4(*(v557 + 904), v61, &qword_10083D6A0, &unk_1006DB700);
      v62 = v29(v61, 1, v26);
      v63 = *(v557 + 864);
      if (v62 == 1)
      {
        sub_10000BE18(*(v557 + 864), &qword_10083D6A0, &unk_1006DB700);
        v450 = 0;
        v455 = 0;
      }

      else
      {
        v64 = PDF417ParsedData.street2.getter();
        v450 = v65;
        v455 = v64;
        (*(v27 + 8))(v63, v26);
      }

      v66 = *(v557 + 856);
      sub_10000BBC4(*(v557 + 904), v66, &qword_10083D6A0, &unk_1006DB700);
      v67 = v29(v66, 1, v26);
      v68 = *(v557 + 856);
      if (v67 == 1)
      {
        sub_10000BE18(*(v557 + 856), &qword_10083D6A0, &unk_1006DB700);
        v442 = 0;
        v446 = 0;
      }

      else
      {
        v69 = PDF417ParsedData.city.getter();
        v442 = v70;
        v446 = v69;
        (*(v27 + 8))(v68, v26);
      }

      v71 = *(v557 + 848);
      sub_10000BBC4(*(v557 + 904), v71, &qword_10083D6A0, &unk_1006DB700);
      v72 = v29(v71, 1, v26);
      v73 = *(v557 + 848);
      if (v72 == 1)
      {
        sub_10000BE18(*(v557 + 848), &qword_10083D6A0, &unk_1006DB700);
        v436 = 0;
        v438 = 0;
      }

      else
      {
        v74 = PDF417ParsedData.state.getter();
        v436 = v75;
        v438 = v74;
        (*(v27 + 8))(v73, v26);
      }

      v76 = *(v557 + 840);
      sub_10000BBC4(*(v557 + 904), v76, &qword_10083D6A0, &unk_1006DB700);
      v77 = v29(v76, 1, v26);
      v78 = *(v557 + 840);
      if (v77 == 1)
      {
        sub_10000BE18(*(v557 + 840), &qword_10083D6A0, &unk_1006DB700);
        v434 = 0;
        v435 = 0;
      }

      else
      {
        v79 = PDF417ParsedData.postalCode.getter();
        v434 = v80;
        v435 = v79;
        (*(v27 + 8))(v78, v26);
      }

      v81 = *(v557 + 832);
      sub_10000BBC4(*(v557 + 904), v81, &qword_10083D6A0, &unk_1006DB700);
      v82 = v29(v81, 1, v26);
      v83 = *(v557 + 832);
      if (v82 == 1)
      {
        sub_10000BE18(*(v557 + 832), &qword_10083D6A0, &unk_1006DB700);
        v432 = 0;
        v433 = 0;
      }

      else
      {
        v84 = PDF417ParsedData.country.getter();
        v432 = v85;
        v433 = v84;
        (*(v27 + 8))(v83, v26);
      }

      v86 = *(v557 + 824);
      sub_10000BBC4(*(v557 + 904), v86, &qword_10083D6A0, &unk_1006DB700);
      v87 = v29(v86, 1, v26);
      v88 = *(v557 + 824);
      if (v87 == 1)
      {
        sub_10000BE18(*(v557 + 824), &qword_10083D6A0, &unk_1006DB700);
        v431 = 0;
        v89 = 0;
      }

      else
      {
        v431 = PDF417ParsedData.dob.getter();
        v89 = v90;
        (*(v27 + 8))(v88, v26);
      }

      v91 = *(v557 + 816);
      sub_10000BBC4(*(v557 + 904), v91, &qword_10083D6A0, &unk_1006DB700);
      v92 = v29(v91, 1, v26);
      v93 = *(v557 + 904);
      v94 = *(v557 + 816);
      if (v92 == 1)
      {
        sub_10000BE18(*(v557 + 904), &qword_10083D6A0, &unk_1006DB700);
        sub_10000BE18(v94, &qword_10083D6A0, &unk_1006DB700);
        v4 = 0;
        v5 = 0;
      }

      else
      {
        v4 = PDF417ParsedData.issuer.getter();
        v5 = v95;
        sub_10000BE18(v93, &qword_10083D6A0, &unk_1006DB700);
        (*(v27 + 8))(v94, v26);
      }

      v2 = v554;
      v7 = *(v554 + 2);
      v6 = *(v554 + 3);
      if (v7 >= v6 >> 1)
      {
        v2 = sub_1003C5D2C((v6 > 1), v7 + 1, 1, v554);
      }

      *(v2 + 2) = v7 + 1;
      v8 = &v2[336 * v7];
      v8[32] = 2;
      v9 = *v428;
      *(v8 + 9) = *(v428 + 3);
      *(v8 + 33) = v9;
      *(v8 + 6) = 0;
      *(v8 + 7) = v546;
      *(v8 + 5) = 0;
      *(v8 + 8) = v533;
      *(v8 + 9) = v540;
      *(v8 + 10) = v522;
      *(v8 + 11) = v527;
      *(v8 + 12) = v511;
      *(v8 + 13) = v517;
      *(v8 + 14) = v500;
      *(v8 + 15) = v505;
      *(v8 + 16) = v495;
      *(v8 + 17) = v490;
      *(v8 + 18) = v485;
      *(v8 + 19) = v480;
      *(v8 + 20) = v475;
      *(v8 + 21) = v470;
      *(v8 + 22) = v465;
      *(v8 + 23) = v460;
      *(v8 + 24) = v455;
      *(v8 + 25) = v450;
      *(v8 + 26) = v446;
      *(v8 + 27) = v442;
      *(v8 + 28) = v438;
      *(v8 + 29) = v436;
      *(v8 + 30) = v435;
      *(v8 + 31) = v434;
      *(v8 + 32) = v433;
      *(v8 + 33) = v432;
      *(v8 + 34) = v431;
      *(v8 + 35) = v89;
      *(v8 + 36) = v4;
      *(v8 + 37) = v5;
      v10 = 0uLL;
    }

    *(v8 + 21) = v10;
    *(v8 + 22) = v10;
    *(v8 + 19) = v10;
    *(v8 + 20) = v10;
LABEL_8:
    v0 = v557;
LABEL_9:
    v3 = *(v0 + 928) + 1;
    if (v3 == *(v0 + 912))
    {
      goto LABEL_225;
    }
  }

  if (v11 == 5)
  {
    v37 = (*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
    v38 = v37[1];
    if (!v38)
    {
      v409 = *(v0 + 304);
      v408 = *(v0 + 312);
      v410 = *(v0 + 296);

      (*(v409 + 104))(v408, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v410);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_235;
    }

    v555 = v2;
    v542 = *v37;
    v39 = *(v0 + 616);
    v40 = *(v0 + 608);
    v41 = type metadata accessor for PDF417ParsedData();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v39, 1, 1, v41);
    sub_10000BBC4(v39, v40, &qword_10083D6A0, &unk_1006DB700);
    v43 = *(v42 + 48);
    LODWORD(v40) = v43(v40, 1, v41);
    v548 = v38;

    v44 = *(v0 + 608);
    if (v40 == 1)
    {
      sub_10000BE18(*(v0 + 608), &qword_10083D6A0, &unk_1006DB700);
      v528 = 0;
      v534 = 0;
    }

    else
    {
      v266 = PDF417ParsedData.firstName.getter();
      v528 = v267;
      v534 = v266;
      (*(v42 + 8))(v44, v41);
    }

    v268 = v42;
    v269 = *(v0 + 600);
    sub_10000BBC4(*(v0 + 616), v269, &qword_10083D6A0, &unk_1006DB700);
    v270 = v43(v269, 1, v41);
    v271 = *(v0 + 600);
    if (v270 == 1)
    {
      sub_10000BE18(*(v0 + 600), &qword_10083D6A0, &unk_1006DB700);
      v520 = 0;
      v525 = 0;
    }

    else
    {
      v272 = PDF417ParsedData.middleName.getter();
      v520 = v273;
      v525 = v272;
      (*(v42 + 8))(v271, v41);
    }

    v274 = *(v0 + 592);
    sub_10000BBC4(*(v0 + 616), v274, &qword_10083D6A0, &unk_1006DB700);
    v275 = v43(v274, 1, v41);
    v276 = *(v0 + 592);
    if (v275 == 1)
    {
      sub_10000BE18(*(v0 + 592), &qword_10083D6A0, &unk_1006DB700);
      v509 = 0;
      v515 = 0;
    }

    else
    {
      v277 = PDF417ParsedData.lastName.getter();
      v509 = v278;
      v515 = v277;
      (*(v42 + 8))(v276, v41);
    }

    v279 = *(v0 + 584);
    sub_10000BBC4(*(v0 + 616), v279, &qword_10083D6A0, &unk_1006DB700);
    v280 = v43(v279, 1, v41);
    v281 = *(v0 + 584);
    if (v280 == 1)
    {
      sub_10000BE18(*(v0 + 584), &qword_10083D6A0, &unk_1006DB700);
      v498 = 0;
      v503 = 0;
    }

    else
    {
      v282 = PDF417ParsedData.street1.getter();
      v498 = v283;
      v503 = v282;
      (*(v42 + 8))(v281, v41);
    }

    v284 = *(v0 + 576);
    sub_10000BBC4(*(v0 + 616), v284, &qword_10083D6A0, &unk_1006DB700);
    v285 = v43(v284, 1, v41);
    v286 = *(v0 + 576);
    if (v285 == 1)
    {
      sub_10000BE18(*(v0 + 576), &qword_10083D6A0, &unk_1006DB700);
      v488 = 0;
      v493 = 0;
    }

    else
    {
      v287 = PDF417ParsedData.street2.getter();
      v488 = v288;
      v493 = v287;
      (*(v42 + 8))(v286, v41);
    }

    v289 = *(v0 + 568);
    sub_10000BBC4(*(v0 + 616), v289, &qword_10083D6A0, &unk_1006DB700);
    v290 = v43(v289, 1, v41);
    v291 = *(v0 + 568);
    if (v290 == 1)
    {
      sub_10000BE18(*(v0 + 568), &qword_10083D6A0, &unk_1006DB700);
      v478 = 0;
      v483 = 0;
    }

    else
    {
      v292 = PDF417ParsedData.city.getter();
      v478 = v293;
      v483 = v292;
      (*(v42 + 8))(v291, v41);
    }

    v294 = *(v0 + 560);
    sub_10000BBC4(*(v0 + 616), v294, &qword_10083D6A0, &unk_1006DB700);
    v295 = v43(v294, 1, v41);
    v296 = *(v0 + 560);
    if (v295 == 1)
    {
      sub_10000BE18(*(v0 + 560), &qword_10083D6A0, &unk_1006DB700);
      v468 = 0;
      v473 = 0;
    }

    else
    {
      v297 = PDF417ParsedData.state.getter();
      v468 = v298;
      v473 = v297;
      (*(v42 + 8))(v296, v41);
    }

    v299 = *(v0 + 552);
    sub_10000BBC4(*(v0 + 616), v299, &qword_10083D6A0, &unk_1006DB700);
    v300 = v43(v299, 1, v41);
    v301 = *(v0 + 552);
    if (v300 == 1)
    {
      sub_10000BE18(*(v0 + 552), &qword_10083D6A0, &unk_1006DB700);
      v458 = 0;
      v463 = 0;
    }

    else
    {
      v302 = PDF417ParsedData.postalCode.getter();
      v458 = v303;
      v463 = v302;
      (*(v42 + 8))(v301, v41);
    }

    v304 = *(v0 + 544);
    sub_10000BBC4(*(v0 + 616), v304, &qword_10083D6A0, &unk_1006DB700);
    v305 = v43(v304, 1, v41);
    v306 = *(v0 + 544);
    if (v305 == 1)
    {
      sub_10000BE18(*(v0 + 544), &qword_10083D6A0, &unk_1006DB700);
      v448 = 0;
      v453 = 0;
    }

    else
    {
      v307 = PDF417ParsedData.country.getter();
      v448 = v308;
      v453 = v307;
      (*(v42 + 8))(v306, v41);
    }

    v309 = *(v0 + 536);
    sub_10000BBC4(*(v0 + 616), v309, &qword_10083D6A0, &unk_1006DB700);
    v310 = v43(v309, 1, v41);
    v311 = *(v0 + 536);
    if (v310 == 1)
    {
      sub_10000BE18(*(v0 + 536), &qword_10083D6A0, &unk_1006DB700);
      v440 = 0;
      v444 = 0;
    }

    else
    {
      v312 = PDF417ParsedData.dob.getter();
      v440 = v313;
      v444 = v312;
      (*(v42 + 8))(v311, v41);
    }

    v314 = *(v0 + 528);
    sub_10000BBC4(*(v0 + 616), v314, &qword_10083D6A0, &unk_1006DB700);
    v315 = v43(v314, 1, v41);
    v316 = *(v0 + 616);
    v317 = *(v0 + 528);
    if (v315 == 1)
    {
      sub_10000BE18(*(v0 + 616), &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v317, &qword_10083D6A0, &unk_1006DB700);
      v318 = 0;
      v319 = 0;
    }

    else
    {
      v318 = PDF417ParsedData.issuer.getter();
      v319 = v320;
      sub_10000BE18(v316, &qword_10083D6A0, &unk_1006DB700);
      (*(v268 + 8))(v317, v41);
    }

    v2 = v555;
    v322 = *(v555 + 2);
    v321 = *(v555 + 3);
    if (v322 >= v321 >> 1)
    {
      v2 = sub_1003C5D2C((v321 > 1), v322 + 1, 1, v555);
    }

    *(v2 + 2) = v322 + 1;
    v323 = &v2[336 * v322];
    v323[32] = 0;
    v324 = *v427;
    *(v323 + 9) = *(v427 + 3);
    *(v323 + 33) = v324;
    *(v323 + 40) = 0u;
    *(v323 + 56) = 0u;
    *(v323 + 72) = 0u;
    *(v323 + 88) = 0u;
    *(v323 + 104) = 0u;
    *(v323 + 15) = 0;
    *(v323 + 16) = v534;
    *(v323 + 17) = v528;
    *(v323 + 18) = v525;
    *(v323 + 19) = v520;
    *(v323 + 20) = v515;
    *(v323 + 21) = v509;
    *(v323 + 22) = v503;
    *(v323 + 23) = v498;
    *(v323 + 24) = v493;
    *(v323 + 25) = v488;
    *(v323 + 26) = v483;
    *(v323 + 27) = v478;
    *(v323 + 28) = v473;
    *(v323 + 29) = v468;
    *(v323 + 30) = v463;
    *(v323 + 31) = v458;
    *(v323 + 32) = v453;
    *(v323 + 33) = v448;
    *(v323 + 34) = v444;
    *(v323 + 35) = v440;
    *(v323 + 36) = v318;
    *(v323 + 37) = v319;
    *(v323 + 38) = 0;
    *(v323 + 39) = 0;
    *(v323 + 40) = v542;
    *(v323 + 41) = v548;
    *(v323 + 21) = 0u;
    *(v323 + 22) = 0u;
    goto LABEL_8;
  }

  if (v11 == 6)
  {
    v20 = [objc_opt_self() standardUserDefaults];
    v21._countAndFlagsBits = static SharedInternalDefaultsKeys.skipNFC.getter();
    v22 = NSUserDefaults.internalBool(forKey:)(v21);

    if (v22)
    {
      goto LABEL_9;
    }

    v226 = *(*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
    if (!v226)
    {
      v412 = *(v0 + 304);
      v411 = *(v0 + 312);
      v413 = *(v0 + 296);

      (*(v412 + 104))(v411, enum case for DIPError.Code.passportFailedToGetNFCData(_:), v413);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_235:
      v414 = v557;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_238:

      v425 = *(v414 + 8);

      return v425();
    }

    v556 = v2;
    v550 = *(v0 + 1016);
    v537 = *(v0 + 1012);
    v227 = *(v0 + 1008);
    v228 = *(v0 + 280);
    v229 = *(v0 + 288);
    v544 = *(v0 + 272);
    v231 = *(v0 + 248);
    v230 = *(v0 + 256);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v232 = swift_allocObject();
    *(v232 + 16) = xmmword_1006BFF90;
    v233 = *(v230 + 104);
    v233(v229, v227, v231);

    v234 = PassportFields.rawValue.getter();
    v236 = v235;
    v237 = *(v230 + 8);
    v237(v229, v231);
    *(v232 + 32) = v234;
    *(v232 + 40) = v236;
    v233(v228, v537, v231);
    v238 = v228;
    v239 = PassportFields.rawValue.getter();
    v241 = v240;
    v237(v238, v231);
    *(v232 + 48) = v239;
    *(v232 + 56) = v241;
    v233(v544, v550, v231);
    v0 = v557;
    v242 = PassportFields.rawValue.getter();
    v244 = v243;
    v514 = v237;
    v237(v544, v231);
    *(v232 + 64) = v242;
    *(v232 + 72) = v244;
    v245 = sub_100209CC4(v226, v232);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v246 = v245 + 8;
    v247 = -1 << *(v245 + 32);
    if (-v247 < 64)
    {
      v248 = ~(-1 << -v247);
    }

    else
    {
      v248 = -1;
    }

    v249 = v248 & v245[8];
    v250 = (63 - v247) >> 6;
    v545 = v245;

    v251 = 0;
    v531 = _swiftEmptyArrayStorage;
    v538 = v245 + 8;
LABEL_138:
    v252 = v251;
    if (!v249)
    {
      goto LABEL_140;
    }

    do
    {
      v251 = v252;
LABEL_143:
      v253 = *(v557 + 256);
      v551 = *(v557 + 248);
      v254 = *(v557 + 240);
      v255 = __clz(__rbit64(v249));
      v249 &= v249 - 1;
      v256 = (v545[7] + ((v251 << 10) | (16 * v255)));
      v257 = *v256;
      v258 = v256[1];
      swift_bridgeObjectRetain_n();

      PassportFields.init(rawValue:)();
      if ((*(v253 + 48))(v254, 1, v551) != 1)
      {
        v552 = v257;
        v259 = *(v557 + 264);
        v260 = *(v557 + 248);
        (*(*(v557 + 256) + 32))(v259, *(v557 + 240), v260);
        v261 = PassportFields.assessorFieldName.getter();
        v508 = v262;
        v514(v259, v260);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v531 = sub_1003C5D08(0, v531[2] + 1, 1, v531);
        }

        v246 = v538;
        v264 = v531[2];
        v263 = v531[3];
        if (v264 >= v263 >> 1)
        {
          v531 = sub_1003C5D08((v263 > 1), v264 + 1, 1, v531);
        }

        v531[2] = v264 + 1;
        v265 = &v531[4 * v264];
        v265[4] = v261;
        v265[5] = v508;
        v265[6] = v552;
        v265[7] = v258;
        goto LABEL_138;
      }

      sub_10000BE18(*(v557 + 240), &qword_10083DC38, &unk_1006DB790);

      v252 = v251;
      v246 = v538;
    }

    while (v249);
    while (1)
    {
LABEL_140:
      v251 = v252 + 1;
      if (__OFADD__(v252, 1))
      {
        __break(1u);
        goto LABEL_242;
      }

      if (v251 >= v250)
      {
        break;
      }

      v249 = v246[v251];
      ++v252;
      if (v249)
      {
        goto LABEL_143;
      }
    }

    if (v531[2])
    {
      sub_100007224(&qword_100849420, &qword_1006DA510);
      v325 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v325 = &_swiftEmptyDictionarySingleton;
    }

    *(v557 + 176) = v325;

    sub_100208004(v326, 1, (v557 + 176));

    v327 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v557 + 184) = 0;
    v329 = [v327 dataWithJSONObject:isa options:0 error:v557 + 184];

    v330 = *(v557 + 184);
    if (!v329)
    {
      v415 = *(v557 + 312);
      v416 = *(v557 + 304);
      v417 = *(v557 + 296);
      v418 = v330;

      v419 = _convertNSErrorToError(_:)();

      swift_willThrow();
      _StringGuts.grow(_:)(32);
      *(v557 + 160) = 0;
      *(v557 + 168) = 0xE000000000000000;
      v420._countAndFlagsBits = 0xD00000000000001ELL;
      v420._object = 0x8000000100706D40;
      String.append(_:)(v420);
      *(v557 + 192) = v419;
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      _print_unlocked<A, B>(_:_:)();
      (*(v416 + 104))(v415, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v417);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v414 = v557;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      goto LABEL_238;
    }

    v331 = *(v557 + 520);
    v332 = *(v557 + 512);
    v333 = v330;
    v334 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v336 = v335;

    v532 = v336;
    v539 = v334;
    v337 = Data.base64EncodedString(options:)(0);
    v338 = type metadata accessor for PDF417ParsedData();
    v339 = *(v338 - 8);
    (*(v339 + 56))(v331, 1, 1, v338);
    sub_10000BBC4(v331, v332, &qword_10083D6A0, &unk_1006DB700);
    v340 = *(v339 + 48);
    v341 = v340(v332, 1, v338);
    v342 = *(v557 + 512);
    if (v341 == 1)
    {
      sub_10000BE18(*(v557 + 512), &qword_10083D6A0, &unk_1006DB700);
      v521 = 0;
      v526 = 0;
    }

    else
    {
      v343 = PDF417ParsedData.firstName.getter();
      v521 = v344;
      v526 = v343;
      (*(v339 + 8))(v342, v338);
    }

    v345 = *(v557 + 504);
    sub_10000BBC4(*(v557 + 520), v345, &qword_10083D6A0, &unk_1006DB700);
    v346 = v340(v345, 1, v338);
    v347 = *(v557 + 504);
    if (v346 == 1)
    {
      sub_10000BE18(*(v557 + 504), &qword_10083D6A0, &unk_1006DB700);
      v510 = 0;
      v516 = 0;
    }

    else
    {
      v348 = PDF417ParsedData.middleName.getter();
      v510 = v349;
      v516 = v348;
      (*(v339 + 8))(v347, v338);
    }

    v350 = *(v557 + 496);
    sub_10000BBC4(*(v557 + 520), v350, &qword_10083D6A0, &unk_1006DB700);
    v351 = v340(v350, 1, v338);
    v352 = *(v557 + 496);
    if (v351 == 1)
    {
      sub_10000BE18(*(v557 + 496), &qword_10083D6A0, &unk_1006DB700);
      v499 = 0;
      v504 = 0;
    }

    else
    {
      v353 = PDF417ParsedData.lastName.getter();
      v499 = v354;
      v504 = v353;
      (*(v339 + 8))(v352, v338);
    }

    v355 = *(v557 + 488);
    sub_10000BBC4(*(v557 + 520), v355, &qword_10083D6A0, &unk_1006DB700);
    v356 = v340(v355, 1, v338);
    v357 = *(v557 + 488);
    if (v356 == 1)
    {
      sub_10000BE18(*(v557 + 488), &qword_10083D6A0, &unk_1006DB700);
      v489 = 0;
      v494 = 0;
    }

    else
    {
      v358 = PDF417ParsedData.street1.getter();
      v489 = v359;
      v494 = v358;
      (*(v339 + 8))(v357, v338);
    }

    v360 = *(v557 + 480);
    sub_10000BBC4(*(v557 + 520), v360, &qword_10083D6A0, &unk_1006DB700);
    v361 = v340(v360, 1, v338);
    v362 = *(v557 + 480);
    if (v361 == 1)
    {
      sub_10000BE18(*(v557 + 480), &qword_10083D6A0, &unk_1006DB700);
      v479 = 0;
      v484 = 0;
    }

    else
    {
      v363 = PDF417ParsedData.street2.getter();
      v479 = v364;
      v484 = v363;
      (*(v339 + 8))(v362, v338);
    }

    v365 = *(v557 + 472);
    sub_10000BBC4(*(v557 + 520), v365, &qword_10083D6A0, &unk_1006DB700);
    v366 = v340(v365, 1, v338);
    v367 = *(v557 + 472);
    if (v366 == 1)
    {
      sub_10000BE18(*(v557 + 472), &qword_10083D6A0, &unk_1006DB700);
      v469 = 0;
      v474 = 0;
    }

    else
    {
      v368 = PDF417ParsedData.city.getter();
      v469 = v369;
      v474 = v368;
      (*(v339 + 8))(v367, v338);
    }

    v370 = *(v557 + 464);
    sub_10000BBC4(*(v557 + 520), v370, &qword_10083D6A0, &unk_1006DB700);
    v371 = v340(v370, 1, v338);
    v372 = *(v557 + 464);
    if (v371 == 1)
    {
      sub_10000BE18(*(v557 + 464), &qword_10083D6A0, &unk_1006DB700);
      v459 = 0;
      v464 = 0;
    }

    else
    {
      v373 = PDF417ParsedData.state.getter();
      v459 = v374;
      v464 = v373;
      (*(v339 + 8))(v372, v338);
    }

    v375 = *(v557 + 456);
    sub_10000BBC4(*(v557 + 520), v375, &qword_10083D6A0, &unk_1006DB700);
    v376 = v340(v375, 1, v338);
    v377 = *(v557 + 456);
    if (v376 == 1)
    {
      sub_10000BE18(*(v557 + 456), &qword_10083D6A0, &unk_1006DB700);
      v449 = 0;
      v454 = 0;
    }

    else
    {
      v378 = PDF417ParsedData.postalCode.getter();
      v449 = v379;
      v454 = v378;
      (*(v339 + 8))(v377, v338);
    }

    v380 = *(v557 + 448);
    sub_10000BBC4(*(v557 + 520), v380, &qword_10083D6A0, &unk_1006DB700);
    v381 = v340(v380, 1, v338);
    v382 = *(v557 + 448);
    if (v381 == 1)
    {
      sub_10000BE18(*(v557 + 448), &qword_10083D6A0, &unk_1006DB700);
      v441 = 0;
      v445 = 0;
    }

    else
    {
      v383 = PDF417ParsedData.country.getter();
      v441 = v384;
      v445 = v383;
      (*(v339 + 8))(v382, v338);
    }

    v385 = *(v557 + 440);
    sub_10000BBC4(*(v557 + 520), v385, &qword_10083D6A0, &unk_1006DB700);
    v386 = v340(v385, 1, v338);
    v387 = *(v557 + 440);
    if (v386 == 1)
    {
      sub_10000BE18(*(v557 + 440), &qword_10083D6A0, &unk_1006DB700);
      v437 = 0;
      v388 = 0;
    }

    else
    {
      v437 = PDF417ParsedData.dob.getter();
      v388 = v389;
      (*(v339 + 8))(v387, v338);
    }

    v390 = *(v557 + 432);
    sub_10000BBC4(*(v557 + 520), v390, &qword_10083D6A0, &unk_1006DB700);
    v391 = v340(v390, 1, v338);
    v392 = *(v557 + 520);
    v393 = *(v557 + 432);
    if (v391 == 1)
    {
      sub_10000BE18(*(v557 + 520), &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v393, &qword_10083D6A0, &unk_1006DB700);
      v394 = 0;
      v395 = 0;
    }

    else
    {
      v394 = PDF417ParsedData.issuer.getter();
      v395 = v396;
      sub_10000BE18(v392, &qword_10083D6A0, &unk_1006DB700);
      (*(v339 + 8))(v393, v338);
    }

    v2 = v556;
    v398 = *(v556 + 2);
    v397 = *(v556 + 3);
    if (v398 >= v397 >> 1)
    {
      v2 = sub_1003C5D2C((v397 > 1), v398 + 1, 1, v556);
    }

    sub_10000B90C(v539, v532);
    *(v2 + 2) = v398 + 1;
    v399 = &v2[336 * v398];
    v399[32] = 5;
    v400 = *v426;
    *(v399 + 9) = *(v426 + 3);
    *(v399 + 33) = v400;
    *(v399 + 40) = 0u;
    *(v399 + 56) = 0u;
    *(v399 + 72) = 0u;
    *(v399 + 88) = 0u;
    *(v399 + 104) = 0u;
    *(v399 + 15) = 0;
    *(v399 + 16) = v526;
    *(v399 + 17) = v521;
    *(v399 + 18) = v516;
    *(v399 + 19) = v510;
    *(v399 + 20) = v504;
    *(v399 + 21) = v499;
    *(v399 + 22) = v494;
    *(v399 + 23) = v489;
    *(v399 + 24) = v484;
    *(v399 + 25) = v479;
    *(v399 + 26) = v474;
    *(v399 + 27) = v469;
    *(v399 + 28) = v464;
    *(v399 + 29) = v459;
    *(v399 + 30) = v454;
    *(v399 + 31) = v449;
    *(v399 + 32) = v445;
    *(v399 + 33) = v441;
    *(v399 + 34) = v437;
    *(v399 + 35) = v388;
    *(v399 + 36) = v394;
    *(v399 + 37) = v395;
    *(v399 + 19) = 0u;
    *(v399 + 20) = 0u;
    *(v399 + 21) = v337;
    *(v399 + 44) = 0;
    *(v399 + 45) = 0;
    goto LABEL_8;
  }

  if (v11 != 7)
  {
    goto LABEL_9;
  }

  *(v0 + 975) = 0;
  IdentityProofingConfiguration.piiTokenIdentifier.getter();
  if (!v403)
  {
    v422 = *(v0 + 304);
    v421 = *(v0 + 312);
    v423 = *(v0 + 296);
    v424 = *(v0 + 983);

    (*(v422 + 104))(v421, enum case for DIPError.Code.piiTokenIdentifierDoesntExist(_:), v423);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v414 = v557;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001FE434(v424, (v557 + 975));
    goto LABEL_238;
  }

  if (qword_100832C20 != -1)
  {
LABEL_242:
    swift_once();
  }

  v404 = *(qword_100882228 + 16);
  *(v0 + 944) = v404;
  v405 = v404;
  v406 = String._bridgeToObjectiveC()();
  *(v0 + 952) = v406;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10020DE68;
  v407 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100672A4C;
  *(v0 + 104) = &unk_10080AB88;
  *(v0 + 112) = v407;
  [v405 retrievePIITokenFromSyncableKeyStoreForIdentifier:v406 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}