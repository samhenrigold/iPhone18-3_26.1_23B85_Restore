uint64_t sub_1004E2134()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_1004E267C;
  }

  else
  {
    v4 = sub_1004E2260;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004E2260()
{
  v32 = v0;
  v2 = v0[35];
  v1 = v0[36];
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  sub_10000BBC4(v1, v2, &qword_1008460E8, &qword_1006E6840);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  v7 = v0[41];
  v8 = v0[37];
  v9 = v0[35];
  if (v5)
  {
    v10 = v0[34];
    v29 = v0[37];
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, &v31);
    *(v11 + 12) = 2080;
    v28 = v6;
    sub_10000BBC4(v9, v10, &qword_1008460E8, &qword_1006E6840);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10000BE18(v9, &qword_1008460E8, &qword_1006E6840);
    v15 = sub_100141FE4(v12, v14, &v31);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderSessionProxy %s returning successfully with response: %s", v11, 0x16u);
    swift_arrayDestroy();

    v28(v7, v29);
  }

  else
  {

    sub_10000BE18(v9, &qword_1008460E8, &qword_1006E6840);
    v6(v7, v8);
  }

  v16 = v0[33];
  v17 = v0[25];
  v18 = v0[26];
  sub_10000BBC4(v0[36], v16, &qword_1008460E8, &qword_1006E6840);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v20 = v0[36];
  if (v19 == 1)
  {
    sub_10000BE18(v0[36], &qword_1008460E8, &qword_1006E6840);
    v30 = 0;
  }

  else
  {
    v21 = v0[27];
    v22 = v0[28];
    v23 = v0[25];
    v24 = v0[26];
    (*(v24 + 32))(v22, v0[33], v23);
    (*(v24 + 16))(v21, v22, v23);
    v25 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderMerchant());
    v30 = XPCMobileDocumentReaderMerchant.init(value:)();
    (*(v24 + 8))(v22, v23);
    sub_10000BE18(v20, &qword_1008460E8, &qword_1006E6840);
  }

  v26 = v0[1];

  return v26(v30);
}

uint64_t sub_1004E267C()
{
  v51 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[40];
  v41 = v0[43];
  v48 = v0[37];
  v3 = v0[30];
  v2 = v0[31];
  v42 = v0[29];
  v4 = v0[24];
  v46 = v0[23];
  v5 = v0[21];
  v49 = v0[22];
  v6 = v0[19];
  v44 = v0[20];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x746E61686372656DLL;
  v8._object = 0xEE00293A726F6628;
  String.append(_:)(v8);
  v9._object = 0x800000010071BB70;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v41(v1, v48);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v42);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v6, v4);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v46, v4, v44);
  v47 = v10;
  v10(v49, v4, v44);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[43];
  v15 = v0[39];
  v16 = v0[37];
  v18 = v0[22];
  v17 = v0[23];
  v20 = v0[20];
  v19 = v0[21];
  if (v13)
  {
    v43 = v0[37];
    v21 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, v50);
    *(v21 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    v39 = v15;
    v40 = v14;
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    v38 = v12;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_100141FE4(v22, v24, v50);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 7104878;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v45 = v25;
    v25(v18, v20);
    v31 = sub_100141FE4(v29, v30, v50);

    *(v21 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v11, v38, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v21, 0x20u);
    swift_arrayDestroy();

    v40(v39, v43);
  }

  else
  {

    v32 = *(v19 + 8);
    v32(v18, v20);
    v45 = v32;
    v32(v17, v20);
    v14(v15, v16);
  }

  v33 = v0[24];
  v34 = v0[20];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v47(v35, v33, v34);
  swift_willThrow();

  v45(v33, v34);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1004E2E44(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1004E2F18;

  return sub_1004E1580(v4, v6);
}

uint64_t sub_1004E2F18(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1004E30D8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = type metadata accessor for DIPError();
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for MobileDocumentReaderSession.Error();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for Milestone();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderRequest();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_1004E3374, v1, 0);
}

uint64_t sub_1004E3374(uint64_t a1)
{
  v67 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 304);
  v6 = *(v1 + 264);
  v7 = *(v1 + 272);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, v66);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 312) = v10;
  v11 = *(v1 + 128);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v1 + 80))
  {
    sub_10001F358((v1 + 56), v1 + 16);
    v12 = sub_10000BA08((v1 + 16), *(v1 + 40));
    XPCMobileDocumentReaderRequest.value.getter();
    v13 = *v12;
    *(v1 + 320) = *v12;

    return _swift_task_switch(sub_1004E3BF0, v13, 0);
  }

  else
  {
    v15 = *(v1 + 200);
    v14 = *(v1 + 208);
    v16 = *(v1 + 192);
    sub_10000BE18(v1 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v15 + 104))(v14, enum case for DIPError.Code.unexpectedDaemonState(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = *(v1 + 288);
    v64 = *(v1 + 264);
    v18 = *(v1 + 200);
    v55 = *(v1 + 208);
    v19 = *(v1 + 184);
    v56 = *(v1 + 192);
    v58 = *(v1 + 312);
    v62 = *(v1 + 176);
    v65 = *(v1 + 168);
    v20 = *(v1 + 160);
    v60 = *(v1 + 152);
    v21 = *(v1 + 144);
    v66[0] = 0;
    v66[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v22._countAndFlagsBits = 0xD000000000000021;
    v22._object = 0x800000010071C470;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0xD000000000000016;
    v23._object = 0x800000010071C5D0;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0xD000000000000015;
    v24._object = 0x800000010071BB70;
    String.append(_:)(v24);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v58(v17, v64);
    (*(v18 + 104))(v55, enum case for DIPError.Code.internalError(_:), v56);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v21, v19);
    defaultLogger()();
    v25 = *(v20 + 16);
    v25(v62, v19, v60);
    v63 = v25;
    v25(v65, v19, v60);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 312);
    v30 = *(v1 + 280);
    v31 = *(v1 + 264);
    v33 = *(v1 + 168);
    v32 = *(v1 + 176);
    v34 = *(v1 + 152);
    v35 = *(v1 + 160);
    if (v28)
    {
      v57 = *(v1 + 264);
      v36 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v36 = 136315650;
      *(v36 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, v66);
      *(v36 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v59 = v29;
      v37 = Error.localizedDescription.getter();
      v54 = v30;
      v39 = v38;
      v53 = v27;
      v40 = *(v35 + 8);
      v40(v32, v34);
      v41 = sub_100141FE4(v37, v39, v66);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v43)
      {
        v44 = v42;
      }

      else
      {
        v44 = 7104878;
      }

      if (v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xE300000000000000;
      }

      v61 = v40;
      v40(v33, v34);
      v46 = sub_100141FE4(v44, v45, v66);

      *(v36 + 24) = v46;
      _os_log_impl(&_mh_execute_header, v26, v53, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v36, 0x20u);
      swift_arrayDestroy();

      v59(v54, v57);
    }

    else
    {

      v47 = *(v35 + 8);
      v47(v33, v34);
      v61 = v47;
      v47(v32, v34);
      v29(v30, v31);
    }

    v48 = *(v1 + 184);
    v49 = *(v1 + 152);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v63(v50, v48, v49);
    swift_willThrow();

    v61(v48, v49);

    v51 = *(v1 + 8);

    return v51();
  }
}

uint64_t sub_1004E3BF0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  static MobileDocumentReaderMilestone.canRequestDocumentCalled.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1004E3CD0;

  return sub_10039C498(0xD000000000000016, 0x800000010071C5D0, 230);
}

uint64_t sub_1004E3CD0()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {
    v3 = v2[40];

    return _swift_task_switch(sub_1004E3F90, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[43] = v4;
    *v4 = v2;
    v4[1] = sub_1004E3E44;
    v5 = v2[32];

    return sub_10039DEC4(v5);
  }
}

uint64_t sub_1004E3E44()
{
  v2 = *v1;

  if (v0)
  {
    v2[44] = v0;
    v3 = v2[16];
    (*(v2[31] + 8))(v2[32], v2[30]);
    v4 = sub_1004E4204;
  }

  else
  {
    v3 = v2[16];
    (*(v2[31] + 8))(v2[32], v2[30]);
    v4 = sub_1004E4014;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004E3F90()
{
  v0[44] = v0[42];
  v1 = v0[16];
  (*(v0[31] + 8))(v0[32], v0[30]);

  return _swift_task_switch(sub_1004E4204, v1, 0);
}

uint64_t sub_1004E4014()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[33];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s returning successfully", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004E4204()
{
  v50 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[36];
  v47 = v0[33];
  v2 = v0[25];
  v38 = v0[26];
  v3 = v0[23];
  v39 = v0[24];
  v41 = v0[39];
  v45 = v0[22];
  v48 = v0[21];
  v4 = v0[20];
  v43 = v0[19];
  v5 = v0[18];
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000016;
  v7._object = 0x800000010071C5D0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v41(v1, v47);
  (*(v2 + 104))(v38, enum case for DIPError.Code.internalError(_:), v39);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v5, v3);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v45, v3, v43);
  v9(v48, v3, v43);
  v10 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v10, v42);
  v12 = v0[39];
  v13 = v0[35];
  v46 = v0[33];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[19];
  v17 = v0[20];
  if (v11)
  {
    v40 = v0[35];
    v18 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100141FE4(0xD000000000000016, 0x800000010071C5D0, v49);
    *(v18 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    log = v10;
    v37 = v12;
    v19 = Error.localizedDescription.getter();
    v20 = v9;
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v14, v16);
    v24 = sub_100141FE4(v19, v22, v49);
    v9 = v20;

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v44 = v23;
    v23(v15, v16);
    v29 = sub_100141FE4(v27, v28, v49);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v42, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v18, 0x20u);
    swift_arrayDestroy();

    v37(v40, v46);
  }

  else
  {

    v30 = *(v17 + 8);
    v30(v15, v16);
    v44 = v30;
    v30(v14, v16);
    v12(v13, v46);
  }

  v31 = v0[23];
  v32 = v0[19];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v9(v33, v31, v32);
  swift_willThrow();

  v44(v31, v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1004E4960(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100494C3C;

  return sub_1004E30D8(v5);
}

uint64_t sub_1004E4A24(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = type metadata accessor for DIPError();
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentReaderSession.Error();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderRequest();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentReaderResponse();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[38] = v9;
  v3[39] = *(v9 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1004E4D2C, v2, 0);
}

uint64_t sub_1004E4D2C(uint64_t a1)
{
  v68 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 344);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v67[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, v67);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 352) = v10;
  v11 = *(v1 + 136);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v1 + 80))
  {
    sub_10001F358((v1 + 56), v1 + 16);
    sub_10000BA08((v1 + 16), *(v1 + 40));
    XPCMobileDocumentReaderRequest.value.getter();
    XPCMobileDocumentReaderDeviceEngagementType.value.getter();
    v12 = swift_task_alloc();
    *(v1 + 360) = v12;
    *v12 = v1;
    v12[1] = sub_1004E5600;
    v13 = *(v1 + 296);
    v14 = *(v1 + 264);
    v15 = *(v1 + 240);

    return sub_10039AD9C(v13, v14, v15);
  }

  else
  {
    v18 = *(v1 + 208);
    v17 = *(v1 + 216);
    v19 = *(v1 + 200);
    sub_10000BE18(v1 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v18 + 104))(v17, enum case for DIPError.Code.unexpectedDaemonState(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v20 = *(v1 + 328);
    v55 = *(v1 + 304);
    v57 = *(v1 + 352);
    v21 = *(v1 + 208);
    v22 = *(v1 + 192);
    v58 = *(v1 + 216);
    v60 = *(v1 + 200);
    v64 = *(v1 + 184);
    v66 = *(v1 + 176);
    v23 = *(v1 + 168);
    v61 = *(v1 + 160);
    v24 = *(v1 + 152);
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v25._countAndFlagsBits = 0xD000000000000021;
    v25._object = 0x800000010071C470;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0xD000000000000022;
    v26._object = 0x80000001007120E0;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0xD000000000000015;
    v27._object = 0x800000010071BB70;
    String.append(_:)(v27);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v57(v20, v55);
    (*(v21 + 104))(v58, enum case for DIPError.Code.internalError(_:), v60);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v24, v22);
    defaultLogger()();
    v28 = *(v23 + 16);
    v28(v64, v22, v61);
    v65 = v28;
    v28(v66, v22, v61);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v1 + 352);
    v33 = *(v1 + 320);
    v63 = *(v1 + 304);
    v35 = *(v1 + 176);
    v34 = *(v1 + 184);
    v36 = *(v1 + 160);
    v37 = *(v1 + 168);
    if (v31)
    {
      v59 = *(v1 + 320);
      v38 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v38 = 136315650;
      *(v38 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, v67);
      *(v38 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v56 = v32;
      v39 = Error.localizedDescription.getter();
      v41 = v40;
      v54 = v30;
      v42 = *(v37 + 8);
      v42(v34, v36);
      v43 = sub_100141FE4(v39, v41, v67);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2080;
      v44 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = 7104878;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v62 = v42;
      v42(v35, v36);
      v48 = sub_100141FE4(v46, v47, v67);

      *(v38 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v29, v54, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v38, 0x20u);
      swift_arrayDestroy();

      v56(v59, v63);
    }

    else
    {

      v49 = *(v37 + 8);
      v49(v35, v36);
      v62 = v49;
      v49(v34, v36);
      v32(v33, v63);
    }

    v50 = *(v1 + 192);
    v51 = *(v1 + 160);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v65(v52, v50, v51);
    swift_willThrow();

    v62(v50, v51);

    v53 = *(v1 + 8);

    return v53();
  }
}

uint64_t sub_1004E5600()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = v2[33];
  v4 = v2[32];
  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[28];
  v9 = v2[17];
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = sub_1004E5A48;
  }

  else
  {
    v10 = sub_1004E57D8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1004E57D8()
{
  v17 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[44];
  v5 = v0[42];
  v6 = v0[38];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s returning successfully", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[35];
  (*(v11 + 16))(v0[36], v9, v10);
  v12 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderResponse());
  v13 = XPCMobileDocumentReaderResponse.init(value:)();
  (*(v11 + 8))(v9, v10);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1004E5A48()
{
  v49 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[41];
  v36 = v0[38];
  v37 = v0[44];
  v2 = v0[26];
  v3 = v0[24];
  v39 = v0[27];
  v41 = v0[25];
  v45 = v0[23];
  v47 = v0[22];
  v4 = v0[21];
  v42 = v0[20];
  v5 = v0[19];
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = 0x80000001007120E0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v37(v1, v36);
  (*(v2 + 104))(v39, enum case for DIPError.Code.internalError(_:), v41);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v5, v3);
  defaultLogger()();
  v9 = *(v4 + 16);
  v9(v45, v3, v42);
  v46 = v9;
  v9(v47, v3, v42);
  v10 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v10, v40);
  v12 = v0[44];
  v13 = v0[40];
  v44 = v0[38];
  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  if (v11)
  {
    v38 = v0[40];
    v18 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100141FE4(0xD000000000000022, 0x80000001007120E0, v48);
    *(v18 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    v35 = v12;
    v19 = Error.localizedDescription.getter();
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_100141FE4(v19, v21, v48);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v24 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 7104878;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v43 = v22;
    v22(v15, v17);
    v28 = sub_100141FE4(v26, v27, v48);

    *(v18 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v10, v40, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v18, 0x20u);
    swift_arrayDestroy();

    v35(v38, v44);
  }

  else
  {

    v29 = *(v16 + 8);
    v29(v15, v17);
    v43 = v29;
    v29(v14, v17);
    v12(v13, v44);
  }

  v30 = v0[24];
  v31 = v0[20];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v46(v32, v30, v31);
  swift_willThrow();

  v43(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1004E61B4(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100490474;

  return sub_1004E4A24(v7, v8);
}

uint64_t sub_1004E628C()
{
  v1[15] = v0;
  v1[16] = type metadata accessor for DIPError();
  v1[17] = swift_task_alloc();
  v2 = type metadata accessor for MobileDocumentReaderSession.Error();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004E6470, v0, 0);
}

uint64_t sub_1004E6470(uint64_t a1)
{
  v65 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 248);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, v64);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 256) = v10;
  v11 = *(v1 + 120);
  swift_beginAccess();
  sub_10000BBC4(v11 + 112, v1 + 56, &qword_1008460D8, &qword_1006E6838);
  if (*(v1 + 80))
  {
    sub_10001F358((v1 + 56), v1 + 16);
    sub_10000BA08((v1 + 16), *(v1 + 40));
    v12 = swift_task_alloc();
    *(v1 + 264) = v12;
    *v12 = v1;
    v12[1] = sub_1004E6D08;

    return sub_10039BEEC();
  }

  else
  {
    v15 = *(v1 + 192);
    v14 = *(v1 + 200);
    v16 = *(v1 + 184);
    sub_10000BE18(v1 + 56, &qword_1008460D8, &qword_1006E6838);
    (*(v15 + 104))(v14, enum case for DIPError.Code.unexpectedDaemonState(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v17 = *(v1 + 232);
    v51 = *(v1 + 256);
    v62 = *(v1 + 208);
    v18 = *(v1 + 192);
    v19 = *(v1 + 176);
    v53 = *(v1 + 200);
    v54 = *(v1 + 184);
    v60 = *(v1 + 168);
    v63 = *(v1 + 160);
    v20 = *(v1 + 152);
    v56 = *(v1 + 136);
    v57 = *(v1 + 144);
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v21._countAndFlagsBits = 0xD000000000000021;
    v21._object = 0x800000010071C470;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x65526C65636E6163;
    v22._object = 0xEC00000029286461;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0xD000000000000015;
    v23._object = 0x800000010071BB70;
    String.append(_:)(v23);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v51(v17, v62);
    (*(v18 + 104))(v53, enum case for DIPError.Code.internalError(_:), v54);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1003C94CC(v56, v19);
    defaultLogger()();
    v24 = *(v20 + 16);
    v24(v60, v19, v57);
    v61 = v24;
    v24(v63, v19, v57);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v1 + 256);
    v29 = *(v1 + 224);
    v59 = *(v1 + 208);
    v31 = *(v1 + 160);
    v30 = *(v1 + 168);
    v33 = *(v1 + 144);
    v32 = *(v1 + 152);
    if (v27)
    {
      v55 = *(v1 + 224);
      v34 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v34 = 136315650;
      *(v34 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, v64);
      *(v34 + 12) = 2080;
      sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
      v35 = Error.localizedDescription.getter();
      v52 = v28;
      v37 = v36;
      v50 = v26;
      v38 = *(v32 + 8);
      v38(v30, v33);
      v39 = sub_100141FE4(v35, v37, v64);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2080;
      v40 = MobileDocumentReaderSession.Error.debugDescription.getter();
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 7104878;
      }

      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      v58 = v38;
      v38(v31, v33);
      v44 = sub_100141FE4(v42, v43, v64);

      *(v34 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v25, v50, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v34, 0x20u);
      swift_arrayDestroy();

      v52(v55, v59);
    }

    else
    {

      v45 = *(v32 + 8);
      v45(v31, v33);
      v58 = v45;
      v45(v30, v33);
      v28(v29, v59);
    }

    v46 = *(v1 + 176);
    v47 = *(v1 + 144);
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    swift_allocError();
    v61(v48, v46, v47);
    swift_willThrow();

    v58(v46, v47);

    v49 = *(v1 + 8);

    return v49();
  }
}

