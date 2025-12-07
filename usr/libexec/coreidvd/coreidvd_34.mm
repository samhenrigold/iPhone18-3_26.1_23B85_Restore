uint64_t sub_1003A2B90(char a1)
{
  *(*v1 + 97) = a1;

  return _swift_task_switch(sub_1003A2C90, 0, 0);
}

uint64_t sub_1003A2C90()
{
  if (*(v0 + 97))
  {
LABEL_6:

    v10 = *(v0 + 8);
    goto LABEL_8;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRadioChecks.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "NFC is not enabled. Bypassing this check due to internal setting.", v6, 2u);
    }

    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);

    (*(v8 + 8))(v7, v9);
    goto LABEL_6;
  }

  v11 = *(v0 + 72);
  v14 = *(v0 + 56);
  v12 = *(*(v0 + 64) + 104);
  v12(v11, enum case for DIPError.Code.documentReaderRequiresNFC(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (v12)(v11, enum case for DIPError.Code.internalError(_:), v14);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v10 = *(v0 + 8);
LABEL_8:

  return v10();
}

uint64_t sub_1003A3000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for ISO18013SessionCryptarch.PrivateKey();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v9 = type metadata accessor for Milestone();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  sub_100007224(&qword_100835D88, &qword_1006DE890);
  v4[39] = swift_task_alloc();
  v10 = type metadata accessor for ISO18013SessionTranscript();
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013ReaderRequest();
  v4[44] = v11;
  v4[45] = *(v11 - 8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v12 = sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  v4[48] = v12;
  v4[49] = *(v12 - 8);
  v4[50] = swift_task_alloc();
  sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v4[51] = swift_task_alloc();
  v13 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v4[52] = v13;
  v4[53] = *(v13 - 8);
  v4[54] = swift_task_alloc();

  return _swift_task_switch(sub_1003A3494, 0, 0);
}

uint64_t sub_1003A3494()
{
  sub_10000BA08((v0[19] + 240), *(v0[19] + 264));
  v1 = MobileDocumentReaderRequest.sessionIdentifier.getter();
  v3 = v2;
  v0[55] = v2;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_1003A3564;
  v5 = v0[51];

  return sub_100389664(v5, v1, v3);
}

uint64_t sub_1003A3564()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1003A39C8;
  }

  else
  {
    v2 = sub_1003A3698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A3698()
{
  v1 = v0[51];
  if ((*(v0[53] + 48))(v1, 1, v0[52]) == 1)
  {
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[33];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    sub_10000BE18(v1, &qword_1008419D8, &qword_1006DEAB0);
    type metadata accessor for DaemonAnalytics();
    v8 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.sessionMissing(_:);
    v9 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v9 - 8) + 104))(v2, v8, v9);
    (*(v3 + 104))(v2, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v4);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v3 + 8))(v2, v4);
    (*(v6 + 104))(v5, enum case for DIPError.Code.documentReaderMissingSession(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v10 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v0[80] = v10;
    v11 = *(v0[19] + 96);
    v0[81] = v11;

    return _swift_task_switch(sub_1003A4AB8, v11, 0);
  }

  else
  {
    v12 = v0[19];
    sub_100355438(v1, v0[54]);
    v0[58] = v12[12];
    v0[59] = v12[13];
    v13 = v12[14];
    v0[60] = v13;
    ObjectType = swift_getObjectType();
    v0[61] = ObjectType;
    v15 = swift_task_alloc();
    v0[62] = v15;
    *v15 = v0;
    v15[1] = sub_1003A39F4;
    v16 = v0[50];
    v17 = v0[18];

    return sub_1003D5518(v16, v17, ObjectType, v13);
  }
}

uint64_t sub_1003A39C8()
{
  v0[80] = v0[57];
  v1 = *(v0[19] + 96);
  v0[81] = v1;
  return _swift_task_switch(sub_1003A4AB8, v1, 0);
}

uint64_t sub_1003A39F4()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1003A53A4;
  }

  else
  {
    v2 = sub_1003A3B08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A3B08()
{
  v1 = v0[19];
  sub_100020260(v1 + 120, (v0 + 2));
  v0[64] = sub_10000BA08(v0 + 2, v0[5]);
  CBOREncodedCBOR.value.getter();
  sub_10000BA08((v1 + 280), *(v1 + 304));
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_1003A3BEC;
  v3 = v0[17];

  return sub_1003484CC(v3);
}

uint64_t sub_1003A3BEC(uint64_t a1)
{
  v3 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    (*(v3[41] + 8))(v3[43], v3[40]);
    v4 = sub_1003A4064;
  }

  else
  {
    v4 = sub_1003A3D1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A3D1C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = *(v0 + 312);
  v4 = (v1 + *(v2 + 40));
  v5 = *v4;
  v6 = v4[1];
  sub_10000BBC4(v1 + *(v2 + 56), v3, &qword_100835D88, &qword_1006DE890);
  v7 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v3, 1, v7);
  v10 = *(v0 + 312);
  if (v9 == 1)
  {
    sub_10000BE18(*(v0 + 312), &qword_100835D88, &qword_1006DE890);
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    v11 = CBOREncodedCBOR.dataValue.getter();
    v12 = v13;
    (*(v8 + 8))(v10, v7);
  }

  v14 = *(v0 + 536);
  sub_100366FA8(*(v0 + 136), *(v0 + 344), *(v0 + 528), v5, v6, v11, v12, *(v0 + 376));
  if (v14)
  {
    v35 = *(v0 + 432);
    v16 = *(v0 + 392);
    v15 = *(v0 + 400);
    v17 = *(v0 + 384);
    v18 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);

    sub_10000BD94(v11, v12);
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    sub_10035C718(v35);
    sub_10000BB78((v0 + 16));
    *(v0 + 640) = v14;
    v21 = *(*(v0 + 152) + 96);
    *(v0 + 648) = v21;

    return _swift_task_switch(sub_1003A4AB8, v21, 0);
  }

  else
  {
    v22 = *(v0 + 464);
    v34 = *(v0 + 472);
    v36 = *(v0 + 488);
    v23 = *(v0 + 344);
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);
    v26 = *(v0 + 152);

    sub_10000BD94(v11, v12);
    v27 = *(v25 + 8);
    *(v0 + 544) = v27;
    *(v0 + 552) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v23, v24);
    sub_10000BB78((v0 + 16));
    sub_10000BA08((v26 + 120), *(v26 + 144));
    CBOREncodedCBOR.value.getter();
    *(v0 + 80) = v36;
    *(v0 + 88) = v34;
    *(v0 + 56) = v22;
    swift_unknownObjectRetain();
    v28 = swift_task_alloc();
    *(v0 + 560) = v28;
    *v28 = v0;
    v28[1] = sub_1003A4100;
    v29 = *(v0 + 432);
    v30 = *(v0 + 368);
    v31 = *(v0 + 376);
    v32 = *(v0 + 336);

    return sub_100369558(v30, v31, v32, v29, v0 + 56);
  }
}

uint64_t sub_1003A4064()
{
  v1 = v0[54];
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_10035C718(v1);
  sub_10000BB78(v0 + 2);
  v0[80] = v0[67];
  v2 = *(v0[19] + 96);
  v0[81] = v2;

  return _swift_task_switch(sub_1003A4AB8, v2, 0);
}

uint64_t sub_1003A4100()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  (*(v2 + 544))(*(v2 + 336), *(v2 + 320));
  if (v0)
  {
    v3 = sub_1003A44A4;
  }

  else
  {
    sub_10000BB78((v2 + 56));
    v3 = sub_1003A4244;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A4244()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  static MobileDocumentReaderMilestone.readRequestBuilt.getter();
  Milestone.log()();
  v7 = *(v2 + 8);
  v0[72] = v7;
  v0[73] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  type metadata accessor for DaemonAnalytics();
  (*(v6 + 104))(v4, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.valid(_:), v5);
  static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
  (*(v6 + 8))(v4, v5);
  v8 = swift_task_alloc();
  v0[74] = v8;
  *v8 = v0;
  v8[1] = sub_1003A4388;
  v10 = v0[60];
  v9 = v0[61];
  v11 = v0[46];
  v12 = v0[31];

  return sub_1003D5C48(v12, v11, v9, v10);
}

uint64_t sub_1003A4388(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[75] = a1;
  v4[76] = a2;
  v4[77] = v2;

  if (v2)
  {
    v5 = sub_1003A541C;
  }

  else
  {
    v5 = sub_1003A4564;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A44A4()
{
  v1 = v0[54];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  (*(v0[45] + 8))(v0[47], v0[44]);
  (*(v3 + 8))(v2, v4);
  sub_10035C718(v1);
  sub_10000BB78(v0 + 7);
  v0[80] = v0[71];
  v5 = *(v0[19] + 96);
  v0[81] = v5;

  return _swift_task_switch(sub_1003A4AB8, v5, 0);
}

uint64_t sub_1003A4564()
{
  v31 = v0;
  v1 = v0[76];
  v2 = v0[75];
  (*(v0[30] + 32))(v0[32], v0[31], v0[29]);
  defaultLogger()();
  sub_10000B8B8(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_10000B90C(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[76];
    v6 = v0[75];
    v7 = v0[26];
    v28 = v0[25];
    v29 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    sub_10000B8B8(v6, v5);
    v10 = Data.description.getter();
    v12 = v11;
    sub_10000B90C(v6, v5);
    v13 = sub_100141FE4(v10, v12, &v30);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderManager: Mobile document response received: %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v7 + 8))(v29, v28);
  }

  else
  {
    v14 = v0[28];
    v15 = v0[25];
    v16 = v0[26];

    (*(v16 + 8))(v14, v15);
  }

  v17 = v0[72];
  v18 = v0[38];
  v19 = v0[36];
  static MobileDocumentReaderMilestone.readDocumentResponseReceived.getter();
  Milestone.log()();
  v17(v18, v19);
  v20 = swift_task_alloc();
  v0[78] = v20;
  *v20 = v0;
  v20[1] = sub_1003A47D4;
  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[50];
  v24 = v0[32];
  v25 = v0[16];
  v26 = v0[17];

  return sub_1003A5620(v25, v22, v21, v26, v23, v24);
}

uint64_t sub_1003A47D4()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_1003A5500;
  }

  else
  {
    v2 = sub_1003A48E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A48E8()
{
  v1 = v0[54];
  v2 = v0[50];
  v3 = v0[49];
  v14 = v0[48];
  v4 = v0[46];
  v13 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  sub_10000B90C(v0[75], v0[76]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v13, v5);
  (*(v3 + 8))(v2, v14);
  sub_10035C718(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A4AB8()
{
  v1 = *(v0 + 648);
  [*(v1 + 120) invalidate];
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  *(v1 + 112) = 0;

  return _swift_task_switch(sub_1003A4B3C, 0, 0);
}

uint64_t sub_1003A4B3C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[20];
    sub_10000BBC4(v0[21], v6, &qword_10083B020, &unk_1006D8ED0);
    if ((*(v5 + 88))(v6, v4) == enum case for DIPError.Code.sesKeySignError(_:))
    {
      defaultLogger()();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "MobileDocumentReaderManager encountered error while signing with underlying SE key. Session is no longer valid, deleting from local storage and throwing a session expired error.", v9, 2u);
      }

      v11 = v0[26];
      v10 = v0[27];
      v12 = v0[25];
      v13 = v0[19];

      (*(v11 + 8))(v10, v12);
      sub_10000BA08((v13 + 240), *(v13 + 264));
      v14 = MobileDocumentReaderRequest.sessionIdentifier.getter();
      v16 = v15;
      v0[82] = v15;
      v17 = swift_task_alloc();
      v0[83] = v17;
      *v17 = v0;
      v17[1] = sub_1003A4F88;

      return sub_1003916E8(v14, v16);
    }

    (*(v0[23] + 8))(v0[20], v0[22]);
  }

  (*(v0[23] + 104))(v0[24], enum case for DIPError.Code.internalError(_:), v0[22]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v19 = v0[21];

  sub_10000BE18(v19, &qword_10083B020, &unk_1006D8ED0);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003A4F88()
{

  return _swift_task_switch(sub_1003A50A0, 0, 0);
}

uint64_t sub_1003A50A0()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  type metadata accessor for DaemonAnalytics();
  v7 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.seKeyMissing(_:);
  v8 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v3);
  static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
  (*(v2 + 8))(v1, v3);
  (*(v5 + 104))(v4, enum case for DIPError.Code.documentReaderSessionExpired(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v9 = v0[21];

  sub_10000BE18(v9, &qword_10083B020, &unk_1006D8ED0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A53A4()
{
  sub_10035C718(v0[54]);
  v0[80] = v0[63];
  v1 = *(v0[19] + 96);
  v0[81] = v1;

  return _swift_task_switch(sub_1003A4AB8, v1, 0);
}

uint64_t sub_1003A541C()
{
  v1 = v0[54];
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[44];
  v7 = *(v0[45] + 8);
  v7(v0[46], v6);
  v7(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_10035C718(v1);
  v0[80] = v0[77];
  v8 = *(v0[19] + 96);
  v0[81] = v8;

  return _swift_task_switch(sub_1003A4AB8, v8, 0);
}

uint64_t sub_1003A5500()
{
  v1 = v0[49];
  v13 = v0[50];
  v14 = v0[54];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[44];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  sub_10000B90C(v0[75], v0[76]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v4 + 8);
  v10(v5, v6);
  v10(v3, v6);
  (*(v1 + 8))(v13, v2);
  sub_10035C718(v14);
  v0[80] = v0[79];
  v11 = *(v0[19] + 96);
  v0[81] = v11;

  return _swift_task_switch(sub_1003A4AB8, v11, 0);
}

uint64_t sub_1003A5620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v9 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for VICALDocument();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  sub_100007224(&qword_1008426E8, &qword_1006DF768);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  sub_100007224(&qword_1008426F0, &qword_1006DF770);
  v7[22] = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentRequestType.Storage();
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v12 = type metadata accessor for MobileDocumentRequestType();
  v7[26] = v12;
  v7[27] = *(v12 - 8);
  v7[28] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013Response.Status();
  v7[29] = v13;
  v7[30] = *(v13 - 8);
  v7[31] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[32] = v14;
  v7[33] = *(v14 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v15 = type metadata accessor for ISO18013Response();
  v7[39] = v15;
  v7[40] = *(v15 - 8);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();

  return _swift_task_switch(sub_1003A5A40, 0, 0);
}

uint64_t sub_1003A5A40()
{
  sub_1003A7B64(v0[3], v0[4]);
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  defaultLogger()();
  (*(v4 + 16))(v1, v2, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];
  if (v7)
  {
    v12 = v0[30];
    v11 = v0[31];
    v40 = v0[29];
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    ISO18013Response.status.getter();
    v14 = ISO18013Response.Status.rawValue.getter();
    (*(v12 + 8))(v11, v40);
    v15 = *(v9 + 8);
    v15(v8, v10);
    *(v13 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderManager: Valid ISO18013 response received with status: %lu", v13, 0xCu);
  }

  else
  {
    v15 = *(v9 + 8);
    v15(v0[41], v0[39]);
  }

  v16 = v5;
  v0[43] = v15;
  v17 = v0[38];
  v18 = v0[32];
  v19 = v0[33];
  v20 = v0[27];
  v21 = v0[28];
  v22 = v0[25];
  v41 = v0[26];
  v24 = v0[23];
  v23 = v0[24];

  v25 = *(v19 + 8);
  v0[44] = v25;
  v0[45] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26 = v17;
  v27 = v25;
  v25(v26, v18);
  MobileDocumentReaderRequest.documentRequestType.getter();
  MobileDocumentRequestType.storage.getter();
  (*(v20 + 8))(v21, v41);
  v28 = (*(v23 + 88))(v22, v24);
  LODWORD(v20) = enum case for MobileDocumentRequestType.Storage.rawDataRequest(_:);
  (*(v23 + 8))(v22, v24);
  if (v28 == v20)
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "MobileDocumentReaderManager data transfer request, validating key revocation", v31, 2u);
    }

    v32 = v0[37];
    v33 = v0[32];
    v34 = v0[8];

    v27(v32, v33);
    sub_10000BA08((v34 + 160), *(v34 + 184));
    v35 = swift_task_alloc();
    v0[46] = v35;
    *v35 = v0;
    v35[1] = sub_1003A6060;
    v36 = v0[42];

    return sub_1003733A8(v36);
  }

  else
  {
    sub_10000BA08((v0[8] + 280), *(v0[8] + 304));
    v38 = swift_task_alloc();
    v0[48] = v38;
    *v38 = v0;
    v38[1] = sub_1003A6928;
    v39 = v0[5];

    return sub_1003484CC(v39);
  }
}

uint64_t sub_1003A6060()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1003A66A0;
  }

  else
  {
    v2 = sub_1003A6174;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A6174(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderManager data transfer request, returning data blob.", v4, 2u);
  }

  v5 = *(v1 + 376);
  v6 = *(v1 + 352);
  v7 = *(v1 + 288);
  v8 = *(v1 + 256);

  v6(v7, v8);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  CBOREncoder.init()();
  sub_100007224(&qword_100841BE0, &qword_1006DEB08);
  sub_1003A89B8();
  dispatch thunk of CBOREncoder.encode<A>(_:)();
  if (v5)
  {
    (*(v1 + 344))(*(v1 + 336), *(v1 + 312));

    (*(*(v1 + 80) + 104))(*(v1 + 88), enum case for DIPError.Code.internalError(_:), *(v1 + 72));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v11 = *(v1 + 168);
    v10 = *(v1 + 176);
    v12 = *(v1 + 96);
    v13 = *(v1 + 104);
    v15 = *(v1 + 24);
    v14 = *(v1 + 32);

    (*(v13 + 56))(v10, 1, 1, v12);
    v16 = type metadata accessor for MobileDocumentIssuer();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_10000B8B8(v15, v14);
    MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
    (*(v1 + 344))(*(v1 + 336), *(v1 + 312));
  }

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_1003A66A0()
{
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A6928(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1003A6BF8;
  }

  else
  {
    v4 = sub_1003A6A3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A6A3C()
{
  sub_10000BA08((v0[8] + 280), *(v0[8] + 304));
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_1003A6AE4;
  v2 = v0[18];

  return sub_100346D68(v2);
}

uint64_t sub_1003A6AE4()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1003A6F8C;
  }

  else
  {
    v2 = sub_1003A6E80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A6BF8()
{
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A6E80()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v4 + 16))(v1, v2, v3);
  v5 = sub_10034C5B4(v1);
  (*(v4 + 8))(v2, v3);
  v0[53] = v5;
  sub_10000BA08((v0[8] + 160), *(v0[8] + 184));
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_1003A704C;
  v7 = v0[49];
  v8 = v0[42];
  v10 = v0[6];
  v9 = v0[7];

  return sub_10036E664(v8, v9, v10, v7, v5);
}

uint64_t sub_1003A6F8C()
{

  v0[53] = 0;
  sub_10000BA08((v0[8] + 160), *(v0[8] + 184));
  v1 = swift_task_alloc();
  v0[54] = v1;
  *v1 = v0;
  v1[1] = sub_1003A704C;
  v2 = v0[49];
  v3 = v0[42];
  v5 = v0[6];
  v4 = v0[7];

  return sub_10036E664(v3, v4, v5, v2, 0);
}

uint64_t sub_1003A704C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_1003A78DC;
  }

  else
  {
    v4 = sub_1003A71A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A71A4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 336);
  v3 = *(v0 + 112);
  sub_10000BA08((*(v0 + 64) + 200), *(*(v0 + 64) + 224));
  sub_1003C4424(v2, v3);
  v4 = *(v0 + 440);
  if (!v1)
  {
    if (*(v4 + 16) == 1)
    {
      v6 = *(v4 + 32);
      if (v6 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_6:

          if ((v6 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v8 = *(v6 + 32);
          }

          v9 = v8;

          v10 = SecCertificateRef.stateOrProvinceName.getter();
          if (v11)
          {
            v12 = v10;
            v13 = v11;
          }

          else
          {
            v12 = SecCertificateRef.countryName.getter();
            v13 = v14;
            if (!v14)
            {
              v15 = 1;
              goto LABEL_13;
            }
          }

          MobileDocumentIssuer.init(jurisdictionCode:)();
          v15 = 0;
LABEL_13:
          v16 = *(v0 + 352);
          v17 = *(v0 + 280);
          v18 = *(v0 + 256);
          v20 = *(v0 + 152);
          v19 = *(v0 + 160);
          v21 = type metadata accessor for MobileDocumentIssuer();
          (*(*(v21 - 8) + 56))(v20, v15, 1, v21);
          sub_1003A8940(v20, v19);
          defaultLogger()();
          v22 = swift_task_alloc();
          *(v22 + 16) = v12;
          *(v22 + 24) = v13;
          Logger.sensitive(_:)();

          v16(v17, v18);
LABEL_20:
          v29 = *(v0 + 168);
          v30 = *(v0 + 176);
          v31 = *(v0 + 160);
          v33 = *(v0 + 104);
          v32 = *(v0 + 112);
          v34 = *(v0 + 96);
          (*(v33 + 16))(v30, v32, v34);
          (*(v33 + 56))(v30, 0, 1, v34);
          sub_10000BBC4(v31, v29, &qword_1008426E8, &qword_1006DF768);
          MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)();
          sub_10000BE18(v31, &qword_1008426E8, &qword_1006DF768);
          (*(v33 + 8))(v32, v34);
          (*(v0 + 344))(*(v0 + 336), *(v0 + 312));

          v5 = *(v0 + 8);
          goto LABEL_21;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }
    }

    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      v26 = *(v4 + 16);

      *(v25 + 4) = v26;

      _os_log_impl(&_mh_execute_header, v23, v24, "Issuer certificate chains count != 1, was %ld, not returning issuer", v25, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v27 = *(v0 + 160);
    (*(v0 + 352))(*(v0 + 272), *(v0 + 256));
    v28 = type metadata accessor for MobileDocumentIssuer();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    goto LABEL_20;
  }

  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));

  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);
LABEL_21:

  return v5();
}