uint64_t sub_1004E6D08()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1004E700C;
  }

  else
  {
    v4 = sub_1004E6E34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004E6E34()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[26];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s returning successfully", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004E700C()
{
  v51 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[29];
  v41 = v0[32];
  v2 = v0[25];
  v48 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v46 = v0[21];
  v5 = v0[19];
  v49 = v0[20];
  v6 = v0[17];
  v42 = v0[23];
  v44 = v0[18];
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x65526C65636E6163;
  v8._object = 0xEC00000029286461;
  String.append(_:)(v8);
  v9._object = 0x800000010071BB70;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v41(v1, v48);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v42);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1003C94CC(v6, v4);
  defaultLogger()();
  v10 = *(v5 + 16);
  v10(v46, v4, v44);
  v47 = v10;
  v10(v49, v4, v44);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[32];
  v15 = v0[28];
  v16 = v0[26];
  v18 = v0[20];
  v17 = v0[21];
  v20 = v0[18];
  v19 = v0[19];
  if (v13)
  {
    v43 = v0[26];
    v21 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEC00000029286461, v50);
    *(v21 + 12) = 2080;
    sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
    v39 = v15;
    v40 = v14;
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    v38 = v12;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_100141FE4(v22, v24, v50);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = MobileDocumentReaderSession.Error.debugDescription.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 7104878;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v45 = v25;
    v25(v18, v20);
    v31 = sub_100141FE4(v29, v30, v50);

    *(v21 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v11, v38, "MobileDocumentReaderSessionProxy %s finished with error: %s. Debug description: %s", v21, 0x20u);
    swift_arrayDestroy();

    v40(v39, v43);
  }

  else
  {

    v32 = *(v19 + 8);
    v32(v18, v20);
    v45 = v32;
    v32(v17, v20);
    v14(v15, v16);
  }

  v33 = v0[22];
  v34 = v0[18];
  sub_1004F4084(&qword_1008460E0, &type metadata accessor for MobileDocumentReaderSession.Error, &protocol conformance descriptor for MobileDocumentReaderSession.Error);
  swift_allocError();
  v47(v35, v33, v34);
  swift_willThrow();

  v45(v33, v34);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1004E7764(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10049CF48;

  return sub_1004E628C();
}

uint64_t sub_1004E780C()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1004E79B4, v0, 0);
}

uint64_t sub_1004E79B4()
{
  v53 = v0;
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_10000BBC4(v1 + 112, v0 + 16, &qword_1008460D8, &qword_1006E6838);
  v2 = *(v0 + 40);
  sub_10000BE18(v0 + 16, &qword_1008460D8, &qword_1006E6838);
  if (v2)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 264);
    v7 = *(v0 + 224);
    v8 = *(v0 + 232);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v52[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100141FE4(0x6164696C61766E69, 0xEC00000029286574, v52);
      _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderSessionProxy %s", v9, 0xCu);
      sub_10000BB78(v10);
    }

    v11 = *(v8 + 8);
    v11(v6, v7);
    *(v0 + 272) = v11;
    sub_10000BBC4(v1 + 112, v0 + 96, &qword_1008460D8, &qword_1006E6838);
    if (*(v0 + 120))
    {
      sub_10001F358((v0 + 96), v0 + 56);
      sub_10000BA08((v0 + 56), *(v0 + 80));
      v12 = type metadata accessor for MobileDocumentReaderFlow();
      v13 = swift_task_alloc();
      *(v0 + 280) = v13;
      *v13 = v0;
      v13[1] = sub_1004E819C;

      return (sub_1003A0584)(v12, &off_10080E610);
    }

    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v0 + 200);
    v50 = *(v0 + 184);
    v51 = v11;
    v47 = *(v0 + 176);
    v43 = *(v0 + 168);
    v45 = *(v0 + 192);
    sub_10000BE18(v0 + 96, &qword_1008460D8, &qword_1006E6838);
    v25 = *(v22 + 104);
    v25(v23, enum case for DIPError.Code.unexpectedDaemonState(_:), v24);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v25(v23, enum case for DIPError.Code.internalError(_:), v24);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    v26 = *(v47 + 16);
    v26(v50, v45, v43);
    v27 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v27, v49);
    v29 = *(v0 + 248);
    v30 = *(v0 + 224);
    v31 = *(v0 + 184);
    v32 = *(v0 + 192);
    v34 = *(v0 + 168);
    v33 = *(v0 + 176);
    if (v28)
    {
      v48 = *(v0 + 192);
      v35 = swift_slowAlloc();
      v46 = v30;
      v36 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52[0] = v44;
      *v35 = 136315394;
      *(v35 + 4) = sub_100141FE4(0x6164696C61766E69, 0xEC00000029286574, v52);
      *(v35 + 12) = 2112;
      swift_allocError();
      v42 = v29;
      v26(v37, v31, v34);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v33 + 8);
      v39(v31, v34);
      *(v35 + 14) = v38;
      *v36 = v38;
      _os_log_impl(&_mh_execute_header, v27, v49, "MobileDocumentReaderSessionProxy %s finished with error: %@", v35, 0x16u);
      sub_10000BE18(v36, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BB78(v44);

      v51(v42, v46);
      v39(v48, v34);
    }

    else
    {

      v40 = *(v33 + 8);
      v40(v31, v34);
      v51(v29, v30);
      v40(v32, v34);
    }
  }

  else
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 224);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalidate called when mobileDocumentReaderFlow is nil, nothing to invalidate.", v21, 2u);
    }

    (*(v19 + 8))(v18, v20);
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1004E819C()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1004E82AC, v1, 0);
}

uint64_t sub_1004E82AC()
{
  v12 = v0;
  sub_10000BB78(v0 + 7);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[28];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0x6164696C61766E69, 0xEC00000029286574, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004E8468(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100007224(&qword_100841BC8, &qword_1006E6830);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004E8768, v1, 0);
}

uint64_t sub_1004E8768(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[32];
  v6 = v1[27];
  v7 = v1[28];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x797469746E656469, 0xEF293A5F2879654BLL, v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[33] = v10;
  sub_1004DD174(v1 + 2);
  v11 = v1[7];
  sub_10000BA08(v1 + 2, v1[5]);
  if (v11)
  {
    XPCMobileDocumentReaderIdentityKeyRequest.value.getter();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v1[22];
  v14 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  (*(*(v14 - 8) + 56))(v13, v12, 1, v14);
  v15 = swift_task_alloc();
  v1[34] = v15;
  *v15 = v1;
  v15[1] = sub_1004E9018;
  v16 = v1[26];
  v17 = v1[22];

  return sub_100356C74(v16, v17);
}

uint64_t sub_1004E9018()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 64);
  sub_10000BE18(v3, &qword_100841BC8, &qword_1006E6830);
  if (v0)
  {
    v5 = sub_1004E93D8;
  }

  else
  {
    v5 = sub_1004E9170;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004E9170()
{
  v17 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0x797469746E656469, 0xEF293A5F2879654BLL, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  (*(v11 + 16))(v0[25], v9, v10);
  v12 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderIdentityKeyResponse());
  v13 = XPCMobileDocumentReaderIdentityKeyResponse.init(value:)();
  (*(v11 + 8))(v9, v10);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1004E93D8()
{
  v46 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[30];
  v41 = v0[27];
  v42 = v0[33];
  v35 = v0[21];
  v43 = v0[20];
  v45[0] = 0;
  v29 = v0[19];
  v39 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v37 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v30 = v0[12];
  v31 = v0[11];
  v33 = v0[9];
  v45[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x797469746E656469;
  v8._object = 0xEF293A5F2879654BLL;
  String.append(_:)(v8);
  v9._object = 0x800000010071BB70;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v30);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v30);
  (*(v6 + 104))(v31, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v33);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v10, v3, v37);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v2 + 8))(v3, v37);
  defaultLogger()();
  v11 = v43;
  v44 = *(v29 + 16);
  v44(v11, v35, v39);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[27];
  v18 = v0[19];
  v19 = v0[20];
  v20 = v0[18];
  if (v14)
  {
    v38 = v0[29];
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v21 = 136315394;
    *(v21 + 4) = sub_100141FE4(0x797469746E656469, 0xEF293A5F2879654BLL, v45);
    *(v21 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v34 = v15;
    v44(v22, v19, v20);
    v23 = _swift_stdlib_bridgeErrorToNSError();
    v40 = *(v18 + 8);
    v40(v19, v20);
    *(v21 + 14) = v23;
    *v32 = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v21, 0x16u);
    sub_10000BE18(v32, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v36);

    v34(v38, v17);
  }

  else
  {

    v40 = *(v18 + 8);
    v40(v19, v20);
    v15(v16, v17);
  }

  v24 = v0[21];
  v25 = v0[18];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v44(v26, v24, v25);
  swift_willThrow();

  v40(v24, v25);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1004E9C28(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A8580;

  return sub_1004E8468(a1);
}

uint64_t sub_1004E9CE8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004E9FA4, v1, 0);
}

uint64_t sub_1004E9FA4(uint64_t a1)
{
  v15 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[30];
  v6 = v1[25];
  v7 = v1[26];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010070FFE0, v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[31] = v10;
  sub_1004DD174(v1 + 2);
  sub_10000BA08(v1 + 2, v1[5]);
  XPCMobileDocumentReaderIdentityKeyRequest.value.getter();
  v11 = swift_task_alloc();
  v1[32] = v11;
  *v11 = v1;
  v11[1] = sub_1004EA7B0;
  v12 = v1[24];

  return sub_100357CC4(v12);
}

uint64_t sub_1004EA7B0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = v2[24];
  v4 = v2[23];
  v5 = v2[22];
  v6 = v2[8];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1004EAB0C;
  }

  else
  {
    v7 = sub_1004EA92C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004EA92C()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[25];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010070FFE0, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004EAB0C()
{
  v44 = v0;
  sub_10000BB78(v0 + 2);
  v42 = v0[31];
  v1 = v0[28];
  v32 = v0[21];
  v39 = v0[20];
  v41 = v0[25];
  v37 = v0[18];
  v2 = v0[17];
  v3 = v0[14];
  v33 = v0[15];
  v35 = v0[16];
  v4 = v0[13];
  v27 = v0[12];
  v5 = v0[10];
  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[19];
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x800000010070FFE0;
  String.append(_:)(v7);
  v8._object = 0x800000010071BB70;
  v8._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v27);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v4 + 8))(v3, v27);
  (*(v5 + 104))(v28, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v29);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v35 + 16))(v9, v2, v33);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v35 + 8))(v2, v33);
  defaultLogger()();
  v10 = *(v30 + 16);
  v10(v39, v32, v37);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[31];
  v15 = v0[27];
  v40 = v0[25];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  if (v13)
  {
    v36 = v0[27];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010070FFE0, v43);
    *(v19 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v10(v20, v16, v18);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v17 + 8);
    v38(v16, v18);
    *(v19 + 14) = v21;
    *v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderSessionProxy %s finished with error: %@", v19, 0x16u);
    sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v34);

    v14(v36, v40);
  }

  else
  {

    v38 = *(v17 + 8);
    v38(v16, v18);
    v14(v15, v40);
  }

  v22 = v0[21];
  v23 = v0[18];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v10(v24, v22, v23);
  swift_willThrow();

  v38(v22, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004EB2FC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A857C;

  return sub_1004E9CE8(v5);
}

uint64_t sub_1004EB3C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100007224(&qword_100841BB8, &qword_1006DEAB8);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderCertificateResponse();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004EB6C0, v1, 0);
}

uint64_t sub_1004EB6C0(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[32];
  v6 = v1[27];
  v7 = v1[28];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x6369666974726563, 0xEF293A5F28657461, v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[33] = v10;
  sub_1004DD174(v1 + 2);
  v11 = v1[7];
  sub_10000BA08(v1 + 2, v1[5]);
  if (v11)
  {
    XPCMobileDocumentReaderCertificateRequest.value.getter();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v1[22];
  v14 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  (*(*(v14 - 8) + 56))(v13, v12, 1, v14);
  v15 = swift_task_alloc();
  v1[34] = v15;
  *v15 = v1;
  v15[1] = sub_1004EBF70;
  v16 = v1[26];
  v17 = v1[22];

  return sub_100358224(v16, v17);
}

uint64_t sub_1004EBF70()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 64);
  sub_10000BE18(v3, &qword_100841BB8, &qword_1006DEAB8);
  if (v0)
  {
    v5 = sub_1004EC330;
  }

  else
  {
    v5 = sub_1004EC0C8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004EC0C8()
{
  v17 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0x6369666974726563, 0xEF293A5F28657461, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  (*(v11 + 16))(v0[25], v9, v10);
  v12 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderCertificateResponse());
  v13 = XPCMobileDocumentReaderCertificateResponse.init(value:)();
  (*(v11 + 8))(v9, v10);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1004EC330()
{
  v46 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[30];
  v41 = v0[27];
  v42 = v0[33];
  v35 = v0[21];
  v43 = v0[20];
  v45[0] = 0;
  v29 = v0[19];
  v39 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v37 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v30 = v0[12];
  v31 = v0[11];
  v33 = v0[9];
  v45[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010071C470;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x6369666974726563;
  v8._object = 0xEF293A5F28657461;
  String.append(_:)(v8);
  v9._object = 0x800000010071BB70;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v30);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v5 + 8))(v4, v30);
  (*(v6 + 104))(v31, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v33);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v10, v3, v37);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v2 + 8))(v3, v37);
  defaultLogger()();
  v11 = v43;
  v44 = *(v29 + 16);
  v44(v11, v35, v39);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[27];
  v18 = v0[19];
  v19 = v0[20];
  v20 = v0[18];
  if (v14)
  {
    v38 = v0[29];
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v21 = 136315394;
    *(v21 + 4) = sub_100141FE4(0x6369666974726563, 0xEF293A5F28657461, v45);
    *(v21 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v34 = v15;
    v44(v22, v19, v20);
    v23 = _swift_stdlib_bridgeErrorToNSError();
    v40 = *(v18 + 8);
    v40(v19, v20);
    *(v21 + 14) = v23;
    *v32 = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "MobileDocumentReaderSessionProxy %s finished with error: %@", v21, 0x16u);
    sub_10000BE18(v32, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v36);

    v34(v38, v17);
  }

  else
  {

    v40 = *(v18 + 8);
    v40(v19, v20);
    v15(v16, v17);
  }

  v24 = v0[21];
  v25 = v0[18];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v44(v26, v24, v25);
  swift_willThrow();

  v40(v24, v25);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1004ECB80(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004EB3C0(a1);
}

uint64_t sub_1004ECC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v6[29] = v12;
  v6[30] = *(v12 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_1004ECF04, v5, 0);
}

uint64_t sub_1004ECF04(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[34];
  v6 = v1[29];
  v7 = v1[30];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010070FE50, v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[35] = v10;
  sub_1004DD174(v1 + 2);
  sub_10000BA08(v1 + 2, v1[5]);
  XPCMobileDocumentReaderCertificateRequest.value.getter();
  v11 = swift_task_alloc();
  v1[36] = v11;
  *v11 = v1;
  v11[1] = sub_1004ED714;
  v12 = v1[28];
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[8];
  v16 = v1[9];

  return sub_1003596C8(v12, v15, v16, v13, v14);
}