uint64_t sub_1003A78DC()
{
  (*(v0 + 344))(*(v0 + 336), *(v0 + 312));
  (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.internalError(_:), *(v0 + 72));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A7B64(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DIPError.Code();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v53 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ISO18013SessionData.Status();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100007224(&qword_100842700, &qword_1006DF778);
  __chkstk_darwin(v41);
  v46 = &v37 - v6;
  v7 = sub_100007224(&qword_100842708, &qword_1006DF780);
  v8 = __chkstk_darwin(v7 - 8);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v43 = &v37 - v11;
  __chkstk_darwin(v10);
  v44 = &v37 - v12;
  v13 = type metadata accessor for ISO18013SessionData();
  v47 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v37 - v17;
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  CBORDecoder.init()();
  type metadata accessor for ISO18013Response();
  sub_1003A8A1C(&qword_100842710, &type metadata accessor for ISO18013Response, &protocol conformance descriptor for ISO18013Response);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  if (!v2)
  {
  }

  swift_allocObject();
  swift_errorRetain();
  CBORDecoder.init()();
  sub_1003A8A1C(&qword_100842718, &type metadata accessor for ISO18013SessionData, &protocol conformance descriptor for ISO18013SessionData);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();

  v19 = *(v47 + 32);
  v38 = v13;
  v19(v48, v16, v13);
  v20 = v44;
  ISO18013SessionData.status.getter();
  v21 = v45;
  v22 = v42;
  v23 = v43;
  (*(v45 + 104))(v43, enum case for ISO18013SessionData.Status.sessionTerminationError(_:), v42);
  (*(v21 + 56))(v23, 0, 1, v22);
  v24 = *(v41 + 48);
  v25 = v46;
  sub_10000BBC4(v20, v46, &qword_100842708, &qword_1006DF780);
  sub_10000BBC4(v23, v25 + v24, &qword_100842708, &qword_1006DF780);
  v26 = *(v21 + 48);
  if (v26(v25, 1, v22) != 1)
  {
    v28 = v40;
    sub_10000BBC4(v25, v40, &qword_100842708, &qword_1006DF780);
    v29 = v26(v25 + v24, 1, v22);
    v30 = v22;
    if (v29 != 1)
    {
      v32 = v45;
      v33 = v25 + v24;
      v34 = v39;
      (*(v45 + 32))(v39, v33, v30);
      sub_1003A8A1C(&qword_100842720, &type metadata accessor for ISO18013SessionData.Status, &protocol conformance descriptor for ISO18013SessionData.Status);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v32 + 8);
      v36(v34, v30);
      sub_10000BE18(v43, &qword_100842708, &qword_1006DF780);
      sub_10000BE18(v44, &qword_100842708, &qword_1006DF780);
      v36(v40, v30);
      sub_10000BE18(v25, &qword_100842708, &qword_1006DF780);
      if (v35)
      {
        goto LABEL_12;
      }

LABEL_10:
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v31._countAndFlagsBits = 0xD000000000000036;
      v31._object = 0x8000000100712520;
      String.append(_:)(v31);
      _print_unlocked<A, B>(_:_:)();
      (*(v49 + 104))(v53, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v50);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return (*(v47 + 8))(v48, v38);
    }

    sub_10000BE18(v43, &qword_100842708, &qword_1006DF780);
    v27 = v46;
    sub_10000BE18(v44, &qword_100842708, &qword_1006DF780);
    (*(v45 + 8))(v28, v22);
LABEL_9:
    sub_10000BE18(v27, &qword_100842700, &qword_1006DF778);
    goto LABEL_10;
  }

  sub_10000BE18(v23, &qword_100842708, &qword_1006DF780);
  v27 = v46;
  sub_10000BE18(v20, &qword_100842708, &qword_1006DF780);
  if (v26(v27 + v24, 1, v22) != 1)
  {
    goto LABEL_9;
  }

  sub_10000BE18(v27, &qword_100842708, &qword_1006DF780);
LABEL_12:
  (*(v49 + 104))(v53, enum case for DIPError.Code.documentReaderHolderCancelled(_:), v50);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return (*(v47 + 8))(v48, v38);
}

uint64_t sub_1003A8650(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(61);
  v4._object = 0x8000000100712470;
  v4._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v4);
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a1 = 7104878;
    v5 = 0xE300000000000000;
  }

  v6._countAndFlagsBits = a1;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_1003A870C()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 15);
  sub_10000BB78(v0 + 20);
  sub_10000BB78(v0 + 25);
  sub_10000BB78(v0 + 30);
  sub_10000BB78(v0 + 35);

  return swift_deallocClassInstance();
}

uint64_t sub_1003A87A0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 96) + 128);
  os_unfair_lock_lock((v3 + 32));
  sub_1003A8A64((v3 + 16));
  os_unfair_lock_unlock((v3 + 32));
}

uint64_t sub_1003A8804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_1003A2568();
}

uint64_t sub_1003A8890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_1003A3000(a1, a2, a3);
}

uint64_t sub_1003A8940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008426E8, &qword_1006DF768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A89B8()
{
  result = qword_1008426F8;
  if (!qword_1008426F8)
  {
    sub_10000B870(&qword_100841BE0, &qword_1006DEB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008426F8);
  }

  return result;
}

uint64_t sub_1003A8A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003A8A80()
{
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003A8B7C, v0, 0);
}

uint64_t sub_1003A8B7C(uint64_t a1)
{
  v25 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[6];
  v6 = v1[3];
  v7 = v1[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderNFCManager %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[2] = 0;
  v11 = [objc_opt_self() sharedHardwareManager];
  v12 = [v11 getRadioEnabledState:v1 + 2];

  v13 = v1[2];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v1[5];
  v18 = v1[3];
  if (v16)
  {
    v23 = v10;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_100141FE4(0x656C62616E457369, 0xE900000000000064, &v24);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v13 == 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "BluetoothManager %s NFC on: %{BOOL}d", v19, 0x12u);
    sub_10000BB78(v20);

    v23(v17, v18);
  }

  else
  {

    v10(v17, v18);
  }

  v21 = v1[1];

  return v21(v13 == 1);
}

uint64_t sub_1003A8EAC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003A8F00()
{
  v0 = sub_1003AA228(&off_1007FBB78);
  result = swift_arrayDestroy();
  qword_100882328 = v0;
  return result;
}