uint64_t sub_1004ED714()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[12];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1004EDA70;
  }

  else
  {
    v7 = sub_1004ED890;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1004ED890()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[29];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010070FE50, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004EDA70()
{
  v44 = v0;
  sub_10000BB78(v0 + 2);
  v42 = v0[35];
  v1 = v0[32];
  v32 = v0[25];
  v39 = v0[24];
  v41 = v0[29];
  v37 = v0[22];
  v2 = v0[21];
  v3 = v0[18];
  v33 = v0[19];
  v35 = v0[20];
  v4 = v0[17];
  v27 = v0[16];
  v5 = v0[14];
  v28 = v0[15];
  v29 = v0[13];
  v30 = v0[23];
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000030;
  v7._object = 0x800000010070FE50;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v27);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v4 + 8))(v3, v27);
  (*(v5 + 104))(v28, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v29);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v35 + 16))(v9, v2, v33);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v35 + 8))(v2, v33);
  defaultLogger()();
  v10 = *(v30 + 16);
  v10(v39, v32, v37);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[35];
  v15 = v0[31];
  v40 = v0[29];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[22];
  if (v13)
  {
    v36 = v0[31];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0xD000000000000030, 0x800000010070FE50, v43);
    *(v19 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v10(v20, v16, v18);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v17 + 8);
    v38(v16, v18);
    *(v19 + 14) = v21;
    *v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderSessionProxy %s finished with error: %@", v19, 0x16u);
    sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v34);

    v14(v36, v40);
  }

  else
  {

    v38 = *(v17 + 8);
    v38(v16, v18);
    v14(v15, v40);
  }

  v22 = v0[25];
  v23 = v0[22];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v10(v24, v22, v23);
  swift_willThrow();

  v38(v22, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004EE278(void *a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  if (a3)
  {
    v11 = a3;
    v12 = a1;

    a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v15 = a1;

    v14 = 0xF000000000000000;
  }

  v5[6] = a3;
  v5[7] = v14;
  v16 = swift_task_alloc();
  v5[8] = v16;
  *v16 = v5;
  v16[1] = sub_1004EE3A8;

  return sub_1004ECC40(a1, v8, v10, a3, v14);
}

uint64_t sub_1004EE3A8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_10000BD94(v6, v5);

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1004EE5A8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004EE864, v1, 0);
}

uint64_t sub_1004EE864(uint64_t a1)
{
  v14 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[30];
  v6 = v1[25];
  v7 = v1[26];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010071C500, v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[31] = v10;
  sub_1004DD174(v1 + 2);
  v11 = sub_10000BA08(v1 + 2, v1[5]);
  XPCMobileDocumentReaderCertificateRequest.value.getter();
  v1[32] = *v11;

  return _swift_task_switch(sub_1004EF008, 0, 0);
}

uint64_t sub_1004EF008(uint64_t a1)
{
  v2 = MobileDocumentReaderCertificateRequest.sessionIdentifier.getter();
  v4 = v3;
  *(v1 + 264) = v3;
  v5 = swift_task_alloc();
  *(v1 + 272) = v5;
  *v5 = v1;
  v5[1] = sub_1004EF0C4;

  return sub_100352FB4(v2, v4);
}

uint64_t sub_1004EF0C4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004EF254, v4, 0);
}

uint64_t sub_1004EF254()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[25];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000015, 0x800000010071C500, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004EF5C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1004A857C;

  return sub_1004EE5A8(v5);
}

uint64_t sub_1004EF684()
{
  v1[7] = v0;
  v2 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderIssuerRootCertificateList();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_100007224(&qword_1008460D0, &unk_1006E6820);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[27] = v7;
  v1[28] = *(v7 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004EF990, v0, 0);
}

uint64_t sub_1004EF990(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[32];
  v6 = v1[27];
  v7 = v1[28];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071C4E0, v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[33] = v10;
  sub_1004DD174(v1 + 2);
  v1[34] = *sub_10000BA08(v1 + 2, v1[5]);

  return _swift_task_switch(sub_1004F016C, 0, 0);
}

uint64_t sub_1004F016C()
{
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1004F0200;

  return sub_100345F94();
}

uint64_t sub_1004F0200(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);
    v6 = sub_1004F0704;
  }

  else
  {
    *(v4 + 296) = a1;
    v6 = sub_1004F0334;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004F0334()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[7];
  sub_1004DCEA8(v0[37]);

  MobileDocumentReaderIssuerRootCertificateList.init(certificateData:)();
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_1004F03FC, v4, 0);
}

uint64_t sub_1004F03FC()
{
  v23 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[27];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071C4E0, &v22);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);
  v9 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  sub_10000BBC4(v0[26], v9, &qword_1008460D0, &unk_1006E6820);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = v0[26];
  if (v12 == 1)
  {
    sub_10000BE18(v0[26], &qword_1008460D0, &unk_1006E6820);
    v21 = 0;
  }

  else
  {
    v14 = v0[24];
    v16 = v0[22];
    v15 = v0[23];
    v17 = v0[21];
    (*(v16 + 32))(v14, v0[25], v17);
    (*(v16 + 16))(v15, v14, v17);
    v18 = objc_allocWithZone(type metadata accessor for XPCMobileDocumentReaderIssuerRootCertificateList());
    v21 = XPCMobileDocumentReaderIssuerRootCertificateList.init(value:)();
    (*(v16 + 8))(v14, v17);
    sub_10000BE18(v13, &qword_1008460D0, &unk_1006E6820);
  }

  v19 = v0[1];

  return v19(v21);
}

uint64_t sub_1004F0704()
{
  v44 = v0;
  sub_10000BB78(v0 + 2);
  v42 = v0[33];
  v1 = v0[30];
  v32 = v0[20];
  v39 = v0[19];
  v41 = v0[27];
  v37 = v0[17];
  v2 = v0[16];
  v3 = v0[13];
  v33 = v0[14];
  v35 = v0[15];
  v4 = v0[12];
  v27 = v0[11];
  v5 = v0[9];
  v28 = v0[10];
  v29 = v0[8];
  v30 = v0[18];
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x800000010071C4E0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v27);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v4 + 8))(v3, v27);
  (*(v5 + 104))(v28, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v29);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v35 + 16))(v9, v2, v33);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v35 + 8))(v2, v33);
  defaultLogger()();
  v10 = *(v30 + 16);
  v10(v39, v32, v37);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[33];
  v15 = v0[29];
  v40 = v0[27];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  if (v13)
  {
    v36 = v0[29];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071C4E0, v43);
    *(v19 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v10(v20, v17, v18);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v16 + 8);
    v38(v17, v18);
    *(v19 + 14) = v21;
    *v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderSessionProxy %s finished with error: %@", v19, 0x16u);
    sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v34);

    v14(v36, v40);
  }

  else
  {

    v38 = *(v16 + 8);
    v38(v17, v18);
    v14(v15, v40);
  }

  v22 = v0[20];
  v23 = v0[17];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v10(v24, v22, v23);
  swift_willThrow();

  v38(v22, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004F0F00(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F8F88;

  return sub_1004EF684();
}

uint64_t sub_1004F0FA8()
{
  v1[7] = v0;
  v2 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004F1208, v0, 0);
}

uint64_t sub_1004F1208(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[26];
  v6 = v1[21];
  v7 = v1[22];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010071C4C0, v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[27] = v10;
  sub_1004DD174(v1 + 2);
  v1[28] = *sub_10000BA08(v1 + 2, v1[5]);

  return _swift_task_switch(sub_1004F19C0, 0, 0);
}

uint64_t sub_1004F19C0()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1004F1A54;

  return sub_10034AA50();
}

uint64_t sub_1004F1A54()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1004F1D54;
  }

  else
  {
    v4 = sub_1004F1B80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004F1B80()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[21];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010071C4C0, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004F1D54()
{
  v44 = v0;
  sub_10000BB78(v0 + 2);
  v42 = v0[27];
  v1 = v0[24];
  v32 = v0[20];
  v39 = v0[19];
  v41 = v0[21];
  v37 = v0[17];
  v2 = v0[16];
  v3 = v0[13];
  v33 = v0[14];
  v35 = v0[15];
  v4 = v0[12];
  v27 = v0[11];
  v5 = v0[9];
  v28 = v0[10];
  v29 = v0[8];
  v30 = v0[18];
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000018;
  v7._object = 0x800000010071C4C0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v27);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v4 + 8))(v3, v27);
  (*(v5 + 104))(v28, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v29);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v35 + 16))(v9, v2, v33);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v35 + 8))(v2, v33);
  defaultLogger()();
  v10 = *(v30 + 16);
  v10(v39, v32, v37);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[27];
  v15 = v0[23];
  v40 = v0[21];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  if (v13)
  {
    v36 = v0[23];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0xD000000000000018, 0x800000010071C4C0, v43);
    *(v19 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v10(v20, v17, v18);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v16 + 8);
    v38(v17, v18);
    *(v19 + 14) = v21;
    *v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderSessionProxy %s finished with error: %@", v19, 0x16u);
    sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v34);

    v14(v36, v40);
  }

  else
  {

    v38 = *(v16 + 8);
    v38(v17, v18);
    v14(v15, v40);
  }

  v22 = v0[20];
  v23 = v0[17];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v10(v24, v22, v23);
  swift_willThrow();

  v38(v22, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004F2520(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86EC;

  return sub_1004F0FA8();
}

uint64_t sub_1004F25C8()
{
  v1[7] = v0;
  v2 = type metadata accessor for MobileDocumentReaderStoreSession.Error.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderStoreSession.Error();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1004F2828, v0, 0);
}

uint64_t sub_1004F2828(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[26];
  v6 = v1[21];
  v7 = v1[22];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010071C4A0, v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[27] = v10;
  sub_1004DD174(v1 + 2);
  v1[28] = *sub_10000BA08(v1 + 2, v1[5]);

  return _swift_task_switch(sub_1004F2FE0, 0, 0);
}

uint64_t sub_1004F2FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1004F3074;

  return sub_10034979C();
}

uint64_t sub_1004F3074()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1004F3374;
  }

  else
  {
    v4 = sub_1004F31A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004F31A0()
{
  v12 = v0;
  sub_10000BB78(v0 + 2);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[21];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010071C4A0, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderSessionProxy %s completed", v7, 0xCu);
    sub_10000BB78(v8);
  }

  v4(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004F3374()
{
  v44 = v0;
  sub_10000BB78(v0 + 2);
  v42 = v0[27];
  v1 = v0[24];
  v32 = v0[20];
  v39 = v0[19];
  v41 = v0[21];
  v37 = v0[17];
  v2 = v0[16];
  v3 = v0[13];
  v33 = v0[14];
  v35 = v0[15];
  v4 = v0[12];
  v27 = v0[11];
  v5 = v0[9];
  v28 = v0[10];
  v29 = v0[8];
  v30 = v0[18];
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x800000010071C470;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x800000010071C4A0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000015;
  v8._object = 0x800000010071BB70;
  String.append(_:)(v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v42(v1, v41);
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v27);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  (*(v4 + 8))(v3, v27);
  (*(v5 + 104))(v28, enum case for MobileDocumentReaderStoreSession.Error.Code.unknown(_:), v29);
  MobileDocumentReaderStoreSession.Error.init(code:underlyingError:)();
  sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v35 + 16))(v9, v2, v33);
  MobileDocumentReaderStoreSession.Error.underlyingError.setter();
  (*(v35 + 8))(v2, v33);
  defaultLogger()();
  v10 = *(v30 + 16);
  v10(v39, v32, v37);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[27];
  v15 = v0[23];
  v40 = v0[21];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  if (v13)
  {
    v36 = v0[23];
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0xD000000000000011, 0x800000010071C4A0, v43);
    *(v19 + 12) = 2112;
    sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
    swift_allocError();
    v10(v20, v17, v18);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v16 + 8);
    v38(v17, v18);
    *(v19 + 14) = v21;
    *v31 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderSessionProxy %s finished with error: %@", v19, 0x16u);
    sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BB78(v34);

    v14(v36, v40);
  }

  else
  {

    v38 = *(v16 + 8);
    v38(v17, v18);
    v14(v15, v40);
  }

  v22 = v0[20];
  v23 = v0[17];
  sub_1004F4084(&qword_1008460C8, &type metadata accessor for MobileDocumentReaderStoreSession.Error, &protocol conformance descriptor for MobileDocumentReaderStoreSession.Error);
  swift_allocError();
  v10(v24, v22, v23);
  swift_willThrow();

  v38(v22, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004F3B40(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86EC;

  return sub_1004F25C8();
}

uint64_t sub_1004F3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v8 = type metadata accessor for DIPError.Code();
  v16 = *(v8 - 8);
  v17 = v8;
  __chkstk_darwin(v8);
  v18 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentReaderBundleTypeCheckOutcome();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08((v4 + 200), *(v4 + 224));
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = v24;
  v23 = 0;
  dispatch thunk of MobileDocumentReaderEntitlementChecking.checkBundleTypeSupported(auditToken:)();
  result = (*(v11 + 88))(v13, v10);
  if (result != enum case for MobileDocumentReaderBundleTypeCheckOutcome.supported(_:))
  {
    if (result == enum case for MobileDocumentReaderBundleTypeCheckOutcome.unsupportedApplicationExtension(_:))
    {
      (*(v16 + 104))(v18, enum case for DIPError.Code.documentReaderApplicationExtensionsNotPermitted(_:), v17);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    else
    {
      if (result != enum case for MobileDocumentReaderBundleTypeCheckOutcome.unknownBundleType(_:))
      {
        (*(v11 + 8))(v13, v10);
      }

      (*(v16 + 104))(v18, enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:), v17);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1004F4084(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1004F3FF0()
{
  sub_10000BE18(v0 + 112, &qword_1008460D8, &qword_1006E6838);
  sub_10000BE18(v0 + 152, &unk_1008460F0, &unk_1006E6848);
  swift_unknownObjectRelease();
  sub_10000BB78((v0 + 200));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004F4084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004F40CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F410C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004F3B40(v2, v3);
}

uint64_t sub_1004F41B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004F2520(v2, v3);
}

uint64_t sub_1004F4264()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004F0F00(v2, v3);
}

uint64_t sub_1004F4310()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004EF5C0(v2, v3, v4);
}

uint64_t sub_1004F43C4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004F441C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_1004EE278(v2, v3, v4, v5, v6);
}

uint64_t sub_1004F44EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004ECB80(v2, v3, v4);
}

uint64_t sub_1004F45A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004EB2FC(v2, v3, v4);
}

uint64_t sub_1004F4654()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004E9C28(v2, v3, v4);
}

uint64_t sub_1004F470C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004E7764(v2, v3);
}

uint64_t sub_1004F47B8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004F4808()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100041F04;

  return sub_1004E61B4(v2, v3, v5, v4);
}

uint64_t sub_1004F48C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100027B9C;

  return sub_1004E4960(v2, v3, v4);
}

uint64_t sub_1004F497C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004E2E44(v2, v3, v4);
}

uint64_t sub_1004F4A30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004E14BC(v2, v3, v4);
}

uint64_t sub_1004F4AE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100041F04;

  return sub_1004DFBB0(v2, v3);
}

uint64_t sub_1004F4B90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004DE66C(v2, v3, v4);
}

id sub_1004F4CE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "WebPresentmentListener %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v4 + 8))(v6, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_listener] invalidate];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_1004F4F80(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004F5040, 0, 0);
}

uint64_t sub_1004F5040()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = sub_100007224(&unk_100846140, &qword_1006E6A80);
    v3 = swift_task_alloc();
    v0[11] = v3;
    v4 = type metadata accessor for WebPresentmentRequest();
    *v3 = v0;
    v3[1] = sub_1004F527C;
    v5 = v0[5];

    return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v5, v2, &unk_1006E6AA0, 0, v2, v4);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[7]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004F527C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1004F53FC;
  }

  else
  {
    v2 = sub_1004F5390;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F5390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F53FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F5468(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_1004F548C, 0, 0);
}

uint64_t sub_1004F548C()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004F55A8;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100846150, &qword_1006E6AA8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015FDB8;
  v0[13] = &unk_1008151D0;
  v0[14] = v2;
  [v1 releaseRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F55A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1003237A8;
  }

  else
  {
    v2 = sub_1004F56B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F56B8()
{
  v1 = *(v0 + 144);
  XPCWebPresentmentRequest.value.getter();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F5720(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1004F57E0, 0, 0);
}

uint64_t sub_1004F57E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = v0[5];
    v3 = sub_100007224(&unk_100846140, &qword_1006E6A80);
    v4 = swift_allocObject();
    v0[11] = v4;
    *(v4 + 16) = v2;
    v5 = v2;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1004F5A40;

    return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v6, v3, &unk_1006E6A90, v4, v3, &type metadata for () + 8);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[7]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1004F5A40()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1004F5B5C;
  }

  else
  {

    v2 = sub_1004F7674;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F5B5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F5BD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 144) = a3;
  *(v3 + 152) = v4;
  return _swift_task_switch(sub_1004F5BF4, 0, 0);
}

uint64_t sub_1004F5BF4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1004F5D14;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_1008151A8;
  v0[14] = v3;
  [v1 connectToViewServiceWith:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F5D14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10017808C;
  }

  else
  {
    v2 = sub_1002D0E30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F5E24()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "WebPresentmentListener %s Connection interrupted", v6, 0xCu);
    sub_10000BB78(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004F5FBC(uint64_t a1)
{
  v1 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "WebPresentmentListener %s Connection invalidated", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    sub_1003E653C(0, 0, v3, &unk_1006E6A70, v15);
  }

  return result;
}

uint64_t sub_1004F6258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100500654();
}