void sub_1003A8F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = (*(a3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];
    v48[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48[1] = v14;
    v50 = &type metadata for Bool;
    v49 = 1;
    v51[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51[1] = v15;
    v51[5] = &type metadata for String;
    v51[2] = v12;
    v51[3] = v13;
    v52[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52[1] = v16;
    v54 = &type metadata for Bool;
    v53 = 1;
    sub_100007224(&qword_1008346F8, &qword_1006DA530);
    v17 = static _DictionaryStorage.allocate(capacity:)();

    sub_10017643C(v48, &v45);
    v19 = v45;
    v18 = v46;
    v20 = sub_10003ADCC(v45, v46);
    if (v21)
    {
      goto LABEL_21;
    }

    v22 = v17 + 8;
    *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
    v23 = (v17[6] + 16 * v20);
    *v23 = v19;
    v23[1] = v18;
    sub_10001F348(v47, (v17[7] + 32 * v20));
    v24 = v17[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v17[2] = v26;
    sub_10017643C(v51, &v45);
    v27 = v45;
    v28 = v46;
    v29 = sub_10003ADCC(v45, v46);
    if (v30)
    {
      goto LABEL_21;
    }

    *(v22 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v31 = (v17[6] + 16 * v29);
    *v31 = v27;
    v31[1] = v28;
    sub_10001F348(v47, (v17[7] + 32 * v29));
    v32 = v17[2];
    v25 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v17[2] = v33;
    sub_10017643C(v52, &v45);
    v34 = v45;
    v35 = v46;
    v36 = sub_10003ADCC(v45, v46);
    if (v37)
    {
      goto LABEL_21;
    }

    *(v22 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v38 = (v17[6] + 16 * v36);
    *v38 = v34;
    v38[1] = v35;
    sub_10001F348(v47, (v17[7] + 32 * v36));
    v39 = v17[2];
    v25 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v7 &= v7 - 1;
    v17[2] = v40;
    sub_100007224(&qword_100834450, &unk_1006BFED0);
    swift_arrayDestroy();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = CGImageSourceCreateWithData(isa, v42);

    if (v43)
    {
      Status = CGImageSourceGetStatus(v43);

      if (Status == kCGImageStatusComplete)
      {

        return;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void *sub_1003A92C4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100007224(&qword_1008427D0, &qword_1006DF830);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1003AA390(&qword_1008427D8, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1003AA390(&qword_1008427E0, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1003A95BC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100007224(&qword_10083BD40, &qword_1006DA258);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for StoredMobileDocumentReaderSigningKey();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for StoredMobileDocumentReaderSigningKey();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1003A9888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008427E8, &qword_1006DF838);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v83 = v1;
    v84 = a1 + 32;
    v86 = v3;
    v89 = v3 + 56;
    while (1)
    {
      v8 = (v84 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      Hasher.init(_seed:)();
      sub_10000B8B8(v10, v9);
      Data.hash(into:)();
      v11 = Hasher._finalize()();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) == 0)
      {
        goto LABEL_145;
      }

      v85 = v4;
      v17 = ~v12;
      v18 = v9 >> 62;
      if (v10)
      {
        v19 = 0;
      }

      else
      {
        v19 = v9 == 0xC000000000000000;
      }

      v20 = !v19;
      v92 = v20;
      v21 = __OFSUB__(HIDWORD(v10), v10);
      v90 = v21;
      v87 = (v10 >> 32) - v10;
      v88 = v10 >> 32;
      v91 = ~v12;
      while (1)
      {
        v22 = (*(v3 + 48) + 16 * v13);
        v24 = *v22;
        v23 = v22[1];
        v25 = v23 >> 62;
        if (v23 >> 62 == 3)
        {
          break;
        }

        if (v25 > 1)
        {
          if (v25 != 2)
          {
            goto LABEL_41;
          }

          v31 = *(v24 + 16);
          v30 = *(v24 + 24);
          v32 = __OFSUB__(v30, v31);
          v29 = v30 - v31;
          if (v32)
          {
            goto LABEL_152;
          }

          if (v18 <= 1)
          {
            goto LABEL_38;
          }
        }

        else if (v25)
        {
          LODWORD(v29) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_151;
          }

          v29 = v29;
          if (v18 <= 1)
          {
LABEL_38:
            v33 = BYTE6(v9);
            if (v18)
            {
              v33 = HIDWORD(v10) - v10;
              if (v90)
              {
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
                goto LABEL_154;
              }
            }

            goto LABEL_44;
          }
        }

        else
        {
          v29 = BYTE6(v23);
          if (v18 <= 1)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        if (v18 != 2)
        {
          if (!v29)
          {
            goto LABEL_3;
          }

          goto LABEL_18;
        }

        v35 = *(v10 + 16);
        v34 = *(v10 + 24);
        v32 = __OFSUB__(v34, v35);
        v33 = v34 - v35;
        if (v32)
        {
          goto LABEL_150;
        }

LABEL_44:
        if (v29 == v33)
        {
          if (v29 < 1)
          {
            goto LABEL_3;
          }

          if (v25 > 1)
          {
            if (v25 == 2)
            {
              v41 = *(v24 + 16);
              sub_10000B8B8(v24, v23);
              v42 = __DataStorage._bytes.getter();
              if (v42)
              {
                v43 = __DataStorage._offset.getter();
                if (__OFSUB__(v41, v43))
                {
                  goto LABEL_155;
                }

                v42 += v41 - v43;
              }

              __DataStorage._length.getter();
              if (v18 == 2)
              {
                v69 = *(v10 + 16);
                v81 = *(v10 + 24);
                v44 = __DataStorage._bytes.getter();
                if (v44)
                {
                  v70 = __DataStorage._offset.getter();
                  if (__OFSUB__(v69, v70))
                  {
                    goto LABEL_169;
                  }

                  v44 += v69 - v70;
                }

                v32 = __OFSUB__(v81, v69);
                v71 = v81 - v69;
                if (v32)
                {
                  goto LABEL_164;
                }

                v72 = __DataStorage._length.getter();
                if (v72 >= v71)
                {
                  v47 = v71;
                }

                else
                {
                  v47 = v72;
                }

                if (!v42)
                {
                  goto LABEL_188;
                }

                if (!v44)
                {
                  goto LABEL_187;
                }

                goto LABEL_136;
              }

              if (v18 == 1)
              {
                if (v88 < v10)
                {
                  goto LABEL_161;
                }

                v44 = __DataStorage._bytes.getter();
                if (v44)
                {
                  v45 = __DataStorage._offset.getter();
                  if (__OFSUB__(v10, v45))
                  {
                    goto LABEL_170;
                  }

                  v44 += v10 - v45;
                }

                v46 = __DataStorage._length.getter();
                v47 = (v10 >> 32) - v10;
                if (v46 < v87)
                {
                  v47 = v46;
                }

                if (!v42)
                {
                  goto LABEL_184;
                }

                if (!v44)
                {
                  goto LABEL_183;
                }

LABEL_136:
                if (v42 == v44)
                {
                  sub_10000B90C(v24, v23);
                  sub_10000B90C(v10, v9);
                  v1 = v83;
                  v4 = v85;
                  v3 = v86;
                  v5 = v89;
                  goto LABEL_5;
                }

                v62 = memcmp(v42, v44, v47);
                sub_10000B90C(v24, v23);
                v3 = v86;
                goto LABEL_141;
              }

              *__s1 = v10;
              *&__s1[8] = v9;
              __s1[10] = BYTE2(v9);
              __s1[11] = BYTE3(v9);
              __s1[12] = BYTE4(v9);
              __s1[13] = BYTE5(v9);
              if (!v42)
              {
                goto LABEL_175;
              }

LABEL_139:
              v68 = __s1;
              v67 = v42;
              v66 = BYTE6(v9);
              goto LABEL_140;
            }

            *&__s1[6] = 0;
            *__s1 = 0;
            if (v18)
            {
              if (v18 == 2)
              {
                v52 = *(v10 + 16);
                v51 = *(v10 + 24);
                sub_10000B8B8(v24, v23);
                v53 = __DataStorage._bytes.getter();
                if (v53)
                {
                  v54 = __DataStorage._offset.getter();
                  if (__OFSUB__(v52, v54))
                  {
                    goto LABEL_168;
                  }

                  v53 += v52 - v54;
                }

                v32 = __OFSUB__(v51, v52);
                v55 = v51 - v52;
                if (v32)
                {
                  goto LABEL_160;
                }

                v56 = __DataStorage._length.getter();
                if (!v53)
                {
                  goto LABEL_179;
                }

                goto LABEL_103;
              }

              if (v88 < v10)
              {
                goto LABEL_157;
              }

              sub_10000B8B8(v24, v23);
              v63 = __DataStorage._bytes.getter();
              if (!v63)
              {
                goto LABEL_173;
              }

              v64 = v63;
              v65 = __DataStorage._offset.getter();
              if (__OFSUB__(v10, v65))
              {
                goto LABEL_163;
              }

              v39 = (v10 - v65 + v64);
              v40 = __DataStorage._length.getter();
              if (!v39)
              {
                goto LABEL_174;
              }

LABEL_111:
              if (v40 >= v87)
              {
                v66 = (v10 >> 32) - v10;
              }

              else
              {
                v66 = v40;
              }

              v67 = __s1;
              v68 = v39;
LABEL_140:
              v62 = memcmp(v67, v68, v66);
              sub_10000B90C(v24, v23);
LABEL_141:
              v5 = v89;
LABEL_142:
              v17 = v91;
              if (!v62)
              {
LABEL_3:
                v6 = v10;
                v7 = v9;
                goto LABEL_4;
              }

              goto LABEL_18;
            }
          }

          else
          {
            if (v25)
            {
              if (v24 > v24 >> 32)
              {
                goto LABEL_153;
              }

              sub_10000B8B8(v24, v23);
              v42 = __DataStorage._bytes.getter();
              if (v42)
              {
                v48 = __DataStorage._offset.getter();
                if (__OFSUB__(v24, v48))
                {
                  goto LABEL_156;
                }

                v42 += v24 - v48;
              }

              __DataStorage._length.getter();
              if (v18 == 2)
              {
                v73 = *(v10 + 16);
                v82 = *(v10 + 24);
                v44 = __DataStorage._bytes.getter();
                if (v44)
                {
                  v74 = __DataStorage._offset.getter();
                  if (__OFSUB__(v73, v74))
                  {
                    goto LABEL_171;
                  }

                  v44 += v73 - v74;
                }

                v32 = __OFSUB__(v82, v73);
                v75 = v82 - v73;
                if (v32)
                {
                  goto LABEL_166;
                }

                v76 = __DataStorage._length.getter();
                if (v76 >= v75)
                {
                  v47 = v75;
                }

                else
                {
                  v47 = v76;
                }

                if (!v42)
                {
                  goto LABEL_182;
                }

                if (!v44)
                {
                  goto LABEL_181;
                }

                goto LABEL_136;
              }

              if (v18 == 1)
              {
                if (v88 < v10)
                {
                  goto LABEL_165;
                }

                v44 = __DataStorage._bytes.getter();
                if (v44)
                {
                  v49 = __DataStorage._offset.getter();
                  if (__OFSUB__(v10, v49))
                  {
                    goto LABEL_172;
                  }

                  v44 += v10 - v49;
                }

                v50 = __DataStorage._length.getter();
                v47 = (v10 >> 32) - v10;
                if (v50 < v87)
                {
                  v47 = v50;
                }

                if (!v42)
                {
                  goto LABEL_186;
                }

                if (!v44)
                {
                  goto LABEL_185;
                }

                goto LABEL_136;
              }

              *__s1 = v10;
              *&__s1[8] = v9;
              __s1[10] = BYTE2(v9);
              __s1[11] = BYTE3(v9);
              __s1[12] = BYTE4(v9);
              __s1[13] = BYTE5(v9);
              if (!v42)
              {
                goto LABEL_177;
              }

              goto LABEL_139;
            }

            *__s1 = v24;
            *&__s1[8] = v23;
            __s1[10] = BYTE2(v23);
            __s1[11] = BYTE3(v23);
            __s1[12] = BYTE4(v23);
            __s1[13] = BYTE5(v23);
            if (v18)
            {
              if (v18 == 1)
              {
                if (v88 < v10)
                {
                  goto LABEL_158;
                }

                sub_10000B8B8(v24, v23);
                v36 = __DataStorage._bytes.getter();
                if (!v36)
                {
                  goto LABEL_180;
                }

                v37 = v36;
                v38 = __DataStorage._offset.getter();
                if (__OFSUB__(v10, v38))
                {
                  goto LABEL_162;
                }

                v39 = (v10 - v38 + v37);
                v40 = __DataStorage._length.getter();
                if (!v39)
                {
                  goto LABEL_178;
                }

                goto LABEL_111;
              }

              v59 = *(v10 + 16);
              v58 = *(v10 + 24);
              sub_10000B8B8(v24, v23);
              v53 = __DataStorage._bytes.getter();
              if (v53)
              {
                v60 = __DataStorage._offset.getter();
                if (__OFSUB__(v59, v60))
                {
                  goto LABEL_167;
                }

                v53 += v59 - v60;
              }

              v32 = __OFSUB__(v58, v59);
              v55 = v58 - v59;
              if (v32)
              {
                goto LABEL_159;
              }

              v56 = __DataStorage._length.getter();
              if (!v53)
              {
                goto LABEL_176;
              }

LABEL_103:
              if (v56 >= v55)
              {
                v61 = v55;
              }

              else
              {
                v61 = v56;
              }

              v62 = memcmp(__s1, v53, v61);
              sub_10000B90C(v24, v23);
              v3 = v86;
              v5 = v89;
              goto LABEL_142;
            }
          }

          __s2 = v10;
          v94 = v9;
          v95 = BYTE2(v9);
          v96 = BYTE3(v9);
          v97 = BYTE4(v9);
          v98 = BYTE5(v9);
          v57 = memcmp(__s1, &__s2, BYTE6(v9));
          v17 = v91;
          if (!v57)
          {
            goto LABEL_3;
          }
        }

LABEL_18:
        v13 = (v13 + 1) & v17;
        v14 = v13 >> 6;
        v15 = *(v5 + 8 * (v13 >> 6));
        v16 = 1 << v13;
        if ((v15 & (1 << v13)) == 0)
        {
          v1 = v83;
          v4 = v85;
LABEL_145:
          *(v5 + 8 * v14) = v15 | v16;
          v77 = (*(v3 + 48) + 16 * v13);
          *v77 = v10;
          v77[1] = v9;
          v78 = *(v3 + 16);
          v32 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (!v32)
          {
            *(v3 + 16) = v79;
            goto LABEL_5;
          }

LABEL_154:
          __break(1u);
LABEL_155:
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
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __DataStorage._length.getter();
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __DataStorage._length.getter();
          __break(1u);
LABEL_181:
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
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
        }
      }

      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 == 0xC000000000000000;
      }

      v28 = !v26 || v9 >> 62 != 3;
      if ((v28 | v92))
      {
LABEL_41:
        v29 = 0;
        if (v18 <= 1)
        {
          goto LABEL_38;
        }

        goto LABEL_42;
      }

      v6 = 0;
      v7 = 0xC000000000000000;
LABEL_4:
      sub_10000B90C(v6, v7);
      v1 = v83;
      v4 = v85;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1003AA228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_10083BC70, &unk_1006E0140);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1003AA390(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1003AA3D4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentType.Identifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MobileDocumentType();
  v11 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v13)
  {
    v35 = v4;
    v36 = v3;
    v37 = v6;
    v38 = v1;
    v58 = _swiftEmptyArrayStorage;
    v44 = v13;
    sub_100172D4C(0, v13, 0);
    v54 = a1 + 56;
    v55 = v58;
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v51 = (v8 + 88);
    v52 = v11 + 16;
    v50 = enum case for MobileDocumentType.Identifier.nationalIDCard(_:);
    v42 = enum case for MobileDocumentType.Identifier.driversLicense(_:);
    v39 = enum case for MobileDocumentType.Identifier.photoID(_:);
    v43 = (v8 + 8);
    v48 = v10;
    v49 = (v11 + 8);
    v40 = a1 + 64;
    v41 = 0x8000000100712DD0;
    v46 = v7;
    v47 = a1;
    v17 = a1;
    v18 = v11;
    v45 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v17 + 32))
    {
      v20 = v15 >> 6;
      if ((*(v54 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_29;
      }

      v53 = *(v17 + 36);
      (*(v18 + 16))(v56, *(v17 + 48) + *(v18 + 72) * v15, v57);
      MobileDocumentType.storage.getter();
      v21 = (*v51)(v10, v7);
      if (v21 == v50)
      {
        (*v43)(v10, v7);
        v22 = 0xD000000000000010;
        v23 = v41;
      }

      else if (v21 == v42)
      {
        v22 = 0x2D73726576697264;
        v23 = 0xEF65736E6563696CLL;
      }

      else
      {
        if (v21 != v39)
        {
          (*(v35 + 104))(v37, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v36);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*v43)(v48, v7);
          (*v49)(v56, v57);
        }

        v23 = 0xE800000000000000;
        v22 = 0x64692D6F746F6870;
      }

      result = (*v49)(v56, v57);
      v24 = v55;
      v58 = v55;
      v26 = v55[2];
      v25 = v55[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_100172D4C((v25 > 1), v26 + 1, 1);
        v24 = v58;
      }

      v24[2] = v26 + 1;
      v27 = &v24[2 * v26];
      v27[4] = v22;
      v27[5] = v23;
      v17 = v47;
      v19 = 1 << *(v47 + 32);
      if (v15 >= v19)
      {
        goto LABEL_30;
      }

      v28 = *(v54 + 8 * v20);
      if ((v28 & (1 << v15)) == 0)
      {
        goto LABEL_31;
      }

      v55 = v24;
      if (v53 != *(v47 + 36))
      {
        goto LABEL_32;
      }

      v29 = v28 & (-2 << (v15 & 0x3F));
      if (v29)
      {
        v19 = __clz(__rbit64(v29)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v7 = v46;
      }

      else
      {
        v30 = v20 << 6;
        v31 = v20 + 1;
        v32 = (v40 + 8 * v20);
        v7 = v46;
        while (v31 < (v19 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_100316220(v15, v53, 0);
            v19 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_100316220(v15, v53, 0);
      }

LABEL_4:
      ++v16;
      v15 = v19;
      v18 = v45;
      v10 = v48;
      if (v16 == v44)
      {
        return v55;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

void *sub_1003AA9F4(uint64_t a1)
{
  v3 = type metadata accessor for MobileDocumentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v42 = v1;
    v43 = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v7, 0);
    v40 = a1 + 56;
    v41 = v43;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v37 = v4 + 16;
    v38 = (v4 + 8);
    v31 = a1 + 64;
    v32 = v7;
    v34 = v6;
    v35 = v3;
    v33 = v4;
    v36 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v40 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v39 = v10;
      v14 = *(a1 + 36);
      (*(v4 + 16))(v6, *(a1 + 48) + *(v4 + 72) * v9, v3);
      v15 = v42;
      v17 = MobileDocumentType.iso18013Identifier.getter();
      v18 = v6;
      if (v15)
      {
        (*v38)(v6, v3);
      }

      v19 = v16;
      v42 = 0;
      result = (*v38)(v18, v3);
      v20 = v41;
      v43 = v41;
      v22 = v41[2];
      v21 = v41[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_100172D4C((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      v20[2] = v22 + 1;
      v23 = &v20[2 * v22];
      v23[4] = v17;
      v23[5] = v19;
      a1 = v36;
      v11 = 1 << *(v36 + 32);
      if (v9 >= v11)
      {
        goto LABEL_26;
      }

      v24 = *(v40 + 8 * v13);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_27;
      }

      v41 = v20;
      if (v14 != *(v36 + 36))
      {
        goto LABEL_28;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v6 = v34;
        v3 = v35;
        v12 = v39;
      }

      else
      {
        v26 = v13 << 6;
        v27 = v13 + 1;
        v28 = (v31 + 8 * v13);
        v6 = v34;
        v3 = v35;
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_100316220(v9, v14, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_20;
          }
        }

        result = sub_100316220(v9, v14, 0);
LABEL_20:
        v12 = v39;
      }

      v10 = v12 + 1;
      v9 = v11;
      v4 = v33;
      if (v10 == v32)
      {
        return v41;
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

void *sub_1003AAD40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MobileDocumentElement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v46 = _swiftEmptyArrayStorage;
    v11 = v6;
    sub_100172D4C(0, v9, 0);
    v44 = a1 + 56;
    v45 = v46;
    result = _HashTable.startBucket.getter();
    v12 = v11;
    v13 = result;
    v14 = 0;
    v40 = v5 + 16;
    v41 = (v5 + 8);
    v34 = a1 + 64;
    v35 = v9;
    v37 = v8;
    v38 = v11;
    v36 = v5;
    v39 = a1;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v44 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      v43 = v14;
      v18 = *(a1 + 36);
      (*(v5 + 16))(v8, *(a1 + 48) + *(v5 + 72) * v13, v12);
      v20 = sub_1003B0B04();
      v21 = v8;
      if (v2)
      {
        (*v41)(v8, v12);
      }

      v22 = v19;
      v42 = 0;
      result = (*v41)(v21, v12);
      v23 = v45;
      v46 = v45;
      v25 = v45[2];
      v24 = v45[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_100172D4C((v24 > 1), v25 + 1, 1);
        v23 = v46;
      }

      v23[2] = v25 + 1;
      v26 = &v23[2 * v25];
      v26[4] = v20;
      v26[5] = v22;
      a1 = v39;
      v15 = 1 << *(v39 + 32);
      if (v13 >= v15)
      {
        goto LABEL_26;
      }

      v27 = *(v44 + 8 * v17);
      if ((v27 & (1 << v13)) == 0)
      {
        goto LABEL_27;
      }

      if (v18 != *(v39 + 36))
      {
        goto LABEL_28;
      }

      v45 = v23;
      v28 = v27 & (-2 << (v13 & 0x3F));
      if (v28)
      {
        v15 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v2 = v42;
        v16 = v43;
        v8 = v37;
        v12 = v38;
      }

      else
      {
        v29 = v17 << 6;
        v30 = v17 + 1;
        v31 = (v34 + 8 * v17);
        v2 = v42;
        v8 = v37;
        v12 = v38;
        while (v30 < (v15 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_100316220(v13, v18, 0);
            v15 = __clz(__rbit64(v32)) + v29;
            goto LABEL_20;
          }
        }

        result = sub_100316220(v13, v18, 0);
LABEL_20:
        v16 = v43;
      }

      v14 = v16 + 1;
      v13 = v15;
      v5 = v36;
      if (v14 == v35)
      {
        return v45;
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

uint64_t sub_1003AB08C(uint64_t a1, void *a2, int a3)
{
  v31 = a3;
  v32 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MobileDocumentReaderRequest();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v27[-v10];
  v12 = type metadata accessor for Logger();
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin(v12);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();
  v15 = *(v7 + 16);
  v39 = a1;
  v15(v11, a1, v6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v4;
    v19 = v18;
    v29 = swift_slowAlloc();
    v40 = v29;
    *v19 = 136315138;
    v28 = v17;
    v15(v33, v11, v6);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v7 + 8))(v11, v6);
    v23 = sub_100141FE4(v20, v22, &v40);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v28, "Validating request: %s", v19, 0xCu);
    sub_10000BB78(v29);

    v4 = v30;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  (*(v36 + 8))(v14, v37);
  v24 = v39;
  v25 = v38;
  sub_1003AB538(v39);
  if (v25)
  {
    (*(v34 + 104))(v35, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v4);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    sub_1003AC958(v24);
    return sub_1003ADE40(v24, v32, v31 & 1);
  }
}

void sub_1003AB538(uint64_t a1)
{
  v3 = v1;
  v90 = a1;
  v101 = type metadata accessor for Logger();
  v4 = *(v101 - 8);
  __chkstk_darwin(v101);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v7 = __chkstk_darwin(v86);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v82 - v9;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v93 = v10;
  v94 = v11;
  __chkstk_darwin(v10);
  v95 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for MobileDocumentRequestType();
  v13 = *(v89 - 8);
  v14 = __chkstk_darwin(v89);
  v83 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v87 = &v82 - v17;
  __chkstk_darwin(v16);
  v19 = &v82 - v18;
  v92 = type metadata accessor for BundleRecord();
  v91 = *(v92 - 8);
  v20 = __chkstk_darwin(v92);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v88 = &v82 - v23;
  v24._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableEntitlementChecks.getter();
  v25 = NSUserDefaults.internalBool(forKey:)(v24);

  if (!v25)
  {
    sub_10000BA08(v3 + 4, *(v3 + 7));
    dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
    if (v2)
    {
      *&v98 = 0;
      *(&v98 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v100[0] = v98;
      v29._countAndFlagsBits = 0xD000000000000037;
      v29._object = 0x8000000100712B50;
      String.append(_:)(v29);
      v30 = v3[1];
      v98 = *v3;
      v99 = v30;
      type metadata accessor for audit_token_t(0);
      _print_unlocked<A, B>(_:_:)();
      (*(v94 + 104))(v95, enum case for DIPError.Code.internalError(_:), v93);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v31 = v91;
    v32 = v88;
    v33 = v92;
    (*(v91 + 32))(v88, v22, v92);
    MobileDocumentReaderRequest.documentRequestType.getter();
    v34 = MobileDocumentRequestType.isDisplayOnly.getter();
    v35 = *(v13 + 8);
    v35(v19, v89);
    if (v34)
    {
      static MobileDocumentReaderEntitlementChecker.Constant.displayOnlyEntitlementKey.getter();
      BundleRecord.value(forEntitlement:)();

      if (*(&v99 + 1))
      {
        if (swift_dynamicCast() && (v100[0] & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_10000BE18(&v98, &unk_100845ED0, &qword_1006DA1D0);
      }

      (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_20:
      (*(v31 + 8))(v32, v33);
      return;
    }

    static MobileDocumentReaderEntitlementChecker.Constant.dataTransferEntitlementKey.getter();
    BundleRecord.value(forEntitlement:)();

    if (*(&v99 + 1))
    {
      sub_100007224(&qword_100842808, &unk_1006DF8A0);
      if (swift_dynamicCast())
      {
        v36 = *&v100[0];
        strcpy(v97, "document-types");
        v97[15] = -18;
        AnyHashable.init<A>(_:)();
        if (!*(v36 + 16) || (v37 = sub_10003AECC(&v98), (v38 & 1) == 0))
        {

          sub_1000279C8(&v98);
          (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (*(v31 + 8))(v32, v92);
          return;
        }

        sub_10001F2EC(*(v36 + 56) + 32 * v37, v97);
        sub_1000279C8(&v98);
        sub_10001F348(v97, v100);
        sub_10001F2EC(v100, &v98);
        sub_100007224(&qword_100834EA0, &qword_1006C06B0);
        if (!swift_dynamicCast())
        {

          (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BB78(v100);
          (*(v91 + 8))(v32, v92);
          return;
        }

        v39 = *v97;
        v40 = v87;
        MobileDocumentReaderRequest.documentRequestType.getter();
        v41 = MobileDocumentRequestType.documentTypes.getter();
        v35(v40, v89);
        v42 = sub_1003AA3D4(v41);
        v101 = v2;
        v44 = v42;

        v45 = sub_1006973D4(v44);

        v46 = sub_1003B0474(v39, v45);

        if (v46[2])
        {

          *&v98 = 0;
          *(&v98 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(42);

          *&v98 = 0xD000000000000028;
          *(&v98 + 1) = 0x8000000100712C20;
          v47 = Set.description.getter();
          v49 = v48;

          v50._countAndFlagsBits = v47;
          v50._object = v49;
          String.append(_:)(v50);

          (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
        }

        else
        {

          *&v96[0] = 0xD000000000000011;
          *(&v96[0] + 1) = 0x8000000100712C50;
          AnyHashable.init<A>(_:)();
          if (*(v36 + 16))
          {
            v51 = sub_10003AECC(&v98);
            if (v52)
            {
              sub_10001F2EC(*(v36 + 56) + 32 * v51, v96);
              sub_1000279C8(&v98);

              sub_10001F348(v96, v97);
              sub_10001F2EC(v97, &v98);
              if (swift_dynamicCast())
              {
                v87 = *&v96[0];
                v53 = v83;
                MobileDocumentReaderRequest.documentRequestType.getter();
                v54 = MobileDocumentRequestType.requestedElements.getter();
                v35(v53, v89);
                *&v98 = _swiftEmptyArrayStorage;
                v55 = v54 + 64;
                v56 = 1 << *(v54 + 32);
                v57 = -1;
                if (v56 < 64)
                {
                  v57 = ~(-1 << v56);
                }

                v58 = v57 & *(v54 + 64);
                v59 = (v56 + 63) >> 6;
                v90 = v54;

                v60 = 0;
                v89 = v54 + 64;
                if (v58)
                {
                  while (1)
                  {
                    v61 = v60;
LABEL_39:
                    v62 = __clz(__rbit64(v58));
                    v58 &= v58 - 1;
                    v63 = v62 | (v61 << 6);
                    v64 = v90;
                    v65 = *(v90 + 48);
                    v66 = type metadata accessor for MobileDocumentType();
                    v67 = *(v66 - 8);
                    v68 = v84;
                    (*(v67 + 16))(v84, v65 + *(v67 + 72) * v63, v66);
                    v69 = v86;
                    *(v68 + *(v86 + 48)) = *(*(v64 + 56) + 8 * v63);
                    v70 = v85;
                    sub_10000BBC4(v68, v85, &qword_10083C0D0, &unk_1006DF880);
                    v71 = *(v70 + *(v69 + 48));

                    sub_10031CC88(v71);
                    sub_10000BE18(v68, &qword_10083C0D0, &unk_1006DF880);
                    (*(v67 + 8))(v70, v66);
                    v55 = v89;
                    if (!v58)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                while (1)
                {
LABEL_35:
                  v61 = v60 + 1;
                  if (__OFADD__(v60, 1))
                  {
                    __break(1u);
                    return;
                  }

                  if (v61 >= v59)
                  {
                    break;
                  }

                  v58 = *(v55 + 8 * v61);
                  ++v60;
                  if (v58)
                  {
                    v60 = v61;
                    goto LABEL_39;
                  }
                }

                v72 = sub_1006977A8(v98);

                v73 = v101;
                v74 = sub_1003AAD40(v72);
                if (v73)
                {

                  goto LABEL_48;
                }

                v75 = v74;

                v76 = sub_1006973D4(v75);

                v77 = sub_1003B0474(v87, v76);

                if (v77[2])
                {
                  *&v98 = 0;
                  *(&v98 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(45);

                  *&v98 = 0xD00000000000002BLL;
                  *(&v98 + 1) = 0x8000000100712CC0;
                  v78 = Set.description.getter();
                  v80 = v79;

                  v81._countAndFlagsBits = v78;
                  v81._object = v80;
                  String.append(_:)(v81);

                  (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
                  sub_1000402AC(_swiftEmptyArrayStorage);
                  type metadata accessor for DIPError();
                  sub_100037214();
                  swift_allocError();
                  goto LABEL_45;
                }
              }

              else
              {
                (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
                sub_1000402AC(_swiftEmptyArrayStorage);
                type metadata accessor for DIPError();
                sub_100037214();
                swift_allocError();
LABEL_45:
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                swift_willThrow();
              }

LABEL_48:
              sub_10000BB78(v97);
              goto LABEL_43;
            }
          }

          sub_1000279C8(&v98);
          (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
        }

        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
LABEL_43:
        sub_10000BB78(v100);
        (*(v91 + 8))(v88, v92);
        return;
      }

      v43 = v32;
    }

    else
    {
      v43 = v32;
      sub_10000BE18(&v98, &unk_100845ED0, &qword_1006DA1D0);
    }

    (*(v94 + 104))(v95, enum case for DIPError.Code.missingEntitlement(_:), v93);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v31 + 8))(v43, v33);
    return;
  }

  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Bypassing entitlement checks", v28, 2u);
  }

  (*(v4 + 8))(v6, v101);
}

uint64_t sub_1003AC958(uint64_t a1)
{
  v138 = a1;
  v1 = type metadata accessor for Logger();
  v129 = *(v1 - 8);
  v130 = v1;
  __chkstk_darwin(v1);
  v3 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for MobileDocumentElement();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentType.Identifier();
  v118 = *(v5 - 8);
  __chkstk_darwin(v5);
  v124 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentRequestType.Storage();
  v121 = *(v7 - 8);
  v122 = v7;
  __chkstk_darwin(v7);
  v120 = (&v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v126 = v9;
  v127 = v10;
  __chkstk_darwin(v9);
  v128 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MobileDocumentType();
  v134 = *(v12 - 8);
  v135 = v12;
  v13 = __chkstk_darwin(v12);
  v125 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v123 = &v105 - v16;
  __chkstk_darwin(v15);
  v131 = &v105 - v17;
  v18 = sub_100007224(&qword_100842800, &unk_1006DF890);
  v19 = __chkstk_darwin(v18 - 8);
  v132 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v105 - v21;
  v23 = type metadata accessor for MobileDocumentRequestType();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v119 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v105 - v28;
  __chkstk_darwin(v27);
  v31 = &v105 - v30;
  v32._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRequestValidation.getter();
  v33 = NSUserDefaults.internalBool(forKey:)(v32);

  if (!v33)
  {
    v130 = v22;
    v110 = v5;
    MobileDocumentReaderRequest.documentRequestType.getter();
    v38 = MobileDocumentRequestType.requestedElements.getter();
    v41 = *(v24 + 8);
    v39 = v24 + 8;
    v40 = v41;
    v41(v31, v23);
    MobileDocumentReaderRequest.documentRequestType.getter();
    v42 = MobileDocumentRequestType.requestedElements.getter();
    v41(v31, v23);
    v43 = *(v42 + 16);

    if (v43)
    {
      MobileDocumentReaderRequest.documentRequestType.getter();
      v44 = v133;
      sub_1003AF54C();
      if (v44)
      {
        v40(v29, v23);
      }

      v133 = 0;
      v107 = v23;
      v106 = v40;
      v40(v29, v23);
      v45 = 0;
      v113 = v38;
      v117 = v39;
      v46 = *(v38 + 64);
      v109 = v38 + 64;
      v47 = 1 << *(v38 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v48 & v46;
      v108 = (v47 + 63) >> 6;
      v112 = v134 + 16;
      v111 = v134 + 32;
      v129 = (v134 + 8);
      v50 = v135;
      v51 = v130;
      v52 = v132;
      if ((v48 & v46) != 0)
      {
        while (1)
        {
          v53 = v45;
LABEL_21:
          v56 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          v57 = v56 | (v53 << 6);
          v58 = v113;
          v59 = v134;
          v60 = v131;
          (*(v134 + 16))(v131, *(v113 + 48) + *(v134 + 72) * v57, v50);
          v61 = *(v58 + 56);
          v62 = v50;
          v63 = *(v61 + 8 * v57);
          v64 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
          v65 = *(v64 + 48);
          v66 = *(v59 + 32);
          v52 = v132;
          v66(v132, v60, v62);
          *(v52 + v65) = v63;
          (*(*(v64 - 8) + 56))(v52, 0, 1, v64);

          v55 = v53;
          v51 = v130;
LABEL_22:
          sub_1003B1134(v52, v51);
          v67 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
          if ((*(*(v67 - 8) + 48))(v51, 1, v67) == 1)
          {
            break;
          }

          v68 = *(v51 + *(v67 + 48));
          if (!*(v68 + 16))
          {

            (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderEmptyRequest(_:), v126);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
LABEL_49:
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();

            return (*v129)(v51, v135);
          }

          sub_1003AFB20(v68);
          if (v69)
          {

            (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderInvalidAgeAtLeastElement(_:), v126);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
            goto LABEL_49;
          }

          sub_1003C40F4(v68);
          v71 = v70;

          v72 = *(v71 + 16);

          if (v72 > 2)
          {
            (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderTooManyAgeAtLeastElements(_:), v126);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
            goto LABEL_49;
          }

          v50 = v135;
          (*v129)(v51, v135);
          v45 = v55;
          if (!v49)
          {
            goto LABEL_14;
          }
        }

        v74 = v119;
        MobileDocumentReaderRequest.documentRequestType.getter();
        v75 = v120;
        MobileDocumentRequestType.storage.getter();
        v106(v74, v107);
        v77 = v121;
        v76 = v122;
        if ((*(v121 + 88))(v75, v122) != enum case for MobileDocumentRequestType.Storage.displayOnly(_:))
        {
          return (*(v77 + 8))(v75, v76);
        }

        result = (*(v77 + 96))(v75, v76);
        v78 = 0;
        v79 = *v75;
        v121 = v75[1];
        v81 = v79 + 56;
        v80 = *(v79 + 56);
        v138 = v79;
        v82 = 1 << *(v79 + 32);
        v83 = -1;
        if (v82 < 64)
        {
          v83 = ~(-1 << v82);
        }

        v84 = v83 & v80;
        v85 = (v82 + 63) >> 6;
        v86 = (v118 + 88);
        LODWORD(v132) = enum case for MobileDocumentType.Identifier.nationalIDCard(_:);
        LODWORD(v130) = enum case for MobileDocumentType.Identifier.driversLicense(_:);
        LODWORD(v122) = enum case for MobileDocumentType.Identifier.photoID(_:);
        v131 = (v118 + 8);
        v87 = v135;
        while (v84)
        {
          v88 = v78;
          v89 = v124;
LABEL_41:
          v90 = __clz(__rbit64(v84));
          v84 &= v84 - 1;
          v91 = v134;
          v92 = v123;
          (*(v134 + 16))(v123, *(v138 + 48) + *(v134 + 72) * (v90 | (v88 << 6)), v87);
          v93 = *(v91 + 32);
          v94 = v125;
          v93(v125, v92, v87);
          MobileDocumentType.storage.getter();
          v95 = v110;
          v96 = (*v86)(v89, v110);
          if (v96 == v132)
          {
            (*v129)(v94, v87);
            result = (*v131)(v89, v95);
          }

          else
          {
            if (v96 != v130)
            {
              v97 = v125;
              if (v96 != v122)
              {

                v136 = 0;
                v137 = 0xE000000000000000;
                _StringGuts.grow(_:)(65);
                v103._countAndFlagsBits = 0xD00000000000003FLL;
                v103._object = 0x8000000100712900;
                String.append(_:)(v103);
                v104 = v135;
                _print_unlocked<A, B>(_:_:)();
                (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v126);
                sub_1000402AC(_swiftEmptyArrayStorage);
                type metadata accessor for DIPError();
                sub_100037214();
                swift_allocError();
                DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
                swift_willThrow();

                (*v129)(v97, v104);
                return (*v131)(v124, v110);
              }
            }

            result = (*v129)(v125, v135);
          }

          v78 = v88;
        }

        v89 = v124;
        while (1)
        {
          v88 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            __break(1u);
            return result;
          }

          if (v88 >= v85)
          {
            break;
          }

          v84 = *(v81 + 8 * v88);
          ++v78;
          if (v84)
          {
            goto LABEL_41;
          }
        }

        v55 = v121;
        if (!*(v121 + 16))
        {
          goto LABEL_8;
        }

        v98 = v114;
        static MobileDocumentElement.portrait.getter();
        v99 = sub_100693BD4(v98, v55);
        (*(v115 + 8))(v98, v116);
        if (v99 & 1) == 0 || (sub_1003AFDE0(v55), (v100))
        {

          (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderInvalidRequest(_:), v126);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          goto LABEL_9;
        }
      }

      else
      {
LABEL_14:
        if (v108 <= v45 + 1)
        {
          v54 = v45 + 1;
        }

        else
        {
          v54 = v108;
        }

        v55 = v54 - 1;
        while (1)
        {
          v53 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v53 >= v108)
          {
            v73 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
            (*(*(v73 - 8) + 56))(v52, 1, 1, v73);
            v49 = 0;
            goto LABEL_22;
          }

          v49 = *(v109 + 8 * v53);
          ++v45;
          if (v49)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
      }

      if (*(v55 + 16) < 2uLL)
      {

        (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderRequestOnlyContainsPortrait(_:), v126);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
      }

      else
      {
        sub_1003B00BC(v55);
        v102 = v101;

        if ((v102 & 1) == 0)
        {
          return result;
        }

        (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderTooManyAgeAtLeastElements(_:), v126);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
      }
    }

    else
    {
LABEL_8:

      (*(v127 + 104))(v128, enum case for DIPError.Code.documentReaderEmptyRequest(_:), v126);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

LABEL_9:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Bypassing request validation", v36, 2u);
  }

  return v129[1](v3, v130);
}

uint64_t sub_1003ADE40(uint64_t a1, void *a2, int a3)
{
  v64 = a3;
  v70 = a1;
  v6 = type metadata accessor for DIPError.Code();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Logger();
  v76 = *(v77 - 8);
  v8 = __chkstk_darwin(v77);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v63 = &v59 - v12;
  __chkstk_darwin(v11);
  v62 = &v59 - v13;
  v74 = type metadata accessor for ReaderAuthenticationAllowableElements();
  v71 = *(v74 - 8);
  __chkstk_darwin(v74);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MobileDocumentRequestType();
  v73 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007224(&qword_1008427F0, &qword_1006DF870);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v72 = &v59 - v23;
  v24 = __chkstk_darwin(v22);
  v75 = &v59 - v25;
  __chkstk_darwin(v24);
  v27 = &v59 - v26;
  v65 = v3;
  v28._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableAllowedElementsValidation.getter();
  v29 = NSUserDefaults.internalBool(forKey:)(v28);

  if (v29)
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Bypassing TAC allowed request checks", v32, 2u);
    }

    return (*(v76 + 8))(v10, v77);
  }

  else
  {
    sub_10000BA08(a2, a2[3]);
    result = dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDisplayOnly.getter();
    if (!v4)
    {
      v61 = v27;
      sub_10000BA08(a2, a2[3]);
      v34 = v75;
      dispatch thunk of ReaderAuthenticationAllowableElementsProviding.allowableElementsForDataTransfer.getter();
      v60 = 0;
      v35 = *(v71 + 48);
      v36 = v74;
      if (v35(v61, 1, v74) == 1 && v35(v34, 1, v36) == 1)
      {
        v37 = v63;
        defaultLogger()();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "TAC is missing allowable elements for both request types, bypassing allowable elements check.", v40, 2u);
          v34 = v75;
        }

        (*(v76 + 8))(v37, v77);
        sub_10000BE18(v61, &qword_1008427F0, &qword_1006DF870);
        return sub_10000BE18(v34, &qword_1008427F0, &qword_1006DF870);
      }

      else
      {
        v41 = v70;
        MobileDocumentReaderRequest.documentRequestType.getter();
        v42 = MobileDocumentRequestType.isDisplayOnly.getter();
        v43 = *(v73 + 8);
        v73 += 8;
        v63 = v43;
        (v43)(v17, v15);
        if (v42)
        {
          v44 = v61;
        }

        else
        {
          v44 = v34;
        }

        v45 = v72;
        sub_10000BBC4(v44, v72, &qword_1008427F0, &qword_1006DF870);
        v46 = v45;
        v47 = v74;
        sub_10000BBC4(v46, v21, &qword_1008427F0, &qword_1006DF870);
        if (v35(v21, 1, v47) == 1)
        {
          sub_10000BE18(v21, &qword_1008427F0, &qword_1006DF870);
          if (v64 & 1) != 0 && (MobileDocumentReaderRequest.documentRequestType.getter(), v48 = MobileDocumentRequestType.requiresReaderToken.getter(), (v63)(v17, v15), (v48))
          {
            (*(v66 + 104))(v69, enum case for DIPError.Code.documentReaderTokenRequiredForRequest(_:), v67);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
          }

          else
          {
            (*(v66 + 104))(v69, enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:), v67);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100037214();
            swift_allocError();
          }

          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000BE18(v72, &qword_1008427F0, &qword_1006DF870);
          sub_10000BE18(v61, &qword_1008427F0, &qword_1006DF870);
          return sub_10000BE18(v75, &qword_1008427F0, &qword_1006DF870);
        }

        else
        {
          v49 = v71;
          v50 = v68;
          (*(v71 + 32))(v68, v21, v47);
          v51 = ReaderAuthenticationAllowableElements.documentTypes.getter();
          v52 = v60;
          sub_1003AE898(v41, v51);
          if (v52)
          {

            (*(v49 + 8))(v50, v47);
            sub_10000BE18(v72, &qword_1008427F0, &qword_1006DF870);
            sub_10000BE18(v61, &qword_1008427F0, &qword_1006DF870);
            return sub_10000BE18(v75, &qword_1008427F0, &qword_1006DF870);
          }

          else
          {

            v53 = ReaderAuthenticationAllowableElements.elements.getter();
            sub_1003AEB9C(v41, v53);
            v54 = v61;

            v55 = v62;
            defaultLogger()();
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&_mh_execute_header, v56, v57, "TAC contains requisite allowed document types and elements to perform the request", v58, 2u);
            }

            (*(v76 + 8))(v55, v77);
            (*(v49 + 8))(v50, v47);
            sub_10000BE18(v72, &qword_1008427F0, &qword_1006DF870);
            sub_10000BE18(v54, &qword_1008427F0, &qword_1006DF870);
            return sub_10000BE18(v75, &qword_1008427F0, &qword_1006DF870);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1003AE898(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentRequestType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentReaderRequest.documentRequestType.getter();
  v11 = MobileDocumentRequestType.documentTypes.getter();
  (*(v8 + 8))(v10, v7);
  v12 = sub_1003AA9F4(v11);

  if (!v2)
  {
    v14 = sub_1006973D4(v12);

    if (sub_1003B0474(v21, v14)[2])
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v19 = 0xD00000000000002CLL;
      v20 = 0x8000000100712880;
      v15 = Set.description.getter();
      v17 = v16;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      (*(v4 + 104))(v6, enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:), v3);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003AEB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentRequestType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentReaderRequest.documentRequestType.getter();
  sub_1003AEEA0();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v14 = v12;
  (*(v9 + 8))(v11, v8);
  v15 = sub_1006973D4(v14);

  if (!sub_1003B0474(a2, v15)[2])
  {
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v20 = 0xD000000000000026;
  v21 = 0x80000001007127F0;
  v16 = Set.description.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  (*(v5 + 104))(v7, enum case for DIPError.Code.documentReaderAuthenticationCertificateNotAllowedToPerformRequest(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

void sub_1003AEEA0()
{
  v1 = v0;
  v2 = sub_100007224(&qword_1008427F8, &qword_1006DF878);
  v3 = __chkstk_darwin(v2 - 8);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v67 - v5;
  v7 = &qword_10083C0D0;
  v74 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  __chkstk_darwin(v74);
  v73 = &v67 - v8;
  v9 = MobileDocumentRequestType.requestedElements.getter();
  v10 = *(v9 + 64);
  v69 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v68 = (v11 + 63) >> 6;
  v76 = v9;

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v72 = v6;
LABEL_5:
  v75 = v15;
  if (v13)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v68)
    {

      v43 = v75[2];
      if (!v43)
      {
LABEL_38:

        return;
      }

      v79 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, v43, 0);
      v44 = v75;
      v45 = 0;
      v46 = v79;
      LODWORD(v69) = enum case for ISO18013KnownNamespaces.iso18013_5_1(_:);
      LODWORD(v68) = enum case for ISO18013KnownNamespaces.iso23220_1(_:);
      v47 = (v75 + 7);
      v74 = v43;
      while (2)
      {
        if (v45 >= v44[2])
        {
          goto LABEL_42;
        }

        v76 = v46;
        v49 = *(v47 - 3);
        v48 = *(v47 - 2);
        v51 = *(v47 - 1);
        v50 = *v47;
        swift_bridgeObjectRetain_n();

        ISO18013KnownNamespaces.init(rawValue:)();
        v52 = type metadata accessor for ISO18013KnownNamespaces();
        v53 = v6;
        v54 = *(v52 - 8);
        if ((*(v54 + 48))(v53, 1, v52) == 1)
        {
LABEL_34:
          v77 = v49;
          v78 = v48;

          v62._countAndFlagsBits = 58;
          v62._object = 0xE100000000000000;
          String.append(_:)(v62);
          v63._countAndFlagsBits = v51;
          v63._object = v50;
          String.append(_:)(v63);
          v60 = v77;
          v61 = v78;
          sub_10000BE18(v53, &qword_1008427F8, &qword_1006DF878);
        }

        else
        {
          v73 = v51;
          v55 = v71;
          sub_10000BBC4(v53, v71, &qword_1008427F8, &qword_1006DF878);
          v56 = (*(v54 + 88))(v55, v52);
          if (v56 == v69)
          {
            v51 = v73;
            v57 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();
            v53 = v72;
            if ((v57 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v51 = v73;
            if (v56 != v68)
            {
              (*(v54 + 8))(v71, v52);
              v53 = v72;
              goto LABEL_34;
            }

            v58 = static ISO23220_1_ElementIdentifier.isAgeOverElement(_:)();
            v53 = v72;
            if ((v58 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          sub_10000BE18(v53, &qword_1008427F8, &qword_1006DF878);
          v77 = v49;
          v78 = v48;

          v59._countAndFlagsBits = 0x65766F5F6567613ALL;
          v59._object = 0xEC0000004E4E5F72;
          String.append(_:)(v59);

          v60 = v77;
          v61 = v78;
        }

        v6 = v53;
        v44 = v75;
        v46 = v76;
        v79 = v76;
        v65 = v76[2];
        v64 = v76[3];
        if (v65 >= v64 >> 1)
        {
          sub_100172D4C((v64 > 1), v65 + 1, 1);
          v44 = v75;
          v46 = v79;
        }

        ++v45;
        v46[2] = v65 + 1;
        v66 = &v46[2 * v65];
        v66[4] = v60;
        v66[5] = v61;
        v47 += 4;
        if (v74 == v45)
        {
          goto LABEL_38;
        }

        continue;
      }
    }

    v13 = *(v69 + 8 * v17);
    ++v14;
    if (v13)
    {
      v14 = v17;
LABEL_10:
      v18 = __clz(__rbit64(v13)) | (v14 << 6);
      v19 = v76;
      v20 = v76[6];
      v21 = type metadata accessor for MobileDocumentType();
      v22 = *(v21 - 8);
      v23 = v20 + *(v22 + 72) * v18;
      v24 = v73;
      v25 = (*(v22 + 16))(v73, v23, v21);
      v26 = *(v19[7] + 8 * v18);
      *(v24 + *(v74 + 48)) = v26;
      __chkstk_darwin(v25);
      *(&v67 - 2) = v24;
      *(&v67 - 1) = v1;

      v27 = v26;
      v28 = v70;
      sub_1003CE4C8(sub_1003B10D8, (&v67 - 4), v27);
      v70 = v28;
      if (v28)
      {

        sub_10000BE18(v24, &qword_10083C0D0, &unk_1006DF880);

        return;
      }

      v30 = v29;
      sub_10000BE18(v24, v7, &unk_1006DF880);
      v31 = *(v30 + 16);
      v32 = v75[2];
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_43;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v33 > v75[3] >> 1)
      {
        if (v32 <= v33)
        {
          v36 = v32 + v31;
        }

        else
        {
          v36 = v32;
        }

        v35 = sub_1003C63D0(isUniquelyReferenced_nonNull_native, v36, 1, v75);
      }

      v6 = v72;
      v13 &= v13 - 1;
      if (*(v30 + 16))
      {
        if ((v35[3] >> 1) - v35[2] < v31)
        {
          goto LABEL_45;
        }

        v37 = v7;
        v38 = v1;
        v39 = v35;
        sub_100007224(&qword_10083C0A0, &unk_1006DA5C0);
        swift_arrayInitWithCopy();

        v15 = v39;
        v1 = v38;
        v7 = v37;
        if (v31)
        {
          v40 = v15[2];
          v41 = __OFADD__(v40, v31);
          v42 = v40 + v31;
          if (v41)
          {
            goto LABEL_46;
          }

          v15[2] = v42;
        }
      }

      else
      {
        v16 = v35;

        v15 = v16;
        if (v31)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_5;
    }
  }

  __break(1u);
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
}

uint64_t sub_1003AF54C()
{
  v57 = type metadata accessor for MobileDocumentElement();
  v1 = *(v57 - 8);
  __chkstk_darwin(v57 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MobileDocumentType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v48 - v8;
  v9 = sub_100007224(&qword_100842800, &unk_1006DF890);
  v10 = __chkstk_darwin(v9 - 8);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v48 - v12;
  v66 = v0;
  result = MobileDocumentRequestType.requestedElements.getter();
  v14 = 0;
  v15 = *(result + 64);
  v49 = result + 64;
  v54 = result;
  v16 = 1 << *(result + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v50 = v5 + 16;
  v61 = (v5 + 32);
  v62 = v1 + 16;
  v64 = v3;
  v65 = v1;
  v63 = (v1 + 8);
  v52 = v5;
  v53 = v19;
  v55 = (v5 + 8);
  v56 = v4;
LABEL_6:
  if (!v18)
  {
    if (v19 <= v14 + 1)
    {
      v21 = v14 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    v23 = v59;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_32;
      }

      if (v20 >= v19)
      {
        v47 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
        (*(*(v47 - 8) + 56))(v23, 1, 1, v47);
        v18 = 0;
        goto LABEL_16;
      }

      v18 = *(v49 + 8 * v20);
      ++v14;
      if (v18)
      {
        goto LABEL_15;
      }
    }
  }

  v20 = v14;
LABEL_15:
  v24 = __clz(__rbit64(v18));
  v18 &= v18 - 1;
  v25 = v24 | (v20 << 6);
  v26 = v54;
  v28 = v51;
  v27 = v52;
  (*(v52 + 16))(v51, *(v54 + 48) + *(v52 + 72) * v25, v4);
  v29 = *(*(v26 + 56) + 8 * v25);
  v30 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  v31 = *(v30 + 48);
  v32 = *(v27 + 32);
  v33 = v59;
  v32(v59, v28, v4);
  *&v33[v31] = v29;
  v23 = v33;
  (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

  v22 = v20;
LABEL_16:
  v34 = v58;
  sub_1003B1134(v23, v58);
  v35 = sub_100007224(&qword_10083C0D0, &unk_1006DF880);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
  {
  }

  v60 = v22;
  v36 = *(v34 + *(v35 + 48));
  result = (*v61)(v67, v34, v4);
  v37 = 0;
  v38 = 1 << *(v36 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v36 + 56);
  v41 = (v38 + 63) >> 6;
  v42 = v57;
  if (!v40)
  {
LABEL_22:
    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v41)
      {

        v4 = v56;
        result = (*v55)(v67, v56);
        v14 = v60;
        v19 = v53;
        goto LABEL_6;
      }

      v40 = *(v36 + 56 + 8 * v43);
      ++v37;
      if (v40)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  while (1)
  {
    v43 = v37;
LABEL_25:
    v44 = v64;
    (*(v65 + 16))(v64, *(v36 + 48) + *(v65 + 72) * (__clz(__rbit64(v40)) | (v43 << 6)), v42);
    v45 = MobileDocumentRequestType.isRawDataRequest.getter();
    v46 = v68;
    sub_10037A314(v67, v45 & 1);
    if (v46)
    {
      break;
    }

    v68 = 0;
    v40 &= v40 - 1;

    result = (*v63)(v44, v42);
    v37 = v43;
    if (!v40)
    {
      goto LABEL_22;
    }
  }

  (*v63)(v44, v42);

  return (*v55)(v67, v56);
}

void sub_1003AFB20(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentElement.Element();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MobileDocumentElement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v24 = v7 + 8;
  v25 = v7 + 16;
  v15 = v3;
  v16 = (v3 + 88);
  v23 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v21 = (v15 + 96);
  v22 = (v15 + 8);
  v26 = a1;

  v17 = 0;
  while (v13)
  {
LABEL_10:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v7 + 16))(v9, *(v26 + 48) + *(v7 + 72) * (v19 | (v17 << 6)), v6);
    MobileDocumentElement.storage.getter();
    (*(v7 + 8))(v9, v6);
    v20 = (*v16)(v5, v2);
    if (v20 == v23)
    {
      (*v21)(v5, v2);
      if ((*v5 & 0x8000000000000000) != 0 || *v5 >= 0x64uLL)
      {

        return;
      }
    }

    else
    {
      (*v22)(v5, v2);
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v17;
    if (v13)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1003AFDE0(uint64_t a1)
{
  v31 = type metadata accessor for MobileDocumentElement.Element();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentElement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v29 = v6 + 8;
  v30 = v6 + 16;
  v23 = v2;
  v13 = (v2 + 88);
  v28 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v27 = enum case for MobileDocumentElement.Element.givenName(_:);
  v26 = enum case for MobileDocumentElement.Element.familyName(_:);
  v25 = enum case for MobileDocumentElement.Element.portrait(_:);
  v24 = enum case for MobileDocumentElement.Element.age(_:);

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v6 + 16))(v8, *(a1 + 48) + *(v6 + 72) * (v16 | (v15 << 6)), v5);
    MobileDocumentElement.storage.getter();
    (*(v6 + 8))(v8, v5);
    v17 = (*v13)(v4, v31);
    if (v17 != v28 && v17 != v27 && v17 != v26 && v17 != v25 && v17 != v24)
    {

      (*(v23 + 8))(v4, v31);
      return;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return;
    }

    v11 = *(a1 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1003B00BC(uint64_t a1)
{
  v42 = type metadata accessor for MobileDocumentElement.Element();
  v2 = *(v42 - 8);
  __chkstk_darwin(v42 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentElement();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v40 = (v2 + 88);
  v41 = v6 + 16;
  v39 = enum case for MobileDocumentElement.Element.ageAtLeast(_:);
  v38 = enum case for MobileDocumentElement.Element.age(_:);
  v36 = (v6 + 8);
  v37 = (v2 + 8);
  v33 = (v6 + 32);
  v43 = a1;

  v16 = 0;
  v35 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v16;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(v6 + 72);
    (*(v6 + 16))(v10, *(v43 + 48) + v19 * (v18 | (v16 << 6)), v5);
    MobileDocumentElement.storage.getter();
    v20 = v42;
    v21 = (*v40)(v4, v42);
    if (v21 == v39 || v21 == v38)
    {
      v32 = *v33;
      v32(v34, v10, v5);
      v23 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001733C8(0, v23[2] + 1, 1);
        v23 = v44;
      }

      v26 = v23[2];
      v25 = v23[3];
      v27 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v31 = v5;
        v35 = (v26 + 1);
        v29 = v26;
        sub_1001733C8((v25 > 1), v26 + 1, 1);
        v26 = v29;
        v5 = v31;
        v27 = v35;
        v23 = v44;
      }

      v23[2] = v27;
      v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v35 = v23;
      v32(v23 + v28 + v26 * v19, v34, v5);
    }

    else
    {
      (*v37)(v4, v20);
      (*v36)(v10, v5);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v16);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t *sub_1003B0474(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    __chkstk_darwin(v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1003D4904(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1003B0920(v44, v49, v2, v13, v57);

  if (!v45)
  {

    return v46;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1003B0920(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1003D4904(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

unint64_t sub_1003B0B04()
{
  v0 = 6645601;
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MobileDocumentElement.Element();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MobileDocumentElement.storage.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != enum case for MobileDocumentElement.Element.ageAtLeast(_:))
  {
    if (v9 == enum case for MobileDocumentElement.Element.givenName(_:))
    {
      return 0x616E2D6E65766967;
    }

    else if (v9 == enum case for MobileDocumentElement.Element.familyName(_:))
    {
      return 0x6E2D796C696D6166;
    }

    else if (v9 == enum case for MobileDocumentElement.Element.sex(_:))
    {
      return 7890291;
    }

    else if (v9 == enum case for MobileDocumentElement.Element.portrait(_:))
    {
      return 0x7469617274726F70;
    }

    else if (v9 != enum case for MobileDocumentElement.Element.age(_:))
    {
      if (v9 == enum case for MobileDocumentElement.Element.dateOfBirth(_:))
      {
        return 0x2D666F2D65746164;
      }

      else if (v9 == enum case for MobileDocumentElement.Element.address(_:))
      {
        return 0x73736572646461;
      }

      else
      {
        v0 = 0x746867696568;
        if (v9 != enum case for MobileDocumentElement.Element.height(_:))
        {
          if (v9 == enum case for MobileDocumentElement.Element.weight(_:))
          {
            return 0x746867696577;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.eyeColor(_:))
          {
            return 0x6F6C6F632D657965;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.hairColor(_:))
          {
            return 0x6C6F632D72696168;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.organDonorStatus(_:))
          {
            return 0xD000000000000012;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.veteranStatus(_:))
          {
            return 0x2D6E617265746576;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.issuingAuthority(_:))
          {
            return 0xD000000000000011;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.drivingPrivileges(_:))
          {
            return 0xD000000000000012;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.documentDHSComplianceStatus(_:))
          {
            return 0xD00000000000001ELL;
          }

          else if (v9 == enum case for MobileDocumentElement.Element.documentNumber(_:))
          {
            return 0x746E656D75636F64;
          }

          else
          {
            v0 = 0xD000000000000012;
            if (v9 == enum case for MobileDocumentElement.Element.documentIssueDate(_:))
            {
              return 0xD000000000000013;
            }

            else if (v9 == enum case for MobileDocumentElement.Element.documentExpirationDate(_:))
            {
              return 0xD000000000000018;
            }

            else
            {
              v11[1] = "itlement required";
              (*(v2 + 104))(v4, enum case for DIPError.Code.missingEntitlement(_:), v1);
              sub_1000402AC(_swiftEmptyArrayStorage);
              type metadata accessor for DIPError();
              sub_100037214();
              swift_allocError();
              DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
              swift_willThrow();
              (*(v6 + 8))(v8, v5);
            }
          }
        }
      }
    }
  }

  return v0;
}

char *sub_1003B10D8@<X0>(char **a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = MobileDocumentRequestType.isRawDataRequest.getter();
  result = sub_10037A314(v5, v6 & 1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003B1134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100842800, &unk_1006DF890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B11A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003B11EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B1250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v81 = type metadata accessor for Locale.Region();
  v78 = *(v81 - 8);
  v5 = __chkstk_darwin(v81);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v70 - v7;
  v8 = type metadata accessor for DIPError.Code();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v86 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MobileDocumentType();
  v87 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ISO18013Response.IssuerSigned();
  v88 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v70 - v21;

  v24 = sub_1006940B0(v23);
  v25 = v91;
  sub_1003B1F48(v22, v16, v24);
  v91 = v25;
  if (v25)
  {
    v26 = type metadata accessor for ISO18013Response();
    (*(*(v26 - 8) + 8))(a1, v26);
  }

  v72 = v20;
  v73 = v14;
  v75 = a1;
  v76 = v22;
  v74 = v17;

  v28 = v16;
  if (*(a2 + 16) && (v29 = sub_10003B970(v16), (v30 & 1) != 0))
  {
    v31 = *(*(a2 + 56) + 8 * v29);

    v32 = v13;
    MobileDocumentType.storage.getter();
    v33 = v82;
    v34 = v83;
    v35 = v83[11](v13, v82);
    v36 = v88;
    if (v35 != enum case for MobileDocumentType.Identifier.nationalIDCard(_:))
    {
      v55 = v76;
      v56 = v86;
      if (v35 == enum case for MobileDocumentType.Identifier.driversLicense(_:))
      {
        v57 = v74;
        v58 = v72;
        (*(v88 + 16))(v72, v76, v74);
        sub_1003B2658(v58, v31, v80);
        v59 = type metadata accessor for ISO18013Response();
        (*(*(v59 - 8) + 8))(v75, v59);
        (*(v87 + 8))(v28, v73);
      }

      else
      {
        v64 = v73;
        v65 = v80;
        if (v35 != enum case for MobileDocumentType.Identifier.photoID(_:))
        {

          v89 = 0;
          v90 = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          v68._countAndFlagsBits = 0xD00000000000001ALL;
          v68._object = 0x8000000100710680;
          String.append(_:)(v68);
          _print_unlocked<A, B>(_:_:)();
          v81 = v89;
          (*(v84 + 104))(v56, enum case for DIPError.Code.documentReaderUnknownDocumentType(_:), v85);
          sub_1000402AC(_swiftEmptyArrayStorage);
          v91 = v28;
          type metadata accessor for DIPError();
          sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          v69 = type metadata accessor for ISO18013Response();
          (*(*(v69 - 8) + 8))(v75, v69);
          (*(v87 + 8))(v91, v64);
          (*(v36 + 8))(v76, v74);
          return v83[1](v32, v82);
        }

        v57 = v74;
        v66 = v72;
        (*(v88 + 16))(v72, v76, v74);
        sub_1003B6EA4(v66, v31, v65);
        v67 = type metadata accessor for ISO18013Response();
        (*(*(v67 - 8) + 8))(v75, v67);
        (*(v87 + 8))(v28, v64);
      }

      return (*(v36 + 8))(v55, v57);
    }

    v71 = v31;
    v34[12](v13, v33);
    v37 = v77;
    v38 = v78;
    v39 = v13;
    v40 = v81;
    (*(v78 + 16))(v77, v39, v81);
    v41 = v79;
    Locale.Region.init(stringLiteral:)();
    sub_1003BD24C(&qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    v42 = v41;
    v43 = v32;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v38 + 8);
    (v45)(v42, v40);
    v83 = v45;
    (v45)(v37, v40);
    v46 = v86;
    if (v44)
    {
      v47 = v88;
      v48 = v72;
      v49 = v76;
      v50 = v74;
      (*(v88 + 16))(v72, v76, v74);
      sub_1003B5690(v48, v71, v80);
      v51 = type metadata accessor for ISO18013Response();
      (*(*(v51 - 8) + 8))(v75, v51);
      (*(v87 + 8))(v28, v73);
      (*(v47 + 8))(v49, v50);
      return (v83)(v43, v40);
    }

    (*(v38 + 32))(v42, v43, v40);
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v60._countAndFlagsBits = 0xD000000000000026;
    v60._object = 0x80000001007110A0;
    String.append(_:)(v60);
    v61._countAndFlagsBits = Locale.Region.identifier.getter();
    String.append(_:)(v61);

    v62._countAndFlagsBits = 0xD000000000000013;
    v62._object = 0x80000001007110D0;
    String.append(_:)(v62);
    v82 = v89;
    v91 = v28;
    (*(v84 + 104))(v46, enum case for DIPError.Code.documentReaderUnsupportedNationalIDCardRegion(_:), v85);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v63 = type metadata accessor for ISO18013Response();
    (*(*(v63 - 8) + 8))(v75, v63);
    (v83)(v42, v81);
    (*(v87 + 8))(v91, v73);
  }

  else
  {

    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v52._countAndFlagsBits = 0xD000000000000035;
    v52._object = 0x8000000100712DF0;
    String.append(_:)(v52);
    v53 = v73;
    _print_unlocked<A, B>(_:_:)();
    (*(v84 + 104))(v86, enum case for DIPError.Code.badLogic(_:), v85);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v54 = type metadata accessor for ISO18013Response();
    (*(*(v54 - 8) + 8))(v75, v54);
    (*(v87 + 8))(v16, v53);
  }

  return (*(v88 + 8))(v76, v74);
}

uint64_t sub_1003B1F48(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v6 = type metadata accessor for DIPError.Code();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100842888, &qword_1006DF978);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_100007224(&qword_100842890, &qword_1006DF980);
  __chkstk_darwin(v11 - 8);
  v53 = &v41 - v12;
  v47 = type metadata accessor for MobileDocumentType();
  v13 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  if (v16)
  {
    v54 = v3;
    v48 = v10;
    v17 = sub_1003BA1DC(v16, 0, &qword_10083C058, &qword_1006DA558, &type metadata accessor for MobileDocumentType);
    v18 = sub_1003BCC6C(&v55, &v17[(*(v13 + 80) + 32) & ~*(v13 + 80)], v16, a3, &type metadata accessor for MobileDocumentType);
    v19 = v55;

    result = sub_10001FA6C(v19);
    if (v18 != v16)
    {
      goto LABEL_19;
    }

    v10 = v48;
    v4 = v54;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v56 = v17;
  result = sub_1003BA3FC(&v56);
  v21 = v56;
  if (v4)
  {
  }

  v22 = v47;
  v51 = v56[2];
  if (!v51)
  {
LABEL_15:

    (*(v44 + 104))(v46, enum case for DIPError.Code.documentReaderInvalidResponse(_:), v45);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003BD24C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v54 = 0;
  v23 = 0;
  v24 = *(v13 + 80);
  v48 = v10;
  v49 = v56 + ((v24 + 32) & ~v24);
  v52 = v13 + 16;
  v50 = (v13 + 8);
  while (v23 < *(v21 + 16))
  {
    v27 = *(v13 + 16);
    v27(v15, &v49[*(v13 + 72) * v23], v22);
    v28 = ISO18013Response.documents.getter();
    if (v28)
    {
      v29 = v28;
      v30 = v21;
      __chkstk_darwin(v28);
      v32 = v31;
      v33 = v48;
      v34 = v54;
      sub_100162130(sub_1003BE148, v29, v48);
      v54 = v34;
      if (v34)
      {

        return (*v50)(v32, v22);
      }

      v35 = type metadata accessor for ISO18013Response.Document();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v33, 1, v35) != 1)
      {

        v37 = v53;
        ISO18013Response.Document.issuerSigned.getter();
        (*(v36 + 8))(v33, v35);
        v38 = type metadata accessor for ISO18013Response.IssuerSigned();
        v39 = *(v38 - 8);
        (*(v39 + 56))(v37, 0, 1, v38);
        (*(v39 + 32))(v42, v37, v38);
        v40 = v47;
        v27(v43, v32, v47);
        return (*v50)(v32, v40);
      }

      sub_10000BE18(v33, &qword_100842888, &qword_1006DF978);
      v22 = v47;
      v21 = v30;
      v15 = v32;
    }

    ++v23;
    v25 = type metadata accessor for ISO18013Response.IssuerSigned();
    v26 = v53;
    (*(*(v25 - 8) + 56))(v53, 1, 1, v25);
    sub_10000BE18(v26, &qword_100842890, &qword_1006DF980);
    result = (*v50)(v15, v22);
    if (v51 == v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1003B2658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v341 = a3;
  v5 = type metadata accessor for MobileDocumentType();
  __chkstk_darwin(v5 - 8);
  v353 = &v316 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100842810, &qword_1006DF918);
  v8 = __chkstk_darwin(v7 - 8);
  v340 = &v316 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v362 = &v316 - v10;
  v11 = sub_100007224(&qword_100842818, &qword_1006DF920);
  v12 = __chkstk_darwin(v11 - 8);
  v339 = &v316 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v325 = &v316 - v15;
  __chkstk_darwin(v14);
  v368 = &v316 - v16;
  v17 = sub_100007224(&qword_100842820, &qword_1006DF928);
  v18 = __chkstk_darwin(v17 - 8);
  v338 = &v316 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v326 = &v316 - v21;
  __chkstk_darwin(v20);
  v367 = &v316 - v22;
  v23 = sub_100007224(&qword_100842828, &qword_1006DF930);
  v24 = __chkstk_darwin(v23 - 8);
  v337 = &v316 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v322 = &v316 - v27;
  __chkstk_darwin(v26);
  v366 = &v316 - v28;
  v29 = sub_100007224(&qword_100842830, &qword_1006DF938);
  v30 = __chkstk_darwin(v29 - 8);
  v352 = &v316 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v327 = &v316 - v33;
  __chkstk_darwin(v32);
  v365 = &v316 - v34;
  v35 = sub_100007224(&qword_100842838, &qword_1006DF940);
  v36 = __chkstk_darwin(v35 - 8);
  v351 = &v316 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v321 = &v316 - v39;
  __chkstk_darwin(v38);
  v363 = &v316 - v40;
  v41 = sub_100007224(&qword_100842840, &qword_1006DF948);
  v42 = __chkstk_darwin(v41 - 8);
  v350 = &v316 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v320 = &v316 - v45;
  __chkstk_darwin(v44);
  v47 = &v316 - v46;
  v48 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v49 = __chkstk_darwin(v48 - 8);
  v324 = &v316 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v334 = &v316 - v52;
  __chkstk_darwin(v51);
  v319 = &v316 - v53;
  v54 = sub_100007224(&qword_100842848, &qword_1006DF950);
  v55 = __chkstk_darwin(v54 - 8);
  v336 = &v316 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v335 = &v316 - v58;
  v59 = __chkstk_darwin(v57);
  v349 = &v316 - v60;
  v61 = __chkstk_darwin(v59);
  v333 = &v316 - v62;
  v63 = __chkstk_darwin(v61);
  v342 = &v316 - v64;
  v65 = __chkstk_darwin(v63);
  v323 = &v316 - v66;
  v67 = __chkstk_darwin(v65);
  v357 = &v316 - v68;
  v69 = __chkstk_darwin(v67);
  v318 = &v316 - v70;
  __chkstk_darwin(v69);
  v361 = &v316 - v71;
  v72 = type metadata accessor for ISO18013KnownNamespaces();
  v371 = *(v72 - 8);
  v372 = v72;
  __chkstk_darwin(v72);
  v370 = &v316 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100007224(&qword_100842850, &qword_1006DF958);
  v75 = __chkstk_darwin(v74 - 8);
  v348 = &v316 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v75);
  v359 = (&v316 - v78);
  __chkstk_darwin(v77);
  v369 = &v316 - v79;
  v356 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v355 = *(v356 - 8);
  __chkstk_darwin(v356);
  v354 = &v316 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v82 = *(v81 - 8);
  v374 = v81;
  v375 = v82;
  __chkstk_darwin(v81);
  v84 = &v316 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MobileDocumentElement();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v316 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for PersonNameComponents();
  v346 = *(v347 - 8);
  v89 = __chkstk_darwin(v347);
  v344 = &v316 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v92 = &v316 - v91;
  PersonNameComponents.init()();
  static MobileDocumentElement.givenName.getter();
  v378 = a2;
  LOBYTE(a2) = sub_100693BD4(v88, a2);
  v93 = *(v86 + 8);
  v376 = v86 + 8;
  v377 = v85;
  (v93)(v88, v85);
  v360 = v93;
  v364 = v47;
  if (a2)
  {
    v95 = v374;
    v94 = v375;
    (*(v375 + 104))(v84, enum case for ISO18013_5_1_ElementIdentifier.givenName(_:), v374);
    v96 = sub_10037448C(v84);
    v98 = v97;
    (*(v94 + 8))(v84, v95);
    v99 = a1;
    if (v98)
    {
      *&v382 = v96;
      *(&v382 + 1) = v98;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    PersonNameComponents.givenName.setter();
    v100 = v355;
    v101 = v354;
    v102 = v356;
    (*(v355 + 104))(v354, enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:), v356);
    v103 = sub_100374FC4(v101);
    v105 = v104;
    (*(v100 + 8))(v101, v102);
    v93 = v360;
    if (v105)
    {
      *&v382 = v103;
      *(&v382 + 1) = v105;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    PersonNameComponents.nameSuffix.setter();
    a1 = v99;
  }

  static MobileDocumentElement.familyName.getter();
  v106 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v106)
  {
    v108 = v374;
    v107 = v375;
    (*(v375 + 104))(v84, enum case for ISO18013_5_1_ElementIdentifier.familyName(_:), v374);
    v109 = sub_10037448C(v84);
    v111 = v110;
    (*(v107 + 8))(v84, v108);
    if (v111)
    {
      *&v382 = v109;
      *(&v382 + 1) = v111;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    PersonNameComponents.familyName.setter();
    v93 = v360;
  }

  v345 = v92;
  v373 = a1;
  v112 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex();
  v113 = *(v112 - 8);
  v114 = v113;
  v115 = *(v113 + 56);
  v116 = v113 + 56;
  v115(v369, 1, 1, v112);
  static MobileDocumentElement.sex.getter();
  v117 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v117)
  {
    v332 = v114;
    v343 = v116;
    v358 = v115;
    v118 = v375;
    v119 = v355;
    v120 = v354;
    v121 = v356;
    (*(v355 + 104))(v354, enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:), v356);
    v122 = sub_10037552C(v120);
    v124 = v123;
    (*(v119 + 8))(v120, v121);
    if (v124)
    {
      v125 = v374;
      (*(v118 + 104))(v84, enum case for ISO18013_5_1_ElementIdentifier.sex(_:), v374);
      v126 = sub_100375A98(v84);
      v128 = v127;
      (*(v118 + 8))(v84, v125);
      sub_10000BE18(v369, &qword_100842850, &qword_1006DF958);
      if (v128)
      {
        v129 = v359;
        v358(v359, 1, 1, v112);
      }

      else
      {
        v129 = v359;
        sub_1003B91C0(v126, v359);
      }

      v93 = v360;
      sub_1000B1FC8(v129, v369, &qword_100842850, &qword_1006DF958);
      goto LABEL_27;
    }

    if (v122 > 1)
    {
      v93 = v360;
      v130 = v358;
      v131 = v332;
      if (v122 == 2)
      {
        v132 = v369;
        sub_10000BE18(v369, &qword_100842850, &qword_1006DF958);
        v133 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.female(_:);
      }

      else
      {
        if (v122 != 9)
        {
          goto LABEL_27;
        }

        v132 = v369;
        sub_10000BE18(v369, &qword_100842850, &qword_1006DF958);
        v133 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.notSpecified(_:);
      }
    }

    else
    {
      v93 = v360;
      v130 = v358;
      v131 = v332;
      if (v122)
      {
        if (v122 != 1)
        {
          goto LABEL_27;
        }

        v132 = v369;
        sub_10000BE18(v369, &qword_100842850, &qword_1006DF958);
        v133 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.male(_:);
      }

      else
      {
        v132 = v369;
        sub_10000BE18(v369, &qword_100842850, &qword_1006DF958);
        v133 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.unknown(_:);
      }
    }

    (*(v131 + 104))(v132, *v133, v112);
    v130(v132, 0, 1, v112);
  }

LABEL_27:
  static MobileDocumentElement.portrait.getter();
  v134 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v134)
  {
    v135 = v374;
    v136 = v375;
    (*(v375 + 104))(v84, enum case for ISO18013_5_1_ElementIdentifier.portrait(_:), v374);
    v137 = sub_100376004(v84, &v382);
    (*(v136 + 8))(v84, v135, v137);
    v138 = *(&v382 + 1);
    if (*(&v382 + 1) >> 60 == 15)
    {
      v332 = 0;
      v139 = 0xF000000000000000;
    }

    else
    {
      v140 = v382;
      v381 = v382;
      sub_1003BD294();
      Collection.nilIfEmpty.getter();
      sub_10000BD94(v140, v138);
      v139 = v380;
      v332 = v379;
    }

    v331 = v139;
  }

  else
  {
    v332 = 0;
    v331 = 0xF000000000000000;
  }

  static MobileDocumentElement.age.getter();
  v141 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v141)
  {
    v142 = v374;
    v143 = v375;
    (*(v375 + 104))(v84, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v374);
    v330 = sub_100375A98(v84);
    v329 = v144;
    (*(v143 + 8))(v84, v142);
  }

  else
  {
    v330 = 0;
    v329 = 1;
  }

  v145 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (v145)
  {
    v146 = v145;
    v147 = v370;
    v148 = v371;
    v149 = v372;
    (*(v371 + 104))(v370, enum case for ISO18013KnownNamespaces.iso18013_5_1(_:), v372);
    v150 = ISO18013KnownNamespaces.rawValue.getter();
    v152 = v151;
    (*(v148 + 8))(v147, v149);
    if (*(v146 + 16))
    {
      v153 = sub_10003ADCC(v150, v152);
      v155 = v154;

      if (v155)
      {
        v156 = *(*(v146 + 56) + 8 * v153);
      }

      else
      {

        v156 = 0;
      }
    }

    else
    {

      v156 = 0;
    }
  }

  else
  {
    v156 = 0;
  }

  v157 = v374;
  v158 = v375;
  v371 = *(v375 + 104);
  v372 = v375 + 104;
  (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:), v374);
  v159 = ISO18013_5_1_ElementIdentifier.rawValue.getter();
  v161 = v160;
  v162 = *(v158 + 8);
  v375 = v158 + 8;
  v370 = v162;
  (v162)(v84, v157);
  v163 = v159;
  v164 = v378;
  v328 = sub_1003BD308(v156, v163, v161, v378, sub_1003BD2E8, &static ISO18013_5_1_ElementIdentifier.parseAgeOverElement(_:), sub_1003BD300, sub_1003BD2F8, sub_1003BD2F0);

  v165 = type metadata accessor for DateComponents();
  v166 = *(v165 - 8);
  v167 = *(v166 + 56);
  v168 = v361;
  v343 = v165;
  v359 = v167;
  v358 = (v166 + 56);
  (v167)(v361, 1, 1);
  static MobileDocumentElement.dateOfBirth.getter();
  v169 = sub_100693BD4(v88, v164);
  (v93)(v88, v377);
  if (v169)
  {
    v170 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:), v374);
    v171 = v319;
    sub_100376574(v84, v319);
    (v370)(v84, v170);
    v172 = type metadata accessor for Date();
    v173 = *(v172 - 8);
    if ((*(v173 + 48))(v171, 1, v172) == 1)
    {
      sub_10000BE18(v168, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v171, &unk_100849400, &unk_1006BFBB0);
      v174 = v318;
      (v359)(v318, 1, 1, v343);
    }

    else
    {
      v174 = v318;
      Date.utcDayRepresentation.getter();
      sub_10000BE18(v168, &qword_100842848, &qword_1006DF950);
      (*(v173 + 8))(v171, v172);
    }

    sub_1000B1FC8(v174, v168, &qword_100842848, &qword_1006DF950);
  }

  v175 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address();
  (*(*(v175 - 8) + 56))(v364, 1, 1, v175);
  static MobileDocumentElement.address.getter();
  v176 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v176)
  {
    v177 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:), v374);
    v178 = sub_10037448C(v84);
    v180 = v179;
    (v370)(v84, v177);
    if (v180)
    {
      *&v382 = v178;
      *(&v382 + 1) = v180;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v318 = *(&v381 + 1);
      v319 = v381;
    }

    else
    {
      v319 = v178;
      v318 = 0;
    }

    v181 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:), v374);
    v182 = sub_10037448C(v84);
    v184 = v183;
    (v370)(v84, v181);
    if (v184)
    {
      *&v382 = v182;
      *(&v382 + 1) = v184;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v317 = *(&v381 + 1);
    }

    else
    {
      v317 = 0;
    }

    v185 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.residentState(_:), v374);
    v186 = sub_10037448C(v84);
    v188 = v187;
    (v370)(v84, v185);
    if (v188)
    {
      *&v382 = v186;
      *(&v382 + 1) = v188;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v316 = *(&v381 + 1);
    }

    else
    {
      v316 = 0;
    }

    v189 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:), v374);
    v190 = sub_10037448C(v84);
    v192 = v191;
    (v370)(v84, v189);
    if (v192)
    {
      *&v382 = v190;
      *(&v382 + 1) = v192;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v193 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:), v374);
    v194 = sub_10037448C(v84);
    v196 = v195;
    (v370)(v84, v193);
    if (v196)
    {
      *&v382 = v194;
      *(&v382 + 1) = v196;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v197 = v320;
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(street:city:state:postalCode:isoCountryCode:)();
    v198 = v364;
    sub_10000BE18(v364, &qword_100842840, &qword_1006DF948);
    sub_1000B1FC8(v197, v198, &qword_100842840, &qword_1006DF948);
  }

  v199 = sub_100007224(&qword_100842858, &qword_1006DF960);
  v200 = *(*(v199 - 8) + 56);
  v200(v363, 1, 1, v199);
  static MobileDocumentElement.height.getter();
  v201 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v201)
  {
    v202 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.height(_:), v374);
    sub_100375A98(v84);
    v204 = v203;
    (v370)(v84, v202);
    if (v204)
    {
      v205 = 1;
      v206 = v321;
    }

    else
    {
      v207 = [objc_opt_self() centimeters];
      sub_10001F8D4(0, &qword_100842870, NSUnitLength_ptr);
      v206 = v321;
      Measurement.init(value:unit:)();
      v205 = 0;
    }

    v208 = v363;
    sub_10000BE18(v363, &qword_100842838, &qword_1006DF940);
    v200(v206, v205, 1, v199);
    sub_1000B1FC8(v206, v208, &qword_100842838, &qword_1006DF940);
    v93 = v360;
  }

  v209 = sub_100007224(&qword_100842860, &qword_1006DF968);
  v210 = *(*(v209 - 8) + 56);
  v210(v365, 1, 1, v209);
  static MobileDocumentElement.height.getter();
  v211 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  v212 = v327;
  if (v211)
  {
    v213 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.weight(_:), v374);
    sub_100375A98(v84);
    v215 = v214;
    (v370)(v84, v213);
    if (v215)
    {
      v216 = 1;
    }

    else
    {
      v217 = [objc_opt_self() kilograms];
      sub_10001F8D4(0, &qword_100842868, NSUnitMass_ptr);
      Measurement.init(value:unit:)();
      v216 = 0;
    }

    v218 = v365;
    sub_10000BE18(v365, &qword_100842830, &qword_1006DF938);
    v210(v212, v216, 1, v209);
    sub_1000B1FC8(v212, v218, &qword_100842830, &qword_1006DF938);
    v93 = v360;
  }

  v219 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor();
  v220 = *(*(v219 - 8) + 56);
  v220(v366, 1, 1, v219);
  static MobileDocumentElement.eyeColor.getter();
  v221 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v221)
  {
    v222 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:), v374);
    v223 = sub_10037448C(v84);
    v225 = v224;
    (v370)(v84, v222);
    if (v225)
    {
      v226 = v225;
      v227 = v322;
      sub_1003B9334(v223, v226, v322);
      v228 = v366;
      sub_10000BE18(v366, &qword_100842828, &qword_1006DF930);
    }

    else
    {
      v228 = v366;
      sub_10000BE18(v366, &qword_100842828, &qword_1006DF930);
      v227 = v322;
      v220(v322, 1, 1, v219);
    }

    sub_1000B1FC8(v227, v228, &qword_100842828, &qword_1006DF930);
  }

  v229 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor();
  v230 = *(*(v229 - 8) + 56);
  v230(v367, 1, 1, v229);
  static MobileDocumentElement.hairColor.getter();
  v231 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v231)
  {
    v232 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:), v374);
    v233 = sub_10037448C(v84);
    v235 = v234;
    (v370)(v84, v232);
    if (v235)
    {
      v236 = v235;
      v237 = v326;
      sub_1003B97B8(v233, v236, v326);
      v238 = v367;
      sub_10000BE18(v367, &qword_100842820, &qword_1006DF928);
    }

    else
    {
      v238 = v367;
      sub_10000BE18(v367, &qword_100842820, &qword_1006DF928);
      v237 = v326;
      v230(v326, 1, 1, v229);
    }

    sub_1000B1FC8(v237, v238, &qword_100842820, &qword_1006DF928);
  }

  static MobileDocumentElement.organDonorStatus.getter();
  v239 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if ((v239 & 1) != 0 && (v240 = v355, v241 = v354, v242 = v356, (*(v355 + 104))(v354, enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:), v356), v243 = sub_10037552C(v241), v245 = v244, (*(v240 + 8))(v241, v242), (v245 & 1) == 0))
  {
    if (v243 == 1)
    {
      v246 = 1;
    }

    else
    {
      v246 = 2 * (v243 != 0);
    }
  }

  else
  {
    v246 = 2;
  }

  LODWORD(v327) = v246;
  static MobileDocumentElement.veteranStatus.getter();
  v247 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if ((v247 & 1) != 0 && (v248 = v355, v249 = v354, v250 = v356, (*(v355 + 104))(v354, enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:), v356), v251 = sub_10037552C(v249), v253 = v252, (*(v248 + 8))(v249, v250), (v253 & 1) == 0))
  {
    if (v251 == 1)
    {
      v254 = 1;
    }

    else
    {
      v254 = 2 * (v251 != 0);
    }
  }

  else
  {
    v254 = 2;
  }

  LODWORD(v326) = v254;
  v255 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority();
  (*(*(v255 - 8) + 56))(v368, 1, 1, v255);
  static MobileDocumentElement.issuingAuthority.getter();
  v256 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v256)
  {
    v257 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:), v374);
    v258 = sub_10037448C(v84);
    v260 = v259;
    (v370)(v84, v257);
    if (v260)
    {
      *&v382 = v258;
      *(&v382 + 1) = v260;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v261 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:), v374);
    v262 = sub_10037448C(v84);
    v264 = v263;
    (v370)(v84, v261);
    if (v264)
    {
      *&v382 = v262;
      *(&v382 + 1) = v264;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v265 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:), v374);
    v266 = sub_10037448C(v84);
    v268 = v267;
    (v370)(v84, v265);
    if (v268)
    {
      *&v382 = v266;
      *(&v382 + 1) = v268;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v269 = v325;
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(name:jurisdiction:isoCountryCode:)();
    v270 = v368;
    sub_10000BE18(v368, &qword_100842818, &qword_1006DF920);
    sub_1000B1FC8(v269, v270, &qword_100842818, &qword_1006DF920);
    v93 = v360;
  }

  static MobileDocumentElement.drivingPrivileges.getter();
  v271 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v271)
  {
    v360 = sub_1003C1D8C();
    v325 = sub_1003BE17C();
  }

  else
  {
    v325 = _swiftEmptyArrayStorage;
    v360 = _swiftEmptyArrayStorage;
  }

  v272 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus();
  v273 = *(v272 - 8);
  v274 = *(v273 + 7);
  v274(v362, 1, 1, v272);
  static MobileDocumentElement.documentDHSComplianceStatus.getter();
  v275 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v275)
  {
    v322 = v88;
    v321 = v273;
    v276 = v355;
    v277 = v93;
    v278 = v354;
    v279 = v356;
    (*(v355 + 104))(v354, enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:), v356);
    v280 = sub_100374FC4(v278);
    v282 = v281;
    v283 = v278;
    v93 = v277;
    (*(v276 + 8))(v283, v279);
    v284 = v321;
    v88 = v322;
    if (v282)
    {
      if (v280 == 70 && v282 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v285 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.compliant(_:);
LABEL_110:

LABEL_111:
        v286 = v362;
        sub_10000BE18(v362, &qword_100842810, &qword_1006DF918);
        (*(v284 + 13))(v286, *v285, v272);
        v274(v286, 0, 1, v272);
        goto LABEL_112;
      }

      if (v280 == 78 && v282 == 0xE100000000000000)
      {
        v285 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.noncompliant(_:);
        goto LABEL_110;
      }

      v315 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v315)
      {
        v285 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.noncompliant(_:);
        goto LABEL_111;
      }
    }
  }

LABEL_112:
  static MobileDocumentElement.documentNumber.getter();
  v287 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v287)
  {
    v288 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:), v374);
    v289 = sub_10037448C(v84);
    v291 = v290;
    (v370)(v84, v288);
    v292 = v361;
    v293 = v342;
    v294 = v334;
    v295 = v343;
    if (v291)
    {
      *&v382 = v289;
      *(&v382 + 1) = v291;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v355 = *(&v381 + 1);
      v356 = v381;
    }

    else
    {
      v356 = 0;
      v355 = 0;
    }
  }

  else
  {
    v356 = 0;
    v355 = 0;
    v292 = v361;
    v293 = v342;
    v294 = v334;
    v295 = v343;
  }

  (v359)(v357, 1, 1, v295);
  static MobileDocumentElement.documentIssueDate.getter();
  v296 = sub_100693BD4(v88, v378);
  (v93)(v88, v377);
  if (v296)
  {
    v297 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:), v374);
    sub_100376574(v84, v294);
    (v370)(v84, v297);
    v298 = type metadata accessor for Date();
    v299 = v294;
    v300 = *(v298 - 8);
    if ((*(v300 + 48))(v299, 1, v298) == 1)
    {
      v301 = v357;
      sub_10000BE18(v357, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v299, &unk_100849400, &unk_1006BFBB0);
      v302 = v323;
      (v359)(v323, 1, 1, v295);
    }

    else
    {
      v303 = v292;
      v304 = v323;
      Date.utcDayRepresentation.getter();
      v305 = v357;
      sub_10000BE18(v357, &qword_100842848, &qword_1006DF950);
      v306 = v298;
      v302 = v304;
      v292 = v303;
      v293 = v342;
      (*(v300 + 8))(v299, v306);
      v301 = v305;
      v295 = v343;
    }

    sub_1000B1FC8(v302, v301, &qword_100842848, &qword_1006DF950);
  }

  (v359)(v293, 1, 1, v295);
  static MobileDocumentElement.documentExpirationDate.getter();
  v307 = sub_100693BD4(v88, v378);

  (v93)(v88, v377);
  if (v307)
  {
    v308 = v374;
    (v371)(v84, enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:), v374);
    v309 = v324;
    sub_100376574(v84, v324);
    (v370)(v84, v308);
    v310 = type metadata accessor for Date();
    v311 = *(v310 - 8);
    if ((*(v311 + 48))(v309, 1, v310) == 1)
    {
      sub_10000BE18(v293, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v309, &unk_100849400, &unk_1006BFBB0);
      (v359)(v333, 1, 1, v295);
    }

    else
    {
      Date.utcDayRepresentation.getter();
      sub_10000BE18(v293, &qword_100842848, &qword_1006DF950);
      (*(v311 + 8))(v309, v310);
    }

    sub_1000B1FC8(v333, v293, &qword_100842848, &qword_1006DF950);
  }

  static MobileDocumentType.driversLicense.getter();
  (*(v346 + 16))(v344, v345, v347);
  sub_10000BBC4(v369, v348, &qword_100842850, &qword_1006DF958);
  sub_10000BBC4(v292, v349, &qword_100842848, &qword_1006DF950);
  sub_10000BBC4(v364, v350, &qword_100842840, &qword_1006DF948);
  sub_10000BBC4(v363, v351, &qword_100842838, &qword_1006DF940);
  sub_10000BBC4(v365, v352, &qword_100842830, &qword_1006DF938);
  sub_10000BBC4(v366, v337, &qword_100842828, &qword_1006DF930);
  sub_10000BBC4(v367, v338, &qword_100842820, &qword_1006DF928);
  sub_10000BBC4(v368, v339, &qword_100842818, &qword_1006DF920);
  sub_10000BBC4(v362, v340, &qword_100842810, &qword_1006DF918);
  v312 = v357;
  sub_10000BBC4(v357, v335, &qword_100842848, &qword_1006DF950);
  sub_10000BBC4(v293, v336, &qword_100842848, &qword_1006DF950);
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(documentType:nameComponents:sex:portraitData:age:ageAtLeastElements:dateOfBirth:address:height:weight:eyeColor:hairColor:isOrganDonor:isVeteran:issuingAuthority:drivingPrivileges:aamvaDrivingPrivileges:documentDHSComplianceStatus:documentNumber:documentIssueDate:documentExpirationDate:)();
  v313 = type metadata accessor for ISO18013Response.IssuerSigned();
  (*(*(v313 - 8) + 8))(v373, v313);
  sub_10000BE18(v293, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v312, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v362, &qword_100842810, &qword_1006DF918);
  sub_10000BE18(v368, &qword_100842818, &qword_1006DF920);
  sub_10000BE18(v367, &qword_100842820, &qword_1006DF928);
  sub_10000BE18(v366, &qword_100842828, &qword_1006DF930);
  sub_10000BE18(v365, &qword_100842830, &qword_1006DF938);
  sub_10000BE18(v363, &qword_100842838, &qword_1006DF940);
  sub_10000BE18(v364, &qword_100842840, &qword_1006DF948);
  sub_10000BE18(v361, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v369, &qword_100842850, &qword_1006DF958);
  return (*(v346 + 8))(v345, v347);
}

uint64_t sub_1003B5690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a1;
  v166 = a3;
  v4 = sub_100007224(&qword_100842810, &qword_1006DF918);
  __chkstk_darwin(v4 - 8);
  v165 = &v144[-v5];
  v6 = sub_100007224(&qword_100842818, &qword_1006DF920);
  __chkstk_darwin(v6 - 8);
  v164 = &v144[-v7];
  v8 = sub_100007224(&qword_100842820, &qword_1006DF928);
  __chkstk_darwin(v8 - 8);
  v163 = &v144[-v9];
  v10 = sub_100007224(&qword_100842828, &qword_1006DF930);
  __chkstk_darwin(v10 - 8);
  v162 = &v144[-v11];
  v12 = sub_100007224(&qword_100842830, &qword_1006DF938);
  __chkstk_darwin(v12 - 8);
  v161 = &v144[-v13];
  v14 = sub_100007224(&qword_100842838, &qword_1006DF940);
  __chkstk_darwin(v14 - 8);
  v181 = &v144[-v15];
  v16 = sub_100007224(&qword_100842840, &qword_1006DF948);
  __chkstk_darwin(v16 - 8);
  v180 = &v144[-v17];
  v158 = type metadata accessor for Locale.Region();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = &v144[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for MobileDocumentType();
  __chkstk_darwin(v19 - 8);
  v179 = &v144[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_100007224(&qword_100842880, &qword_1006DF970);
  __chkstk_darwin(v21 - 8);
  v147 = &v144[-v22];
  v23 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v23 - 8);
  v148 = &v144[-v24];
  v25 = sub_100007224(&qword_100842848, &qword_1006DF950);
  v26 = __chkstk_darwin(v25 - 8);
  v160 = &v144[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v159 = &v144[-v29];
  v30 = __chkstk_darwin(v28);
  v178 = &v144[-v31];
  v32 = __chkstk_darwin(v30);
  v155 = &v144[-v33];
  v34 = __chkstk_darwin(v32);
  v36 = &v144[-v35];
  __chkstk_darwin(v34);
  v186 = &v144[-v37];
  v168 = type metadata accessor for ISO18013KnownNamespaces();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v150 = &v144[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v182 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v172 = *(v182 - 8);
  __chkstk_darwin(v182);
  v40 = &v144[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_100007224(&qword_100842850, &qword_1006DF958);
  v42 = __chkstk_darwin(v41 - 8);
  v177 = &v144[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __chkstk_darwin(v42);
  v46 = &v144[-v45];
  __chkstk_darwin(v44);
  v185 = &v144[-v47];
  v171 = type metadata accessor for ISO23220_1_Japan_ElementIdentifier();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v144[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = type metadata accessor for MobileDocumentElement();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v144[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = type metadata accessor for PersonNameComponents();
  v175 = *(v53 - 8);
  v176 = v53;
  v54 = __chkstk_darwin(v53);
  v173 = &v144[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v54);
  v57 = &v144[-v56];
  static MobileDocumentElement.givenName.getter();
  v58 = sub_100693BD4(v52, a2);
  v189 = *(v50 + 8);
  v189(v52, v49);
  v183 = v50 + 8;
  v184 = v49;
  v187 = a2;
  v174 = v57;
  v149 = v36;
  if ((v58 & 1) != 0 || (static MobileDocumentElement.familyName.getter(), v59 = sub_100693BD4(v52, a2), v189(v52, v49), (v59)) && (v60 = v170, v61 = v169, v62 = v171, (*(v170 + 104))(v169, enum case for ISO23220_1_Japan_ElementIdentifier.fullName(_:), v171), v63 = sub_100376B38(v61), v65 = v64, v66 = *(v60 + 8), v49 = v184, v67 = v62, a2 = v187, v66(v61, v67), v65) && (*&v193 = v63, *(&v193 + 1) = v65, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , *(&v192 + 1)) && (v68 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init], v69 = String._bridgeToObjectiveC()(), , v70 = objc_msgSend(v68, "personNameComponentsFromString:", v69), v68, a2 = v187, v69, v70))
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    PersonNameComponents.init()();
  }

  v71 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex();
  v72 = *(*(v71 - 8) + 56);
  v72(v185, 1, 1, v71);
  static MobileDocumentElement.sex.getter();
  v73 = sub_100693BD4(v52, a2);
  v189(v52, v49);
  if (v73)
  {
    v154 = v46;
    v74 = v172;
    v75 = v182;
    (*(v172 + 104))(v40, enum case for ISO23220_1_ElementIdentifier.sex(_:), v182);
    v76 = sub_1003770A0(v40);
    v78 = v77;
    (*(v74 + 8))(v40, v75);
    sub_10000BE18(v185, &qword_100842850, &qword_1006DF958);
    if (v78)
    {
      v79 = v154;
      v72(v154, 1, 1, v71);
    }

    else
    {
      v79 = v154;
      sub_1003B91C0(v76, v154);
    }

    sub_1000B1FC8(v79, v185, &qword_100842850, &qword_1006DF958);
    a2 = v187;
    v49 = v184;
  }

  static MobileDocumentElement.portrait.getter();
  v80 = sub_100693BD4(v52, a2);
  v189(v52, v49);
  if (v80)
  {
    v81 = v170;
    v82 = v169;
    v83 = v171;
    (*(v170 + 104))(v169, enum case for ISO23220_1_Japan_ElementIdentifier.portrait(_:), v171);
    v84 = sub_10037760C(v82, &v193);
    (*(v81 + 8))(v82, v83, v84);
    v85 = *(&v193 + 1);
    if (*(&v193 + 1) >> 60 == 15)
    {
      v154 = 0;
      v86 = 0xF000000000000000;
    }

    else
    {
      v87 = v193;
      v192 = v193;
      sub_1003BD294();
      Collection.nilIfEmpty.getter();
      sub_10000BD94(v87, v85);
      v86 = v191;
      v154 = v190;
    }

    v153 = v86;
    a2 = v187;
  }

  else
  {
    v154 = 0;
    v153 = 0xF000000000000000;
  }

  static MobileDocumentElement.age.getter();
  v88 = sub_100693BD4(v52, a2);
  v189(v52, v49);
  v89 = v182;
  if (v88)
  {
    v90 = v172;
    (*(v172 + 104))(v40, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v182);
    v152 = sub_1003770A0(v40);
    v151 = v91;
    (*(v90 + 8))(v40, v89);
  }

  else
  {
    v152 = 0;
    v151 = 1;
    v90 = v172;
  }

  v92 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (!v92)
  {
    v101 = 0;
    goto LABEL_30;
  }

  v93 = v92;
  v94 = v150;
  static ISO23220_1_ElementIdentifier.namespaceIdentifier.getter();
  v95 = ISO18013KnownNamespaces.rawValue.getter();
  v97 = v96;
  v167[1](v94, v168);
  if (!*(v93 + 16))
  {

    goto LABEL_28;
  }

  v98 = sub_10003ADCC(v95, v97);
  v100 = v99;

  if ((v100 & 1) == 0)
  {
LABEL_28:

    v101 = 0;
    goto LABEL_29;
  }

  v101 = *(*(v93 + 56) + 8 * v98);

LABEL_29:
  v89 = v182;
LABEL_30:
  v102 = *(v90 + 104);
  (v102)(v40, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v89);
  v103 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v105 = v104;
  v106 = *(v90 + 8);
  v106(v40, v89);
  v107 = v103;
  v108 = v187;
  v150 = sub_1003BD308(v101, v107, v105, v187, sub_1003BE170, &static ISO23220_1_ElementIdentifier.parseAgeOverElement(_:), sub_1003BE174, sub_1003BE16C, sub_1003BE168);

  v109 = type metadata accessor for DateComponents();
  v110 = *(v109 - 8);
  v111 = *(v110 + 56);
  v172 = v109;
  v168 = v110 + 56;
  v167 = v111;
  (v111)(v186, 1, 1);
  static MobileDocumentElement.dateOfBirth.getter();
  LOBYTE(v108) = sub_100693BD4(v52, v108);
  v189(v52, v184);
  if ((v108 & 1) == 0)
  {
    goto LABEL_41;
  }

  v145 = enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
  v102(v40);
  v112 = v148;
  sub_100377B7C(v40, v148);
  v113 = v112;
  v146 = v40;
  v106(v40, v89);
  v114 = type metadata accessor for Date();
  v115 = *(v114 - 8);
  if ((*(v115 + 48))(v113, 1, v114) == 1)
  {
    sub_10000BE18(v113, &unk_100849400, &unk_1006BFBB0);
    (v167)(v155, 1, 1, v172);
    goto LABEL_34;
  }

  v116 = v155;
  Date.utcDayRepresentation.getter();
  (*(v115 + 8))(v113, v114);
  v117 = v116;
  v89 = v182;
  if ((*(v110 + 48))(v117, 1, v172) == 1)
  {
LABEL_34:
    v118 = v146;
    (v102)(v146, v145, v89);
    v119 = v147;
    sub_100378120(v118, v147);
    v106(v118, v89);
    v120 = type metadata accessor for ISO23220.BirthDate();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v119, 1, v120) == 1)
    {
      sub_10000BE18(v186, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v119, &qword_100842880, &qword_1006DF970);
      v122 = 1;
      v123 = v149;
    }

    else
    {
      v123 = v149;
      ISO23220.BirthDate.dateComponents.getter();
      sub_10000BE18(v186, &qword_100842848, &qword_1006DF950);
      (*(v121 + 8))(v119, v120);
      v122 = 0;
    }

    v124 = v172;
    (v167)(v123, v122, 1, v172);
    v125 = v155;
    if ((*(v110 + 48))(v155, 1, v124) != 1)
    {
      sub_10000BE18(v125, &qword_100842848, &qword_1006DF950);
    }

    goto LABEL_40;
  }

  sub_10000BE18(v186, &qword_100842848, &qword_1006DF950);
  v123 = v149;
  v126 = v172;
  (*(v110 + 32))(v149, v155, v172);
  (v167)(v123, 0, 1, v126);
LABEL_40:
  sub_1000B1FC8(v123, v186, &qword_100842848, &qword_1006DF950);
LABEL_41:
  static MobileDocumentElement.documentNumber.getter();
  v127 = sub_100693BD4(v52, v187);

  v189(v52, v184);
  if (v127)
  {
    v128 = v170;
    v129 = v169;
    v130 = v171;
    (*(v170 + 104))(v169, enum case for ISO23220_1_Japan_ElementIdentifier.individualNumber(_:), v171);
    v189 = sub_100376B38(v129);
    v187 = v131;
    (*(v128 + 8))(v129, v130);
  }

  else
  {
    v189 = 0;
    v187 = 0;
  }

  v132 = v156;
  Locale.Region.init(stringLiteral:)();
  static MobileDocumentType.nationalIDCard(_:)();
  (*(v157 + 8))(v132, v158);
  (*(v175 + 16))(v173, v174, v176);
  sub_10000BBC4(v185, v177, &qword_100842850, &qword_1006DF958);
  sub_10000BBC4(v186, v178, &qword_100842848, &qword_1006DF950);
  v133 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address();
  (*(*(v133 - 8) + 56))(v180, 1, 1, v133);
  v134 = sub_100007224(&qword_100842858, &qword_1006DF960);
  (*(*(v134 - 8) + 56))(v181, 1, 1, v134);
  v135 = sub_100007224(&qword_100842860, &qword_1006DF968);
  (*(*(v135 - 8) + 56))(v161, 1, 1, v135);
  v136 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor();
  (*(*(v136 - 8) + 56))(v162, 1, 1, v136);
  v137 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor();
  (*(*(v137 - 8) + 56))(v163, 1, 1, v137);
  v138 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority();
  (*(*(v138 - 8) + 56))(v164, 1, 1, v138);
  v139 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus();
  (*(*(v139 - 8) + 56))(v165, 1, 1, v139);
  v140 = v172;
  v141 = v167;
  (v167)(v159, 1, 1, v172);
  v141(v160, 1, 1, v140);
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(documentType:nameComponents:sex:portraitData:age:ageAtLeastElements:dateOfBirth:address:height:weight:eyeColor:hairColor:isOrganDonor:isVeteran:issuingAuthority:drivingPrivileges:aamvaDrivingPrivileges:documentDHSComplianceStatus:documentNumber:documentIssueDate:documentExpirationDate:)();
  v142 = type metadata accessor for ISO18013Response.IssuerSigned();
  (*(*(v142 - 8) + 8))(v188, v142);
  sub_10000BE18(v186, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v185, &qword_100842850, &qword_1006DF958);
  return (*(v175 + 8))(v174, v176);
}

uint64_t sub_1003B6EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v256 = a1;
  v229 = a3;
  v4 = sub_100007224(&qword_100842810, &qword_1006DF918);
  __chkstk_darwin(v4 - 8);
  v228 = &v206 - v5;
  v6 = sub_100007224(&qword_100842820, &qword_1006DF928);
  __chkstk_darwin(v6 - 8);
  v227 = &v206 - v7;
  v8 = sub_100007224(&qword_100842828, &qword_1006DF930);
  __chkstk_darwin(v8 - 8);
  v226 = &v206 - v9;
  v10 = sub_100007224(&qword_100842830, &qword_1006DF938);
  __chkstk_darwin(v10 - 8);
  v239 = &v206 - v11;
  v12 = sub_100007224(&qword_100842838, &qword_1006DF940);
  __chkstk_darwin(v12 - 8);
  v238 = &v206 - v13;
  v14 = type metadata accessor for MobileDocumentType();
  __chkstk_darwin(v14 - 8);
  v237 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100842818, &qword_1006DF920);
  v17 = __chkstk_darwin(v16 - 8);
  v225 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v215 = &v206 - v20;
  __chkstk_darwin(v19);
  v246 = &v206 - v21;
  v22 = sub_100007224(&qword_100842840, &qword_1006DF948);
  v23 = __chkstk_darwin(v22 - 8);
  v236 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v214 = &v206 - v26;
  __chkstk_darwin(v25);
  v245 = &v206 - v27;
  v28 = sub_100007224(&qword_100842880, &qword_1006DF970);
  __chkstk_darwin(v28 - 8);
  v208 = &v206 - v29;
  v30 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v31 = __chkstk_darwin(v30 - 8);
  v213 = &v206 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v221 = &v206 - v34;
  __chkstk_darwin(v33);
  v210 = &v206 - v35;
  v36 = sub_100007224(&qword_100842848, &qword_1006DF950);
  v37 = __chkstk_darwin(v36 - 8);
  v223 = &v206 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v222 = &v206 - v40;
  v41 = __chkstk_darwin(v39);
  v234 = &v206 - v42;
  v43 = __chkstk_darwin(v41);
  v212 = &v206 - v44;
  v45 = __chkstk_darwin(v43);
  v224 = &v206 - v46;
  v47 = __chkstk_darwin(v45);
  v211 = &v206 - v48;
  v49 = __chkstk_darwin(v47);
  v235 = &v206 - v50;
  v51 = __chkstk_darwin(v49);
  v207 = &v206 - v52;
  v53 = __chkstk_darwin(v51);
  v209 = &v206 - v54;
  __chkstk_darwin(v53);
  v244 = &v206 - v55;
  v56 = type metadata accessor for ISO18013KnownNamespaces();
  v251 = *(v56 - 8);
  v252 = v56;
  __chkstk_darwin(v56);
  v250 = &v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100007224(&qword_100842850, &qword_1006DF958);
  v59 = __chkstk_darwin(v58 - 8);
  v233 = &v206 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v243 = &v206 - v62;
  __chkstk_darwin(v61);
  v247 = &v206 - v63;
  v64 = type metadata accessor for ISO23220_1_ElementIdentifier();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v206 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for MobileDocumentElement();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v206 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for PersonNameComponents();
  v231 = *(v232 - 8);
  v72 = __chkstk_darwin(v232);
  v230 = &v206 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v240 = &v206 - v74;
  PersonNameComponents.init()();
  static MobileDocumentElement.givenName.getter();
  v75 = sub_100693BD4(v71, a2);
  v76 = *(v69 + 8);
  v249 = v68;
  v254 = v76;
  v255 = v69 + 8;
  v76(v71, v68);
  v248 = a2;
  v253 = v65;
  if (v75)
  {
    v77 = *(v65 + 104);
    v77(v67, enum case for ISO23220_1_ElementIdentifier.givenName(_:), v64);
    v78 = sub_1003786C4(v67);
    v80 = v79;
    v81 = *(v65 + 8);
    v81(v67, v64);
    if (v80)
    {
      *&v260 = v78;
      *(&v260 + 1) = v80;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v80 = *(&v259 + 1);
    }

    v77(v67, enum case for ISO23220_1_ElementIdentifier.givenNameLatin1(_:), v64);
    v82 = sub_1003786C4(v67);
    v84 = v83;
    v81(v67, v64);
    if (v84)
    {
      *&v260 = v82;
      *(&v260 + 1) = v84;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v65 = v253;
      if (!v80)
      {
LABEL_8:
        PersonNameComponents.givenName.setter();
        a2 = v248;
        goto LABEL_9;
      }
    }

    else
    {
      v65 = v253;
      if (!v80)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  static MobileDocumentElement.familyName.getter();
  v85 = sub_100693BD4(v71, a2);
  v254(v71, v249);
  if ((v85 & 1) == 0)
  {
    goto LABEL_17;
  }

  v86 = *(v65 + 104);
  v86(v67, enum case for ISO23220_1_ElementIdentifier.familyName(_:), v64);
  v87 = sub_1003786C4(v67);
  v89 = v88;
  v90 = *(v65 + 8);
  v90(v67, v64);
  if (v89)
  {
    *&v260 = v87;
    *(&v260 + 1) = v89;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v89 = *(&v259 + 1);
  }

  v86(v67, enum case for ISO23220_1_ElementIdentifier.familyNameLatin1(_:), v64);
  v91 = sub_1003786C4(v67);
  v93 = v92;
  v90(v67, v64);
  if (!v93)
  {
    if (!v89)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *&v260 = v91;
  *(&v260 + 1) = v93;
  sub_1000ACCA0();
  Collection.nilIfEmpty.getter();

  if (v89)
  {
LABEL_14:
  }

LABEL_16:
  PersonNameComponents.familyName.setter();
  a2 = v248;
LABEL_17:
  v94 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex();
  v95 = *(*(v94 - 8) + 56);
  v95(v247, 1, 1, v94);
  static MobileDocumentElement.sex.getter();
  v96 = sub_100693BD4(v71, a2);
  v97 = v249;
  v254(v71, v249);
  if (v96)
  {
    v98 = v253;
    (*(v253 + 104))(v67, enum case for ISO23220_1_ElementIdentifier.sex(_:), v64);
    v99 = sub_1003770A0(v67);
    v101 = v100;
    (*(v98 + 8))(v67, v64);
    sub_10000BE18(v247, &qword_100842850, &qword_1006DF958);
    if (v101)
    {
      v102 = v243;
      v95(v243, 1, 1, v94);
    }

    else
    {
      v102 = v243;
      sub_1003B91C0(v99, v243);
    }

    sub_1000B1FC8(v102, v247, &qword_100842850, &qword_1006DF958);
    a2 = v248;
    v97 = v249;
  }

  static MobileDocumentElement.portrait.getter();
  v103 = sub_100693BD4(v71, a2);
  v254(v71, v97);
  if (v103)
  {
    v104 = v253;
    (*(v253 + 104))(v67, enum case for ISO23220_1_ElementIdentifier.portrait(_:), v64);
    v105 = sub_100378C2C(v67, &v260);
    v106 = v104;
    (*(v104 + 8))(v67, v64, v105);
    v107 = *(&v260 + 1);
    if (*(&v260 + 1) >> 60 == 15)
    {
      v220 = 0;
      v108 = 0xF000000000000000;
    }

    else
    {
      v109 = v260;
      v259 = v260;
      sub_1003BD294();
      Collection.nilIfEmpty.getter();
      v110 = v109;
      a2 = v248;
      sub_10000BD94(v110, v107);
      v108 = v258;
      v220 = v257;
    }

    v219 = v108;
  }

  else
  {
    v220 = 0;
    v219 = 0xF000000000000000;
    v106 = v253;
  }

  static MobileDocumentElement.age.getter();
  v111 = sub_100693BD4(v71, a2);
  v254(v71, v97);
  if (v111)
  {
    (*(v106 + 104))(v67, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v64);
    v218 = sub_1003770A0(v67);
    v217 = v112;
    (*(v106 + 8))(v67, v64);
  }

  else
  {
    v218 = 0;
    v217 = 1;
  }

  v113 = ISO18013Response.IssuerSigned.namespaces.getter();
  if (v113)
  {
    v114 = v113;
    v115 = v250;
    v116 = v251;
    v117 = v252;
    (*(v251 + 104))(v250, enum case for ISO18013KnownNamespaces.iso23220_1(_:), v252);
    v118 = ISO18013KnownNamespaces.rawValue.getter();
    v120 = v119;
    (*(v116 + 8))(v115, v117);
    if (*(v114 + 16))
    {
      v121 = sub_10003ADCC(v118, v120);
      v123 = v122;

      if (v123)
      {
        v124 = *(*(v114 + 56) + 8 * v121);

        goto LABEL_38;
      }
    }

    else
    {
    }

    v124 = 0;
  }

  else
  {
    v124 = 0;
  }

LABEL_38:
  v251 = *(v106 + 104);
  v252 = v106 + 104;
  (v251)(v67, enum case for ISO23220_1_ElementIdentifier.ageInYears(_:), v64);
  v125 = ISO23220_1_ElementIdentifier.rawValue.getter();
  v127 = v126;
  v250 = *(v106 + 8);
  v253 = v106 + 8;
  (v250)(v67, v64);
  v128 = v125;
  v129 = v248;
  v216 = sub_1003BD308(v124, v128, v127, v248, sub_1003BE170, &static ISO23220_1_ElementIdentifier.parseAgeOverElement(_:), sub_1003BE174, sub_1003BE16C, sub_1003BE168);
  v130 = v129;

  v131 = type metadata accessor for DateComponents();
  v132 = *(v131 - 8);
  v133 = *(v132 + 56);
  v242 = v132 + 56;
  v243 = v131;
  v241 = v133;
  (v133)(v244, 1, 1);
  static MobileDocumentElement.dateOfBirth.getter();
  v134 = sub_100693BD4(v71, v129);
  v135 = v249;
  v254(v71, v249);
  if ((v134 & 1) == 0)
  {
    goto LABEL_47;
  }

  v136 = enum case for ISO23220_1_ElementIdentifier.birthDate(_:);
  (v251)(v67, enum case for ISO23220_1_ElementIdentifier.birthDate(_:), v64);
  v137 = v210;
  sub_100377B7C(v67, v210);
  v138 = v137;
  (v250)(v67, v64);
  v139 = type metadata accessor for Date();
  v140 = *(v139 - 8);
  if ((*(v140 + 48))(v138, 1, v139) == 1)
  {
    sub_10000BE18(v138, &unk_100849400, &unk_1006BFBB0);
    v141 = v209;
    v241(v209, 1, 1, v243);
  }

  else
  {
    v141 = v209;
    Date.utcDayRepresentation.getter();
    (*(v140 + 8))(v138, v139);
    if ((*(v132 + 48))(v141, 1, v243) != 1)
    {
      v151 = v244;
      sub_10000BE18(v244, &qword_100842848, &qword_1006DF950);
      v152 = v243;
      (*(v132 + 32))(v151, v141, v243);
      v241(v151, 0, 1, v152);
      v130 = v248;
      v135 = v249;
      goto LABEL_47;
    }
  }

  sub_10000BE18(v141, &qword_100842848, &qword_1006DF950);
  (v251)(v67, v136, v64);
  v142 = v208;
  sub_100378120(v67, v208);
  (v250)(v67, v64);
  v143 = type metadata accessor for ISO23220.BirthDate();
  v144 = *(v143 - 8);
  if ((*(v144 + 48))(v142, 1, v143) == 1)
  {
    v145 = v244;
    sub_10000BE18(v244, &qword_100842848, &qword_1006DF950);
    sub_10000BE18(v142, &qword_100842880, &qword_1006DF970);
    v146 = 1;
    v130 = v248;
    v135 = v249;
    v147 = v207;
  }

  else
  {
    v148 = v207;
    ISO23220.BirthDate.dateComponents.getter();
    v149 = v244;
    sub_10000BE18(v244, &qword_100842848, &qword_1006DF950);
    v150 = v143;
    v145 = v149;
    v147 = v148;
    (*(v144 + 8))(v142, v150);
    v146 = 0;
    v130 = v248;
    v135 = v249;
  }

  v241(v147, v146, 1, v243);
  sub_1000B1FC8(v147, v145, &qword_100842848, &qword_1006DF950);
LABEL_47:
  v153 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address();
  (*(*(v153 - 8) + 56))(v245, 1, 1, v153);
  static MobileDocumentElement.address.getter();
  v154 = sub_100693BD4(v71, v130);
  v254(v71, v135);
  if (v154)
  {
    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.residentAddress(_:), v64);
    v155 = sub_1003786C4(v67);
    v157 = v156;
    (v250)(v67, v64);
    if (v157)
    {
      *&v260 = v155;
      *(&v260 + 1) = v157;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v209 = *(&v259 + 1);
      v210 = v259;
    }

    else
    {
      v210 = v155;
      v209 = 0;
    }

    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.residentCity(_:), v64);
    v158 = sub_1003786C4(v67);
    v160 = v159;
    (v250)(v67, v64);
    if (v160)
    {
      *&v260 = v158;
      *(&v260 + 1) = v160;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();

      v208 = *(&v259 + 1);
    }

    else
    {
      v208 = 0;
    }

    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.residentPostalCode(_:), v64);
    v161 = sub_1003786C4(v67);
    v163 = v162;
    (v250)(v67, v64);
    if (v163)
    {
      *&v260 = v161;
      *(&v260 + 1) = v163;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.residentCountry(_:), v64);
    v164 = sub_1003786C4(v67);
    v166 = v165;
    (v250)(v67, v64);
    if (v166)
    {
      *&v260 = v164;
      *(&v260 + 1) = v166;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v167 = v214;
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(street:city:state:postalCode:isoCountryCode:)();
    v168 = v245;
    sub_10000BE18(v245, &qword_100842840, &qword_1006DF948);
    sub_1000B1FC8(v167, v168, &qword_100842840, &qword_1006DF948);
    v130 = v248;
    v135 = v249;
  }

  v169 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority();
  (*(*(v169 - 8) + 56))(v246, 1, 1, v169);
  static MobileDocumentElement.issuingAuthority.getter();
  v170 = sub_100693BD4(v71, v130);
  v254(v71, v135);
  if (v170)
  {
    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.issuingAuthority(_:), v64);
    v171 = sub_1003786C4(v67);
    v173 = v172;
    (v250)(v67, v64);
    if (v173)
    {
      *&v260 = v171;
      *(&v260 + 1) = v173;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.issuingSubdivision(_:), v64);
    v174 = sub_1003786C4(v67);
    v176 = v175;
    (v250)(v67, v64);
    if (v176)
    {
      *&v260 = v174;
      *(&v260 + 1) = v176;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.issuingCountry(_:), v64);
    v177 = sub_1003786C4(v67);
    v179 = v178;
    (v250)(v67, v64);
    if (v179)
    {
      *&v260 = v177;
      *(&v260 + 1) = v179;
      sub_1000ACCA0();
      Collection.nilIfEmpty.getter();
    }

    v180 = v215;
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(name:jurisdiction:isoCountryCode:)();
    v181 = v246;
    sub_10000BE18(v246, &qword_100842818, &qword_1006DF920);
    sub_1000B1FC8(v180, v181, &qword_100842818, &qword_1006DF920);
    v130 = v248;
    v135 = v249;
  }

  static MobileDocumentElement.documentNumber.getter();
  v182 = sub_100693BD4(v71, v130);
  v254(v71, v135);
  if ((v182 & 1) != 0 && ((v251)(v67, enum case for ISO23220_1_ElementIdentifier.documentNumber(_:), v64), v183 = sub_1003786C4(v67), v185 = v184, (v250)(v67, v64), v185))
  {
    *&v260 = v183;
    *(&v260 + 1) = v185;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v214 = *(&v259 + 1);
    v215 = v259;
  }

  else
  {
    v215 = 0;
    v214 = 0;
  }

  v186 = v235;
  v187 = v221;
  v241(v235, 1, 1, v243);
  static MobileDocumentElement.documentIssueDate.getter();
  v188 = sub_100693BD4(v71, v130);
  v254(v71, v135);
  if (v188)
  {
    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.issueDate(_:), v64);
    sub_100377B7C(v67, v187);
    (v250)(v67, v64);
    v189 = type metadata accessor for Date();
    v190 = *(v189 - 8);
    if ((*(v190 + 48))(v187, 1, v189) == 1)
    {
      sub_10000BE18(v186, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v187, &unk_100849400, &unk_1006BFBB0);
      v191 = v211;
      v241(v211, 1, 1, v243);
    }

    else
    {
      v191 = v211;
      Date.utcDayRepresentation.getter();
      sub_10000BE18(v186, &qword_100842848, &qword_1006DF950);
      v135 = v249;
      (*(v190 + 8))(v187, v189);
    }

    sub_1000B1FC8(v191, v186, &qword_100842848, &qword_1006DF950);
    v130 = v248;
  }

  v192 = v224;
  v241(v224, 1, 1, v243);
  static MobileDocumentElement.documentExpirationDate.getter();
  v193 = sub_100693BD4(v71, v130);

  v254(v71, v135);
  if (v193)
  {
    (v251)(v67, enum case for ISO23220_1_ElementIdentifier.expiryDate(_:), v64);
    v194 = v213;
    sub_100377B7C(v67, v213);
    (v250)(v67, v64);
    v195 = type metadata accessor for Date();
    v196 = *(v195 - 8);
    if ((*(v196 + 48))(v194, 1, v195) == 1)
    {
      sub_10000BE18(v192, &qword_100842848, &qword_1006DF950);
      sub_10000BE18(v194, &unk_100849400, &unk_1006BFBB0);
      v197 = v212;
      v241(v212, 1, 1, v243);
    }

    else
    {
      v197 = v212;
      Date.utcDayRepresentation.getter();
      sub_10000BE18(v192, &qword_100842848, &qword_1006DF950);
      (*(v196 + 8))(v194, v195);
    }

    sub_1000B1FC8(v197, v192, &qword_100842848, &qword_1006DF950);
  }

  static MobileDocumentType.photoID.getter();
  (*(v231 + 16))(v230, v240, v232);
  sub_10000BBC4(v247, v233, &qword_100842850, &qword_1006DF958);
  sub_10000BBC4(v244, v234, &qword_100842848, &qword_1006DF950);
  sub_10000BBC4(v245, v236, &qword_100842840, &qword_1006DF948);
  v198 = sub_100007224(&qword_100842858, &qword_1006DF960);
  (*(*(v198 - 8) + 56))(v238, 1, 1, v198);
  v199 = sub_100007224(&qword_100842860, &qword_1006DF968);
  (*(*(v199 - 8) + 56))(v239, 1, 1, v199);
  v200 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor();
  (*(*(v200 - 8) + 56))(v226, 1, 1, v200);
  v201 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor();
  (*(*(v201 - 8) + 56))(v227, 1, 1, v201);
  sub_10000BBC4(v246, v225, &qword_100842818, &qword_1006DF920);
  v202 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus();
  (*(*(v202 - 8) + 56))(v228, 1, 1, v202);
  v203 = v235;
  sub_10000BBC4(v235, v222, &qword_100842848, &qword_1006DF950);
  sub_10000BBC4(v192, v223, &qword_100842848, &qword_1006DF950);
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(documentType:nameComponents:sex:portraitData:age:ageAtLeastElements:dateOfBirth:address:height:weight:eyeColor:hairColor:isOrganDonor:isVeteran:issuingAuthority:drivingPrivileges:aamvaDrivingPrivileges:documentDHSComplianceStatus:documentNumber:documentIssueDate:documentExpirationDate:)();
  v204 = type metadata accessor for ISO18013Response.IssuerSigned();
  (*(*(v204 - 8) + 8))(v256, v204);
  sub_10000BE18(v192, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v203, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v246, &qword_100842818, &qword_1006DF920);
  sub_10000BE18(v245, &qword_100842840, &qword_1006DF948);
  sub_10000BE18(v244, &qword_100842848, &qword_1006DF950);
  sub_10000BE18(v247, &qword_100842850, &qword_1006DF958);
  return (*(v231 + 8))(v240, v232);
}

uint64_t sub_1003B91C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex();
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xA && ((0x207u >> a1) & 1) != 0)
  {
    v8 = **(&off_10080E810 + a1);
    v9 = *(v5 + 104);
    v13 = v5;
    v9(v7, v8, v4);
    (*(v13 + 32))(a2, v7, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v5 + 56);

    return v11(a2, 1, 1, v4);
  }
}