uint64_t sub_1004F6358(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveTaskManager();
  v63[3] = active;
  v63[4] = &off_100812348;
  v63[0] = a2;
  v7 = objc_opt_self();

  v8 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared31WebPresentmentDelegateInterface_];
  [a1 setRemoteObjectInterface:v8];

  v9 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared23WebPresentmentInterface_];
  [a1 setExportedInterface:v9];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for WebPresentmentRequestReleaser();
  v12 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  v13 = swift_allocObject();
  *(v13 + 20) = 0;
  *(v13 + 16) = 0;
  v12[14] = v13;
  v12[15] = &unk_1006E6A40;
  v12[16] = v10;

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020260(v63, &v41);

  [a1 auditToken];
  v61 = type metadata accessor for ProcessVisibilityMonitor();
  v62 = &protocol witness table for ProcessVisibilityMonitor;
  sub_100032DBC(&v60);
  ProcessVisibilityMonitor.init()();
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  v15 = qword_100882378;
  v16 = sub_10001F370(&v41, v44);
  v37[1] = v37;
  __chkstk_darwin(v16);
  v18 = (v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v58 = v11;
  v59 = &off_100811F78;
  *&v57 = v12;
  v56[3] = active;
  v56[4] = &off_100812348;
  v56[0] = v20;
  v37[2] = v12;
  v54 = &type metadata for WebPresentmentManagerFactory;
  v55 = &off_100811B50;
  type metadata accessor for WebPresentmentSessionProxy();
  v21 = swift_allocObject();
  v22 = sub_10001F370(v56, active);
  __chkstk_darwin(v22);
  v24 = (v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  sub_10001F370(v53, v54);
  v26 = *v24;
  v51 = active;
  v52 = &off_100812348;
  v49 = &off_100811B50;
  *&v50 = v26;
  v48 = &type metadata for WebPresentmentManagerFactory;

  swift_defaultActor_initialize();
  *(v21 + 208) = 0;
  *(v21 + 112) = &unk_1006E6A58;
  *(v21 + 120) = v14;
  sub_10001F358(&v60, v21 + 168);
  sub_10001F358(&v57, v21 + 128);
  sub_10001F358(&v50, v21 + 296);
  sub_10001F358(&v47, v21 + 216);
  *(v21 + 256) = v15;
  v27 = v65;
  *(v21 + 264) = v64;
  *(v21 + 280) = v27;
  sub_10000BB78(v53);
  sub_10000BB78(v56);
  sub_10000BB78(&v41);

  [a1 setExportedObject:v21];
  v45 = sub_1004F5E24;
  v46 = 0;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100503A7C;
  v44 = &unk_1008150E0;
  v28 = _Block_copy(&v41);
  [a1 setInterruptionHandler:v28];
  _Block_release(v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v45 = sub_1004F7460;
  v46 = v29;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100503A7C;
  v44 = &unk_100815130;
  v30 = _Block_copy(&v41);

  [a1 setInvalidationHandler:v30];
  _Block_release(v30);
  [a1 activate];
  v31 = v38;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v41);
    _os_log_impl(&_mh_execute_header, v32, v33, "WebPresentmentListener %s Activating new connection", v34, 0xCu);
    sub_10000BB78(v35);
  }

  else
  {
  }

  (*(v39 + 8))(v31, v40);
  return sub_10000BB78(v63);
}

uint64_t sub_1004F6AC0(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v8;
    v17 = v5;
    v18 = v1;
    v19 = v2;
    v20 = v16;
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
    _os_log_impl(&_mh_execute_header, v14, v15, "WebPresentmentListener %s", v20, 0xCu);
    sub_10000BB78(v21);

    v2 = v19;
    v1 = v18;
    v5 = v17;
    v8 = v37;
  }

  v22 = *(v2 + 8);
  v22(v13, v1);
  if (static WebPresentmentEntitlementChecker.checkEntitlement(connection:)())
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
      _os_log_impl(&_mh_execute_header, v23, v24, "WebPresentmentListener %s Public entitlement present", v25, 0xCu);
      sub_10000BB78(v26);
    }

    v27 = v11;
LABEL_11:
    v22(v27, v1);
    return 1;
  }

  if (static WebPresentmentEntitlementChecker.checkWebBrowserEntitlement(connection:)())
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
      _os_log_impl(&_mh_execute_header, v28, v29, "WebPresentmentListener %s Web browser entitlement present", v30, 0xCu);
      sub_10000BB78(v31);
    }

    v27 = v8;
    goto LABEL_11;
  }

  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v38);
    _os_log_impl(&_mh_execute_header, v33, v34, "WebPresentmentListener %s No valid entitlements present", v35, 0xCu);
    sub_10000BB78(v36);
  }

  v22(v5, v1);
  return 0;
}

uint64_t sub_1004F6FB8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "WebPresentmentListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v5 + 8);
  v15(v10, v4);
  v16 = sub_1004F6AC0(a1);
  if (v16)
  {
    v17 = sub_10000BA08((v2 + OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_activeTaskManager), *(v2 + OBJC_IVAR____TtC8coreidvd22WebPresentmentListener_activeTaskManager + 24));
    sub_1004F6358(a1, *v17);
  }

  else
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v24);
      _os_log_impl(&_mh_execute_header, v18, v19, "WebPresentmentListener %s Insufficient entitlements, rejecting new connection", v20, 0xCu);
      sub_10000BB78(v21);
    }

    v15(v8, v4);
  }

  return v16 & 1;
}

uint64_t sub_1004F72A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F72DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1004F4F80(a1, v1);
}

uint64_t sub_1004F7378(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_1004F5720(a1, v1);
}

uint64_t sub_1004F7410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004F7428()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F7468()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004F74A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_1004F6258();
}

uint64_t sub_1004F755C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F7594(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_1004F5BD0(a1, a2, v6);
}

id sub_1004F7684()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "WebPresentmentRemoteAlertListener %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v4 + 8))(v6, v3);
  [*&v1[OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_listener] invalidate];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t sub_1004F7938(const char *a1, ...)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 0xCu);
    sub_10000BB78(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004F7B40(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveTaskManager();
  v40[3] = active;
  v40[4] = &off_100812348;
  v40[0] = a2;
  v9 = objc_opt_self();

  v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared34WebPresentmentRemoteAlertInterface_];
  [a1 setExportedInterface:v10];

  sub_100020260(v40, &aBlock);
  v11 = sub_10001F370(&aBlock, v33);
  __chkstk_darwin(v11);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v39[3] = active;
  v39[4] = &off_100812348;
  v39[0] = v15;
  type metadata accessor for WebPresentmentRemoteAlertProxy();
  v16 = swift_allocObject();
  v17 = sub_10001F370(v39, active);
  __chkstk_darwin(v17);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v37 = active;
  v38 = &off_100812348;
  *&v36 = v21;
  swift_defaultActor_initialize();
  *(v16 + 144) = 0;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  sub_10001F358(&v36, v16 + 152);
  sub_10000BB78(v39);
  sub_10000BB78(&aBlock);
  [a1 setExportedObject:v16];
  v34 = sub_1004F7920;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100503A7C;
  v33 = &unk_100815208;
  v22 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler:v22];
  _Block_release(v22);
  v34 = sub_1004F792C;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100503A7C;
  v33 = &unk_100815230;
  v23 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler:v23];
  _Block_release(v23);
  [a1 activate];
  defaultLogger()();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100141FE4(0xD00000000000002CLL, 0x800000010071C770, &aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "WebPresentmentRemoteAlertListener %s Activating new connection", v26, 0xCu);
    sub_10000BB78(v27);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  return sub_10000BB78(v40);
}

uint64_t sub_1004F803C(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - v7;
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
    _os_log_impl(&_mh_execute_header, v11, v12, "WebPresentmentRemoteAlertListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v2 + 8);
  v15(v10, v1);
  v16 = static WebPresentmentRemoteAlertEntitlementChecker.checkInternalEntitlement(connection:)();
  if (v16)
  {
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "WebPresentmentRemoteAlertListener %s Internal entitlement present", v19, 0xCu);
      sub_10000BB78(v20);
    }

    v21 = v8;
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071B7B0, &v28);
      _os_log_impl(&_mh_execute_header, v22, v23, "WebPresentmentRemoteAlertListener %s No valid entitlements present", v24, 0xCu);
      sub_10000BB78(v25);
    }

    v21 = v5;
  }

  v15(v21, v1);
  return v16 & 1;
}

uint64_t sub_1004F83FC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "WebPresentmentRemoteAlertListener %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  v15 = *(v5 + 8);
  v15(v10, v4);
  v16 = sub_1004F803C(a1);
  if (v16)
  {
    v17 = sub_10000BA08((v2 + OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_activeTaskManager), *(v2 + OBJC_IVAR____TtC8coreidvd33WebPresentmentRemoteAlertListener_activeTaskManager + 24));
    sub_1004F7B40(a1, *v17);
  }

  else
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100141FE4(0xD000000000000026, 0x8000000100715680, &v24);
      _os_log_impl(&_mh_execute_header, v18, v19, "WebPresentmentRemoteAlertListener %s Insufficient entitlements, rejecting new connection", v20, 0xCu);
      sub_10000BB78(v21);
    }

    v15(v8, v4);
  }

  return v16 & 1;
}

uint64_t sub_1004F86E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004F8708(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v2[26] = *(v5 + 64);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004F88CC, v1, 0);
}

uint64_t sub_1004F88CC(uint64_t a1)
{
  v41 = v1;
  v2 = v1[28];
  v3 = v1[24];
  v4 = v1[25];
  v5 = v1[18];
  defaultLogger()();
  v38 = *(v4 + 16);
  v38(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v6, v39);
  v8 = v1[30];
  v9 = v1[31];
  v10 = v1[28];
  v11 = v1[29];
  v13 = v1[24];
  v12 = v1[25];
  if (v7)
  {
    v37 = v1[29];
    v14 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100141FE4(0xD000000000000017, 0x800000010071CAE0, v40);
    *(v14 + 12) = 2080;
    v15 = URL.absoluteString.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_100141FE4(v15, v17, v40);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v39, "WebPresentmentRemoteAlertProxy %s scannableCodePayload: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v9, v37);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
    (*(v8 + 8))(v9, v11);
  }

  v19 = v1[19];
  swift_beginAccess();
  sub_10000BBC4(v19 + 112, (v1 + 2), &qword_100846278, &unk_1006E6B60);
  v20 = v1[5];
  sub_10000BE18((v1 + 2), &qword_100846278, &unk_1006E6B60);
  v21 = v1[27];
  if (v20)
  {
    (*(v1[21] + 104))(v1[22], enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v1[20]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004FD2B0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v22 = v1[1];

    return v22();
  }

  else
  {
    v24 = v1[25];
    v25 = v1[23];
    v26 = v1[24];
    v28 = v1[18];
    v27 = v1[19];
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
    v38(v21, v28, v26);
    v31 = sub_1004FD2B0(&qword_100846280, v30, type metadata accessor for WebPresentmentRemoteAlertProxy, &unk_1006E6B38);
    v32 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = v27;
    *(v33 + 3) = v31;
    *(v33 + 4) = v27;
    (*(v24 + 32))(&v33[v32], v21, v26);
    swift_retain_n();
    v34 = sub_1003E653C(0, 0, v25, &unk_1006E6BB0, v33);
    v1[32] = v34;
    v1[10] = sub_100007224(&qword_100846290, &unk_1006E6BB8);
    v1[11] = &off_100812330;
    v1[7] = v34;
    swift_beginAccess();

    sub_1004FCB5C((v1 + 7), v19 + 112);
    swift_endAccess();
    v35 = sub_10000BA08((v27 + 152), *(v27 + 176));
    v1[33] = v35;
    v36 = *v35;

    return _swift_task_switch(sub_1004F8E74, v36, 0);
  }
}

uint64_t sub_1004F8E74()
{
  sub_100501270(*(v0 + 256), **(v0 + 264));

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1004F8F2C;
  v2 = *(v0 + 256);

  return Task<>.value.getter(v1, v2, &type metadata for () + 8);
}

uint64_t sub_1004F8F2C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1004F903C, v1, 0);
}

uint64_t sub_1004F903C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F90E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[332] = a5;
  v5[331] = a4;
  v7 = type metadata accessor for DateProvider();
  v5[333] = v7;
  v5[334] = *(v7 - 8);
  v5[335] = swift_task_alloc();
  v5[336] = swift_task_alloc();
  v5[337] = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  v5[338] = swift_task_alloc();

  return _swift_task_switch(sub_1004F91E4, a4, 0);
}