uint64_t sub_1003B9334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor();
  v14 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x6B63616C62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.black(_:);
LABEL_5:
    (*(v14 + 104))(v8, *v9, v6);
    (*(v14 + 32))(a3, v8, v6);
    return (*(v14 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 1702194274 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.blue(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E776F7262 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.brown(_:);
    goto LABEL_5;
  }

  if (a1 == 0x616D6F7268636964 && a2 == 0xEB00000000636974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.dichromatic(_:);
    goto LABEL_5;
  }

  if (a1 == 2036691559 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.grey(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.green(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6C657A6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.hazel(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E6F6F72616DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.maroon(_:);
    goto LABEL_5;
  }

  if (a1 == 1802398064 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.pink(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

LABEL_42:
    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.unknown(_:);
    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_42;
  }

  v12 = *(v14 + 56);

  return v12(a3, 1, 1, v6);
}

uint64_t sub_1003B97B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor();
  v14 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1684824418 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.bald(_:);
LABEL_5:
    (*(v14 + 104))(v8, *v9, v6);
    (*(v14 + 32))(a3, v8, v6);
    return (*(v14 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 0x6B63616C62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.black(_:);
    goto LABEL_5;
  }

  if (a1 == 0x646E6F6C62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.blond(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E776F7262 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.brown(_:);
    goto LABEL_5;
  }

  if (a1 == 2036691559 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.grey(_:);
    goto LABEL_5;
  }

  if (a1 == 6579570 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.red(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E7275627561 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.auburn(_:);
    goto LABEL_5;
  }

  if (a1 == 0x79646E6173 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.sandy(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6574696877 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.white(_:);
    goto LABEL_5;
  }

  if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

LABEL_42:
    v9 = &enum case for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.unknown(_:);
    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_42;
  }

  v12 = *(v14 + 56);

  return v12(a3, 1, 1, v6);
}

uint64_t sub_1003B9C30()
{
  _StringGuts.grow(_:)(102);
  v0._object = 0x8000000100712EA0;
  v0._countAndFlagsBits = 0xD000000000000063;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

uint64_t sub_1003B9CD8()
{
  _StringGuts.grow(_:)(115);
  v0._object = 0x8000000100712F10;
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0xD000000000000042;
  v2._object = 0x8000000100712F40;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_1003B9DE8()
{
  _StringGuts.grow(_:)(114);
  v0._object = 0x8000000100712F10;
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0xD000000000000041;
  v2._object = 0x8000000100712F90;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_1003B9EF8()
{
  _StringGuts.grow(_:)(101);
  v0._object = 0x8000000100712FE0;
  v0._countAndFlagsBits = 0xD000000000000062;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

uint64_t sub_1003B9FA0(uint64_t a1)
{
  v2 = ISO18013Response.Document.docType.getter();
  v4 = v3;
  v5 = MobileDocumentType.iso18013Identifier.getter();
  if (v1)
  {
    goto LABEL_5;
  }

  if (v2 == v5 && v4 == v6)
  {

LABEL_5:

    return 1;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v8 & 1;
}

void *sub_1003BA08C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007224(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1003BA154(uint64_t a1, uint64_t a2)
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

  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1003BA1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007224(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003BA2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007224(a3, a4);
  v10 = *(sub_100007224(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003BA3FC(uint64_t *a1)
{
  v2 = *(type metadata accessor for MobileDocumentType() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003BD210(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1003BA4A4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1003BA4A4(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for MobileDocumentType();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for MobileDocumentType() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003BA934(v8, v9, a1, v4);
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
    return sub_1003BA5D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003BA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MobileDocumentType();
  v9 = __chkstk_darwin(v8);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v40 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v41 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v50 = (v18 - 8);
    v51 = v19;
    v52 = v18;
    v21 = v17 + v20 * (a3 - 1);
    v46 = -v20;
    v47 = (v18 + 16);
    v22 = a1 - a3;
    v48 = v17;
    v40 = v20;
    v23 = v17 + v20 * a3;
    v24 = v53;
    while (2)
    {
      v44 = v21;
      v45 = a3;
      v42 = v23;
      v43 = v22;
      while (1)
      {
        v25 = v51;
        v51(v16, v23, v8);
        v25(v24, v21, v8);
        v26 = v54;
        v27 = MobileDocumentType.iso18013Identifier.getter();
        if (v26)
        {
          v54 = v26;
          v39 = *v50;
          (*v50)(v53, v8);
          return (v39)(v16, v8);
        }

        v29 = v27;
        v30 = v28;
        v31 = MobileDocumentType.iso18013Identifier.getter();
        v54 = 0;
        if (v29 == v31 && v30 == v32)
        {
          break;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v34 = *v50;
        v24 = v53;
        (*v50)(v53, v8);
        result = (v34)(v16, v8);
        if (v33)
        {
          if (!v48)
          {
            __break(1u);
            return result;
          }

          v35 = *v47;
          v36 = v49;
          (*v47)(v49, v23, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v35)(v21, v36, v8);
          v21 += v46;
          v23 += v46;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v38 = *v50;
      v24 = v53;
      (*v50)(v53, v8);
      result = (v38)(v16, v8);
LABEL_13:
      a3 = v45 + 1;
      v21 = v44 + v40;
      v22 = v43 - 1;
      v23 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1003BA934(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  v8 = type metadata accessor for MobileDocumentType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v145 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v144 = &v138 - v13;
  v14 = __chkstk_darwin(v12);
  v147 = &v138 - v15;
  v16 = __chkstk_darwin(v14);
  v148 = &v138 - v17;
  v18 = __chkstk_darwin(v16);
  v154 = &v138 - v19;
  v20 = __chkstk_darwin(v18);
  v163 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v141 = &v138 - v23;
  result = __chkstk_darwin(v22);
  v143 = &v138 - v25;
  v26 = *(a3 + 1);
  v153 = a3;
  if (v26 >= 1)
  {
    v139 = a4;
    v27 = 0;
    v156 = v9 + 16;
    v157 = (v9 + 8);
    v146 = (v9 + 32);
    v28 = _swiftEmptyArrayStorage;
    v164 = v8;
    v155 = v9;
    while (1)
    {
      v29 = v27++;
      v159 = v28;
      if (v27 < v26)
      {
        v152 = v26;
        v30 = *a3;
        v31 = *(v9 + 72);
        v32 = *(v9 + 16);
        v32(v143, v30 + v31 * v27, v8);
        v158 = v31;
        v140 = v29;
        v33 = v30 + v31 * v29;
        v34 = v141;
        v151 = v32;
        v32(v141, v33, v8);
        v35 = MobileDocumentType.iso18013Identifier.getter();
        if (v5)
        {
          v136 = *v157;
          v137 = v164;
          (*v157)(v34, v164);
          v136(v143, v137);
        }

        v37 = v36;
        v5 = 0;
        if (v35 == MobileDocumentType.iso18013Identifier.getter() && v37 == v38)
        {
          LODWORD(v150) = 0;
        }

        else
        {
          LODWORD(v150) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v39 = v154;

        v40 = *v157;
        v8 = v164;
        (*v157)(v141, v164);
        v149 = v40;
        result = (v40)(v143, v8);
        v41 = v140 + 2;
        v28 = v159;
        v42 = v158 * (v140 + 2);
        v43 = v30 + v42;
        v44 = v158 * v27;
        v45 = v30 + v158 * v27;
        do
        {
          a4 = v41;
          v50 = v27;
          v47 = v44;
          v51 = v42;
          if (v41 >= v152)
          {
            break;
          }

          v161 = v27;
          v162 = v42;
          v52 = v44;
          v160 = v43;
          v53 = v151;
          (v151)(v163);
          v53(v39, v45, v8);
          v54 = MobileDocumentType.iso18013Identifier.getter();
          v56 = v55;
          if (v54 == MobileDocumentType.iso18013Identifier.getter() && v56 == v57)
          {
            v46 = 0;
          }

          else
          {
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v47 = v52;

          v39 = v154;
          v8 = v164;
          v48 = v149;
          (v149)(v154, v164);
          result = (v48)(v163, v8);
          v49 = v150 ^ v46;
          v41 = a4 + 1;
          v28 = v159;
          v50 = v161;
          v43 = v160 + v158;
          v45 += v158;
          v27 = (v161 + 1);
          v44 = v47 + v158;
          v51 = v162;
          v42 = &v162[v158];
          v5 = 0;
        }

        while ((v49 & 1) == 0);
        if ((v150 & 1) == 0)
        {
          v27 = a4;
LABEL_32:
          a3 = v153;
          v9 = v155;
          v29 = v140;
          goto LABEL_33;
        }

        if (a4 < v140)
        {
          goto LABEL_147;
        }

        if (v140 < a4)
        {
          v161 = 0;
          v58 = v140 * v158;
          v59 = v140;
          do
          {
            if (v59 != v50)
            {
              v61 = *v153;
              if (!*v153)
              {
                goto LABEL_151;
              }

              v62 = v50;
              v63 = v51;
              v162 = *v146;
              (v162)(v145, v61 + v58, v164, v28);
              if (v58 < v47 || v61 + v58 >= &v63[v61])
              {
                v8 = v164;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v8 = v164;
                if (v58 != v47)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v162)(v61 + v47, v145, v8);
              v28 = v159;
              v51 = v63;
              v50 = v62;
            }

            ++v59;
            v47 -= v158;
            v51 -= v158;
            v58 += v158;
          }

          while (v59 < v50--);
          v27 = a4;
          v5 = v161;
          goto LABEL_32;
        }

        v27 = a4;
        a3 = v153;
        v9 = v155;
        v29 = v140;
      }

LABEL_33:
      v64 = *(a3 + 1);
      if (v27 >= v64)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v27, v29))
      {
        goto LABEL_143;
      }

      if (v27 - v29 >= v139)
      {
LABEL_41:
        if (v27 < v29)
        {
          goto LABEL_142;
        }

        goto LABEL_42;
      }

      v65 = (v29 + v139);
      if (__OFADD__(v29, v139))
      {
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
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        return result;
      }

      if (v65 >= v64)
      {
        v65 = *(a3 + 1);
      }

      if (v65 < v29)
      {
        goto LABEL_146;
      }

      if (v27 == v65)
      {
        goto LABEL_41;
      }

      v110 = *a3;
      v111 = *(v9 + 72);
      v161 = *(v9 + 16);
      v112 = v110 + v111 * (v27 - 1);
      v158 = -v111;
      v140 = v29;
      v113 = (v29 - v27);
      v160 = v110;
      v138 = v111;
      v114 = v110 + v27 * v111;
      v115 = v147;
      v149 = v65;
      do
      {
        v150 = v114;
        v151 = v113;
        v152 = v112;
        v162 = v27;
        while (1)
        {
          a4 = v156;
          v116 = v161;
          (v161)(v148, v114, v8, v28);
          (v116)(v115, v112, v8);
          v117 = MobileDocumentType.iso18013Identifier.getter();
          if (v5)
          {
            v134 = *v157;
            v135 = v164;
            (*v157)(v147, v164);
            v134(v148, v135);
          }

          v9 = v117;
          v119 = v118;
          if (v117 == MobileDocumentType.iso18013Identifier.getter() && v119 == v120)
          {

            v127 = *v157;
            v128 = v147;
            v129 = v164;
            (*v157)(v147, v164);
            v127(v148, v129);
            v8 = v129;
            v5 = 0;
            v115 = v128;
            v123 = v162;
            goto LABEL_104;
          }

          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a4 = v157;
          v121 = *v157;
          v122 = v164;
          (*v157)(v147, v164);
          result = (v121)(v148, v122);
          v123 = v162;
          if ((v9 & 1) == 0)
          {
            break;
          }

          if (!v160)
          {
            goto LABEL_150;
          }

          v5 = 0;
          v9 = v146;
          v124 = *v146;
          a4 = v144;
          v125 = v164;
          (*v146)(v144, v114, v164);
          swift_arrayInitWithTakeFrontToBack();
          v124(v112, a4, v125);
          v8 = v125;
          v112 += v158;
          v114 += v158;
          v126 = __CFADD__(v113++, 1);
          v115 = v147;
          if (v126)
          {
            goto LABEL_104;
          }
        }

        v5 = 0;
        v8 = v164;
        v115 = v147;
LABEL_104:
        v27 = (v123 + 1);
        v112 = v152 + v138;
        v113 = v151 - 1;
        v114 = v150 + v138;
      }

      while (v27 != v149);
      v27 = v149;
      a3 = v153;
      v29 = v140;
      if (v149 < v140)
      {
        goto LABEL_142;
      }

LABEL_42:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v28 = v159;
      }

      else
      {
        result = sub_1003BC0AC(0, *(v159 + 2) + 1, 1, v159);
        v28 = result;
      }

      a4 = *(v28 + 2);
      v66 = *(v28 + 3);
      v67 = a4 + 1;
      if (a4 >= v66 >> 1)
      {
        result = sub_1003BC0AC((v66 > 1), a4 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 2) = v67;
      v68 = &v28[16 * a4];
      *(v68 + 4) = v29;
      *(v68 + 5) = v27;
      v9 = *v142;
      if (!*v142)
      {
        goto LABEL_152;
      }

      if (a4)
      {
        while (1)
        {
          v69 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v70 = *(v28 + 4);
            v71 = *(v28 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_61:
            if (v73)
            {
              goto LABEL_133;
            }

            v86 = &v28[16 * v67];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_136;
            }

            v92 = &v28[16 * v69 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_140;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v69 = v67 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v96 = &v28[16 * v67];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_75:
          if (v91)
          {
            goto LABEL_135;
          }

          v99 = &v28[16 * v69];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_138;
          }

          if (v102 < v90)
          {
            goto LABEL_90;
          }

LABEL_82:
          a4 = v69 - 1;
          if (v69 - 1 >= v67)
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
            result = sub_1003BBEA4(a4);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_148;
          }

          v107 = v28;
          v108 = *&v28[16 * a4 + 32];
          v29 = *&v28[16 * v69 + 40];
          sub_1003BB67C((*a3 + *(v155 + 72) * v108), (*a3 + *(v155 + 72) * *&v28[16 * v69 + 32]), (*a3 + *(v155 + 72) * v29), v9);
          if (v5)
          {
          }

          if (v29 < v108)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1003BBEA4(v107);
          }

          if (a4 >= *(v107 + 2))
          {
            goto LABEL_128;
          }

          v109 = &v107[16 * a4];
          *(v109 + 4) = v108;
          *(v109 + 5) = v29;
          v165 = v107;
          result = sub_1003BBE18(v69);
          v28 = v165;
          v67 = *(v165 + 2);
          if (v67 <= 1)
          {
            goto LABEL_90;
          }
        }

        v74 = &v28[16 * v67 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_131;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_132;
        }

        v81 = &v28[16 * v67];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_134;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_137;
        }

        if (v85 >= v77)
        {
          v103 = &v28[16 * v69 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_141;
          }

          if (v72 < v106)
          {
            v69 = v67 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_90:
      v26 = *(a3 + 1);
      v8 = v164;
      v9 = v155;
      if (v27 >= v26)
      {
        goto LABEL_109;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_109:
  v29 = *v142;
  if (!*v142)
  {
    goto LABEL_153;
  }

  a4 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_144;
  }

  result = a4;
LABEL_112:
  v165 = result;
  a4 = *(result + 16);
  if (a4 >= 2)
  {
    while (1)
    {
      v130 = *a3;
      if (!*a3)
      {
        goto LABEL_149;
      }

      v131 = *(result + 16 * a4);
      a3 = result;
      v132 = *(result + 16 * (a4 - 1) + 40);
      sub_1003BB67C((v130 + *(v9 + 72) * v131), (v130 + *(v9 + 72) * *(result + 16 * (a4 - 1) + 32)), (v130 + *(v9 + 72) * v132), v29);
      if (v5)
      {
      }

      if (v132 < v131)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_1003BBEA4(a3);
      }

      if ((a4 - 2) >= *(a3 + 2))
      {
        goto LABEL_130;
      }

      v133 = &a3[16 * a4];
      *v133 = v131;
      *(v133 + 1) = v132;
      v165 = a3;
      sub_1003BBE18(a4 - 1);
      result = v165;
      a4 = *(v165 + 2);
      a3 = v153;
      if (a4 <= 1)
      {
      }
    }
  }
}

uint64_t sub_1003BB67C(char *a1, char *a2, char *a3, char *a4)
{
  v87 = type metadata accessor for MobileDocumentType();
  v8 = *(v87 - 8);
  v9 = __chkstk_darwin(v87);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v83 = &v74 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v74 - v14;
  result = __chkstk_darwin(v13);
  v85 = &v74 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_74;
  }

  v21 = (a2 - a1) / v19;
  v90 = a1;
  v89 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || &a2[v23] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v23 < 1)
    {
      v50 = &a4[v23];
      goto LABEL_70;
    }

    v47 = -v19;
    v79 = (v8 + 16);
    v80 = (v8 + 8);
    v48 = &a4[v23];
    v49 = v84;
    v50 = &a4[v23];
    v75 = a1;
    v76 = a4;
    v82 = v47;
    while (1)
    {
      v74 = v50;
      v51 = a2;
      v52 = &a2[v47];
      v77 = v52;
      v81 = v51;
      while (1)
      {
        if (v51 <= a1)
        {
          v90 = v51;
          v71 = v74;
LABEL_68:
          v88 = v71;
          goto LABEL_71;
        }

        v53 = a3;
        v78 = v50;
        v54 = v82;
        v85 = v48;
        v55 = &v48[v82];
        v56 = *v79;
        v57 = v87;
        (*v79)(v83, &v48[v82], v87);
        v56(v49, v52, v57);
        v58 = v86;
        v59 = MobileDocumentType.iso18013Identifier.getter();
        if (v58)
        {
          v86 = v58;
          v72 = *v80;
          v73 = v87;
          (*v80)(v49, v87);
          v72(v83, v73);
          v90 = v81;
          v71 = v78;
          goto LABEL_68;
        }

        v61 = v59;
        v62 = v60;
        v63 = MobileDocumentType.iso18013Identifier.getter();
        v86 = 0;
        if (v61 == v63 && v62 == v64)
        {
          v65 = 0;
        }

        else
        {
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v51 = v81;

        v66 = &v53[v54];
        v67 = *v80;
        v68 = v87;
        (*v80)(v84, v87);
        v67(v83, v68);
        a1 = v75;
        if (v65)
        {
          break;
        }

        v50 = v55;
        a3 = &v53[v54];
        if (v53 < v85 || v66 >= v85)
        {
          swift_arrayInitWithTakeFrontToBack();
          v52 = v77;
          v49 = v84;
        }

        else
        {
          v52 = v77;
          v49 = v84;
          if (v53 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v48 = v55;
        if (v55 <= v76)
        {
          a2 = v51;
          goto LABEL_70;
        }
      }

      a3 = &v53[v54];
      if (v53 < v51 || v66 >= v51)
      {
        a2 = v77;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v84;
        v50 = v78;
      }

      else
      {
        a2 = v77;
        v50 = v78;
        v49 = v84;
        if (v53 != v51)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v48 = v85;
      v47 = v82;
      if (v85 <= v76)
      {
LABEL_70:
        v90 = a2;
        v88 = v50;
        goto LABEL_71;
      }
    }
  }

  v22 = v21 * v19;
  if (a4 < a1 || &a1[v22] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v84 = &a4[v22];
  v88 = &a4[v22];
  if (v22 >= 1 && a2 < a3)
  {
    v81 = *(v8 + 16);
    v82 = v8 + 16;
    v83 = (v8 + 8);
    v78 = a3;
    do
    {
      v25 = a1;
      v26 = v19;
      v27 = v15;
      v28 = a2;
      v29 = a2;
      v30 = v87;
      v31 = v81;
      (v81)(v85, v29, v87);
      (v31)(v15, a4, v30);
      v32 = v86;
      v33 = MobileDocumentType.iso18013Identifier.getter();
      if (v32)
      {
        v86 = v32;
        v69 = *v83;
        v70 = v87;
        (*v83)(v15, v87);
        v69(v85, v70);
        break;
      }

      v35 = v33;
      v36 = v34;
      v37 = MobileDocumentType.iso18013Identifier.getter();
      v86 = 0;
      if (v35 == v37 && v36 == v38)
      {

        v39 = *v83;
        v15 = v27;
        v40 = v87;
        (*v83)(v27, v87);
        v39(v85, v40);
        v41 = v25;
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v43 = *v83;
        v15 = v27;
        v44 = v87;
        (*v83)(v27, v87);
        v43(v85, v44);
        v41 = v25;
        if (v42)
        {
          v19 = v26;
          a2 = &v28[v26];
          if (v25 < v28 || v25 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v78;
          }

          else
          {
            v45 = v78;
            if (v25 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_36;
        }
      }

      v19 = v26;
      v46 = &a4[v26];
      if (v41 < a4 || v41 >= v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v45 = v78;
      }

      else
      {
        v45 = v78;
        if (v41 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v89 = v46;
      a4 = v46;
      a2 = v28;
LABEL_36:
      a1 = &v41[v19];
      v90 = a1;
    }

    while (a4 < v84 && a2 < v45);
  }

LABEL_71:
  sub_1003BBECC(&v90, &v89, &v88);
  return 1;
}