uint64_t sub_1004F91E4()
{
  v167 = v0;
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2672);
  v159 = *(v0 + 2664);
  v162 = *(v0 + 2696);
  v5 = type metadata accessor for DeviceInformationProvider();
  *(v0 + 840) = v5;
  *(v0 + 848) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 816));
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  *(v0 + 856) = static UserDefaultsConfiguration.standard.getter();
  v6 = sub_100134AD0();
  if (sub_100134AD0())
  {
    v7 = 0xED0000747365742DLL;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = type metadata accessor for DigitalPresentmentSessionManager();
  swift_allocObject();
  v9 = sub_10015D65C(v6 & 1, 0x797469746E656469, v7, 2);
  *(v0 + 2712) = v9;
  type metadata accessor for PassManager();
  v152 = swift_allocObject();
  v157 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
  v155 = type metadata accessor for DigitalPresentmentUIPresenter();

  v149 = v1;
  DeviceInformationProvider.init()();
  v146 = v5;
  *(v0 + 1648) = v5;
  *(v0 + 1656) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 1624));
  DeviceInformationProvider.init()();
  v164 = 0u;
  v165 = 0u;
  v166 = 0;
  type metadata accessor for KRLTrustValidator();
  swift_allocObject();
  v10 = sub_10010F338();

  DateProvider.init()();
  v140 = *(v4 + 16);
  v140(v3, v2, v159);
  v11 = sub_1003A0748(&v164, v10, v3);

  v139 = *(v4 + 8);
  v139(v2, v159);
  *(v0 + 1608) = v8;
  *(v0 + 1616) = &off_100809E48;
  v144 = v9;
  *(v0 + 1584) = v9;
  *(v0 + 1408) = v162;
  *(v0 + 1416) = &off_100810218;
  v12 = sub_100032DBC((v0 + 1384));
  sub_1003EADF0(v1, v12);
  v13 = type metadata accessor for PresentmentKeyRevocationValidator();
  *(v0 + 1368) = v13;
  *(v0 + 1376) = &off_100809510;
  *(v0 + 1344) = v11;
  v160 = type metadata accessor for WalletPassPresentmentManager();
  v14 = swift_allocObject();
  v15 = sub_10001F370(v0 + 1584, v8);
  v16 = *(v8 - 8);
  v17 = swift_task_alloc();
  v141 = *(v16 + 16);
  v141(v17, v15, v8);
  v18 = *(v0 + 1408);
  v19 = sub_10001F370(v0 + 1384, v18);
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  v22 = *(v0 + 1368);
  v23 = sub_10001F370(v0 + 1344, v22);
  v24 = *(v22 - 8);
  v25 = swift_task_alloc();
  (*(v24 + 16))(v25, v23, v22);
  v26 = *v17;
  v27 = *v25;
  v148 = v8;
  *(v0 + 1048) = v8;
  *(v0 + 1056) = &off_100809E48;
  *(v0 + 1024) = v26;
  *(v0 + 968) = v162;
  *(v0 + 976) = &off_100810218;
  v28 = sub_100032DBC((v0 + 944));
  sub_1003EAE54(v21, v28);
  *(v0 + 2608) = v13;
  *(v0 + 2616) = &off_100809510;
  *(v0 + 2584) = v27;
  swift_defaultActor_initialize();
  sub_1003EAEB8(v149);
  *(v14 + 272) = 0u;
  *(v14 + 288) = 0u;
  *(v14 + 304) = 0;
  sub_10001F358((v0 + 1024), v14 + 112);
  *(v14 + 152) = v152;
  *(v14 + 160) = v157;
  *(v14 + 168) = &off_100809DF0;
  *(v14 + 176) = v155;
  *(v14 + 184) = &off_100809F18;
  sub_10001F358((v0 + 944), v14 + 192);
  sub_10001F358((v0 + 1624), v14 + 232);
  sub_10001F358((v0 + 2584), v14 + 312);
  sub_10000BB78((v0 + 1344));

  sub_10000BB78((v0 + 1384));

  sub_10000BB78((v0 + 1584));

  *(v0 + 704) = v160;
  *(v0 + 712) = &off_100810230;
  *(v0 + 680) = v14;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v29 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v29 + 54);
  sub_1000318FC(&v29[4], v0 + 16);
  os_unfair_lock_unlock(v29 + 54);
  v30 = *(v0 + 2664);
  v31 = *(v0 + 88);

  sub_100031918(v0 + 16);
  *(v0 + 1008) = type metadata accessor for MobileDocumentRegistrationDataContainer();
  *(v0 + 1016) = sub_1004FD2B0(&qword_100843228, 255, type metadata accessor for MobileDocumentRegistrationDataContainer, &unk_1006E8818);
  *(v0 + 984) = v31;
  *(v0 + 1088) = type metadata accessor for MobileDocumentProviderRegistrationValidator();
  *(v0 + 1096) = &protocol witness table for MobileDocumentProviderRegistrationValidator;
  sub_100032DBC((v0 + 1064));
  MobileDocumentProviderRegistrationValidator.init()();
  v32 = type metadata accessor for MobileDocumentProviderRegistrationStorage();
  v33 = swift_allocObject();
  sub_10001F358((v0 + 984), v33 + 16);
  sub_10001F358((v0 + 1064), v33 + 56);
  *(v0 + 608) = v32;
  *(v0 + 616) = &off_10080DE08;
  *(v0 + 584) = v33;
  v34 = type metadata accessor for MobileDocumentProviderRegistrationEntitlementChecker();
  *(v0 + 664) = v30;
  *(v0 + 672) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 640));
  DateProvider.init()();
  *(v0 + 624) = v34;
  *(v0 + 632) = &protocol witness table for MobileDocumentProviderRegistrationEntitlementChecker;
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  v35 = type metadata accessor for ExtensionPointManager();
  swift_allocObject();
  v36 = ExtensionPointManager.init(extensionPointIdentifier:)();
  *(v0 + 1128) = v35;
  *(v0 + 1136) = &protocol witness table for ExtensionPointManager;
  *(v0 + 1104) = v36;
  *(v0 + 1168) = type metadata accessor for BundleRecordFetcher();
  *(v0 + 1176) = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC((v0 + 1144));
  BundleRecordFetcher.init()();
  *(v0 + 1248) = v146;
  *(v0 + 1256) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 1224));
  DeviceInformationProvider.init()();
  static UserDefaultsConfiguration.standard.getter();
  *(v0 + 1208) = type metadata accessor for WebPresentmentDeviceSupportProvider();
  *(v0 + 1216) = &protocol witness table for WebPresentmentDeviceSupportProvider;
  sub_100032DBC((v0 + 1184));
  WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
  type metadata accessor for FirstPartyDocumentProviderPreferencesManager();
  swift_allocObject();
  v136 = FirstPartyDocumentProviderPreferencesManager.init(userDefaults:)();
  *(v0 + 1288) = &type metadata for MobileDocumentProviderFilter;
  *(v0 + 1296) = &off_10080DCC8;
  v37 = swift_allocObject();
  *(v0 + 1264) = v37;
  sub_1003EAFA4(v0 + 584, v37 + 16);
  v138 = type metadata accessor for MobileDocumentProviderDataSource();
  v38 = swift_allocObject();
  *(v0 + 2720) = v38;
  v39 = sub_10001F370(v0 + 1264, &type metadata for MobileDocumentProviderFilter);
  v40 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v40, v39, &type metadata for MobileDocumentProviderFilter);
  *(v0 + 1328) = &type metadata for MobileDocumentProviderFilter;
  *(v0 + 1336) = &off_10080DCC8;
  v42 = v0 + 1544;
  v41 = v0 + 1464;
  v43 = swift_allocObject();
  *(v0 + 1304) = v43;
  *(v43 + 16) = *v40;
  v44 = *(v40 + 64);
  v46 = *(v40 + 16);
  v45 = *(v40 + 32);
  *(v43 + 64) = *(v40 + 48);
  *(v43 + 80) = v44;
  *(v43 + 32) = v46;
  *(v43 + 48) = v45;
  v48 = *(v40 + 96);
  v47 = *(v40 + 112);
  v49 = *(v40 + 80);
  *(v43 + 144) = *(v40 + 128);
  *(v43 + 112) = v48;
  *(v43 + 128) = v47;
  *(v43 + 96) = v49;
  swift_defaultActor_initialize();
  *(v38 + 280) = 0;
  sub_10001F358((v0 + 1104), v38 + 112);
  sub_10001F358((v0 + 1144), v38 + 152);
  sub_10001F358((v0 + 1184), v38 + 192);
  sub_10001F358((v0 + 1304), v38 + 232);
  *(v38 + 272) = v136;
  sub_10000BB78((v0 + 1264));

  LOBYTE(v40) = sub_100134AD0();
  v50 = type metadata accessor for WebPresentmentBrandStore();
  v51 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v51 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
  *(v0 + 744) = v50;
  *(v0 + 752) = &off_1008109F0;
  *(v0 + 720) = v51;
  *(v0 + 792) = v146;
  *(v0 + 800) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 768));
  DeviceInformationProvider.init()();
  v52 = static UserDefaultsConfiguration.standard.getter();
  *(v0 + 760) = v40 & 1;
  *(v0 + 808) = v52;
  *(v0 + 1448) = v148;
  *(v0 + 1456) = &off_100809E48;
  *(v0 + 1424) = v144;
  *(v0 + 1464) = 0u;
  *(v0 + 1480) = 0u;
  *(v0 + 1496) = 0;
  *(v0 + 1528) = &type metadata for WebPresentmentBrandConfigurationManager;
  *(v0 + 1536) = &off_1008109C8;
  v53 = swift_allocObject();
  *(v0 + 1504) = v53;
  sub_1003EB048(v0 + 720, v53 + 16);
  v137 = type metadata accessor for WebPresentmentResponseBuilder(0);
  *(v0 + 1544) = 0u;
  *(v0 + 1560) = 0u;
  *(v0 + 1576) = 0;

  v54 = static UserDefaultsConfiguration.standard.getter();
  sub_100020260(v0 + 1424, v0 + 216);
  sub_10000BBC4(v0 + 1464, v0 + 1664, &qword_100843230, &qword_1006E0DC0);
  if (*(v0 + 1688))
  {
    sub_10001F358((v0 + 1664), v0 + 864);
  }

  else
  {
    v55 = *(v0 + 2704);
    v56 = *(v0 + 2696);
    v134 = v56;
    v57 = *(v0 + 2688);
    v58 = *(v0 + 2680);
    v145 = v38;
    v59 = *(v0 + 2664);
    sub_100020260(v0 + 1424, v0 + 1704);
    v142 = swift_allocObject();
    v135 = v55;
    DeviceInformationProvider.init()();
    *(v0 + 1768) = v146;
    *(v0 + 1776) = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC((v0 + 1744));
    DeviceInformationProvider.init()();
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    swift_allocObject();
    v147 = v54;
    v60 = sub_10010F338();

    DateProvider.init()();
    v140(v58, v57, v59);
    v61 = sub_1003A0748(&v164, v60, v58);

    v139(v57, v59);
    v62 = *(v0 + 1728);
    sub_10001F370(v0 + 1704, v62);
    v63 = *(v62 - 8);
    v143 = swift_task_alloc();
    (*(v63 + 16))();
    v64 = *v143;
    *(v0 + 1808) = v148;
    *(v0 + 1816) = &off_100809E48;
    *(v0 + 1784) = v64;
    *(v0 + 1848) = v56;
    *(v0 + 1856) = &off_100810218;
    v65 = sub_100032DBC((v0 + 1824));
    sub_1003EADF0(v55, v65);
    *(v0 + 1888) = v13;
    *(v0 + 1896) = &off_100809510;
    *(v0 + 1864) = v61;
    v66 = swift_allocObject();
    v67 = sub_10001F370(v0 + 1784, v148);
    v68 = swift_task_alloc();
    v141(v68, v67, v148);
    v69 = *(v0 + 1848);
    v70 = sub_10001F370(v0 + 1824, v69);
    v71 = *(v69 - 8);
    v72 = swift_task_alloc();
    (*(v71 + 16))(v72, v70, v69);
    v73 = *(v0 + 1888);
    v74 = sub_10001F370(v0 + 1864, v73);
    v75 = *(v73 - 8);
    v76 = swift_task_alloc();
    (*(v75 + 16))(v76, v74, v73);
    v77 = *v68;
    v78 = *v76;
    *(v0 + 1928) = v148;
    *(v0 + 1936) = &off_100809E48;
    *(v0 + 1904) = v77;
    *(v0 + 1968) = v134;
    *(v0 + 1976) = &off_100810218;
    v79 = sub_100032DBC((v0 + 1944));
    sub_1003EAE54(v72, v79);
    *(v0 + 2008) = v13;
    *(v0 + 2016) = &off_100809510;
    *(v0 + 1984) = v78;
    v54 = v147;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v135);
    *(v66 + 272) = 0u;
    *(v66 + 288) = 0u;
    *(v66 + 304) = 0;
    sub_10001F358((v0 + 1904), v66 + 112);
    *(v66 + 152) = v142;
    *(v66 + 160) = v157;
    *(v66 + 168) = &off_100809DF0;
    *(v66 + 176) = v155;
    *(v66 + 184) = &off_100809F18;
    sub_10001F358((v0 + 1944), v66 + 192);
    sub_10001F358((v0 + 1744), v66 + 232);
    sub_10001F358((v0 + 1984), v66 + 312);
    sub_10000BB78((v0 + 1864));
    v41 = v0 + 1464;

    sub_10000BB78((v0 + 1824));
    v38 = v145;

    sub_10000BB78((v0 + 1784));

    sub_10000BB78((v0 + 1704));

    *(v0 + 888) = v160;
    *(v0 + 896) = &off_100810230;
    *(v0 + 864) = v66;
    v42 = v0 + 1544;
    if (*(v0 + 1688))
    {
      sub_10000BE18(v0 + 1664, &qword_100843230, &qword_1006E0DC0);
    }
  }

  sub_10001F358((v0 + 864), v0 + 256);
  *(v0 + 296) = v137;
  *(v0 + 304) = &off_100811FB0;
  sub_100020260(v0 + 1504, v0 + 312);
  sub_10000BBC4(v42, v0 + 2064, &qword_100843238, &qword_1006E0DC8);
  if (*(v0 + 2088))
  {
    sub_10000BE18(v42, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(v41, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78((v0 + 1504));
    sub_10000BB78((v0 + 1424));
    sub_10001F358((v0 + 2064), v0 + 2024);
  }

  else
  {
    sub_100020260(v0 + 1504, v0 + 2104);
    v80 = v54;
    v81 = static UserDefaultsConfiguration.standard.getter();
    *(v0 + 2048) = &type metadata for WebPresentmentResponsePermissionsFilter;
    *(v0 + 2056) = &off_100812070;
    v82 = swift_allocObject();
    *(v0 + 2024) = v82;
    v83 = v81;
    v54 = v80;
    sub_10046D410(v0 + 2104, v83, v82 + 16);
    sub_10000BE18(v42, &qword_100843238, &qword_1006E0DC8);
    sub_10000BE18(v41, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78((v0 + 1504));
    sub_10000BB78((v0 + 1424));
    if (*(v0 + 2088))
    {
      sub_10000BE18(v0 + 2064, &qword_100843238, &qword_1006E0DC8);
    }
  }

  v84 = *(v0 + 2664);
  sub_10001F358((v0 + 2024), v0 + 352);
  *(v0 + 392) = v54;
  v85 = *(v0 + 360);
  *(v0 + 528) = *(v0 + 344);
  *(v0 + 544) = v85;
  *(v0 + 560) = *(v0 + 376);
  v86 = *(v0 + 296);
  *(v0 + 464) = *(v0 + 280);
  *(v0 + 480) = v86;
  v87 = *(v0 + 328);
  *(v0 + 496) = *(v0 + 312);
  *(v0 + 512) = v87;
  v88 = *(v0 + 232);
  *(v0 + 400) = *(v0 + 216);
  *(v0 + 416) = v88;
  v89 = *(v0 + 264);
  *(v0 + 432) = *(v0 + 248);
  *(v0 + 448) = v89;
  *(v0 + 576) = *(v0 + 392);
  v90 = type metadata accessor for RemoteWebPresentmentScannableCodeHandler(0);
  swift_allocObject();
  v153 = sub_10040B4BC(sub_10040B3C4, 0);

  sub_1003E85AC((v0 + 2144));
  *(v0 + 2208) = type metadata accessor for PartialWebPresentmentRequestParser();
  *(v0 + 2216) = &protocol witness table for PartialWebPresentmentRequestParser;
  sub_100032DBC((v0 + 2184));
  PartialWebPresentmentRequestParser.init()();
  sub_100007224(&qword_100843240, &qword_1006E0DD0);
  v91 = swift_allocObject();
  v92 = type metadata accessor for WebPresentmentSelectionBypasser();
  v91[1] = 0u;
  v91[2] = 0u;
  *(v91 + 44) = 0u;
  v163 = v92;
  v150 = swift_allocObject();
  *(v0 + 2248) = v84;
  *(v0 + 2256) = &protocol witness table for DateProvider;
  sub_100032DBC((v0 + 2224));
  DateProvider.init()();
  v161 = type metadata accessor for BluetoothManager();
  v93 = swift_allocObject();
  v94 = v38;
  if (qword_100832C78 != -1)
  {
    swift_once();
  }

  v156 = qword_100882378;
  v95 = *(v0 + 2168);
  sub_10001F370(v0 + 2144, v95);
  v96 = *(v95 - 8);
  v158 = swift_task_alloc();
  (*(v96 + 16))();
  v97 = *v158;
  *(v0 + 2288) = v90;
  *(v0 + 2296) = &off_10080FD60;
  *(v0 + 2264) = v153;
  *(v0 + 2328) = &type metadata for WebPresentmentWalletPassPresenter;
  *(v0 + 2336) = &off_100812298;
  v98 = swift_allocObject();
  *(v0 + 2304) = v98;
  sub_1003EB13C(v0 + 400, v98 + 16);
  *(v0 + 2368) = v138;
  *(v0 + 2376) = &off_10080DC28;
  *(v0 + 2344) = v94;
  v99 = type metadata accessor for RemoteMobileDocumentProviderUIPresenter();
  *(v0 + 2408) = v99;
  *(v0 + 2416) = &off_10080FAC0;
  *(v0 + 2384) = v97;
  *(v0 + 2448) = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  *(v0 + 2456) = &off_10080DD00;
  *(v0 + 2424) = v91;
  *(v0 + 2488) = v163;
  *(v0 + 2496) = &off_100812108;
  *(v0 + 2464) = v150;
  *(v0 + 2528) = v161;
  *(v0 + 2536) = &off_1008157E8;
  *(v0 + 2504) = v93;
  type metadata accessor for RemoteWebPresentmentScannableCodeManager();
  v100 = swift_allocObject();
  *(v0 + 2728) = v100;
  v101 = sub_10001F370(v0 + 2304, &type metadata for WebPresentmentWalletPassPresenter);
  v102 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v102, v101, &type metadata for WebPresentmentWalletPassPresenter);
  sub_10001F370(v0 + 2384, v99);
  v154 = v99;
  v103 = *(v99 - 8);
  v151 = swift_task_alloc();
  (*(v103 + 16))();
  v104 = *(v0 + 2448);
  v105 = sub_10001F370(v0 + 2424, v104);
  v106 = *(v104 - 8);
  v107 = swift_task_alloc();
  (*(v106 + 16))(v107, v105, v104);
  v108 = *(v0 + 2488);
  v109 = sub_10001F370(v0 + 2464, v108);
  v110 = *(v108 - 8);
  v111 = swift_task_alloc();
  (*(v110 + 16))(v111, v109, v108);
  v112 = *(v0 + 2528);
  v113 = sub_10001F370(v0 + 2504, v112);
  v114 = *(v112 - 8);
  v115 = swift_task_alloc();
  (*(v114 + 16))(v115, v113, v112);
  v116 = *v151;
  v117 = *v107;
  v118 = *v111;
  v119 = *v115;
  *(v0 + 2568) = &type metadata for WebPresentmentWalletPassPresenter;
  *(v0 + 2576) = &off_100812298;
  v120 = swift_allocObject();
  *(v0 + 2544) = v120;
  v121 = *v102;
  v122 = *(v102 + 16);
  v123 = *(v102 + 48);
  *(v120 + 48) = *(v102 + 32);
  *(v120 + 64) = v123;
  *(v120 + 16) = v121;
  *(v120 + 32) = v122;
  v124 = *(v102 + 64);
  v125 = *(v102 + 80);
  v126 = *(v102 + 112);
  *(v120 + 112) = *(v102 + 96);
  *(v120 + 128) = v126;
  *(v120 + 80) = v124;
  *(v120 + 96) = v125;
  v127 = *(v102 + 128);
  v128 = *(v102 + 144);
  v129 = *(v102 + 160);
  *(v120 + 192) = *(v102 + 176);
  *(v120 + 160) = v128;
  *(v120 + 176) = v129;
  *(v120 + 144) = v127;
  v100[20] = v154;
  v100[21] = &off_10080FAC0;
  v100[17] = v116;
  v100[30] = &type metadata for MobileDocumentProviderPresentmentSceneDecider;
  v100[31] = &off_10080DD00;
  v100[27] = v117;
  v100[35] = v163;
  v100[36] = &off_100812108;
  v100[32] = v118;
  v100[45] = v161;
  v100[46] = &off_1008157E8;
  v100[42] = v119;
  sub_10001F358((v0 + 2264), (v100 + 2));
  sub_10001F358((v0 + 2544), (v100 + 7));
  sub_10001F358((v0 + 2344), (v100 + 12));
  sub_10001F358((v0 + 2184), (v100 + 22));
  sub_10001F358((v0 + 2224), (v100 + 37));
  v100[47] = v156;

  sub_10000BB78((v0 + 2504));

  sub_10000BB78((v0 + 2464));

  sub_10000BB78((v0 + 2424));

  sub_10000BB78((v0 + 2384));

  sub_10000BB78((v0 + 2304));

  sub_10000BB78((v0 + 2144));

  type metadata accessor for WebPresentmentAnalyticsReporter();
  swift_allocObject();
  v130 = WebPresentmentAnalyticsReporter.init()();
  *(v0 + 2736) = v130;
  v131 = swift_task_alloc();
  *(v0 + 2744) = v131;
  *v131 = v0;
  v131[1] = sub_1004FAA40;
  v132 = *(v0 + 2656);

  return sub_1004FCBCC(v132, v130, v100);
}

uint64_t sub_1004FAA40()
{
  v1 = *(*v0 + 2648);

  return _swift_task_switch(sub_1004FAB6C, v1, 0);
}

uint64_t sub_1004FAB6C()
{
  v1 = *(v0 + 2648);

  sub_1003EB198(v0 + 400);
  sub_1003EB1EC(v0 + 720);
  sub_1003EB240(v0 + 584);
  sub_100108074(v0 + 816);
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0;
  swift_beginAccess();
  sub_1004FCB5C(v0 + 904, v1 + 112);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004FAE08(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for URL();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v3[6] = _Block_copy(a2);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_1004FAF34;

  return sub_1004F8708(v6);
}

uint64_t sub_1004FAF34()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;

  (*(v6 + 8))(v5, v7);

  v9 = *(v3 + 48);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1004FB120(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for WebPresentmentResponse();
  v2[24] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004FB248, v1, 0);
}

uint64_t sub_1004FB248()
{
  v1 = v0[19];
  swift_beginAccess();
  sub_10000BBC4(v1 + 112, (v0 + 2), &qword_100846278, &unk_1006E6B60);
  v2 = v0[5];
  sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
  if (v2)
  {
    (*(v0[21] + 104))(v0[22], enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v0[20]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1004FD2B0(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[25];
    v7 = v0[18];
    v6 = v0[19];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v10 = sub_1004FD2B0(&qword_100846280, v9, type metadata accessor for WebPresentmentRemoteAlertProxy, &unk_1006E6B38);
    v11 = swift_allocObject();
    v11[2] = v6;
    v11[3] = v10;
    v11[4] = v6;
    v11[5] = v7;
    swift_retain_n();
    v12 = v7;
    v13 = sub_100130958(0, 0, v5, &unk_1006E6B78, v11);
    v0[26] = v13;
    v0[10] = sub_100007224(&qword_100846288, &unk_1006E6B80);
    v0[11] = &off_100812330;
    v0[7] = v13;
    swift_beginAccess();

    sub_1004FCB5C((v0 + 7), v1 + 112);
    swift_endAccess();
    v14 = sub_10000BA08((v6 + 152), *(v6 + 176));
    v0[27] = v14;
    v15 = *v14;

    return _swift_task_switch(sub_1004FB5C8, v15, 0);
  }
}

uint64_t sub_1004FB5C8()
{
  sub_100501240(*(v0 + 208), **(v0 + 216));

  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  v2 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v1 = v0;
  v1[1] = sub_1004FB69C;
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);

  return Task.value.getter(v4, v3, v5, v2, &protocol self-conformance witness table for Error);
}

uint64_t sub_1004FB69C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_1004FB880;
  }

  else
  {
    v4 = sub_1004FB7C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004FB7C8()
{
  v1 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentResponse());
  v2 = XPCWebPresentmentResponse.init(value:)();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004FB880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004FB908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a4;
  v5[38] = a5;
  v5[36] = a1;
  v7 = type metadata accessor for WebPresentmentRequest();
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  v8 = type metadata accessor for PartialWebPresentmentRequestParser();
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v5[45] = v9;
  v5[46] = *(v9 - 8);
  v5[47] = swift_task_alloc();

  return _swift_task_switch(sub_1004FBA88, a4, 0);
}

uint64_t sub_1004FBA88()
{
  v0[48] = sub_1003E9594(0, 0);
  PartialWebPresentmentRequestParser.init()();
  XPCWebPresentmentRequest.value.getter();
  PartialWebPresentmentRequestParser.parseRequest(_:)();
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[38];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v2 + 8))(v1, v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = type metadata accessor for WebPresentmentRequestReleaser();
  v7 = swift_allocObject();
  v0[49] = v7;
  v8 = v4;
  swift_defaultActor_initialize();
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  v7[14] = v9;
  v7[15] = &unk_1006E6B98;
  v7[16] = v5;
  v0[10] = v6;
  v0[11] = &off_100811F78;
  v0[7] = v7;
  v10 = type metadata accessor for WebPresentmentAnalyticsReporter();
  swift_allocObject();

  v11 = WebPresentmentAnalyticsReporter.init()();
  v0[15] = v10;
  v0[16] = &protocol witness table for WebPresentmentAnalyticsReporter;
  v0[12] = v11;

  return _swift_task_switch(sub_1004FBD40, 0, 0);
}

uint64_t sub_1004FBD40()
{
  v1 = v0[48];
  v2 = v1[10];
  v3 = v1[11];
  sub_10000BA08(v1 + 7, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_1004FBE70;
  v5 = v0[47];

  return v7(v5, v2, v3);
}

uint64_t sub_1004FBE70(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 408) = a1;

  if (v1)
  {
    v4[54] = v1;
    v6 = v4[37];

    return _swift_task_switch(sub_1004FC2AC, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[52] = v7;
    *v7 = v5;
    v7[1] = sub_1004FC004;
    v8 = v4[47];
    v9 = v4[36];

    return sub_100401E3C(v9, v8, (v4 + 7), a1, (v4 + 12));
  }
}

uint64_t sub_1004FC004()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1004FC23C;
    v4 = 0;
  }

  else
  {
    v5 = v2[37];

    sub_10000BB78(v2 + 12);
    sub_10000BB78(v2 + 7);
    v3 = sub_1004FC13C;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1004FC13C()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 296);

  (*(v2 + 8))(v1, v3);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  swift_beginAccess();
  sub_1004FCB5C(v0 + 176, v4 + 112);
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004FC23C()
{

  v0[54] = v0[53];
  v1 = v0[37];

  return _swift_task_switch(sub_1004FC2AC, v1, 0);
}

uint64_t sub_1004FC2AC()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 296);

  (*(v2 + 8))(v1, v3);
  sub_10000BB78((v0 + 96));
  sub_10000BB78((v0 + 56));
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  swift_beginAccess();
  sub_1004FCB5C(v0 + 136, v4 + 112);
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004FC3B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1004FC3D8, 0, 0);
}

uint64_t sub_1004FC3D8(uint64_t a1)
{
  XPCWebPresentmentRequest.value.getter();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004FC5C8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004FB120(v5);
}

uint64_t sub_1004FC6AC()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_10000BBC4(v1 + 112, (v0 + 2), &qword_100846278, &unk_1006E6B60);
  if (v0[5])
  {
    sub_100020260((v0 + 2), (v0 + 7));
    sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
    v2 = v0[10];
    v3 = v0[11];
    sub_10000BA08(v0 + 7, v2);
    (*(v3 + 8))(v2, v3);
    sub_10000BB78(v0 + 7);
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100846278, &unk_1006E6B60);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004FC938(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1003F760C;

  return sub_1004FC68C();
}

uint64_t sub_1004FC9E0()
{
  sub_10000BE18(v0 + 112, &qword_100846278, &unk_1006E6B60);
  sub_10000BB78((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004FCA54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004FCA9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004FB908(a1, v4, v5, v7, v6);
}

uint64_t sub_1004FCB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100846278, &unk_1006E6B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[5] = type metadata accessor for WebPresentmentAnalyticsReporter();
  v3[6] = &protocol witness table for WebPresentmentAnalyticsReporter;
  v3[2] = a2;

  v5 = swift_task_alloc();
  v3[9] = v5;
  *v5 = v3;
  v5[1] = sub_1004FCC9C;

  return sub_100504E08();
}

uint64_t sub_1004FCC9C(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1004FCD9C, 0, 0);
}

uint64_t sub_1004FCD9C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = (v1 & 1) == 0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1004FCE9C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v5);
}

uint64_t sub_1004FCE9C()
{

  return _swift_task_switch(sub_1004FCFB4, 0, 0);
}

uint64_t sub_1004FCFB4()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004FD014()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004FD04C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_1004FC3B8(a1, v4);
}

uint64_t sub_1004FD0EC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004FD1B8(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1004F90E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004FD2B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FD2F8()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1004FD340()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004FD388()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1004FD3C8()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1004FD420(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100041F04;

  return sub_100410DF8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1004FD4EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004FD52C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_1004FC938(v2, v3);
}

uint64_t sub_1004FD5E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004FC5C8(v2, v3, v4);
}

uint64_t sub_1004FD694()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004FAE08(v2, v3, v4);
}

uint64_t sub_1004FD760(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for WebPresentmentResponse();
  v2[12] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1004FD964, v1, 0);
}

uint64_t sub_1004FD964(uint64_t a1)
{
  v55 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[18];
  v6 = v1[14];
  v7 = v1[15];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v54[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0xD000000000000012, 0x80000001007150D0, v54);
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[19] = v10;
  v11 = v1[3];
  if (v11[26])
  {
    v12 = *(v1[9] + 104);
    v12(v1[10], enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v1[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1005014E4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v1[17];
    v51 = v1[19];
    v48 = v1[14];
    v14 = v1[7];
    v15 = v1[5];
    v53 = v1[6];
    v16 = v1[4];
    v12(v1[10], enum case for DIPError.Code.internalError(_:), v1[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    v17 = *(v15 + 16);
    v17(v18, v14, v16);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v51(v13, v48);

    defaultLogger()();
    v52 = v17;
    v17(v53, v14, v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[19];
    v49 = v1[14];
    v50 = v1[16];
    v23 = v1[5];
    v24 = v1[6];
    v25 = v1[4];
    if (v21)
    {
      v46 = v1[19];
      v26 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_100141FE4(0xD000000000000012, 0x80000001007150D0, v54);
      *(v26 + 12) = 2080;
      v27 = Error.localizedDescription.getter();
      v29 = v28;
      v47 = *(v23 + 8);
      v47(v24, v25);
      v30 = sub_100141FE4(v27, v29, v54);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "WebPresentmentSessionProxy %s finished with error: %s", v26, 0x16u);
      swift_arrayDestroy();

      v46(v50, v49);
    }

    else
    {

      v47 = *(v23 + 8);
      v47(v24, v25);
      v22(v50, v49);
    }

    v41 = v1[7];
    v42 = v1[4];
    swift_allocError();
    v52(v43, v41, v42);
    swift_willThrow();

    v47(v41, v42);

    v44 = v1[1];

    return v44();
  }

  else
  {
    v31 = v1[13];
    v32 = v1[2];
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    v35 = sub_1005014E4(&qword_1008463C0, v34, type metadata accessor for WebPresentmentSessionProxy, &unk_1006E6C88);
    v36 = swift_allocObject();
    v36[2] = v11;
    v36[3] = v35;
    v36[4] = v11;
    v36[5] = v32;
    swift_retain_n();
    v37 = v32;
    v38 = sub_100130958(0, 0, v31, &unk_1006E6CE0, v36);
    v1[20] = v38;
    v11[26] = v38;

    v39 = sub_10000BA08(v11 + 37, v11[40]);
    v1[21] = v39;
    v40 = *v39;

    return _swift_task_switch(sub_1004FE0E0, v40, 0);
  }
}

uint64_t sub_1004FE0E0()
{
  sub_1005012A0(*(v0 + 160), **(v0 + 168), &qword_100846288, &unk_1006E6B80, &unk_100815538, &unk_1006E6CF0);

  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  v2 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v1 = v0;
  v1[1] = sub_1004FE1E0;
  v3 = *(v0 + 160);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  return Task.value.getter(v4, v3, v5, v2, &protocol self-conformance witness table for Error);
}

uint64_t sub_1004FE1E0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1004FE40C;
  }

  else
  {
    v4 = sub_1004FE30C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004FE30C()
{
  v1 = objc_allocWithZone(type metadata accessor for XPCWebPresentmentResponse());
  v2 = XPCWebPresentmentResponse.init(value:)();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004FE40C()
{
  v38 = v0;
  v1 = v0[9];

  v2 = v0[17];
  v33 = v0[14];
  v34 = v0[19];
  v3 = v0[7];
  v4 = v0[5];
  v36 = v0[6];
  v5 = v0[4];
  (*(v1 + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005014E4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v34(v2, v33);

  defaultLogger()();
  v35 = v6;
  v6(v36, v3, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[14];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v32 = v0[14];
    v17 = swift_slowAlloc();
    v31 = v11;
    v37[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100141FE4(0xD000000000000012, 0x80000001007150D0, v37);
    *(v17 + 12) = 2080;
    v30 = v12;
    v18 = Error.localizedDescription.getter();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = v21;
    v23 = sub_100141FE4(v18, v20, v37);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "WebPresentmentSessionProxy %s finished with error: %s", v17, 0x16u);
    swift_arrayDestroy();

    v31(v30, v32);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v14, v16);
    v22 = v24;
    v11(v12, v13);
  }

  v25 = v0[7];
  v26 = v0[4];
  swift_allocError();
  v35(v27, v25, v26);
  swift_willThrow();

  v22(v25, v26);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1004FE8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1004FE8D8, a4, 0);
}

uint64_t sub_1004FE8D8()
{
  v1 = *(*(v0 + 24) + 256);
  *(v0 + 40) = v1;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v2 = type metadata accessor for DIPSignpost.Config();
  *(v0 + 48) = v2;
  *(v0 + 88) = *(*(v2 - 8) + 80);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_1006BFF90;
  static DaemonSignposts.WebPresentment.firstPartyBypass.getter();
  static DaemonSignposts.WebPresentment.thirdPartyBypass.getter();
  static DaemonSignposts.WebPresentment.appPickerUI.getter();

  return _swift_task_switch(sub_1004FEA10, v1, 0);
}

uint64_t sub_1004FEA10()
{
  v1 = *(v0 + 24);
  sub_10051ACBC(*(v0 + 56));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_1004FEAC8, v1, 0);
}

uint64_t sub_1004FEAC8()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000BA08(v1 + 21, v1[24]);
  v13 = v1[33];
  v12 = v1[34];
  v3 = v1[35];
  v4 = v1[36];
  v6 = sub_1005014E4(&qword_1008463C0, v5, type metadata accessor for WebPresentmentSessionProxy, &unk_1006E6C88);
  v7 = swift_allocObject();
  v0[8] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = v2;

  v8 = v2;
  v9 = swift_task_alloc();
  v0[9] = v9;
  type metadata accessor for WebPresentmentResponse();
  *v9 = v0;
  v9[1] = sub_1004FEC58;
  v10 = v0[2];

  return __s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lF(v10, v13, v12, v3, v4, v1, v6, &unk_1006E6D18);
}

uint64_t sub_1004FEC58()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1004FEE24;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1004FED80;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004FED80()
{
  v1 = *(v0 + 24);
  v1[26] = 0;

  v2 = v1[19];
  v3 = v1[20];
  sub_10000BA08(v1 + 16, v2);
  (*(v3 + 16))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004FEE24()
{
  v1 = *(v0 + 24);

  v1[26] = 0;

  v2 = v1[19];
  v3 = v1[20];
  sub_10000BA08(v1 + 16, v2);
  (*(v3 + 16))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004FEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for PartialWebPresentmentRequest();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004FEF94, 0, 0);
}

uint64_t sub_1004FEF94()
{
  XPCPartialWebPresentmentRequest.value.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1004FF038;
  v2 = v0[7];
  v3 = v0[2];

  return sub_1004FF494(v3, v2);
}

uint64_t sub_1004FF038()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1004FF1E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1004FF1E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004FF3D0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_1004FD760(v5);
}

uint64_t sub_1004FF494(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for WebPresentmentResponse();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for WebPresentmentRequestState();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  sub_100007224(&qword_1008463A8, &qword_1006E6CB8);
  v3[34] = swift_task_alloc();
  v8 = sub_100007224(&qword_1008463B0, &qword_1006E6CC0);
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();
  v9 = sub_100007224(&qword_1008463B8, &unk_1006E6CC8);
  v3[38] = v9;
  v3[39] = *(v9 - 8);
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_1004FF780, v2, 0);
}

uint64_t sub_1004FF780()
{
  v1 = *(v0 + 160);
  sub_10000BA08((v1 + 216), *(v1 + 240));
  *(v0 + 120) = type metadata accessor for DeviceInformationProvider();
  *(v0 + 128) = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC((v0 + 96));
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  static UserDefaultsConfiguration.standard.getter();
  *(v0 + 80) = type metadata accessor for WebPresentmentDeviceSupportProvider();
  *(v0 + 88) = &protocol witness table for WebPresentmentDeviceSupportProvider;
  sub_100032DBC((v0 + 56));
  WebPresentmentDeviceSupportProvider.init(deviceInfoProvider:userDefaultaConfiguration:)();
  sub_10045021C(v1 + 128, (v0 + 56), (v0 + 16));
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 152);
  sub_10000BB78((v0 + 56));
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_10000BA08((v0 + 16), v6);
  (*(v7 + 8))(v5, v6, v7);
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = sub_1005014E4(&qword_1008463C0, v8, type metadata accessor for WebPresentmentSessionProxy, &unk_1006E6C88);
  *(v0 + 328) = v9;
  *(v0 + 368) = enum case for WebPresentmentRequestState.listenerReady(_:);
  *(v0 + 372) = enum case for WebPresentmentRequestState.success(_:);
  v10 = *(v0 + 160);
  v11 = swift_task_alloc();
  *(v0 + 336) = v11;
  *v11 = v0;
  v11[1] = sub_1004FFA54;
  v12 = *(v0 + 304);
  v13 = *(v0 + 272);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v13, v10, v9, v12, v0 + 136);
}

uint64_t sub_1004FFA54()
{
  v2 = *v1;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100500474;
  }

  else
  {
    v4 = sub_1004FFB68;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1004FFB68()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v6 = *(v0 + 168);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    (*(v5 + 104))(v4, enum case for DIPError.Code.unexpectedDaemonState(_:), v6);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005014E4(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BB78((v0 + 16));

    v7 = *(v0 + 8);
LABEL_3:

    return v7();
  }

  v9 = *(v0 + 368);
  v10 = *(v0 + 264);
  (*(v3 + 32))(v10, v1, v2);
  v11 = (*(v3 + 88))(v10, v2);
  if (v11 == v9)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 160);
    (*(*(v0 + 256) + 96))(v12, *(v0 + 248));
    v14 = *v12;
    *(v0 + 344) = *v12;
    v47 = (*(v13 + 112) + **(v13 + 112));
    v15 = swift_task_alloc();
    *(v0 + 352) = v15;
    *v15 = v0;
    v15[1] = sub_100500284;

    return v47(v14);
  }

  else
  {
    if (v11 == *(v0 + 372))
    {
      v16 = *(v0 + 264);
      v17 = *(v0 + 240);
      v19 = *(v0 + 224);
      v18 = *(v0 + 232);
      v20 = *(v0 + 216);
      (*(*(v0 + 256) + 96))(v16, *(v0 + 248));
      v48 = *(v19 + 32);
      v48(v17, v16, v20);
      defaultLogger()();
      (*(v19 + 16))(v18, v17, v20);
      v21 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v21, v44);
      v23 = *(v0 + 312);
      v24 = *(v0 + 320);
      v25 = *(v0 + 304);
      v27 = *(v0 + 224);
      v26 = *(v0 + 232);
      v28 = *(v0 + 208);
      v29 = *(v0 + 200);
      v45 = *(v0 + 216);
      v46 = *(v0 + 192);
      if (v22)
      {
        v43 = *(v0 + 208);
        v30 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v30 = 136315394;
        *(v30 + 4) = sub_100141FE4(0xD000000000000013, 0x800000010071CBD0, v49);
        *(v30 + 12) = 2080;
        v41 = v23;
        v42 = v24;
        v31 = WebPresentmentResponse.responseData.getter();
        v33 = v32;
        v34 = Data.base64EncodedString(options:)(0);
        sub_10000B90C(v31, v33);
        (*(v27 + 8))(v26, v45);
        v35 = sub_100141FE4(v34._countAndFlagsBits, v34._object, v49);

        *(v30 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v21, v44, "WebPresentmentSessionProxy %s finished with value: %s", v30, 0x16u);
        swift_arrayDestroy();

        (*(v29 + 8))(v43, v46);
        (*(v41 + 8))(v42, v25);
      }

      else
      {

        (*(v27 + 8))(v26, v45);
        (*(v29 + 8))(v28, v46);
        (*(v23 + 8))(v24, v25);
      }

      v48(*(v0 + 144), *(v0 + 240), *(v0 + 216));
      sub_10000BB78((v0 + 16));

      v7 = *(v0 + 8);
      goto LABEL_3;
    }

    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v36 = *(v0 + 328);
    v37 = *(v0 + 160);
    v38 = swift_task_alloc();
    *(v0 + 336) = v38;
    *v38 = v0;
    v38[1] = sub_1004FFA54;
    v39 = *(v0 + 304);
    v40 = *(v0 + 272);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v40, v37, v36, v39, v0 + 136);
  }
}

uint64_t sub_100500284()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_10050055C;
  }

  else
  {
    v4 = sub_1005003B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005003B0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 160);
  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_1004FFA54;
  v4 = *(v0 + 304);
  v5 = *(v0 + 272);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, v2, v1, v4, v0 + 136);
}

uint64_t sub_100500474()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  sub_10000BB78(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10050055C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  sub_10000BB78((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100500654()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100500714, v0, 0);
}

uint64_t sub_100500714(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEF29287473657571, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (*(v1[2] + 208))
  {
    type metadata accessor for WebPresentmentResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_100500A50(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004822DC;

  return sub_100500654();
}

uint64_t sub_100500AF8()
{

  sub_10000BB78(v0 + 16);
  sub_10000BB78(v0 + 21);

  sub_10000BB78(v0 + 27);

  sub_10000BB78(v0 + 37);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100500B84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100041F04;

  return v6();
}

uint64_t sub_100500C6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100027B9C;

  return v7();
}

uint64_t sub_100500D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1003F1504(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1005018E4(v11);
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

    sub_1005018E4(a3);

    return v21;
  }

LABEL_8:
  sub_1005018E4(a3);
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

uint64_t sub_100501010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_100007224(&qword_1008463C8, &qword_1006E6CF8);
  v22 = &off_100812330;
  *&v20 = a1;
  defaultLogger()();
  sub_100020260(&v20, v19);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_100020260(v19, v17);
    sub_100007224(&unk_100845310, &unk_1006E6D00);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10000BB78(v19);
    v15 = sub_100141FE4(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "AnyTaskBox initing %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  else
  {

    sub_10000BB78(v19);
  }

  (*(v5 + 8))(v7, v4);
  sub_10001F358(&v20, a2 + 16);
  return a2;
}

uint64_t sub_1005012A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v26[3] = sub_100007224(a3, a4);
  v26[4] = &off_100812330;
  v26[0] = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100020260(Strong + 16, &v23);

    v14 = v24;
    v15 = v25;
    sub_10000BA08(&v23, v24);
    (*(v15 + 8))(v14, v15);
    sub_10000BB78(&v23);
  }

  else
  {
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_100020260(v26, &v23);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  sub_10001F358(&v23, (v18 + 5));

  v19 = sub_100130390(0, 0, v12, a6, v18);
  type metadata accessor for AnyTaskBox();
  v20 = swift_allocObject();
  v21 = sub_100501010(v19, v20);
  swift_beginAccess();
  *(v16 + 16) = v21;

  swift_weakAssign();

  return sub_10000BB78(v26);
}

uint64_t sub_1005014E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100501530(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004FE8B4(a1, v4, v5, v7, v6);
}

uint64_t sub_1005015F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10050162C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_10047C318(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1005016EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100501734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004FEED0(a1, v4, v5, v7, v6);
}

uint64_t sub_1005017F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100501834()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100500A50(v2, v3);
}

uint64_t sub_1005018E4(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10050194C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100501984(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_1003E87CC(a1, v4);
}

uint64_t sub_100501A3C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100501A84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004FF3D0(v2, v3, v4);
}

uint64_t sub_100501B38()
{
  swift_unknownObjectRelease();

  sub_10000BB78((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100501B80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10047C318(a1, v4, v5, v6, (v1 + 5));
}

Swift::Int sub_100501C58()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100501D4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_100501E20(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

BOOL sub_100501F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_100502A60(v11, v13);
}

void sub_100501F7C()
{
  v1 = v0;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_defaultActor_initialize();
  v7 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v11[0] = "AccountsChanged:)";
  v11[1] = v7;
  static DispatchQoS.userInitiated.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10031AE4C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = objc_allocWithZone(IDSService);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithService:v9];

  if (v10)
  {
    *(v1 + 120) = v10;
  }

  else
  {
    __break(1u);
  }
}

char *sub_100502254()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 120);
  result = [v5 accounts];
  if (result)
  {
    v7 = result;
    sub_10001F8D4(0, &qword_100846590, IDSAccount_ptr);
    sub_10050330C();
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *(v8 + 16);
    }

    if (!v9)
    {
      (*(v2 + 104))(v4, enum case for DIPError.Code.invalidAppleAccount(_:), v1);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    result = [v5 devices];
    if (!result)
    {
      goto LABEL_24;
    }

    v10 = result;
    sub_10001F8D4(0, &qword_100846588, IDSDevice_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_9:
        v29 = _swiftEmptyArrayStorage;
        result = sub_100173574(0, v12 & ~(v12 >> 63), 0);
        if ((v12 & 0x8000000000000000) == 0)
        {
          v13 = 0;
          v14 = v29;
          do
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(v11 + 8 * v13 + 32);
            }

            v16 = v15;
            sub_100502B6C(v15, v27);

            v29 = v14;
            v18 = v14[2];
            v17 = v14[3];
            if (v18 >= v17 >> 1)
            {
              sub_100173574((v17 > 1), v18 + 1, 1);
              v14 = v29;
            }

            ++v13;
            v14[2] = v18 + 1;
            v19 = &v14[13 * v18];
            v20 = v27[0];
            v21 = v27[2];
            *(v19 + 3) = v27[1];
            *(v19 + 4) = v21;
            *(v19 + 2) = v20;
            v22 = v27[3];
            v23 = v27[4];
            v24 = v27[5];
            v19[16] = v28;
            *(v19 + 6) = v23;
            *(v19 + 7) = v24;
            *(v19 + 5) = v22;
          }

          while (v12 != v13);

          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_21:
    v25 = sub_100697944(v14);

    return v25;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10050280C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AppleAccountDeviceMonitor.ServiceDelegate(uint64_t a1)
{
  result = qword_100846520;
  if (!qword_100846520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005028C4(uint64_t a1)
{
  sub_100502954(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100502954(uint64_t a1)
{
  if (!qword_100846530)
  {
    sub_10000B870(&unk_100846538, &unk_1006E6E10);
    sub_10000B870(&qword_100833B90, &qword_1006D95C0);
    v1 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &qword_100846530);
    }
  }
}

unint64_t sub_1005029F0()
{
  result = qword_100846548;
  if (!qword_100846548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100846548);
  }

  return result;
}

BOOL sub_100502A60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a1[2] == *(a2 + 16) && (a1[3] == *(a2 + 24) ? (v5 = a1[4] == *(a2 + 32)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48) || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (a1[7] == *(a2 + 56) && a1[8] == *(a2 + 64) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[9] == *(a2 + 72) && a1[10] == *(a2 + 80) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 88) ^ *(a2 + 88)) & 1) == 0)
  {
    return a1[12] == *(a2 + 96);
  }

  else
  {
    return 0;
  }
}

id sub_100502B6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 name];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 deviceType];
  result = [a1 productName];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  result = [a1 productVersion];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  v28 = v13;
  v29 = v11;
  v30 = v9;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  result = [a1 productBuildVersion];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  v18 = v8;
  v19 = v6;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  result = [a1 uniqueID];
  if (result)
  {
    v23 = result;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    LOBYTE(v23) = [a1 isHSATrusted];
    result = [a1 operatingSystemVersion];
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v30;
    *(a2 + 24) = v29;
    *(a2 + 32) = v28;
    *(a2 + 40) = v27;
    *(a2 + 48) = v16;
    *(a2 + 56) = v20;
    *(a2 + 64) = v22;
    *(a2 + 72) = v24;
    *(a2 + 80) = v26;
    *(a2 + 88) = v23;
    *(a2 + 96) = v31;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_100502D30(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(a1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = [result accounts];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  sub_10001F8D4(0, &qword_100846590, IDSAccount_ptr);
  sub_10050330C();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (!v9)
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidAppleAccount(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v10 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v11[1] = v10;
    sub_100007224(&qword_100846578, &qword_1006E6F20);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  return result;
}

char *sub_100502FAC(void *a1)
{
  v3 = sub_100007224(&qword_100846578, &qword_1006E6F20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_100007224(&qword_100846580, &unk_1006E6F28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  result = (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtCC8coreidvd25AppleAccountDeviceMonitorP33_82887AFD0E92FAFAEDB3A7101388C34115ServiceDelegate_continuation, v3);
  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a1 devices];
  if (result)
  {
    v12 = result;
    sub_10001F8D4(0, &qword_100846588, IDSDevice_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_5:
        v32 = _swiftEmptyArrayStorage;
        result = sub_100173574(0, v14 & ~(v14 >> 63), 0);
        if ((v14 & 0x8000000000000000) == 0)
        {
          v28 = v10;
          v29 = v8;
          v30 = v7;
          v31 = v3;
          v15 = 0;
          v16 = v32;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            sub_100502B6C(v17, v33);

            v32 = v16;
            v20 = v16[2];
            v19 = v16[3];
            if (v20 >= v19 >> 1)
            {
              sub_100173574((v19 > 1), v20 + 1, 1);
              v16 = v32;
            }

            ++v15;
            v16[2] = v20 + 1;
            v21 = &v16[13 * v20];
            v22 = v33[0];
            v23 = v33[2];
            *(v21 + 3) = v33[1];
            *(v21 + 4) = v23;
            *(v21 + 2) = v22;
            v24 = v33[3];
            v25 = v33[4];
            v26 = v33[5];
            v21[16] = v34;
            *(v21 + 6) = v25;
            *(v21 + 7) = v26;
            *(v21 + 5) = v24;
          }

          while (v14 != v15);

          v7 = v30;
          v3 = v31;
          v10 = v28;
          v8 = v29;
          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_16:
    v27 = sub_100697944(v16);

    v32 = v27;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_10050330C()
{
  result = qword_100846598;
  if (!qword_100846598)
  {
    sub_10001F8D4(255, &qword_100846590, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100846598);
  }

  return result;
}

uint64_t sub_1005033EC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100503508;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4E8, &unk_1006DAB30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10017AD7C;
  v0[13] = &unk_1008157C0;
  v0[14] = v2;
  [v1 globalAuthACLWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100503508()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10017808C;
  }

  else
  {
    v2 = sub_100503618;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100503634()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005036F0, 0, 0);
}

uint64_t sub_1005036F0()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.featureNotSupported(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100503848()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100503904, 0, 0);
}

uint64_t sub_100503904()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.featureNotSupported(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100503A7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100503AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100007224(&qword_100846668, &unk_1006E7020);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "BluetoothManager %s", v13, 0xCu);
    sub_10000BB78(v14);
  }

  (*(v7 + 8))(v9, v6);
  *v5 = 1;
  (*(v3 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v2);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_100503D50(uint64_t a1)
{
  v21 = a1;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v23 = &v20 - v3;
  v4 = sub_100007224(&qword_100846670, &qword_1006E7030);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = [objc_allocWithZone(CBController) init];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = *(v5 + 16);
  v22(v7, a1, v4);
  v10 = *(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v20 = *(v5 + 32);
  v20(v11 + ((v10 + 24) & ~v10), v7, v4);
  aBlock[4] = sub_1005061BC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008158D0;
  v12 = _Block_copy(aBlock);

  [v8 setBluetoothStateChangedHandler:v12];
  _Block_release(v12);
  v13 = type metadata accessor for TaskPriority();
  v14 = v23;
  (*(*(v13 - 8) + 56))(v23, 1, 1, v13);
  v22(v7, v21, v4);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v8;
  v20(v15 + ((v10 + 40) & ~v10), v7, v4);
  v16 = v8;
  v17 = sub_1003E653C(0, 0, v14, &unk_1006E7040, v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t sub_1005040B8(uint64_t a1)
{
  v1 = sub_100007224(&qword_100846678, &unk_1006E7048);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    defaultLogger()();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v37 = v16;
    v17 = os_log_type_enabled(v15, v16);
    v18 = &selRef_setSupportedEncoding_;
    if (v17)
    {
      v19 = swift_slowAlloc();
      v35 = v5;
      v20 = v19;
      v34 = swift_slowAlloc();
      v39 = v34;
      *v20 = 136315394;
      *(v20 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v39);
      *(v20 + 12) = 2080;
      v38 = [v14 bluetoothState];
      type metadata accessor for CBManagerState(0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100141FE4(v21, v22, &v39);
      v36 = v14;
      v24 = v6;
      v25 = v2;
      v26 = v1;
      v27 = v23;
      v18 = &selRef_setSupportedEncoding_;

      *(v20 + 14) = v27;
      v1 = v26;
      v2 = v25;
      _os_log_impl(&_mh_execute_header, v15, v37, "BluetoothManager %s: bluetoothState is %s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v24 + 8))(v11, v35);
      v14 = v36;
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    LOBYTE(v39) = [v14 v18[428]] == 5;
    sub_100007224(&qword_100846670, &qword_1006E7030);
    AsyncStream.Continuation.yield(_:)();

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v39);
      _os_log_impl(&_mh_execute_header, v28, v29, "BluetoothManager %s: Lost controller within bluetoothStateChangedHandler", v30, 0xCu);
      sub_10000BB78(v31);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100504544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for Logger();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_100007224(&qword_100846678, &unk_1006E7048);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10050466C, 0, 0);
}

uint64_t sub_10050466C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_100504780;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100815948;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100504780()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_100504978;
  }

  else
  {
    v2 = sub_100504890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100504890()
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v2 = *(v0 + 200);
    v1 = *(v0 + 208);
    v3 = *(v0 + 192);
    *(v0 + 225) = [*(v0 + 152) bluetoothState] == 5;
    sub_100007224(&qword_100846670, &qword_1006E7030);
    AsyncStream.Continuation.yield(_:)();
    (*(v2 + 8))(v1, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100504978(uint64_t a1)
{
  v21 = v1;
  swift_willThrow();
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 216);
    v6 = *(v1 + 176);
    v5 = *(v1 + 184);
    v7 = *(v1 + 168);
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, v20);
    *(v8 + 12) = 2080;
    *(v1 + 144) = v4;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100141FE4(v9, v10, v20);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "BluetoothManager %s: controller activation threw error %s, assuming not available", v8, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = *(v1 + 176);
    v12 = *(v1 + 184);
    v14 = *(v1 + 168);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v1 + 208);
  v16 = *(v1 + 192);
  v17 = *(v1 + 200);
  *(v1 + 224) = 0;
  sub_100007224(&qword_100846670, &qword_1006E7030);
  AsyncStream.Continuation.yield(_:)();

  (*(v17 + 8))(v15, v16);

  v18 = *(v1 + 8);

  return v18();
}

id sub_100504C00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(0x656C62616E457369, 0xEF73657461745364, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "BluetoothManager %s: stream observer terminated, invalidating controller", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v5 + 8))(v7, v4);
  Task.cancel()();
  return [a3 invalidate];
}

uint64_t sub_100504E08()
{
  v1 = type metadata accessor for Logger();
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return _swift_task_switch(sub_100504EDC, 0, 0);
}

uint64_t sub_100504EDC(uint64_t a1)
{
  v15 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  v6 = v1[18];
  v7 = v1[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "BluetoothManager %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[23] = v10;
  v11 = [objc_allocWithZone(CBController) init];
  v1[24] = v11;
  v1[2] = v1;
  v1[3] = sub_10050510C;
  v12 = swift_continuation_init();
  v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100429100;
  v1[13] = &unk_100815808;
  v1[14] = v12;
  [v11 activateWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10050510C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1005053FC;
  }

  else
  {
    v2 = sub_10050521C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10050521C()
{
  v15 = v0;
  v1 = [*(v0 + 192) bluetoothState];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v14);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v1 == 5;
    _os_log_impl(&_mh_execute_header, v2, v3, "BluetoothManager %s Bluetooth on: %{BOOL}d", v8, 0x12u);
    sub_10000BB78(v9);
  }

  v5(v6, v7);
  v10 = v1 == 5;
  v11 = *(v0 + 192);
  [v11 invalidate];

  v12 = *(v0 + 8);

  return v12(v10);
}

uint64_t sub_1005053FC(uint64_t a1)
{
  v19 = v1;
  swift_willThrow();
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to determine bluetooth state - assuming not available: %@", v4, 0xCu);
    sub_1004385F4(v5);
  }

  else
  {
  }

  (*(v1 + 184))(*(v1 + 160), *(v1 + 144));
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 184);
  v11 = *(v1 + 168);
  v12 = *(v1 + 144);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v18);
    *(v13 + 12) = 1024;
    *(v13 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "BluetoothManager %s Bluetooth on: %{BOOL}d", v13, 0x12u);
    sub_10000BB78(v14);
  }

  v10(v11, v12);
  v15 = *(v1 + 192);
  [v15 invalidate];

  v16 = *(v1 + 8);

  return v16(0);
}

uint64_t sub_1005056DC()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[35] = v1;
  v0[36] = *(v1 - 8);
  v0[37] = swift_task_alloc();

  return _swift_task_switch(sub_100505798, 0, 0);
}

uint64_t sub_100505798()
{
  v1 = [objc_allocWithZone(CBController) init];
  v0[38] = v1;
  v0[2] = v0;
  v0[3] = sub_1005058CC;
  v2 = swift_continuation_init();
  v3 = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[39] = v3;
  v0[25] = v3;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100429100;
  v0[21] = &unk_100815830;
  v0[22] = v2;
  [v1 activateWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005058CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_100505C64;
  }

  else
  {
    v2 = sub_1005059DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005059DC()
{
  v1 = v0[38];
  v2 = v0[39];
  v0[10] = v0;
  v0[11] = sub_100505AD8;
  v3 = swift_continuation_init();
  v0[33] = v2;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100429100;
  v0[29] = &unk_100815858;
  v0[30] = v3;
  [v1 setPowerState:5 completion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100505AD8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_100505E8C;
  }

  else
  {
    v2 = sub_100505BE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100505BE8()
{
  v1 = *(v0 + 304);
  [v1 invalidate];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100505C64(uint64_t a1)
{
  v2 = v1[40];
  v3 = v1[37];
  v4 = v1[38];
  v5 = v1[35];
  v6 = v1[36];
  swift_willThrow();
  _StringGuts.grow(_:)(63);
  v7._object = 0x800000010071CE70;
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x2928656C62616E65;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000002ALL;
  v9._object = 0x800000010071CE90;
  String.append(_:)(v9);
  v1[34] = v2;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  [v4 invalidate];

  v11 = v1[1];

  return v11();
}

uint64_t sub_100505E8C(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[37];
  v4 = v1[38];
  v5 = v1[35];
  v6 = v1[36];
  swift_willThrow();
  _StringGuts.grow(_:)(63);
  v7._object = 0x800000010071CE70;
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x2928656C62616E65;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD00000000000002ALL;
  v9._object = 0x800000010071CE90;
  String.append(_:)(v9);
  v1[34] = v2;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  [v4 invalidate];

  v11 = v1[1];

  return v11();
}

uint64_t sub_1005060B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005060EC()
{
  v1 = sub_100007224(&qword_100846670, &qword_1006E7030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1005061BC()
{
  sub_100007224(&qword_100846670, &qword_1006E7030);
  v1 = *(v0 + 16);

  return sub_1005040B8(v1);
}

uint64_t sub_10050622C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100506244()
{
  v1 = sub_100007224(&qword_100846670, &qword_1006E7030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10050631C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100846670, &qword_1006E7030) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_100504544(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100506420()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100506480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10050657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();

  return _swift_task_switch(sub_100506640, 0, 0);
}

uint64_t sub_100506640()
{
  v1 = v0[38];
  v2 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithPartitions:isa];
  v0[43] = v4;

  if (v1)
  {
    v5 = v0 + 10;
    v6 = Array._bridgeToObjectiveC()().super.isa;
    v0[44] = v6;
    v7 = String._bridgeToObjectiveC()();
    v0[45] = v7;
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_1005068C8;
    v8 = swift_continuation_init();
    v0[33] = sub_100007224(&qword_10083C598, &qword_1006DAB78);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100506480;
    v0[29] = &unk_100815A10;
    v0[30] = v8;
    [v4 credentialIdentifiersInPartitions:v6 docType:v7 completion:v0 + 26];
  }

  else
  {
    v5 = v0 + 2;
    v9 = Array._bridgeToObjectiveC()().super.isa;
    v0[47] = v9;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100506A60;
    v10 = swift_continuation_init();
    v0[25] = sub_100007224(&qword_10083C598, &qword_1006DAB78);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100506480;
    v0[21] = &unk_1008159E8;
    v0[22] = v10;
    [v4 credentialIdentifiersInPartitions:v9 completion:v0 + 18];
  }

  return _swift_continuation_await(v5);
}

uint64_t sub_1005068C8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_100506BEC;
  }

  else
  {
    v2 = sub_1005069D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005069D8()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);

  v3 = *(v0 + 280);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100506A60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_100506D5C;
  }

  else
  {
    v2 = sub_100506B70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100506B70()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 272);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100506BEC(uint64_t a1)
{
  v2 = v1[45];
  v4 = v1[43];
  v3 = v1[44];
  swift_willThrow();

  (*(v1[41] + 104))(v1[42], enum case for DIPError.Code.internalError(_:), v1[40]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_100506D5C(uint64_t a1)
{
  v2 = v1[47];
  v3 = v1[43];
  swift_willThrow();

  (*(v1[41] + 104))(v1[42], enum case for DIPError.Code.internalError(_:), v1[40]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100506EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100506F8C, 0, 0);
}

uint64_t sub_100506F8C()
{
  v1 = v0[22];
  v2 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithPartitions:isa];
  v0[27] = v4;

  v5 = String._bridgeToObjectiveC()();
  v0[28] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100507124;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672A4C;
  v0[13] = &unk_1008159C0;
  v0[14] = v6;
  [v4 createCredentialInPartition:v5 options:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100507124()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1005072BC;
  }

  else
  {
    v2 = sub_100507234;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100507234()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1005072BC(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[24];
  v6 = v1[25];
  swift_willThrow();

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_100507420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1005074E4, 0, 0);
}

uint64_t sub_1005074E4()
{
  v1 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithPartitions:isa];
  v0[25] = v3;

  v4 = String._bridgeToObjectiveC()();
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100507670;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A470, &unk_1006DD7D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100815998;
  v0[14] = v5;
  [v3 generatePresentmentKeyForCredential:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100507670()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_100507780;
  }

  else
  {
    v2 = sub_100508414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100507780(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[24];
  v4 = v1[25];
  v5 = v1[22];
  v6 = v1[23];
  swift_willThrow();

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1005078EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005079B4, 0, 0);
}

uint64_t sub_1005079B4()
{
  v8 = v0[22];
  v1 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithPartitions:isa];
  v0[27] = v3;

  v4 = String._bridgeToObjectiveC()();
  v0[28] = v4;
  v5 = Data._bridgeToObjectiveC()().super.isa;
  v0[29] = v5;
  v0[2] = v0;
  v0[3] = sub_100507B64;
  v6 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_100815970;
  v0[14] = v6;
  [v3 replacePayloadOfCredential:v4 withPayload:v5 format:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100507B64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_100507CF4;
  }

  else
  {
    v2 = sub_100507C74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100507C74()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100507CF4(uint64_t a1)
{
  v2 = v1[29];
  v4 = v1[27];
  v3 = v1[28];
  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];
  swift_willThrow();

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

uint64_t sub_100507E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100507F4C, 0, 0);
}

uint64_t sub_100507F4C()
{
  v1 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithPartitions:isa];
  v0[25] = v3;

  v4 = String._bridgeToObjectiveC()();
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1005080D8;
  v5 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A450, &unk_1006DC4D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_100815A38;
  v0[14] = v5;
  [v3 propertiesOfCredential:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005080D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_10050826C;
  }

  else
  {
    v2 = sub_1005081E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005081E8()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10050826C(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[24];
  v4 = v1[25];
  v5 = v1[22];
  v6 = v1[23];
  swift_willThrow();

  (*(v6 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_100508418()
{
  v1 = v0;
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Start fetch of bootstrap config", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  sub_1003E653C(0, 0, v4, &unk_1006E7210, v13);
}

uint64_t sub_100508638()
{
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_1005086D0;

  return sub_10050886C(v0 + 16);
}

uint64_t sub_1005086D0()
{
  v2 = *v1;
  *(v2 + 512) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10050880C, 0, 0);
  }

  else
  {
    sub_1000F2758(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10050880C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050886C(uint64_t a1)
{
  v2[309] = v1;
  v2[308] = a1;
  v3 = sub_100007224(&qword_100846780, &qword_1006E7198);
  v2[310] = v3;
  v2[311] = *(v3 - 8);
  v2[312] = swift_task_alloc();
  v4 = sub_100007224(&qword_100846788, &qword_1006E71A0);
  v2[313] = v4;
  v2[314] = *(v4 - 8);
  v2[315] = swift_task_alloc();
  v5 = sub_100007224(&qword_100846790, &qword_1006E71A8);
  v2[316] = v5;
  v6 = *(v5 - 8);
  v2[317] = v6;
  v2[318] = *(v6 + 64);
  v2[319] = swift_task_alloc();
  v2[320] = swift_task_alloc();
  v7 = sub_100007224(&qword_100846798, &qword_1006E71B0);
  v2[321] = v7;
  v2[322] = *(v7 - 8);
  v2[323] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[324] = swift_task_alloc();

  return _swift_task_switch(sub_100508AC0, v1, 0);
}

uint64_t sub_100508AC0()
{
  v1 = *(*sub_10000BA08((*(v0 + 2472) + 152), *(*(v0 + 2472) + 176)) + 56);
  os_unfair_lock_lock(v1 + 126);
  memcpy((v0 + 504), &v1[4], 0x1E8uLL);
  sub_100394180(v0 + 504, v0 + 992);
  os_unfair_lock_unlock(v1 + 126);
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  if (sub_1000A257C(v0 + 16) == 1)
  {
    v2 = *(v0 + 2472);
    if (*(v2 + 192))
    {
      v3 = *(v2 + 192);
    }

    else
    {
      v43 = *(v0 + 2592);
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v46 = sub_10050AF44(&qword_1008467A0, v45, type metadata accessor for ConfigurationManager, &unk_1006E7170);
      v47 = swift_allocObject();
      v47[2] = v2;
      v47[3] = v46;
      v47[4] = v2;
      swift_retain_n();
      v3 = sub_100130384(0, 0, v43, &unk_1006E71C0, v47);
      *(v2 + 192) = v3;
      swift_retain_n();
    }

    v73 = *(v0 + 2472);
    *(v0 + 2600) = v3;
    v70 = v3;
    v48 = *(v0 + 2560);
    v49 = *(v0 + 2552);
    v65 = *(v0 + 2592);
    v67 = *(v0 + 2544);
    v50 = *(v0 + 2536);
    v51 = *(v0 + 2528);
    v52 = *(v0 + 2520);
    v53 = *(v0 + 2512);
    v54 = *(v0 + 2504);
    (*(v53 + 104))(v52, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v54);
    swift_retain_n();
    static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
    (*(v53 + 8))(v52, v54);
    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v65, 1, 1, v55);
    (*(v50 + 16))(v49, v48, v51);
    v56 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    (*(v50 + 32))(v57 + v56, v49, v51);
    *(v57 + ((v67 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v70;
    sub_1003E653C(0, 0, v65, &unk_1006E71D0, v57);

    AsyncThrowingStream.makeAsyncIterator()();
    v59 = sub_10050AF44(&qword_1008467A0, v58, type metadata accessor for ConfigurationManager, &unk_1006E7170);
    v60 = swift_task_alloc();
    *(v0 + 2608) = v60;
    *v60 = v0;
    v60[1] = sub_10050911C;
    v61 = *(v0 + 2480);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 1480, v73, v59, v61, v0 + 2456);
  }

  else
  {
    v72 = *(v0 + 472);
    v74 = *(v0 + 496);
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v71 = *(v0 + 464);
    v68 = *(v0 + 400);
    v69 = *(v0 + 416);
    v66 = *(v0 + 393);
    v6 = *(v0 + 392);
    v63 = *(v0 + 368);
    v64 = *(v0 + 384);
    v7 = *(v0 + 376);
    v62 = *(v0 + 288);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v25 = *(v0 + 112);
    v24 = *(v0 + 128);
    v75 = *(v0 + 408);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v28 = *(v0 + 72);
    v76 = *(v0 + 424);
    v29 = *(v0 + 64);
    v30 = *(v0 + 48);
    v31 = *(v0 + 480);
    v32 = *(v0 + 432);
    v33 = *(v0 + 448);
    v34 = *(v0 + 304);
    v35 = *(v0 + 320);
    v36 = *(v0 + 336);
    v37 = *(v0 + 352);
    v38 = *(v0 + 96);
    v39 = *(v0 + 160);
    v40 = *(v0 + 2464);
    *(v40 + 16) = *(v0 + 32);
    *(v40 + 24) = v4;
    *(v40 + 48) = v29;
    *(v40 + 64) = v27;
    *(v40 + 72) = v26;
    *(v40 + 128) = v23;
    *(v40 + 136) = v22;
    *(v40 + 160) = v20;
    *(v40 + 168) = v21;
    *(v40 + 176) = v18;
    *(v40 + 184) = v19;
    *(v40 + 208) = v15;
    *(v40 + 216) = v16;
    *(v40 + 224) = v13;
    *(v40 + 232) = v14;
    *(v40 + 240) = v11;
    *(v40 + 248) = v12;
    *(v40 + 256) = v9;
    *(v40 + 264) = v10;
    *(v40 + 272) = v62;
    *(v40 + 280) = v8;
    *(v40 + 352) = v63;
    *(v40 + 360) = v7;
    *(v40 + 368) = v64;
    *(v40 + 376) = v6;
    *(v40 + 377) = v66;
    *(v40 + 384) = v68;
    *(v40 + 392) = v75;
    *(v40 + 400) = v69;
    *(v40 + 408) = v76;
    *(v40 + 448) = v71;
    *(v40 + 456) = v72;
    *(v40 + 480) = v74;
    *v40 = v5;
    *(v40 + 32) = v30;
    *(v40 + 56) = v28;
    *(v40 + 80) = v38;
    *(v40 + 96) = v25;
    *(v40 + 112) = v24;
    *(v40 + 144) = v39;
    *(v40 + 192) = v17;
    *(v40 + 288) = v34;
    *(v40 + 304) = v35;
    *(v40 + 320) = v36;
    *(v40 + 336) = v37;
    *(v40 + 416) = v32;
    *(v40 + 432) = v33;
    *(v40 + 464) = v31;

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_10050911C()
{
  v2 = *v1;

  v3 = *(v2 + 2472);
  if (v0)
  {
    v4 = sub_100509644;
  }

  else
  {
    v4 = sub_100509230;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100509230()
{
  (*(*(v0 + 2488) + 8))(*(v0 + 2496), *(v0 + 2480));
  memcpy((v0 + 1968), (v0 + 1480), 0x1E8uLL);
  v1 = sub_1000A257C(v0 + 1968);
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 2568);
  v5 = *(v0 + 2560);
  v6 = *(v0 + 2536);
  v7 = *(v0 + 2528);
  if (v1 == 1)
  {
    type metadata accessor for CancellationError();
    sub_10050AF44(&qword_100844468, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    v48 = *(v0 + 2424);
    v49 = *(v0 + 2448);
    v9 = *(v0 + 1992);
    v10 = *(v0 + 1968);
    v47 = *(v0 + 2416);
    v46 = *(v0 + 2368);
    v11 = *(v0 + 2352);
    v12 = *(v0 + 2345);
    v13 = *(v0 + 2336);
    v14 = *(v0 + 2320);
    v15 = *(v0 + 2240);
    v16 = *(v0 + 2224);
    v17 = *(v0 + 2208);
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2176);
    v20 = *(v0 + 2184);
    v21 = *(v0 + 2160);
    v22 = *(v0 + 2144);
    v23 = *(v0 + 2152);
    v24 = *(v0 + 2128);
    v25 = *(v0 + 2136);
    v26 = *(v0 + 2096);
    v27 = *(v0 + 2104);
    v28 = *(v0 + 2080);
    v29 = *(v0 + 2032);
    v50 = *(v0 + 2200);
    v30 = *(v0 + 2040);
    v31 = *(v0 + 2024);
    v51 = *(v0 + 2216);
    v32 = *(v0 + 2016);
    v33 = *(v0 + 2000);
    v34 = *(v0 + 2432);
    v35 = *(v0 + 2384);
    v36 = *(v0 + 2400);
    v37 = *(v0 + 2256);
    v38 = *(v0 + 2272);
    v39 = *(v0 + 2288);
    v40 = *(v0 + 2304);
    v41 = *(v0 + 2048);
    v42 = *(v0 + 2064);
    v43 = *(v0 + 2112);
    v52 = *(v0 + 2232);
    v53 = *(v0 + 2248);
    v54 = *(v0 + 2328);
    v55 = *(v0 + 2344);
    v56 = *(v0 + 2360);
    v57 = *(v0 + 2376);
    v44 = *(v0 + 2464);
    *(v44 + 16) = *(v0 + 1984);
    *(v44 + 24) = v9;
    *(v44 + 48) = v32;
    *(v44 + 64) = v29;
    *(v44 + 72) = v30;
    *(v44 + 128) = v26;
    *(v44 + 136) = v27;
    *(v44 + 160) = v24;
    *(v44 + 168) = v25;
    *(v44 + 176) = v22;
    *(v44 + 184) = v23;
    *(v44 + 208) = v19;
    *(v44 + 216) = v20;
    *(v44 + 224) = v18;
    *(v44 + 232) = v50;
    *(v44 + 240) = v17;
    *(v44 + 248) = v51;
    *(v44 + 256) = v16;
    *(v44 + 264) = v52;
    *(v44 + 272) = v15;
    *(v44 + 280) = v53;
    *(v44 + 352) = v14;
    *(v44 + 360) = v54;
    *(v44 + 368) = v13;
    *(v44 + 376) = v55;
    *(v44 + 377) = v12;
    *(v44 + 384) = v11;
    *(v44 + 392) = v56;
    *(v44 + 400) = v46;
    *(v44 + 408) = v57;
    *(v44 + 448) = v47;
    *(v44 + 456) = v48;
    *(v44 + 480) = v49;
    *v44 = v10;
    *(v44 + 32) = v33;
    *(v44 + 56) = v31;
    *(v44 + 80) = v41;
    *(v44 + 96) = v42;
    *(v44 + 112) = v28;
    *(v44 + 144) = v43;
    *(v44 + 192) = v21;
    *(v44 + 288) = v37;
    *(v44 + 304) = v38;
    *(v44 + 320) = v39;
    *(v44 + 336) = v40;
    *(v44 + 416) = v35;
    *(v44 + 432) = v36;
    *(v44 + 464) = v34;
  }

  v8 = *(v0 + 8);

  return v8();
}