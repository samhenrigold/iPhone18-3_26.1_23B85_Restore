uint64_t sub_10029BF5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10029BFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000EF88;

  return sub_10028D860(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10029C088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_10007DE60(a3, a4, sub_10010BC1C, v12);
}

uint64_t sub_10029C1F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v25 = a3;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v24 = *(updated - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(updated - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *a2;
  (*(v12 + 16))(&v24 - v13, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_10029D880(v25, v7, type metadata accessor for CustodianStatusUpdateRequest);
  v19 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_10029DA74(v7, v21 + v19, type metadata accessor for CustodianStatusUpdateRequest);
  *(v21 + v20) = v15;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_10029D804;
  v22[1] = v17;

  sub_1000BCD5C(0, 0, v10, &unk_10033F360, v21);
}

uint64_t sub_10029C4FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_10029A2F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10029C5D0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10029C69C, 0, 0);
}

uint64_t sub_10029C69C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler;
  v0[17] = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler;
  v6 = *(v2 + 16);
  v0[18] = v6;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v3 + v5, v4);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v0[20] = v7;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  sub_1000080F8(v0 + 2, v0[5]);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_10029C7D0;
  v9 = v0[12];

  return sub_100080620(v9, 1);
}

uint64_t sub_10029C7D0(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_10029CAC0;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_10029C8F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10029C8F8()
{
  if (*(v0 + 208) && *(v0 + 208) == 1)
  {

    sub_10000839C((v0 + 16));
LABEL_5:

    v2 = *(v0 + 8);

    return v2(1);
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_10000839C((v0 + 16));
  if (v1)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  (*(v0 + 144))(v5, *(v0 + 104) + *(v0 + 136), v6);
  Dependency.wrappedValue.getter();
  v4(v5, v6);
  sub_1000080F8((v0 + 56), *(v0 + 80));
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_10029CB30;
  v8 = *(v0 + 96);

  return sub_100080620(v8, 0);
}

uint64_t sub_10029CAC0()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10029CB30(char a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_10029CD38;
  }

  else
  {
    *(v4 + 209) = a1;
    v5 = sub_10029CC58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10029CC58()
{
  if (*(v0 + 209) && *(v0 + 209) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_10000839C((v0 + 56));

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_10029CD38()
{
  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10029CDA8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  sub_10029D880(a1, v6, type metadata accessor for CustodianRecord);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_10029DADC(v6, type metadata accessor for CustodianRecord);
    v15 = sub_10021145C(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Owner invitation is pending for record with custodianID: %s", v10, 0xCu);
    sub_10000839C(v11);
  }

  else
  {

    sub_10029DADC(v6, type metadata accessor for CustodianRecord);
  }

  if (a2)
  {
    return 4294967233;
  }

  else
  {
    return 65;
  }
}

uint64_t sub_10029D010(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = type metadata accessor for CustodianRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAB8);
  sub_10029D880(a1, v9, type metadata accessor for CustodianRecord);
  sub_10029D880(a1, v7, type metadata accessor for CustodianRecord);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v2;
    v2 = v13;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v2 = 134218242;
    v15 = *&v9[*(v4 + 36)];
    sub_10029DADC(v9, type metadata accessor for CustodianRecord);
    *(v2 + 4) = v15;
    *(v2 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v19 = sub_10021145C(v16, v18, &v27);

    *(v2 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Owner invitation is other status: %ld for record with custodianID: %s", v2, 0x16u);
    sub_10000839C(v14);

    LOBYTE(v2) = v26;
  }

  else
  {
    sub_10029DADC(v9, type metadata accessor for CustodianRecord);

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v20 = *(a1 + *(v4 + 36));
  if (v20 == 5)
  {
    v21 = (v2 & 1) == 0;
    v22 = 73;
    v23 = -55;
  }

  else
  {
    v21 = (v2 & 1) == 0;
    if (v20 == 3)
    {
      v22 = 72;
      v23 = -56;
    }

    else
    {
      v22 = 74;
      v23 = -54;
    }
  }

  if (v21)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

uint64_t sub_10029D328(uint64_t a1)
{
  v1[13] = a1;
  v1[14] = type metadata accessor for CustodianRecord(0);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for TrustedContactUserNotification(0);
  v1[17] = swift_task_alloc();
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10029D454, 0, 0);
}

uint64_t sub_10029D454()
{
  v25 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  Dependency.wrappedValue.getter();
  sub_1000080F8((v0 + 64), *(v0 + 88));
  sub_1002CA150((v0 + 16));
  sub_1002D2E28(v0 + 16, 0, 0);
  sub_1000C5460(v0 + 16);
  sub_10000839C((v0 + 64));
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAAB8);
  sub_10029D880(v4, v3, type metadata accessor for CustodianRecord);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 120);
  if (v8)
  {
    v23 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    v22 = v11;
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10029DADC(v13, type metadata accessor for CustodianRecord);
    v19 = sub_10021145C(v16, v18, &v24);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Owner removed CFU posted after tear down for record with custodianID: %s", v14, 0xCu);
    sub_10000839C(v15);

    sub_10029DADC(v12, type metadata accessor for TrustedContactUserNotification);
    (*(v10 + 8))(v23, v22);
  }

  else
  {

    sub_10029DADC(v13, type metadata accessor for CustodianRecord);
    sub_10029DADC(v12, type metadata accessor for TrustedContactUserNotification);
    (*(v10 + 8))(v9, v11);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10029D804(uint64_t a1)
{
  sub_100005814(&unk_1003D9200, &unk_10033EC90);

  return sub_10013F2A4(a1);
}

uint64_t sub_10029D880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029D8E8()
{
  v1 = *(type metadata accessor for CustodianStatusUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10029DA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029DA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10029DADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10029DB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_100005814(&qword_1003E5AD8, &qword_100348310);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_10029DD18(a3, a4, a5, sub_1002A0FE0, v14);
}

uint64_t sub_10029DCC8(uint64_t a1)
{
  swift_errorRetain();
  sub_100005814(&qword_1003E5AD8, &qword_100348310);
  return CheckedContinuation.resume(returning:)();
}

void sub_10029DD18(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v54 = a3;
  v55 = a2;
  v50 = a1;
  v56 = *v5;
  v7 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v51 = &v49 - v8;
  v9 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController;
  v14 = *(v10 + 16);
  v14(&v49 - v11, v6 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController, v9);
  Dependency.wrappedValue.getter();
  v15 = *(v10 + 8);
  v15(v12, v9);
  v16 = [objc_allocWithZone(ACAccountStore) init];
  v17 = [v16 aa_primaryAppleAccount];

  if (!v17 || (v18 = [v17 aa_personID], v17, !v18))
  {
    sub_10000839C(v60);
    goto LABEL_7;
  }

  v19 = [objc_opt_self() isICDPEnabledForDSID:v18];

  sub_10000839C(v60);
  if ((v19 & 1) == 0)
  {
LABEL_7:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAB8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v60);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - CDP is not enabled or has never been enabled for this account, bailing from health check...", v37, 0xCu);
      sub_10000839C(v38);
    }

    type metadata accessor for AAError(0);
    v59 = -16;
    sub_100212324(_swiftEmptyArrayStorage);
    v39 = &qword_1003D8370;
    v40 = type metadata accessor for AAError;
    v41 = &unk_10033DD74;
    goto LABEL_12;
  }

  v14(v12, v6 + v13, v9);
  Dependency.wrappedValue.getter();
  v15(v12, v9);
  v20 = *(*sub_1000080F8(v60, v61) + 24);
  v59 = 0;
  if ([v20 isManateeAvailable:&v59])
  {
    v21 = v59;
    sub_10000839C(v60);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v57;
    v25 = v58;
    v23[2] = v22;
    v23[3] = v24;
    v27 = v54;
    v26 = v55;
    v23[4] = v25;
    v23[5] = v27;
    v28 = v51;
    v23[6] = v50;
    v23[7] = v26;
    v29 = v56;
    v23[8] = v56;
    v31 = v52;
    v30 = v53;
    (*(v52 + 16))(v28, v6 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__urlBagProvider, v53);

    v32 = v27;

    Dependency.wrappedValue.getter();
    (*(v31 + 8))(v28, v30);
    v33 = *sub_1000080F8(v60, v61);

    sub_1003214A8(v33, v6, sub_1002A1234, v23, v29);

    sub_10000839C(v60);

    return;
  }

  v43 = v59;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_10000839C(v60);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100008D04(v44, qword_1003FAAB8);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v60);
    _os_log_impl(&_mh_execute_header, v45, v46, "%s - Manatee is not available, proceeding to post CDP repair.", v47, 0xCu);
    sub_10000839C(v48);
  }

  sub_10029E484();
  type metadata accessor for AASignInError(0);
  v59 = -8008;
  sub_100212324(_swiftEmptyArrayStorage);
  v39 = &qword_1003D8338;
  v40 = type metadata accessor for AASignInError;
  v41 = &unk_10033DC64;
LABEL_12:
  sub_100287E08(v39, v40, v41);
  _BridgedStoredNSError.init(_:userInfo:)();
  v42 = v60[0];
  v57(v60[0]);
}

uint64_t sub_10029E484()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - CDP not enabled, posting a CDP repair CFU.", v9, 0xCu);
    sub_10000839C(v10);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  sub_100260F04(1u, 0);
  return sub_10000839C(v13);
}

void sub_10029E830(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v32 = a3;
      swift_errorRetain();
      if (qword_1003D7F88 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAB78);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v31 = a4;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = v18;
        *v16 = 136315394;
        *(v16 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v33);
        *(v16 + 12) = 2112;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v19;
        *v17 = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s - Error performing Walrus Status Mismatch Detection: %@", v16, 0x16u);
        sub_100083380(v17);

        sub_10000839C(v18);

        a4 = v31;
      }

      else
      {
      }

      a3 = v32;
    }

    else
    {
      if (qword_1003D7F88 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008D04(v26, qword_1003FAB78);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v33 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v33);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s - Successfully performed Walrus Status Mismatch Detection", v29, 0xCu);
        sub_10000839C(v30);
      }
    }

    sub_10029ED2C(a5, a6, a7, a3, a4);
  }

  else
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAB78);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v33);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - Self is nil", v23, 0xCu);
      sub_10000839C(v24);
    }

    type metadata accessor for AAError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100287E08(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v33;
    a3(v33);
  }
}

uint64_t sub_10029ED2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a1;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = v12;

  v18 = a1;

  sub_1000BCD5C(0, 0, v15, &unk_100348320, v17);
}

uint64_t sub_10029EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = a8;
  v8[30] = v15;
  v8[27] = a4;
  v8[28] = a7;
  v9 = sub_100005814(&qword_1003E5AE0, &qword_100348328);
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v10 = sub_100005814(&qword_1003E5AE8, qword_100348330);
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v11 = sub_100005814(&qword_1003E4960, qword_100347B68);
  v8[37] = v11;
  v8[38] = *(v11 - 8);
  v8[39] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  v8[40] = v12;
  v8[41] = *(v12 - 8);
  v8[42] = swift_task_alloc();

  return _swift_task_switch(sub_10029F0BC, 0, 0);
}

uint64_t sub_10029F0BC()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  (*(v2 + 16))(v1, v0[27] + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__featureFlagStateProvider, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[10] = &type metadata for AAFeatureFlags;
  v4 = sub_10015B62C();
  *(v0 + 56) = 6;
  v0[11] = v4;
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  v5 = v0[27];
  if (v3)
  {
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[34];
    (*(v7 + 16))(v6, v5 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryKeyStateProvider, v8);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v6, v8);
    sub_1000080F8(v0 + 17, v0[20]);
    v9 = swift_task_alloc();
    v0[46] = v9;
    *v9 = v0;
    v9[1] = sub_10029F8C0;

    return sub_1002A4C4C();
  }

  else
  {
    v12 = v0[38];
    v11 = v0[39];
    v13 = v0[37];
    (*(v12 + 16))(v11, v5 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__escrowRecordViabilityProvider, v13);
    Dependency.wrappedValue.getter();
    (*(v12 + 8))(v11, v13);
    sub_1000080F8(v0 + 12, v0[15]);
    v14 = swift_task_alloc();
    v0[43] = v14;
    *v14 = v0;
    v14[1] = sub_10029F338;
    v15 = v0[28];

    return sub_100287260(v15);
  }
}

uint64_t sub_10029F338(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_10029F67C;
  }

  else
  {
    v4 = sub_10029F44C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10029F44C()
{
  v13 = v0;
  sub_10000839C(v0 + 12);
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAB78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[44];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v12);
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - EscrowRecordViability State %lu", v5, 0x16u);
    sub_10000839C(v6);
  }

  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  (*(v8 + 16))(v7, v0[27] + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryKeyStateProvider, v9);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  sub_1000080F8(v0 + 17, v0[20]);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_10029F8C0;

  return sub_1002A4C4C();
}

uint64_t sub_10029F67C()
{
  v13 = v0;
  sub_10000839C(v0 + 12);
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAB78);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v12);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Error performing escrow record viability check: %@", v4, 0x16u);
    sub_100083380(v5);

    sub_10000839C(v6);
  }

  v8 = v0[45];
  v9 = v0[29];
  swift_errorRetain();
  v9(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10029F8C0(char a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10029F9C0, 0, 0);
}

uint64_t sub_10029F9C0()
{
  v14 = v0;
  v1 = *(v0 + 392);
  sub_10000839C((v0 + 136));
  if (v1 == 1)
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAB78);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s - Recovery Key mismatch detected", v5, 0xCu);
      sub_10000839C(v6);
    }

    (*(v0 + 232))(0);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);
    (*(v10 + 16))(v9, *(v0 + 216) + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__walrusStateHandler, v11);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v9, v11);
    sub_1000080F8((v0 + 176), *(v0 + 200));
    v12 = swift_task_alloc();
    *(v0 + 376) = v12;
    *v12 = v0;
    v12[1] = sub_10029FC60;

    return sub_1002AE234();
  }
}

uint64_t sub_10029FC60()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_10029FE18;
  }

  else
  {
    v2 = sub_10029FD74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029FD74()
{
  v1 = v0[29];
  sub_10000839C(v0 + 22);
  v1(0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10029FE18()
{
  v1 = v0[48];
  v2 = v0[29];
  sub_10000839C(v0 + 22);
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10029FED8()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - trying to tear down existing state repair CFUs.", v9, 0xCu);
    sub_10000839C(v10);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  sub_100260D64();
  return sub_10000839C(v13);
}

uint64_t sub_1002A027C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryFactorsController;
  v6 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__deviceState;
  v8 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler;
  v10 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__accountStore;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__escrowRecordViabilityProvider;
  v14 = sub_100005814(&qword_1003E4960, qword_100347B68);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__recoveryKeyStateProvider;
  v16 = sub_100005814(&qword_1003E5AE8, qword_100348330);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__walrusStateHandler;
  v18 = sub_100005814(&qword_1003E5AE0, &qword_100348328);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__urlBagProvider;
  v20 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__featureFlagStateProvider;
  v22 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  return v0;
}

uint64_t sub_1002A05E0()
{
  sub_1002A027C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDPAndADPChecks(uint64_t a1)
{
  result = qword_1003E57B8;
  if (!qword_1003E57B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A068C(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003E5048, &qword_1003DF5B0, &qword_100343688);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &qword_1003E46A0, &qword_1003E03E8, &qword_100343DC8);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, &qword_1003E57C8, &qword_1003E03D8, &qword_100343DB8);
                if (v8 <= 0x3F)
                {
                  sub_10000DAB8(319, &unk_1003E57D0, &qword_1003E03D0, &qword_100343DB0);
                  if (v9 <= 0x3F)
                  {
                    sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
                    if (v10 <= 0x3F)
                    {
                      sub_10000DAB8(319, &unk_1003E46A8, &qword_1003E03E0, &qword_100343DC0);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002A0A78()
{
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9880, &unk_10033F010);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF600, &unk_1003436A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF5B0, &qword_100343688);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E8, &qword_100343DC8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03D8, &qword_100343DB8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03D0, &qword_100343DB0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E03E0, &qword_100343DC0);
  Dependency.init(dependencyId:config:)();
  return v0;
}

uint64_t sub_1002A0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  return _swift_task_switch(sub_1002A0CFC, 0, 0);
}

uint64_t sub_1002A0CFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_100005814(&unk_1003E1090, &qword_100344600);
  *v5 = v0;
  v5[1] = sub_1002A0E10;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000036, 0x8000000100332F10, sub_1002A0F40, v3, v6);
}

uint64_t sub_1002A0E10()
{

  return _swift_task_switch(sub_1002A0F28, 0, 0);
}

uint64_t sub_1002A0F4C()
{
  v1 = sub_100005814(&qword_1003E5AD8, &qword_100348310);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002A0FE0(uint64_t a1)
{
  sub_100005814(&qword_1003E5AD8, &qword_100348310);

  return sub_10029DCC8(a1);
}

uint64_t sub_1002A1060()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002A10B8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_10029EEAC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1002A11AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A11E4()
{

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1002A1248(int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v33 = a1;
  v30 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v28 - v6;
  v8 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAB78);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v33 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "isWalrusStatusMismatchDetectionEnabled: %{BOOL}d", v14, 8u);
  }

  (*(v9 + 16))(v11, a2 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  sub_1000080F8(v34, v34[3]);
  v15 = sub_10013B354();
  sub_10000839C(v34);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v15 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "isWalrusStatusMismatched: %{BOOL}d", v18, 8u);
  }

  v19 = v15 & v33;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = os_log_type_enabled(v20, v21);
  if (v19)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Found mismatch in CombinedWalrusStatus. Posting adpStateHealing CFU", v23, 2u);
    }

    v24 = v30;
    (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v30);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v24);
    sub_100260F04(4u, 0);
  }

  else
  {
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No mismatch found in CombinedWalrusStatus. Tearing down adpStateHealing CFU, if posted already.", v26, 2u);
    }

    v27 = v30;
    (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC13appleaccountd15PDPAndADPChecks__cdpFollowUpHandler, v30);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v27);
    sub_100261308();
  }

  sub_10000839C(v34);
  return v32(0);
}

uint64_t sub_1002A18BC(__int16 a1)
{
  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10003A9C0();
  _BridgedStoredNSError.init(_:userInfo:)();
  return v2;
}

uint64_t sub_1002A19B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v2)
  {
    v4 = "ck";
  }

  else
  {
    v4 = "ownerSetupGracePeriodInSeconds";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v7 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v7 = "ck";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1002A1A64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1AE4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002A1B50(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1BCC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3C18, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002A1C2C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v1)
  {
    v3 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v3 = "ck";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1002A1C6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x436B63754C657270;
  v4 = 0xEC00000072656568;
  if (v2 != 1)
  {
    v3 = 0x656568436B63756CLL;
    v4 = 0xE900000000000072;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x436B63754C657270;
  v8 = 0xEC00000072656568;
  if (*a2 != 1)
  {
    v7 = 0x656568436B63756CLL;
    v8 = 0xE900000000000072;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002A1D88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A1E38(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002A1ED4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A1F80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A3A34(*a1);
  *a2 = result;
  return result;
}

void sub_1002A1FB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC00000072656568;
  v5 = 0x436B63754C657270;
  if (v2 != 1)
  {
    v5 = 0x656568436B63756CLL;
    v4 = 0xE900000000000072;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL sub_1002A201C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1002A206C(char a1, uint64_t a2)
{
  sub_1002A32B4();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user) = a1 & 1;
  sub_1002A35EC(a2, &v6);
  if (v7)
  {
    sub_1002A365C(a2);
    sub_10003E950(&v6, &v8);
  }

  else
  {
    v9 = &type metadata for DateProvider;
    v10 = &off_1003B2060;
    sub_1002A365C(a2);
    if (v7)
    {
      sub_1002A365C(&v6);
    }
  }

  sub_10003E950(&v8, v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_dateProvider);
  return v2;
}

uint64_t sub_1002A217C()
{
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v1 = 0xD000000000000022;
  }

  else
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*(v0 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v2 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v2 = "ck";
  }

  v3 = sub_1002A25A0(v1, v2 | 0x8000000000000000);
  v5 = v4;

  if (v5)
  {
    *&result = 0.0;
  }

  else
  {
    v7 = sub_1002A25A0(0xD000000000000020, 0x8000000100332FF0);
    if (v8)
    {
      v7 = 4.0;
    }

    *&result = v7 * v3;
  }

  return result;
}

uint64_t sub_1002A2248(char a1)
{
  if (a1 == 2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Stale setup tear-down enabled because setup version is LuckCheer+", v4, 2u);
    }

    return 1;
  }

  else
  {
    v6 = sub_1002A25A0(0xD000000000000030, 0x8000000100332FB0);
    if (v7)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100008D04(v8, qword_1003FAAB8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Stale setup tear-down disabled because setup version is pre-LuckCheer, probability: nil", v11, 2u);
      }

      return 0;
    }

    else
    {
      v12 = v6 / 100.0;
      sub_1002A33CC(0.0, 1.0);
      v14 = v13;
      v15 = v13 <= v12;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100008D04(v16, qword_1003FAAB8);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v20;
        *v19 = 136315394;
        if (v14 > v12)
        {
          v21 = 0x64656C6261736964;
        }

        else
        {
          v21 = 0x64656C62616E65;
        }

        if (v14 > v12)
        {
          v22 = 0xE800000000000000;
        }

        else
        {
          v22 = 0xE700000000000000;
        }

        v23 = sub_10021145C(v21, v22, &v24);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v17, v18, "Stale setup tear-down %s because setup version is pre-LuckCheer, probability: %f", v19, 0x16u);
        sub_10000839C(v20);
      }

      return v15;
    }
  }
}

id sub_1002A25A0(uint64_t a1, unint64_t a2)
{
  v5 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v58 - v7;
  v9 = sub_100005814(&qword_1003E5BE8, &qword_100348460);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - v11;
  if ([objc_opt_self() isInternalBuild])
  {
    v13 = *(v10 + 16);
    v59 = v2;
    v13(v12, v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__defaults, v9);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v12, v9);
    v14 = v62[0];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 integerForKey:v15];

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v60 = a1;
    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = v16;
      v22 = a2;
      v23 = swift_slowAlloc();
      v62[0] = v23;
      *v20 = 136315394;
      *(v20 + 4) = sub_10021145C(v60, v22, v62);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v18, v19, "🔔 Internal build: %s override is set to: %ld", v20, 0x16u);
      sub_10000839C(v23);
      a2 = v22;
      v16 = v21;
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    if (v16 >= 1)
    {
      v27 = v60;
      if (v26)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v62[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_10021145C(v27, a2, v62);
        _os_log_impl(&_mh_execute_header, v24, v25, "Internal build: using %s override", v28, 0xCu);
        sub_10000839C(v29);
      }

      return v16;
    }

    a1 = v60;
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v62[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10021145C(a1, a2, v62);
      _os_log_impl(&_mh_execute_header, v24, v25, "Internal build: %s doesn't have override, checking in url bag", v30, 0xCu);
      sub_10000839C(v31);
    }

    v2 = v59;
  }

  (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__urlBag, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v33 = result;
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 configurationAtKey:v34];

    if (!v35 || (_bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100005814(&qword_1003DBB88, &qword_10033FC30), (swift_dynamicCast() & 1) == 0))
    {
      sub_10000839C(v62);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAAB8);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v62[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_10021145C(0x6169646F74737563, 0xEF3256736766436ELL, v62);
        _os_log_impl(&_mh_execute_header, v40, v41, "Couldn't find configuration container at %s in the url bag", v42, 0xCu);
        sub_10000839C(v43);
      }

      return 0;
    }

    v36 = v61[0];
    sub_10000839C(v62);
    v61[0] = a1;
    v61[1] = a2;

    AnyHashable.init<A>(_:)();
    if (*(v36 + 16) && (v37 = sub_10031B060(v62), (v38 & 1) != 0))
    {
      sub_10000DB1C(*(v36 + 56) + 32 * v37, v63);
      sub_1000526B0(v62);
      if (swift_dynamicCast())
      {

        v16 = v61[0];
        if (v61[0] > 0)
        {
          return v16;
        }

        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_100008D04(v53, qword_1003FAAB8);

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v62[0] = v57;
          *v56 = 136315394;
          *(v56 + 4) = sub_10021145C(a1, a2, v62);
          *(v56 + 12) = 2048;
          *(v56 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v54, v55, "%s is 0 or negative in the url bag: %ld", v56, 0x16u);
          sub_10000839C(v57);
        }

        return 0;
      }
    }

    else
    {
      sub_1000526B0(v62);
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAB8);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_10021145C(a1, a2, v61);
      *(v47 + 12) = 2080;
      *&v63[0] = a1;
      *(&v63[0] + 1) = a2;

      AnyHashable.init<A>(_:)();
      if (*(v36 + 16) && (v48 = sub_10031B060(v62), (v49 & 1) != 0))
      {
        sub_10000DB1C(*(v36 + 56) + 32 * v48, v63);
        sub_1000526B0(v62);
      }

      else
      {

        sub_1000526B0(v62);
        memset(v63, 0, sizeof(v63));
      }

      sub_100005814(&qword_1003D87C8, qword_100344800);
      v50 = String.init<A>(describing:)();
      v52 = sub_10021145C(v50, v51, v61);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Couldn't find configuration value at %s in the url bag, %s", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A3024()
{
  v1 = OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__defaults;
  v2 = sub_100005814(&qword_1003E5BE8, &qword_100348460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator__urlBag;
  v4 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_dateProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReadinessCheckGracePeriodEvaluator(uint64_t a1)
{
  result = qword_1003E5B38;
  if (!qword_1003E5B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A317C(uint64_t a1)
{
  sub_1002A325C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A3300(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002A325C(uint64_t a1)
{
  if (!qword_1003E5B48)
  {
    sub_1002A32B4();
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E5B48);
    }
  }
}

unint64_t sub_1002A32B4()
{
  result = qword_1003DF5F8;
  if (!qword_1003DF5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DF5F8);
  }

  return result;
}

void sub_1002A3300(uint64_t a1)
{
  if (!qword_1003DB6F0)
  {
    sub_100008CBC(&qword_1003D7FD0, &unk_10033FB30);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DB6F0);
    }
  }
}

unint64_t sub_1002A3378()
{
  result = qword_1003E5BE0;
  if (!qword_1003E5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E5BE0);
  }

  return result;
}

void sub_1002A33CC(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_1002A33CC(a1, a2);
  }
}

BOOL sub_1002A3470(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x436B63754C657270;
    }

    else
    {
      v5 = 0x656568436B63756CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000072656568;
    }

    else
    {
      v6 = 0xE900000000000072;
    }

    v7 = a2;
    if (a2)
    {
LABEL_9:
      if (v7 == 1)
      {
        v8 = 0x436B63754C657270;
      }

      else
      {
        v8 = 0x656568436B63756CLL;
      }

      if (v7 == 1)
      {
        v9 = 0xEC00000072656568;
      }

      else
      {
        v9 = 0xE900000000000072;
      }

      if (v5 != v8)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
    v7 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v9 = 0xE700000000000000;
  if (v5 != 0x6E776F6E6B6E75)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v6 == v9)
  {

    goto LABEL_22;
  }

LABEL_21:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v10 & 1) == 0)
  {
    return result;
  }

LABEL_22:
  if (v3 != 2)
  {
    return v2 != 2 && ((v2 ^ v3) & 1) == 0;
  }

  return v2 == 2;
}

uint64_t sub_1002A35EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E5BF0, &qword_100348468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A365C(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E5BF0, &qword_100348468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory.Age(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory.Age(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002A3828(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002A3844(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for ReadinessCheckGracePeriodEvaluator.SetupHistory(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1002A39E0()
{
  result = qword_1003E5BF8;
  if (!qword_1003E5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E5BF8);
  }

  return result;
}

unint64_t sub_1002A3A34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3C68, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002A3A80(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v15;
  v18 = v16;

  sub_1002A41CC(sub_1002A4B6C, v17);

  dispatch_group_enter(v18);
  (*(v10 + 16))(v12, v2 + OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__cdpController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v19 = *sub_1000080F8(aBlock, v45);
  v20 = v18;

  sub_10013DF88(v19, v14, v20);

  sub_10000839C(aBlock);
  sub_100071C74();
  v22 = v33;
  v21 = v34;
  (*(v33 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v34);
  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v8, v21);
  v23 = swift_allocObject();
  v24 = v36;
  v25 = v37;
  v23[2] = v15;
  v23[3] = v24;
  v23[4] = v25;
  v23[5] = v13;
  v23[6] = v14;
  v46 = sub_1002A4BCC;
  v47 = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v45 = &unk_1003B2448;
  v26 = _Block_copy(aBlock);

  v27 = v35;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_1002A4BF4();
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v29 = v38;
  v28 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v32;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v26);

  (*(v42 + 8))(v29, v28);
  (*(v40 + 8))(v27, v41);
}

void sub_1002A3FF4(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_beginAccess();
    *(a5 + 16) = a1;
    swift_errorRetain();
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = a1 & 1;
  }

  dispatch_group_leave(a3);
}

void sub_1002A4088(char a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_1002A40E0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_errorRetain();
    a2(v9, 1);
  }

  swift_beginAccess();
  if (*(a4 + 16))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  swift_beginAccess();
  if (*(a5 + 16))
  {
    v12 = 4;
LABEL_10:
    v11 |= v12;
    return (a2)(v11, 0);
  }

  if ((v11 & 1) == 0)
  {
    v12 = 1;
    goto LABEL_10;
  }

  return (a2)(v11, 0);
}

uint64_t sub_1002A41CC(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v28 = type metadata accessor for URL();
  v7 = *(v28 - 8);
  v8 = __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  (*(v14 + 16))(&v25 - v15, v2 + OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__custodianStorage, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v17 = sub_1000080F8(v30, v30[3]);
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = v26;
  *(v18 + 24) = v19;
  v20 = sub_1000080F8((*v17 + 16), *(*v17 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v7 + 8);
  v22 = v10;
  v23 = v28;
  v21(v22, v28);
  (*(v4 + 16))(v6, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  sub_1000080F8(v29, v29[3]);
  sub_1000324D8(v12, sub_1002A4AD0, v18);

  v21(v12, v23);
  sub_10000839C(v29);
  return sub_10000839C(v30);
}

uint64_t sub_1002A4558(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for CustodianRecord(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a1;
    v11 = 1;
  }

  else
  {
    v12 = 0;
    v13 = *(a1 + 16);
    while (v13 != v12)
    {
      sub_100012050(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12++, v9);
      v14 = *&v9[*(v6 + 36)];
      sub_1000120B4(v9);
      if (v14 == 2)
      {
        v10 = 1;
        goto LABEL_8;
      }
    }

    v10 = 0;
LABEL_8:
    v11 = 0;
  }

  return a3(v10, v11);
}

uint64_t sub_1002A4694()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__custodianFetcher;
  v4 = sub_100005814(&unk_1003DA118, &qword_10033F238);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__cdpController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecoveryFactorsController(uint64_t a1)
{
  result = qword_1003E5C40;
  if (!qword_1003E5C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A4828(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003D9A48, &unk_1003D9A50, qword_100343CC0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002A4974()
{
  v1 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-1] - v3;
  (*(v2 + 16))(&v7[-1] - v3, *v0 + OBJC_IVAR____TtC13appleaccountd25RecoveryFactorsController__cdpController, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  sub_1000080F8(v7, v7[3]);
  LOBYTE(v1) = sub_10013BBD4();
  sub_10000839C(v7);
  return v1 & 1;
}

uint64_t sub_1002A4A98()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002A4AEC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A4B24()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002A4B7C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002A4BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002A4BF4()
{
  result = qword_1003D9120;
  if (!qword_1003D9120)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D9120);
  }

  return result;
}

uint64_t sub_1002A4C4C()
{
  v1[18] = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002A4D80, 0, 0);
}

uint64_t sub_1002A4D80()
{
  v19 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(v2 + 16))(v1, *(v0 + 144) + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__recoveryFactorsController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 64), *(v0 + 88));
  type metadata accessor for RecoveryFactorsController(0);
  LOBYTE(v1) = sub_1002A4974();
  *(v0 + 57) = v1 & 1;
  sub_10000839C((v0 + 64));
  if (v1)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    (*(v5 + 16))(v4, *(v0 + 144) + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__notificationManager, v6);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v4, v6);
    sub_1000080F8((v0 + 104), *(v0 + 128));
    v7 = AAFollowUpIdentifierRecoveryKeyMismatch;
    v8 = sub_1003090E8(_swiftEmptyArrayStorage);
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    sub_1002D3AB8(v0 + 16);

    sub_10000839C((v0 + 104));
    v9 = *(v0 + 57);

    v10 = *(v0 + 8);

    return v10((v9 & 1) == 0);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - RK Mismatch exists, proceeding to post RK Mismatch Repair CFU.", v15, 0xCu);
      sub_10000839C(v16);
    }

    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_1002A5108;

    return sub_1002A5244();
  }
}

uint64_t sub_1002A5108()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 57);

  v4 = *(v2 + 8);

  return v4((v3 & 1) == 0);
}

uint64_t sub_1002A5244()
{
  v1[25] = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = type metadata accessor for TrustedContactUserNotification(0);
  v1[30] = swift_task_alloc();
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002A53D4, 0, 0);
}

uint64_t sub_1002A53D4()
{
  v10 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[34] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - recovery key mismatch found, posting CFU to verify RK", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1002A561C;
  v7 = v0[25];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 57, 0, 0, 0xD00000000000001BLL, 0x8000000100333080, sub_1002A634C, v7, &type metadata for Bool);
}

uint64_t sub_1002A561C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1002A5BF0;
  }

  else
  {
    v2 = sub_1002A575C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A575C()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 200);
  *(v0 + 58) = *(v0 + 57);
  v5 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__cdpController;
  *(v0 + 296) = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__cdpController;
  v6 = *(v2 + 16);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  *(v0 + 320) = v7;
  *(v0 + 328) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  sub_1000080F8((v0 + 64), *(v0 + 88));
  v8 = swift_task_alloc();
  *(v0 + 336) = v8;
  *v8 = v0;
  v8[1] = sub_1002A58A8;

  return sub_10013BFB0();
}

uint64_t sub_1002A58A8(char a1)
{
  *(*v1 + 59) = a1;

  return _swift_task_switch(sub_1002A59D4, 0, 0);
}

uint64_t sub_1002A59D4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 200);
  sub_10000839C((v0 + 64));
  v2(v4, v6 + v3, v5);
  Dependency.wrappedValue.getter();
  v1(v4, v5);
  v7 = *(*sub_1000080F8((v0 + 104), *(v0 + 128)) + 16);
  *(v0 + 192) = 0;
  v8 = [v7 walrusStatus:v0 + 192];
  if (*(v0 + 192))
  {
    swift_willThrow();
    v9 = 0;
  }

  else
  {
    v9 = v8 == 1;
  }

  v10 = *(v0 + 59);
  v11 = *(v0 + 58);
  v12 = *(v0 + 240);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  *v12 = v9;
  v12[1] = v11;
  v12[2] = v10;
  swift_storeEnumTagMultiPayload();
  sub_10000839C((v0 + 104));
  (*(v14 + 16))(v13, v16 + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__notificationManager, v15);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  sub_1000080F8((v0 + 144), *(v0 + 168));
  sub_1002CA150((v0 + 16));
  sub_1002D2E28(v0 + 16, 0, 0);
  sub_1000C5460(v0 + 16);
  sub_1002A6354(v12);
  sub_10000839C((v0 + 144));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002A5BF0()
{
  v11 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v3 = 136315394;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    v4 = v0[36];
    *(v3 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v10);
    *(v3 + 12) = 2080;
    v0[23] = v4;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v5 = String.init<A>(describing:)();
    v7 = sub_10021145C(v5, v6, &v10);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - failed to fetch healthy recovery contact status: %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002A5E2C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__recoveryFactorsController;
  v2 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__cdpController;
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecoveryKeyStateProvider(uint64_t a1)
{
  result = qword_1003E5DC8;
  if (!qword_1003E5DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A5FC0(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002A610C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - v6;
  v8 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-1] - v10;
  (*(v9 + 16))(&v16[-1] - v10, a2 + OBJC_IVAR____TtC13appleaccountd24RecoveryKeyStateProvider__recoveryFactorsController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  sub_1000080F8(v16, v16[3]);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  sub_1002A41CC(sub_100015F50, v13);

  return sub_10000839C(v16);
}

uint64_t sub_1002A6354(uint64_t a1)
{
  v2 = type metadata accessor for TrustedContactUserNotification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002A63B0()
{
  v1 = sub_100005814(&qword_1003D8D60, &unk_10033EA10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002A6444()
{
  type metadata accessor for TrustedContactsAwarenessSync(0);
  sub_100005814(&unk_1003E5FE0, &unk_100348730);
  result = String.init<A>(describing:)();
  qword_1003E5EF8 = result;
  unk_1003E5F00 = v1;
  return result;
}

uint64_t sub_1002A6498(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v32 - v15;
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v20 = 136315394;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v32);
      *(v20 + 12) = 2080;
      v32[5] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v21 = String.init<A>(describing:)();
      v23 = sub_10021145C(v21, v22, v32);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - error fetching manatee status: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    return a3(a1);
  }

  else if (a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32[0] = v29;
      *v28 = 136315138;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v32);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s - updating Trusted Contacts Awareness on account", v28, 0xCu);
      sub_10000839C(v29);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v30 = swift_allocObject();
      v30[2] = a5;
      v30[3] = a3;
      v30[4] = a4;
      v30[5] = a6;

      sub_1002A6E2C(sub_1002A8590, v30);
    }
  }

  else
  {
    v31 = v14;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v13 + 16))(v16, result + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__accountStore, v31);
      Dependency.wrappedValue.getter();

      (*(v13 + 8))(v16, v31);
      sub_1000080F8(v32, v32[3]);
      sub_10015BD58(0, 0, a3, a4);
      return sub_10000839C(v32);
    }
  }

  return result;
}

uint64_t sub_1002A698C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v16 = 136315394;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v29);
      *(v16 + 12) = 2080;
      v29[5] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v17 = String.init<A>(describing:)();
      v19 = sub_10021145C(v17, v18, v29);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - error fetching trusted contacts on cloud - %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    return a4(a1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v28 = a4;
      v24 = a5;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v25 = 136315650;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v29);
      *(v25 + 12) = 2048;
      *(v25 + 14) = a1;
      *(v25 + 22) = 2048;
      *(v25 + 24) = BYTE1(a1);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s - account state: \n\nCustodianAssignee - %ld\n\nBeneficiaryAssignee - %ld", v25, 0x20u);
      sub_10000839C(v26);

      a5 = v24;
      a4 = v28;
    }

    else
    {
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v10 + 16))(v12, result + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__accountStore, v9);
      Dependency.wrappedValue.getter();

      (*(v10 + 8))(v12, v9);
      sub_1000080F8(v29, v29[3]);
      sub_10015BD58(a1, BYTE1(a1), a4, a5);
      return sub_10000839C(v29);
    }
  }

  return result;
}

uint64_t sub_1002A6E2C(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v3 = *v2;
  v76 = v2;
  v77 = v3;
  v71 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v67 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v56 - v8;
  v60 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v9 = *(v60 - 8);
  __chkstk_darwin(v60);
  v11 = &v56 - v10;
  v59 = type metadata accessor for URL();
  v58 = *(v59 - 8);
  v12 = __chkstk_darwin(v59);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v21 = dispatch_group_create();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  dispatch_group_enter(v21);
  (*(v18 + 16))(v20, v76 + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__custodianStorage, v17);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v20, v17);
  v25 = sub_1000080F8(aBlock, v79);
  v26 = swift_allocObject();
  v26[2] = v21;
  v26[3] = v24;
  v75 = v24;
  v57 = v23;
  v27 = v77;
  v26[4] = v23;
  v26[5] = v27;
  v28 = sub_1000080F8((*v25 + 16), *(*v25 + 40));
  type metadata accessor for LocalCache();
  v29 = v21;

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v30 = *(v58 + 8);
  v31 = v14;
  v32 = v59;
  v30(v31, v59);
  v33 = *v28 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v34 = v60;
  (*(v9 + 16))(v11, v33, v60);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v34);
  sub_1000080F8(v82, v82[3]);
  sub_1000328BC(v16, sub_1002A85F4, v26);

  v30(v16, v32);
  sub_10000839C(v82);
  sub_10000839C(aBlock);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  dispatch_group_enter(v29);
  v36 = v62;
  v37 = v61;
  v38 = v63;
  (*(v62 + 16))(v61, v76 + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__inheritanceStorage, v63);
  Dependency.wrappedValue.getter();
  (*(v36 + 8))(v37, v38);
  sub_1000080F8(aBlock, v79);
  v39 = swift_allocObject();
  v39[2] = v29;
  v39[3] = v35;
  v40 = v57;
  v41 = v77;
  v39[4] = v57;
  v39[5] = v41;
  v42 = v29;

  sub_10021AD90(sub_1002A8654, v39);

  sub_10000839C(aBlock);
  sub_100071C74();
  v43 = v65;
  v44 = v64;
  v45 = v66;
  (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v66);
  v46 = static OS_dispatch_queue.global(qos:)();
  (*(v43 + 8))(v44, v45);
  v47 = swift_allocObject();
  v48 = v68;
  v49 = v69;
  v47[2] = v40;
  v47[3] = v48;
  v50 = v75;
  v47[4] = v49;
  v47[5] = v50;
  v47[6] = v35;
  v80 = sub_1002A86D4;
  v81 = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v79 = &unk_1003B2618;
  v51 = _Block_copy(aBlock);

  v52 = v67;
  static DispatchQoS.unspecified.getter();
  v82[0] = _swiftEmptyArrayStorage;
  sub_1002A4BF4();
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v54 = v70;
  v53 = v71;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v51);

  (*(v74 + 8))(v54, v53);
  (*(v72 + 8))(v52, v73);
}

uint64_t sub_1002A778C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__inheritanceStorage;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactsAwarenessSync(uint64_t a1)
{
  result = qword_1003E5F48;
  if (!qword_1003E5F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A7920(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002A7A98(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CustodianshipInfoRecord(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v33 - v15;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315138;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v36);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - failed to fetch custodianship List", v20, 0xCu);
      sub_10000839C(v21);
    }

    swift_beginAccess();
    *(a5 + 16) = a1;
  }

  else
  {
    v34 = a4;
    v35 = a3;
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v24 = *(v14 + 72);
      v25 = a1 + v23;
      v26 = _swiftEmptyArrayStorage;
      do
      {
        sub_1002A86FC(v25, v16, type metadata accessor for CustodianshipInfoRecord);
        if (*&v16[*(v10 + 28)] == 2)
        {
          sub_1002A87C4(v16, v13, type metadata accessor for CustodianshipInfoRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36[0] = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0244(0, v26[2] + 1, 1);
            v26 = v36[0];
          }

          v29 = v26[2];
          v28 = v26[3];
          if (v29 >= v28 >> 1)
          {
            sub_1002E0244((v28 > 1), v29 + 1, 1);
            v26 = v36[0];
          }

          v26[2] = v29 + 1;
          sub_1002A87C4(v13, v26 + v23 + v29 * v24, type metadata accessor for CustodianshipInfoRecord);
        }

        else
        {
          sub_1002A8764(v16, type metadata accessor for CustodianshipInfoRecord);
        }

        v25 += v24;
        --v22;
      }

      while (v22);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v30 = v26[2];

    if (v30)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v32 = v34;
    swift_beginAccess();
    *(v32 + 16) = v31;
    a3 = v35;
  }

  dispatch_group_leave(a3);
}

void sub_1002A7E5C(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v33 - v15;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315138;
      if (qword_1003D7E68 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003E5EF8, unk_1003E5F00, v36);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - failed to fetch benefactors List", v20, 0xCu);
      sub_10000839C(v21);
    }

    swift_beginAccess();
    *(a5 + 16) = a1;
  }

  else
  {
    v34 = a4;
    v35 = a3;
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v24 = *(v14 + 72);
      v25 = a1 + v23;
      v26 = _swiftEmptyArrayStorage;
      do
      {
        sub_1002A86FC(v25, v16, type metadata accessor for BenefactorInfoRecord);
        if (*&v16[*(v10 + 24)] == 2)
        {
          sub_1002A87C4(v16, v13, type metadata accessor for BenefactorInfoRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36[0] = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E047C(0, v26[2] + 1, 1);
            v26 = v36[0];
          }

          v29 = v26[2];
          v28 = v26[3];
          if (v29 >= v28 >> 1)
          {
            sub_1002E047C((v28 > 1), v29 + 1, 1);
            v26 = v36[0];
          }

          v26[2] = v29 + 1;
          sub_1002A87C4(v13, v26 + v23 + v29 * v24, type metadata accessor for BenefactorInfoRecord);
        }

        else
        {
          sub_1002A8764(v16, type metadata accessor for BenefactorInfoRecord);
        }

        v25 += v24;
        --v22;
      }

      while (v22);
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v30 = v26[2];

    if (v30)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    v32 = v34;
    swift_beginAccess();
    *(v32 + 16) = v31;
    a3 = v35;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1002A8220(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_errorRetain();
    a2(v9, 1);
  }

  else
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    swift_beginAccess();
    return (a2)(v11 | (*(a5 + 16) << 8), 0);
  }
}

uint64_t sub_1002A82E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - v9;
  (*(v8 + 16))(&v15[-1] - v9, v3 + OBJC_IVAR____TtC13appleaccountd28TrustedContactsAwarenessSync__inheritanceStorage, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v15, v15[3]);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;
  v12[5] = v6;

  sub_10021E8F0(sub_1002A8538, v12);

  return sub_10000839C(v15);
}

uint64_t sub_1002A84C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A84F8()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002A8550()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002A85A8()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002A860C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002A8684()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002A86E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002A86FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A8764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A87C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1002A8834()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_1003E5FF0 = result;
  return result;
}

uint64_t sub_1002A8868()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003E6000 = result;
  return result;
}

void sub_1002A8ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v35 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore, v3);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v6, v3);
    v15 = [*(*sub_1000080F8(v35 v35[3]) + 16)];
    if (v15)
    {

      sub_10000839C(v35);
      v16 = [objc_opt_self() lock];
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = a1;
      v18 = v16;

      sub_1002A8E48(1, sub_1002AC7DC, v17);
    }

    else
    {
      v23 = sub_10000839C(v35);
      sub_10030FF34(v23, v24, v25, v26, v27, v28, v29, v30, v35[0]);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAAB8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "No account signed in. Skipping CPR.", v34, 2u);
      }
    }
  }

  else
  {
    sub_10030FF34(0, v8, v9, v10, v11, v12, v13, v14, v35[0]);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Lost reference to self. Aborting Trusted Contacts Preflight XPC activity", v22, 2u);
    }
  }
}

uint64_t sub_1002A8E48(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (qword_1003D7E78 != -1)
  {
    swift_once();
  }

  v8 = qword_1003E6000;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a1 & 1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002ACD48;
  *(v10 + 24) = v9;
  v14[4] = sub_1002ACED0;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10030F718;
  v14[3] = &unk_1003B2908;
  v11 = _Block_copy(v14);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1002A9020(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_1003E5FF8)
  {
    if (qword_1003D7E80 != -1)
    {
      swift_once();
    }

    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    swift_beginAccess();
    v7 = off_1003E6008;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    off_1003E6008 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100306534(0, v7[2] + 1, 1, v7);
      off_1003E6008 = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_100306534((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_1002ACED4;
    v11[5] = v6;
    off_1003E6008 = v7;
    swift_endAccess();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "❌ Skipping concurrent preflight as another preflight is already in progress.", v15, 2u);
    }
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2 & 1;
    v19 = type metadata accessor for AsyncOperation();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v21 = &v20[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v21 = sub_1002ACD94;
    v21[1] = v18;
    v30.receiver = v20;
    v30.super_class = v19;

    v22 = objc_msgSendSuper2(&v30, "init");
    v23 = qword_1003E5FF8;
    qword_1003E5FF8 = v22;
    v13 = v22;

    if (qword_1003D7E80 != -1)
    {
      swift_once();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    swift_beginAccess();
    v25 = off_1003E6008;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    off_1003E6008 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_100306534(0, v25[2] + 1, 1, v25);
      off_1003E6008 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_100306534((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1002ACDD8;
    v29[5] = v24;
    off_1003E6008 = v25;
    swift_endAccess();
    if (qword_1003D7E70 != -1)
    {
      swift_once();
    }

    [qword_1003E5FF0 addOperation:v13];
  }
}

uint64_t sub_1002A9414(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v34 = a2;
  v35 = a1;
  v6 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v32 = v16;
  v33 = v14;
  sub_1002AB924(v14, v16);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = a4;
  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v21 = 136315138;
    if (v17)
    {
      v23 = 0x656C756465686353;
    }

    else
    {
      v23 = 0x6E616D6544206E4FLL;
    }

    v24 = sub_10021145C(v23, 0xE900000000000064, v36);

    *(v21 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "Starting to pull all cloud data before %s Trusted Contacts Preflight activity", v21, 0xCu);
    sub_10000839C(v22);
  }

  (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__syncManager, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v36, v36[3]);
  v25 = swift_allocObject();
  *(v25 + 16) = v17 & 1;
  v27 = v32;
  v26 = v33;
  *(v25 + 24) = a3;
  *(v25 + 32) = v26;
  v29 = v34;
  v28 = v35;
  *(v25 + 40) = v27;
  *(v25 + 48) = v28;
  *(v25 + 56) = v29;

  sub_1002E93B4(3, 1, sub_1002ACE50, v25);

  return sub_10000839C(v36);
}

uint64_t sub_1002A97B0(char a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315394;
    if (a2)
    {
      v18 = 0x656C756465686353;
    }

    else
    {
      v18 = 0x6E616D6544206E4FLL;
    }

    v28 = a1;
    v19 = a3;
    v20 = a7;
    v21 = a2;
    v22 = a6;
    v23 = a4;
    v24 = a5;
    v25 = sub_10021145C(v18, 0xE900000000000064, &v30);

    *(v17 + 4) = v25;
    a5 = v24;
    a4 = v23;
    a6 = v22;
    a2 = v21;
    a7 = v20;
    a3 = v19;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v28 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Completed pulling all cloud data before %s Trusted Contacts Preflight activity: %{BOOL}d", v17, 0x12u);
    sub_10000839C(v29);
  }

  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a6;
  v26[4] = a7;

  sub_1002A9F1C(a2 & 1, a4, a5, sub_1002ACEA4, v26);
}

uint64_t sub_1002A99FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Finished preflight.", v12, 2u);
  }

  return sub_1002A9B10(a1 & 1, a2, a4, a5);
}

uint64_t sub_1002A9B10(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  if (qword_1003D7E78 != -1)
  {
    swift_once();
  }

  v10 = qword_1003E6000;
  v11 = swift_allocObject();
  *(v11 + 16) = a1 & 1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1002ACCF8;
  *(v12 + 24) = v11;
  v16[4] = sub_1002ACED0;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10030F718;
  v16[3] = &unk_1003B2890;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A9CE0(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1003D7F48 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      if (qword_1003D7E80 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      *(v9 + 4) = *(off_1003E6008 + 2);
      _os_log_impl(&_mh_execute_header, v7, v8, "Handling Preflight completions. Count: %ld", v9, 0xCu);
    }

    if (qword_1003D7E80 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = off_1003E6008;
    off_1003E6008 = _swiftEmptyArrayStorage;
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v12 = 0;
    a1 &= 1u;
    v13 = (v10 + 5);
    while (v12 < v10[2])
    {
      ++v12;
      v14 = *(v13 - 1);
      v18 = a1;
      v17 = a2;

      v14(&v18, &v17);

      v13 += 16;
      if (v11 == v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_12:

  v15 = qword_1003E5FF8;
  qword_1003E5FF8 = 0;

  return a3();
}

uint64_t sub_1002A9F1C(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v78 = a4;
  v95 = a2;
  v96 = a3;
  LODWORD(v89) = a1;
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS.QoSClass();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v91 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = v74 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch_group_create();
  v94 = swift_allocObject();
  *(v94 + 16) = &_swiftEmptyDictionarySingleton;
  v16 = sub_100071C74();
  v93 = "ivityProvider";
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v79 = v10;
  v74[1] = v16;
  v92 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v93 = swift_allocObject();
  v93[16] = 0;
  v17 = v86;
  v18 = sub_1002ABF04(v95, v96);
  v19 = v91;
  v20 = v90;
  v21 = v97;
  (*(v91 + 16))(v90, v17 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsAccountModel, v97);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v20, v21);
  v22 = sub_1000080F8(&v105, v106);
  v23 = *v22;
  v24 = *(*v22 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10028B50C;
  *(v25 + 24) = v23;
  v103 = sub_100071DCC;
  v104 = v25;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v101 = sub_10030F718;
  v102 = &unk_1003B2700;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v24, v26);
  _Block_release(v26);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    v74[0] = v18;
    sub_10000839C(&v105);
    if (qword_1003D7F48 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v27 = type metadata accessor for Logger();
  v90 = sub_100008D04(v27, qword_1003FAAB8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v89;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    if (v31)
    {
      v34 = 0x656C756465686353;
    }

    else
    {
      v34 = 0x6E616D6544206E4FLL;
    }

    v35 = sub_10021145C(v34, 0xE900000000000064, &aBlock);

    *(v32 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting %s Trusted Contacts Preflight activities.", v32, 0xCu);
    sub_10000839C(v33);
  }

  v37 = *(v86 + 16);
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = v37 + 32;
    LODWORD(v91) = v31 & 1;
    if (v31)
    {
      v40 = 0x656C756465686353;
    }

    else
    {
      v40 = 0x6E616D6544206E4FLL;
    }

    v88 = v40;
    *&v36 = 136315394;
    v87 = v36;
    v89 = v15;
    do
    {
      v97 = v38;
      sub_100040738(v39, &aBlock);
      dispatch_group_enter(v15);
      sub_100040738(&aBlock, &v105);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v52 = v87;
        v53 = sub_10021145C(v88, 0xE900000000000064, &v98);

        *(v52 + 4) = v53;
        *(v52 + 12) = 2080;
        sub_1000080F8(&v105, v106);
        swift_getDynamicType();
        v54 = _typeName(_:qualified:)();
        v56 = v55;
        sub_10000839C(&v105);
        v57 = sub_10021145C(v54, v56, &v98);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "Starting %s Trusted Contacts Preflight activity - %s", v52, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000839C(&v105);
      }

      v41 = v102;
      v42 = v103;
      sub_1000080F8(&aBlock, v102);
      sub_100040738(&aBlock, &v105);
      v43 = swift_allocObject();
      *(v43 + 16) = v91;
      sub_10003E950(&v105, v43 + 24);
      v44 = v92;
      v45 = v93;
      v46 = v94;
      *(v43 + 64) = v92;
      *(v43 + 72) = v46;
      v15 = v89;
      *(v43 + 80) = v45;
      *(v43 + 88) = v15;
      v47 = *(v42 + 2);
      v48 = v44;

      v49 = v15;
      v47(v95, v96, sub_1002AC8D4, v43, v41, v42);

      sub_10000839C(&aBlock);
      v39 += 40;
      v38 = v97 - 1;
    }

    while (v97 != 1);
    v58 = v74[0];
    v59 = v91;
  }

  else
  {
    v59 = v31 & 1;
    v58 = v74[0];
  }

  v60 = v76;
  v61 = v75;
  v62 = v77;
  (*(v76 + 104))(v75, enum case for DispatchQoS.QoSClass.default(_:), v77);
  v97 = static OS_dispatch_queue.global(qos:)();
  (*(v60 + 8))(v61, v62);
  v63 = swift_allocObject();
  v65 = v92;
  v64 = v93;
  *(v63 + 16) = v92;
  *(v63 + 24) = v59;
  v66 = v86;
  *(v63 + 32) = v94;
  *(v63 + 40) = v66;
  v67 = v78;
  *(v63 + 48) = v58;
  *(v63 + 56) = v67;
  *(v63 + 64) = v81;
  *(v63 + 72) = v64;
  v103 = sub_1002AC948;
  v104 = v63;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v101 = sub_100031EF0;
  v102 = &unk_1003B2778;
  v68 = _Block_copy(&aBlock);
  v96 = v58;

  v95 = v65;

  v69 = v79;
  static DispatchQoS.unspecified.getter();
  *&v105 = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v70 = v83;
  v71 = v85;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = v97;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v68);

  (*(v84 + 8))(v70, v71);
  (*(v80 + 8))(v69, v82);
}

void sub_1002AABEC(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v66 = a7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = __chkstk_darwin(v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v61 = v21;
    v62 = v19;
    v64 = v18;
    v65 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v60 = a5;
    v63 = v16;
    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v59 = v14;
      v26 = v25;
      v27 = swift_slowAlloc();
      v58 = a6;
      v28 = v27;
      v57 = swift_slowAlloc();
      *&v74[0] = v57;
      *v26 = 136315650;
      if (a2)
      {
        v29 = 0x656C756465686353;
      }

      else
      {
        v29 = 0x6E616D6544206E4FLL;
      }

      v30 = sub_10021145C(v29, 0xE900000000000064, v74);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      sub_1000080F8(&aBlock, v71);
      swift_getDynamicType();
      v31 = _typeName(_:qualified:)();
      v33 = v32;
      sub_10000839C(&aBlock);
      v34 = sub_10021145C(v31, v33, v74);

      *(v26 + 14) = v34;
      *(v26 + 22) = 2112;
      v35 = _convertErrorToNSError(_:)();
      *(v26 + 24) = v35;
      *v28 = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s %s Trusted Contacts Preflight activity failed with error %@", v26, 0x20u);
      sub_100083380(v28);
      a6 = v58;

      swift_arrayDestroy();

      v14 = v59;
    }

    else
    {

      sub_10000839C(&aBlock);
    }

    sub_1000080F8(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v47 = a3[4];
    aBlock = DynamicType;
    v69 = v47;
    sub_100005814(&unk_1003E62A0, qword_100347AD8);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    sub_100040738(a3, v74);
    v51 = swift_allocObject();
    v52 = v60;
    v51[2] = a1;
    v51[3] = v52;
    v51[4] = v48;
    v51[5] = v50;
    v51[6] = a6;
    sub_10003E950(v74, (v51 + 7));
    v72 = sub_100259C78;
    v73 = v51;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100031EF0;
    v71 = &unk_1003B2818;
    v53 = _Block_copy(&aBlock);
    swift_errorRetain();

    v54 = v61;
    static DispatchQoS.unspecified.getter();
    v67 = _swiftEmptyArrayStorage;
    sub_1002AC960(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v55 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);

    (*(v14 + 8))(v55, v13);
    (*(v62 + 8))(v54, v64);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAB8);
    sub_100040738(a3, &aBlock);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *&v74[0] = swift_slowAlloc();
      *v39 = 136315394;
      if (a2)
      {
        v40 = 0x656C756465686353;
      }

      else
      {
        v40 = 0x6E616D6544206E4FLL;
      }

      v41 = sub_10021145C(v40, 0xE900000000000064, v74);

      *(v39 + 4) = v41;
      *(v39 + 12) = 2080;
      sub_1000080F8(&aBlock, v71);
      swift_getDynamicType();
      v42 = _typeName(_:qualified:)();
      v44 = v43;
      sub_10000839C(&aBlock);
      v45 = sub_10021145C(v42, v44, v74);

      *(v39 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s %s Trusted Contacts Preflight activity completed.", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000839C(&aBlock);
    }
  }

  dispatch_group_leave(v66);
}

uint64_t sub_1002AB358(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a1;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v26 = *(v18 - 8);
  v27 = v18;
  __chkstk_darwin(v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a2 & 1;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v21 + 48) = a6;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  aBlock[4] = sub_1002ACA00;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B27C8;
  v22 = _Block_copy(aBlock);
  v23 = a5;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1002AC960(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v28 + 8))(v17, v15);
  (*(v26 + 8))(v20, v27);
}

uint64_t sub_1002AB654(char a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v26 = a4;
    v15 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (a1)
    {
      v16 = 0x656C756465686353;
    }

    else
    {
      v16 = 0x6E616D6544206E4FLL;
    }

    v17 = sub_10021145C(v16, 0xE900000000000064, v27);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    swift_beginAccess();

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v18 = Dictionary.description.getter();
    v19 = a5;
    v21 = v20;

    v22 = sub_10021145C(v18, v21, v27);
    a5 = v19;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Overall %s Trusted Contacts Preflight activities finished with errors: %s", v15, 0x16u);
    swift_arrayDestroy();

    a4 = v26;
  }

  sub_1002ACA14(a4, 0);
  swift_beginAccess();
  v23 = *(a7 + 16);
  swift_beginAccess();
  v24 = *(a2 + 16);

  a5(v23, v24);
}

void sub_1002AB924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  v7 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  (*(v12 + 16))(&v37 - v13, v3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  v15 = [*(*sub_1000080F8(v40 v40[3]) + 16)];
  if (v15 && (v16 = v15, v17 = [v15 aa_altDSID], v16, v17))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v40);
    (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsEventFactory, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v10, v7);
    v18 = kAATrustedContactsPreflightBeginEvent;
    v19 = objc_opt_self();
    v20 = v18;

    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    v23 = [v19 analyticsEventWithName:v20 altDSID:v21 flowID:v22];

    sub_10000839C(v40);
    if (v23)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      [v23 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100008D04(v25, qword_1003FAAB8);
      v26 = v23;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v23;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reporting Preflight begin Event %@", v29, 0xCu);
        sub_100083380(v30);
      }

      v32 = v38;
      (*(v38 + 16))(v6, v3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsRTCReporter, v4);
      Dependency.wrappedValue.getter();
      (*(v32 + 8))(v6, v4);
      [v40[0] sendEvent:v26];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_10000839C(v40);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Account is nil. Not reporting Preflight begin Event.", v36, 2u);
    }
  }
}

id sub_1002ABF04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-1] - v6;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27[-1] - v10;
  (*(v9 + 16))(&v27[-1] - v10, v3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v12 = [*(*sub_1000080F8(v27 v27[3]) + 16)];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v27);
    (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsEventFactory, v4);
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    v15 = kAATrustedContactsPreflightEndEvent;
    v16 = objc_opt_self();
    v17 = v15;

    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    v20 = [v16 analyticsEventWithName:v17 altDSID:v18 flowID:v19];

    sub_10000839C(v27);
    return v20;
  }

  else
  {
    sub_10000839C(v27);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Account is nil. Not reporting Preflight end Event.", v25, 2u);
    }

    return 0;
  }
}

uint64_t sub_1002AC2C4()
{

  v1 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__storageController;
  v2 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsAccountModel;
  v4 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__syncManager;
  v8 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsEventFactory;
  v10 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsRTCReporter;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactsPreflightActivityProvider(uint64_t a1)
{
  result = qword_1003E6068;
  if (!qword_1003E6068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AC544(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DB280, &unk_1003DA880, &unk_10033F5F0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002AC79C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002AC80C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002AC864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002AC87C()
{
  sub_10000839C((v0 + 24));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1002AC8E8()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1002AC960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AC9A8()
{

  return _swift_deallocObject(v0, 72);
}

void sub_1002ACA14(void *a1, void *a2)
{
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  if (a1)
  {
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    [a1 updateTaskResultWithError:a2];
  }

  (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd40TrustedContactsPreflightActivityProvider__analyticsRTCReporter, v5);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  swift_getObjectType();
  sub_100246FA8(a1);
  swift_unknownObjectRelease();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = a1;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reporting Preflight end Event %@", v13, 0xCu);
    sub_100083380(v14);
  }
}

uint64_t sub_1002ACC68()
{

  sub_10000839C((v0 + 56));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1002ACCC0()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002ACD08()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002ACD5C()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1002ACDA0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002ACE08()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002ACE64()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002ACEEC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider);
  }

  else
  {
    v3 = sub_1002AE048();
    type metadata accessor for TrustedContactsPreflightActivityProvider(0);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003DA2B0, &unk_10033F430);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003DA880, &unk_10033F5F0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003D9A40, &unk_10033F180);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003D9810, &unk_10033EFC0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
    Dependency.init(dependencyId:config:)();
    *(v2 + 16) = v3;
    if (qword_1003D7E70 != -1)
    {
      swift_once();
    }

    [qword_1003E5FF0 setMaxConcurrentOperationCount:1];
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002AD0F8()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Scheduling Trusted Contacts preflight activity", v9, 2u);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler__xpcActivityScheduler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v10 = sub_1000080F8(v20, v20[3]);
  sub_1002ACEEC();
  v11 = *v10;
  v12 = static String._fromUTF8Repairing(_:)();
  v14 = v13;
  v21 = 1;
  v22 = xmmword_1003487B0;
  v23 = xmmword_1003487C0;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = sub_100313A50(&v21, v12, v14, sub_1002AE228, v15);

  *(v11 + 16) = v16;

  v17 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v18 = sub_10030F0FC("com.apple.appleaccountd.trustedContacts.preflight", 49, 2);
  sub_10031352C(v18, v17);

  return sub_10000839C(v20);
}

uint64_t sub_1002AD3FC(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x656C756465686353;
    }

    else
    {
      v11 = 0x6E616D6544206E4FLL;
    }

    v12 = sub_10021145C(v11, 0xE900000000000064, &v16);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting %s Trusted Contacts preflight activity", v9, 0xCu);
    sub_10000839C(v10);
  }

  sub_1002ACEEC();
  v13 = swift_allocObject();
  v14 = a1 & 1;
  *(v13 + 16) = v14;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;

  sub_1002A8E48(v14, sub_1002ADC48, v13);
}

void sub_1002AD5F8(uint64_t a1, uint64_t a2, char a3, void (*a4)(id))
{
  if (*(a2 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a2;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);
    v10 = v27;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v13 = 136315394;
      if (a3)
      {
        v16 = 0x656C756465686353;
      }

      else
      {
        v16 = 0x6E616D6544206E4FLL;
      }

      v17 = sub_10021145C(v16, 0xE900000000000064, &v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      v18 = _convertErrorToNSError(_:)();
      *(v13 + 14) = v18;
      *v14 = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Overall %s Trusted Contacts preflight activity failed: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);
    }

    v19 = v10;
    a4(v10);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAB8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      if (a3)
      {
        v25 = 0x656C756465686353;
      }

      else
      {
        v25 = 0x6E616D6544206E4FLL;
      }

      v26 = sub_10021145C(v25, 0xE900000000000064, &v27);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Overall %s Trusted Contacts preflight activity completed successfully.", v23, 0xCu);
      sub_10000839C(v24);
    }

    a4(0);
  }
}

uint64_t sub_1002ADA18()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactsPreflightScheduler(uint64_t a1)
{
  result = qword_1003E62E8;
  if (!qword_1003E62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002ADB24(uint64_t a1)
{
  sub_100260880(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002ADC10()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002ADC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DependencyRegistry.Entry();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E1198, &qword_100344650);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E03C0, &unk_100343DA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0400, &qword_100344870);
  Dependency.init(dependencyId:config:)();
  v8 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue;
  *(a2 + v8) = [objc_allocWithZone(NSOperationQueue) init];
  v9 = (a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
  v14[1] = type metadata accessor for InheritancePreflightHealthCheck(0);
  sub_100005814(&qword_1003E63F8, qword_100348878);
  *v9 = String.init<A>(describing:)();
  v9[1] = v10;
  *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) = a1;
  [*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue) setMaxConcurrentOperationCount:1];
  type metadata accessor for DependencyRegistry();
  v11 = sub_100016034(0, &unk_1003E6400, AAPreferences_ptr);
  v12 = [objc_allocWithZone(AAPreferences) init];
  v7[3] = v11;
  *v7 = v12;
  (*(v5 + 104))(v7, enum case for DependencyRegistry.Entry.exact(_:), v4);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  (*(v5 + 8))(v7, v4);
  return a2;
}

uint64_t sub_1002AE048()
{
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  v1 = type metadata accessor for CustodianPreflightHealthCheck(0);
  swift_allocObject();
  v12 = &off_1003A7598;
  v13 = &off_1003A7510;
  v11 = v1;
  *&v10 = sub_1000A9560();
  v2 = type metadata accessor for CustodianPreflightHealthCheckSequoiaB(0);
  v3 = swift_allocObject();

  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();

  sub_100040600(&v10, (v3 + 16));
  *(v0 + 56) = v2;
  *(v0 + 64) = &off_1003A7AD0;
  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(type metadata accessor for AnalyticsRTCReporter());
  v5 = [v4 init];
  v6 = type metadata accessor for InheritancePreflightHealthCheck(0);
  v7 = swift_allocObject();
  v8 = sub_1002ADC54(v5, v7);
  *(v0 + 96) = v6;
  *(v0 + 104) = &off_1003ACF98;
  *(v0 + 72) = v8;
  return v0;
}

uint64_t sub_1002AE1F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002AE234()
{
  v1[31] = v0;
  v2 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v1[38] = v4;
  v1[39] = *(v4 - 8);
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE3FC, 0, 0);
}

uint64_t sub_1002AE3FC()
{
  v49 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  v5 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController;
  v6 = *(v2 + 16);
  v6(v1, v4 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController, v3);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v1, v3);
  v8 = *(*sub_1000080F8((v0 + 64), *(v0 + 88)) + 16);
  *(v0 + 224) = 0;
  v9 = [v8 walrusStatus:v0 + 224];
  if (*(v0 + 224))
  {
    swift_willThrow();
    sub_10000839C((v0 + 64));
LABEL_18:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAB8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v48);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - Walrus is disabled, skipping remaining checks", v34, 0xCu);
      sub_10000839C(v35);
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v48);
      _os_log_impl(&_mh_execute_header, v36, v37, "%s - Also, tearing down any left over Walrus CFUs", v38, 0xCu);
      sub_10000839C(v39);
    }

    sub_1002B03AC();
    sub_1002B0888();

    v40 = *(v0 + 8);
LABEL_29:

    return v40();
  }

  v10 = v9;
  sub_10000839C((v0 + 64));
  if (v10 != 1)
  {
    goto LABEL_18;
  }

  v45 = v4;
  v11 = *(v0 + 296);
  v46 = *(v0 + 304);
  v47 = *(v0 + 320);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  (*(v12 + 16))(v11, *(v0 + 248) + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager, v13);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v11, v13);
  sub_1000080F8((v0 + 104), *(v0 + 128));
  v14 = AAFollowUpIdentifierADPUserMissingHealthyCustodian;
  v15 = sub_1003090E8(_swiftEmptyArrayStorage);
  *(v0 + 16) = v14;
  *(v0 + 24) = v15;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0;
  sub_1002D3AB8(v0 + 16);

  sub_10000839C((v0 + 104));
  v6(v47, v45 + v5, v46);
  Dependency.wrappedValue.getter();
  v7(v47, v46);
  sub_1000080F8((v0 + 144), *(v0 + 168));
  sub_10013B040();
  sub_10000839C((v0 + 144));
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = v20;
    *v19 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v19 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v48);
    _os_log_impl(&_mh_execute_header, v17, v18, "    %s - Walrus is enabled, proceeding     with checking for passcode presence and other recovery factors.", v19, 0xCu);
    sub_10000839C(v20);
  }

  v21 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 256);
  (*(v21 + 16))(v22, *(v0 + 248) + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__deviceState, v23);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v22, v23);
  v24 = [objc_allocWithZone(AKDevice) init];
  LODWORD(v23) = [v24 isProtectedWithPasscode];

  sub_10000839C((v0 + 184));
  if (!v23)
  {
    sub_1002AEF38();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v43 = 136315138;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v48);
      _os_log_impl(&_mh_execute_header, v41, v42, "    %s - No passcode.", v43, 0xCu);
      sub_10000839C(v44);
    }

    type metadata accessor for AAError(0);
    *(v0 + 240) = -4407;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v40 = *(v0 + 8);
    goto LABEL_29;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48 = v28;
    *v27 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v27 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v48);
    _os_log_impl(&_mh_execute_header, v25, v26, "    %s - escrow record is available or could not be verified,     proceeding to check other recovery factors availability.", v27, 0xCu);
    sub_10000839C(v28);
  }

  v29 = swift_task_alloc();
  *(v0 + 328) = v29;
  *v29 = v0;
  v29[1] = sub_1002AED8C;

  return sub_1002AF460();
}

uint64_t sub_1002AED8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1002AEF38()
{
  v1 = v0;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100008D04(v10, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v20 = v1;
    v21 = v11;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v23);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - device has NO passcode, posting CFU to create and verify passcode", v14, 0xCu);
    sub_10000839C(v15);

    v1 = v20;
  }

  else
  {
  }

  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpFollowUpHandler, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [result contextForPrimaryAccount];

    sub_100260F04(0, v18);
    sub_10000839C(v22);
    return sub_10000839C(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002AF480()
{
  v10 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v4 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - checking available recovery factors.", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100241EC8;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000016, 0x8000000100333280, sub_1002B0C64, v7, &type metadata for () + 8);
}

uint64_t sub_1002AF694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - v6;
  v8 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-1] - v10;
  (*(v9 + 16))(&v16[-1] - v10, a2 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__recoveryFactorsController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  sub_1000080F8(v16, v16[3]);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v5 + 32))(v13 + v12, v7, v4);

  sub_1002A3A80(sub_1002B0D3C, v13);

  return sub_10000839C(v16);
}

uint64_t sub_1002AF8DC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v6 = 136315394;
      if (qword_1003D7E58 != -1)
      {
        swift_once();
      }

      *(v6 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v16);
      *(v6 + 12) = 2080;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_10021145C(v7, v8, &v16);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s - error checking recovery factors: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_18;
  }

  if (a1 != 1)
  {
    sub_1002B03AC();
    sub_1002B0888();
LABEL_18:
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }

  sub_1002AFC94();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAB8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "    %s - No recovery factors.", v13, 0xCu);
    sub_10000839C(v14);
  }

  type metadata accessor for AAError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001530B4();
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_100005814(&qword_1003DABC0, &unk_100342840);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002AFC94()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = type metadata accessor for TrustedContactUserNotification(0);
  __chkstk_darwin(v6);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - no recovery factors found, posting CFU to add recovery factors", v12, 0xCu);
    sub_10000839C(v13);
  }

  sub_1002B03AC();
  sub_1002B0888();
  swift_storeEnumTagMultiPayload();
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  sub_1000080F8(v16, v16[3]);
  sub_1002CA150(v17);
  sub_1002D2E28(v17, 0, 0);
  sub_1000C5460(v17);
  sub_1002A6354(v8);
  return sub_10000839C(v16);
}

uint64_t sub_1002AFF8C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpController;
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__deviceState;
  v6 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__recoveryFactorsController;
  v8 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpFollowUpHandler;
  v10 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WalrusStateHandler(uint64_t a1)
{
  result = qword_1003E6460;
  if (!qword_1003E6460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B01B8(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &qword_1003D9A28, &qword_1003D9880, &unk_10033F010);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003E5048, &qword_1003DF5B0, &qword_100343688);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1002B03AC()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - v4;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39[0] = v10;
    *v9 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v9 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v39);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - trying to tear down existing AA CFUs.", v9, 0xCu);
    sub_10000839C(v10);
  }

  v25 = OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager;
  v11 = *(v3 + 16);
  v11(v5, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__notificationManager, v2);
  Dependency.wrappedValue.getter();
  v24 = *(v3 + 8);
  v24(v5, v2);
  v23[1] = v3 + 8;
  sub_1000080F8(v35, v36);
  v12 = AAFollowUpIdentifierCustodianWalrusRemoved;
  v13 = sub_1003090E8(_swiftEmptyArrayStorage);
  v39[0] = v12;
  v39[1] = v13;
  memset(&v39[2], 0, 24);
  v40 = 0;
  sub_1002D3AB8(v39);

  sub_10000839C(v35);
  v14 = v25;
  v11(v5, v1 + v25, v2);
  Dependency.wrappedValue.getter();
  v15 = v24;
  v24(v5, v2);
  sub_1000080F8(v31, v32);
  v16 = AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing;
  v17 = sub_1003090E8(_swiftEmptyArrayStorage);
  v35[0] = v16;
  v35[1] = v17;
  v36 = 0;
  v37 = 0;
  v35[2] = 0;
  v38 = 0;
  sub_1002D3AB8(v35);

  sub_10000839C(v31);
  v11(v5, v1 + v14, v2);
  Dependency.wrappedValue.getter();
  v15(v5, v2);
  sub_1000080F8(v27, v28);
  v18 = AAFollowUpIdentifierCustodianWalrusNoLiveness;
  v19 = sub_1003090E8(_swiftEmptyArrayStorage);
  v31[0] = v18;
  v31[1] = v19;
  v32 = 0;
  v33 = 0;
  v31[2] = 0;
  v34 = 0;
  sub_1002D3AB8(v31);

  sub_10000839C(v27);
  v11(v5, v1 + v25, v2);
  Dependency.wrappedValue.getter();
  v15(v5, v2);
  sub_1000080F8(v26, v26[3]);
  v20 = AAFollowUpIdentifierADPUserMissingHealthyCustodian;
  v21 = sub_1003090E8(_swiftEmptyArrayStorage);
  v27[0] = v20;
  v27[1] = v21;
  v28 = 0;
  v29 = 0;
  v27[2] = 0;
  v30 = 0;
  sub_1002D3AB8(v27);

  return sub_10000839C(v26);
}

uint64_t sub_1002B0888()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    if (qword_1003D7E58 != -1)
    {
      swift_once();
    }

    *(v9 + 4) = sub_10021145C(qword_1003FA970, *algn_1003FA978, v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - trying to tear down existing CDP state CFUs.", v9, 0xCu);
    sub_10000839C(v10);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd18WalrusStateHandler__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  sub_1002611E8();
  return sub_10000839C(v13);
}

uint64_t sub_1002B0C6C()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002B0D3C(uint64_t a1, char a2)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_1002AF8DC(a1, a2 & 1);
}

void sub_1002B0DCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;

    sub_1000BCD5C(0, 0, v5, &unk_100348980, v16);
  }

  else
  {
    sub_10030FF34(0, v7, v8, v9, v10, v11, v12, v13, v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Lost reference to self. Aborting XPC activity for Maintenance Activities", v20, 2u);
    }
  }
}

uint64_t sub_1002B0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002B0FE0, 0, 0);
}

uint64_t sub_1002B0FE0()
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MaintenanceActivityProvider - Performing maintenance...", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1002B1130;

  return sub_1002B2700();
}

uint64_t sub_1002B1130(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002B1230, 0, 0);
}

uint64_t sub_1002B1230()
{
  v22 = v0;
  if (!*(*(v0 + 48) + 16))
  {

    v1 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v1, v9))
    {
LABEL_7:

      goto LABEL_9;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v1, v9, "MaintenanceActivityProvider - Maintenance succeeded.", v10, 2u);
LABEL_6:

    goto LABEL_7;
  }

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v5 = Dictionary.description.getter();
    v7 = v6;

    v8 = sub_10021145C(v5, v7, &v21);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "MaintenanceActivityProvider - Overall Maintenance Activities failed: %s", v3, 0xCu);
    sub_10000839C(v4);

    goto LABEL_6;
  }

LABEL_9:
  sub_10030FF34(v11, v12, v13, v14, v15, v16, v17, v18, v21);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1002B1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v5 = sub_100005814(&qword_1003E6728, &qword_1003489B0);
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002B1554, 0, 0);
}

uint64_t sub_1002B1554()
{
  v1 = *(*(v0 + 208) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v26 = **(v0 + 200);
    do
    {
      v27 = v2;
      v5 = *(v0 + 224);
      v6 = *(v0 + 232);
      sub_100040738(v3, v0 + 16);
      sub_1000080F8((v0 + 16), *(v0 + 40));
      DynamicType = swift_getDynamicType();
      v8 = *(v0 + 48);
      *(v0 + 176) = DynamicType;
      *(v0 + 184) = v8;
      sub_100005814(&qword_1003E6730, &qword_1003489C8);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v6, 1, 1, v12);
      sub_100040738(v0 + 16, v0 + 56);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v9;
      v14[5] = v11;
      sub_10003E950((v0 + 56), (v14 + 6));
      sub_1000BF7F8(v6, v5);
      v16 = (*(v13 + 48))(v5, 1, v12);
      v17 = *(v0 + 224);
      if (v16 == 1)
      {
        sub_100008D3C(*(v0 + 224), &qword_1003DABF0, &qword_10033F8A0);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v17, v12);
        if (*v15)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1003489D0;
      *(v21 + 24) = v14;

      sub_100005814(&qword_1003E6720, &qword_100348998);
      v22 = v19 | v18;
      if (v19 | v18)
      {
        v22 = v0 + 96;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v18;
        *(v0 + 120) = v19;
      }

      v4 = *(v0 + 232);
      *(v0 + 128) = 1;
      *(v0 + 136) = v22;
      *(v0 + 144) = v26;
      swift_task_create();

      sub_100008D3C(v4, &qword_1003DABF0, &qword_10033F8A0);
      sub_10000839C((v0 + 16));
      v3 += 40;
      v2 = v27 - 1;
    }

    while (v27 != 1);
  }

  sub_100005814(&qword_1003E6720, &qword_100348998);
  TaskGroup.makeAsyncIterator()();
  v23 = swift_task_alloc();
  *(v0 + 264) = v23;
  *v23 = v0;
  v23[1] = sub_1002B1918;
  v24 = *(v0 + 240);

  return TaskGroup.Iterator.next(isolation:)(v0 + 152, 0, 0, v24);
}

uint64_t sub_1002B1918()
{

  return _swift_task_switch(sub_1002B1A14, 0, 0);
}

uint64_t sub_1002B1A14()
{
  v2 = v0[19];
  v1 = v0[20];
  if (v1)
  {
    v3 = v0[21];
    if (!v3)
    {
LABEL_21:

      v26 = swift_task_alloc();
      v0[33] = v26;
      *v26 = v0;
      v26[1] = sub_1002B1918;
      v23 = v0[30];
      v20 = (v0 + 19);
      v21 = 0;
      v22 = 0;

      return TaskGroup.Iterator.next(isolation:)(v20, v21, v22, v23);
    }

    v4 = v0[27];
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    v0[24] = *v4;
    *v4 = 0x8000000000000000;
    v7 = sub_1003084DC(v2, v1);
    v9 = *(v6 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v8;
      if (*(v6 + 24) < v12)
      {
        sub_1002CE8F0(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_1003084DC(v2, v1);
        if ((v4 & 1) != (v13 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_14:
        if (v4)
        {
LABEL_15:
          v16 = v7;

          v17 = v0[24];
          *(v17[7] + 8 * v16) = v3;

LABEL_20:
          *v0[27] = v17;
          goto LABEL_21;
        }

LABEL_18:
        v17 = v0[24];
        v17[(v7 >> 6) + 8] |= 1 << v7;
        v19 = (v17[6] + 16 * v7);
        *v19 = v2;
        v19[1] = v1;
        *(v17[7] + 8 * v7) = v3;

        v24 = v17[2];
        v11 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v11)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v20, v21, v22, v23);
        }

        v17[2] = v25;
        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v18 = v7;
    sub_1002D143C();
    v7 = v18;
    if (v4)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  (*(v0[31] + 8))(v0[32], v0[30]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002B1CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1002B1CF0, 0, 0);
}

uint64_t sub_1002B1CF0()
{
  v11 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 48) = sub_100008D04(v1, qword_1003FAAB8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Maintenance Activity - %s succeeded.", v6, 0xCu);
    sub_10000839C(v7);
  }

  sub_1000080F8(*(v0 + 40), *(*(v0 + 40) + 24));
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1002B1EBC;

  return sub_100242C38();
}

uint64_t sub_1002B1EBC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1002B204C;
  }

  else
  {
    v2 = sub_1002B1FD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B1FD0()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  *(v0[2] + 16) = 0;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1002B204C()
{
  v15 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(v4, v3, &v14);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Maintenance Activity - %s failed %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[8];
  v10 = v0[4];
  v11 = v0[2];
  *v11 = v0[3];
  v11[1] = v10;
  *(v0[2] + 16) = v9;
  v13 = v0[1];

  return v13();
}

uint64_t sub_1002B222C()
{

  v1 = OBJC_IVAR____TtC13appleaccountd27MaintenanceActivityProvider__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MaintenanceActivityProvider(uint64_t a1)
{
  result = qword_1003E6638;
  if (!qword_1003E6638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B2330(uint64_t a1)
{
  sub_1001CFA84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B23D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002B2418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_1002B0FC0(a1, v4, v5, v7, v6);
}

uint64_t sub_1002B24D8(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1002B25CC;

  return v5(v2 + 16);
}

uint64_t sub_1002B25CC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1002B2720()
{
  v0[2] = &_swiftEmptyDictionarySingleton;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Maintenance Activity - Starting grouped tasks", v4, 2u);
  }

  v5 = v0[3];

  sub_100005814(&qword_1003E6720, &qword_100348998);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 2;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1002B28EC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1002B28EC()
{

  return _swift_task_switch(sub_1002B2A04, 0, 0);
}

uint64_t sub_1002B2A04(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished all Maintenance Activities.", v4, 2u);
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 8);

  return v6(v5);
}

uint64_t sub_1002B2AD8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000EF88;

  return sub_1002B1440(a1, a2, v7, v6);
}

uint64_t sub_1002B2B8C()
{
  swift_unknownObjectRelease();

  sub_10000839C((v0 + 48));

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1002B2BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EF88;

  return sub_1002B1CCC(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1002B2C98()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002B2CD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000082A8;

  return sub_1002B24D8(a1, v4);
}

uint64_t sub_1002B2D88()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider);
  }

  else
  {
    v3 = sub_1002B2FEC();
    type metadata accessor for MaintenanceActivityProvider(0);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    Dependency.init(dependencyId:config:)();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002B2E48()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MaintenanceActivityScheduler(uint64_t a1)
{
  result = qword_1003E6770;
  if (!qword_1003E6770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B2F54(uint64_t a1)
{
  sub_100260880(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1002B2FEC()
{
  v0 = type metadata accessor for ProtoAccountCleanupActivity(0);
  v1 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF6B8, &qword_100346BB0);
  Dependency.init(dependencyId:config:)();
  v14[3] = v0;
  v14[4] = &off_1003B0B60;
  v14[0] = v1;
  v2 = sub_100305DA0(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100305DA0((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = sub_10003E968(v14, v0);
  __chkstk_darwin(v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v12 = v0;
  v13 = &off_1003B0B60;
  *&v11 = v9;
  v2[2] = v4 + 1;
  sub_10003E950(&v11, &v2[5 * v4 + 4]);
  sub_10000839C(v14);
  return v2;
}

double sub_1002B31D4()
{
  v0 = objc_opt_self();
  if ([v0 isCustomMaintenanceIntervalEnabled] && objc_msgSend(objc_opt_self(), "isInternalBuild"))
  {
    v1 = [v0 customMaintenanceIntervalMinutes];
    if (v1 <= 0)
    {
      v2 = 10;
    }

    else
    {
      v2 = v1;
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Maintenance interval - Custom %ld mins", v6, 0xCu);
    }

    return v2 * 60.0;
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Using Maintenance Interval - One Day", v11, 2u);
    }

    return 86400.0;
  }
}

void *sub_1002B33F4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10031B178(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1002B34B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id), uint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  if (a2 && (v12 = sub_1002B33F4(a4, a2)) != 0)
  {
    v13 = v12;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v23 = v13;

    v15 = a9;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v18 = 136315650;
      *(v18 + 4) = sub_10021145C(a7, a8, &v25);
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v19 = v15;
      *(v18 + 22) = 1024;
      v21 = v15;
      v22 = [v23 BOOLValue];

      *(v18 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Recipient %s has device capable of %@: %{BOOL}d", v18, 0x1Cu);
      sub_100083380(v19);

      sub_10000839C(v20);
    }

    else
    {
    }

    a5([v23 BOOLValue]);
  }

  else
  {
    a5(0);
  }
}

uint64_t sub_1002B3738(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    sub_1002B646C(&qword_1003E6980, &unk_1003E6930, AAMessagingDestination_ptr);
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a4;
  v7(a2, v5, a4);
}

void sub_1002B3838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000E9F18();
  if (v16)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA40);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_10005A40C(v15, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "error building destination: %@", v20, 0xCu);
      sub_100083380(v21);
    }

    swift_errorRetain();
    sub_1001A8DEC(v15);
    sub_10005A40C(v15, 1);
    sub_10005A40C(v15, 1);
  }

  else
  {
    v43 = v12;
    v44 = a6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA40);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Destination is valid!", v26, 2u);
    }

    v27 = sub_1002B4204(a1, type metadata accessor for InheritanceInvitationMessage, &unk_1003E6950, type metadata accessor for InheritanceInvitationMessage, &unk_1003451F4);
    if (v28 >> 60 == 15)
    {
      v29 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v30 = *(a7 + 16);
      v41 = v27;
      v42 = v28;
      v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1003431D0;
      *(v32 + 32) = v15;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v33 = v15;
      v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (a5)
      {
        a5 = String._bridgeToObjectiveC()();
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v45[0] = 0;
      v36 = [v30 sendMessage:v31.super.isa destinations:v34.super.isa sendFromHandleUri:a5 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v45];

      v37 = v45[0];
      if (v36)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        sub_100015D58(v41, v42);

        (*(v43 + 8))(v14, v11);
        sub_1001A8DEC(0);
        sub_10005A40C(v15, 0);
        return;
      }

      v39 = v45[0];
      v29 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v41, v42);
    }

    swift_errorRetain();
    sub_1001A8DEC(v29);
    sub_10005A40C(v15, 0);
  }
}

uint64_t sub_1002B3F8C(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  a2(0);
  sub_1002B5150(a3, a4, a5);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v9;
}

uint64_t sub_1002B4204(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  a2(0);
  sub_1002B5150(a3, a4, a5);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v9;
}

void sub_1002B44B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(void), uint64_t a9, void (*a10)(id, void (*)(void), uint64_t))
{
  v49 = a7;
  v50 = a5;
  v48 = a4;
  v51 = a1;
  v13 = a9;
  v12 = a10;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000E9F18();
  if (v19)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_10005A40C(v18, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "error building destination: %@", v23, 0xCu);
      sub_100083380(v24);
    }

    swift_errorRetain();
    a10(v18, a8, a9);
    sub_10005A40C(v18, 1);
    sub_10005A40C(v18, 1);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA40);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = a6;
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Destination is valid!", v29, 2u);
    }

    v30 = sub_1002B4204(v51, type metadata accessor for InheritanceAccessKeyMessage, &qword_1003E21A8, type metadata accessor for InheritanceAccessKeyMessage, &unk_100345000);
    if (v31 >> 60 == 15)
    {
      v32 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v43 = a10;
      v44 = v15;
      v47 = a8;
      v45 = *(v49 + 16);
      v49 = v30;
      v51 = v31;
      v33.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1003431D0;
      *(v34 + 32) = v18;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v35 = v18;
      v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v46 = a9;
      if (v50)
      {
        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v52[0] = 0;
      v39 = [v45 sendMessage:v33.super.isa destinations:v36.super.isa sendFromHandleUri:v37 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v52];

      v40 = v52[0];
      if (v39)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        sub_100015D58(v49, v51);

        (*(v44 + 8))(v17, v14);
        v47(0);
        sub_10005A40C(v18, 0);
        return;
      }

      v42 = v52[0];
      v32 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v49, v51);
      v13 = v46;
      a8 = v47;
      v12 = v43;
    }

    swift_errorRetain();
    v12(v32, a8, v13);
    sub_10005A40C(v18, 0);
  }
}

void sub_1002B4B0C(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void, uint64_t, const char *), uint64_t a9)
{
  v58 = a7;
  v59 = a5;
  v60 = a1;
  v12 = a9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E9F18();
  if (v18)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_10005A40C(v17, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "error building destination: %@", v22, 0xCu);
      sub_100083380(v23);
    }

    swift_errorRetain();
    sub_1001E0610(v17, a8, a9, v25, v26, v27, v28, v29, v52);
    sub_10005A40C(v17, 1);
    sub_10005A40C(v17, 1);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA40);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v57 = a4;
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Destination is valid!", v33, 2u);
    }

    v34 = sub_1002B4204(v60, type metadata accessor for InheritanceInvitationResponseMessage, &qword_1003E2360, type metadata accessor for InheritanceInvitationResponseMessage, &unk_1003453FC);
    if (v35 >> 60 == 15)
    {
      v36 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v53 = v14;
      v54 = *(v58 + 16);
      v55 = a6;
      v57 = a8;
      v58 = v34;
      v60 = v35;
      v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1003431D0;
      *(v38 + 32) = v17;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v39 = v17;
      v40.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v56 = a9;
      if (v59)
      {
        v41 = String._bridgeToObjectiveC()();
      }

      else
      {
        v41 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v61[0] = 0;
      v43 = [v54 sendMessage:v37.super.isa destinations:v40.super.isa sendFromHandleUri:v41 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v61];

      v44 = v61[0];
      if (v43)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
        sub_100015D58(v58, v60);

        (*(v53 + 8))(v16, v13);
        v57(0);
        sub_10005A40C(v17, 0);
        return;
      }

      v46 = v61[0];
      v36 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v58, v60);
      v12 = v56;
      a8 = v57;
    }

    swift_errorRetain();
    sub_1001E0610(v36, a8, v12, v47, v48, v49, v50, v51, v52);
    sub_10005A40C(v17, 0);
  }
}

uint64_t sub_1002B5150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002B5198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v49 = a4;
  v50 = a5;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100083AA0(a8, a9);
  sub_100083AA0(a8, a9);
  sub_100083AA0(a8, a9);
  v17 = sub_1000E9F18();
  if ((v18 & 1) == 0)
  {
    v47 = v14;
    v48 = a6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA40);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Destination is valid!", v28, 2u);
    }

    v29 = sub_1002B4204(a1, type metadata accessor for InheritanceAccessKeyMessage, &qword_1003E21A8, type metadata accessor for InheritanceAccessKeyMessage, &unk_100345000);
    if (v30 >> 60 == 15)
    {
      v31 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v43 = *(a7 + 16);
      v45 = v29;
      v46 = v30;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1003431D0;
      *(v32 + 32) = v17;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v33 = v17;
      v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v50)
      {
        v35 = String._bridgeToObjectiveC()();
      }

      else
      {
        v35 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      v36 = Set._bridgeToObjectiveC()().super.isa;
      v51[0] = 0;
      v37 = isa;
      v38 = [v43 sendMessage:isa destinations:v34.super.isa sendFromHandleUri:v35 responseIdentifier:0 fireAndForget:0 requiredCapabilities:v36 lackingCapabilities:0 error:v51];

      v39 = v51[0];
      if (v38)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        sub_100015D58(v45, v46);

        (*(v47 + 8))(v16, v13);
        if (a8)
        {

          a8(0);
          sub_100083B0C(a8, a9);
          sub_10005A40C(v17, 0);
          sub_100083B0C(a8, a9);
          sub_100083B0C(a8, a9);
        }

        else
        {
          sub_10005A40C(v17, 0);
        }

        return;
      }

      v41 = v51[0];
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v45, v46);
    }

    sub_100083AA0(a8, a9);
    swift_errorRetain();
    sub_1001E061C(v31, a8, a9);
    sub_10005A40C(v17, 0);

    sub_100083B0C(a8, a9);
    sub_100083B0C(a8, a9);
    sub_100083B0C(a8, a9);
    return;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA40);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  sub_10005A40C(v17, 1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = _convertErrorToNSError(_:)();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "error building destination: %@", v22, 0xCu);
    sub_100083380(v23);
  }

  sub_100083AA0(a8, a9);
  sub_100135D08(v17, 1);
  sub_1001E061C(v17, a8, a9);
  sub_10005A40C(v17, 1);
  sub_10005A40C(v17, 1);

  sub_100083B0C(a8, a9);
  sub_100083B0C(a8, a9);

  sub_100083B0C(a8, a9);
}

void sub_1002B5858(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v47 = a7;
  v48 = a5;
  v49 = a1;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000E9F18();
  if (v17)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_10005A40C(v16, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "error building destination: %@", v21, 0xCu);
      sub_100083380(v22);
    }

    swift_errorRetain();
    sub_1001E039C(v16, a8);
    sub_10005A40C(v16, 1);
    sub_10005A40C(v16, 1);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v46 = a4;
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Destination is valid!", v27, 2u);
    }

    v28 = sub_1002B4204(v49, type metadata accessor for InheritanceInvitationMessage, &unk_1003E6950, type metadata accessor for InheritanceInvitationMessage, &unk_1003451F4);
    if (v29 >> 60 == 15)
    {
      v30 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v42 = v13;
      v43 = *(v47 + 16);
      v44 = a6;
      v46 = a8;
      v47 = v28;
      v49 = v29;
      v31.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1003431D0;
      *(v32 + 32) = v16;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v33 = v16;
      v34.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v45 = a9;
      if (v48)
      {
        v35 = String._bridgeToObjectiveC()();
      }

      else
      {
        v35 = 0;
      }

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1002B646C(&qword_1003E6940, &qword_1003DEC20, AAMessagingCapability_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v50[0] = 0;
      v37 = [v43 sendMessage:v31.super.isa destinations:v34.super.isa sendFromHandleUri:v35 responseIdentifier:0 fireAndForget:0 requiredCapabilities:isa lackingCapabilities:0 error:v50];

      v38 = v50[0];
      if (v37)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
        sub_100015D58(v47, v49);

        (*(v42 + 8))(v15, v12);
        sub_1001E039C(0, v46);
        sub_10005A40C(v16, 0);
        return;
      }

      v40 = v50[0];
      v30 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v47, v49);
      a8 = v46;
    }

    swift_errorRetain();
    sub_1001E039C(v30, a8);
    sub_10005A40C(v16, 0);
  }
}

uint64_t sub_1002B5E98(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  v11 = sub_1000E9F18();
  v12 = v11;
  if (v13)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10005A40C(v12, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "error building destination: %@", v17, 0xCu);
      sub_100083380(v18);
    }

    a5[2](a5, 0);
    sub_10005A40C(v12, 1);
    sub_10005A40C(v12, 1);
  }

  else
  {
    v21 = qword_1003D7F20;
    v38 = v11;
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA40);

    v23 = a3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = a4;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_10021145C(a1, a2, aBlock);
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Look up of Recipient %s for device capable of %@", v26, 0x16u);
      sub_100083380(v27);
      a4 = v37;

      sub_10000839C(v28);
    }

    v30 = *(a4 + 16);
    sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1003431D0;
    *(v31 + 32) = v38;
    sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
    v32 = v38;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = sub_1002B63BC;
    v34[4] = v10;
    v34[5] = a1;
    v34[6] = a2;
    v34[7] = v23;
    aBlock[4] = sub_1002B6424;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B3738;
    aBlock[3] = &unk_1003B2C20;
    v35 = _Block_copy(aBlock);
    sub_100135D08(v12, 0);

    v36 = v23;

    [v30 fetchCapability:v36 destinations:isa completion:v35];
    sub_10005A40C(v12, 0);
    _Block_release(v35);

    sub_10005A40C(v12, 0);
  }
}

uint64_t sub_1002B6384()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002B63D4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002B6454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B646C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100016034(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002B64E0(uint64_t a1, unint64_t a2)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Checking if from Sender Handle is a Known Sender", v7, 2u);
  }

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    [v8 connectToDaemonWithLaunch:0 capabilities:kFZListenerCapChats | kFZListenerCapManageStatus | kFZListenerCapAccounts | kFZListenerCapIDQueries | (kFZListenerCapMessageHistory | kFZListenerCapFileProvider) | kFZListenerCapFileTransfers | kFZListenerCapOnDemandChatRegistry blockUntilConnected:1];
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result activeIMessageAccount];

    v13 = objc_allocWithZone(IMHandle);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 initWithAccount:v14 ID:v15 alreadyCanonical:0];

    v17 = [objc_opt_self() sharedRegistry];
    v18 = [v17 chatWithHandle:v16];

    v19 = v14;
    v20 = v18;
    v21 = v16;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412802;
      *(v24 + 4) = v19;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v20;
      *v25 = v19;
      v25[1] = v20;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      v25[2] = v21;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "IMAccount %@\nIMChat: %@\nIMHandle: %@", v24, 0x20u);
      sub_100005814(&unk_1003D9140, &qword_10033E640);
      swift_arrayDestroy();
    }

    v29 = [v20 isFiltered];

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_10021145C(a1, a2, &v34);
      *(v32 + 12) = 1024;
      *(v32 + 14) = v29 == 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Handle %s is known? %{BOOL}d", v32, 0x12u);
      sub_10000839C(v33);
    }

    else
    {
    }

    return (v29 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B6998(void *a1)
{
  v19 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003E6B88, &qword_100348C00);
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v23 = v1;
  v24 = a1;
  v11 = v1 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_1000080F8(a1, a1[3]);
  sub_1002B76C8();
  v12 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    v13 = v23;
    type metadata accessor for ShareMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v5;
    v14 = v21;
    v31 = 0;
    sub_1000E5968();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v23;
    *(v23 + 16) = v32;
    v30 = 1;
    sub_1002B771C(&unk_1003DD720, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 32))(v13 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID, v7, v15);
    v29 = 2;
    sub_1002B771C(&qword_1003E21D0, type metadata accessor for CloudShareInfo, &unk_100347808);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001D9D08(v4, v13 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo);
    v28 = 3;
    *(v13 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_finalizeSetup) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for AnalyticsContextType(0);
    v27 = 4;
    sub_1002B771C(&qword_1003DCE08, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v25;
    LOBYTE(v15) = v26;
    (*(v14 + 8))(v10, v8);
    v18 = v13 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow;
    *v18 = v17;
    *(v18 + 8) = v15;
  }

  sub_10000839C(v24);
  return v13;
}

uint64_t sub_1002B6EF0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x666E496572616873;
  v4 = 0x657A696C616E6966;
  if (v1 != 3)
  {
    v4 = 2003790950;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6169646F74737563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002B6F94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002B7B74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002B6FBC(uint64_t a1)
{
  v2 = sub_1002B76C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002B6FF8(uint64_t a1)
{
  v2 = sub_1002B76C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002B7034()
{
  v1 = OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1002543EC(v0 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo);

  return swift_deallocClassInstance();
}

uint64_t sub_1002B7108(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CloudShareInfo(319);
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

uint64_t sub_1002B71F4(void *a1)
{
  v16 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E6B98, &qword_100348C08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  sub_1000080F8(a1, a1[3]);
  sub_1002B76C8();
  v11 = v18;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = *(v11 + 16);
  v26 = 0;
  sub_1000E59BC();
  v12 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v19 = v8;
  (*(v17 + 16))(v6, v11 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_custodianID, v4);
  v25 = 1;
  sub_1002B771C(&unk_1003DDA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v17 + 8))(v6, v4);
  sub_1000E4E34(v11 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_shareInfo, v3);
  v24 = 2;
  sub_1002B771C(&qword_1003E21C0, type metadata accessor for CloudShareInfo, &unk_1003477E0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1002543EC(v3);
  v14 = v19;
  v23 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = *(v11 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow + 8);
  v20 = *(v11 + OBJC_IVAR____TtC13appleaccountd12ShareMessage_flow);
  v21 = v15;
  v22 = 4;
  type metadata accessor for AnalyticsContextType(0);
  sub_1002B771C(&qword_1003DCE20, type metadata accessor for AnalyticsContextType, &protocol conformance descriptor for AAAnalyticsContextType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v14 + 8))(v10, v7);
}

uint64_t sub_1002B7648@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ShareMessage(0);
  v5 = swift_allocObject();
  result = sub_1002B6998(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1002B76C8()
{
  result = qword_1003E6B90;
  if (!qword_1003E6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6B90);
  }

  return result;
}

uint64_t sub_1002B771C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B7788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CloudShareInfo(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1002B78B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CloudShareInfo(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1002B79E0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CloudShareInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002B7A70()
{
  result = qword_1003E6C38;
  if (!qword_1003E6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6C38);
  }

  return result;
}

unint64_t sub_1002B7AC8()
{
  result = qword_1003E6C40;
  if (!qword_1003E6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6C40);
  }

  return result;
}

unint64_t sub_1002B7B20()
{
  result = qword_1003E6C48;
  if (!qword_1003E6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6C48);
  }

  return result;
}

uint64_t sub_1002B7B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xEB0000000044496ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E496572616873 && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696C616E6966 && a2 == 0xED00007075746553 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003790950 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1002B7D38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PushMessage(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v34 - v8);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA40);
  sub_1002B8794(a1, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v7;
    v14 = v13;
    v35 = swift_slowAlloc();
    v37 = v35;
    v38 = 0;
    *v14 = 136315138;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v38 = 0xD000000000000025;
    v39 = 0x8000000100333440;
    v15 = [*v9 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = v38;
    v21 = v39;
    sub_1002B87F8(v9);
    v22 = sub_10021145C(v20, v21, &v37);

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "Terms push received. Processing message and posting CFU %s", v14, 0xCu);
    sub_10000839C(v35);

    v7 = v36;

    v23 = *(a1 + 32);
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_1002B87F8(v9);
    v23 = *(a1 + 32);
    if (!v23)
    {
LABEL_11:
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Can't process this message, missing altDSID or doesn't match with primary account.", v27, 2u);
      }

      return;
    }
  }

  if ((sub_1002B816C(*(a1 + 24), v23) & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = *(a1 + 8);
  if (v24 == 4)
  {
    sub_1000080F8((v2 + 56), *(v2 + 80));
    v28 = *(a1 + 16);
    v38 = AAFollowUpIdentifierVerifyTerms;
    v39 = v28;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v43 = 1;
    v29 = AAFollowUpIdentifierVerifyTerms;

    sub_1002D3AB8(&v38);
  }

  else if (v24 == 3)
  {
    sub_1002B8248(a1);
  }

  else
  {
    sub_1002B8794(a1, v7);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      v33 = qword_100348D90[v7[8]];
      sub_1002B87F8(v7);
      *(v32 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v30, v31, "TermsPushServiceDelegate process message invoked on unknown command: %ld", v32, 0xCu);
    }

    else
    {
      sub_1002B87F8(v7);
    }
  }
}

uint64_t sub_1002B816C(uint64_t a1, uint64_t a2)
{
  v5 = [*(*sub_1000080F8((v2 + 16) *(v2 + 40)) + 16)];
  if (v5 && (v6 = v5, v7 = [v5 aa_altDSID], v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1002B8248(uint64_t a1)
{
  v2 = v1;
  if (sub_1002B8474())
  {

    v4 = *(a1 + 16);
    v5 = AAFollowUpUserInfoTermsDependentAltDSID;
    *&v14[0] = AAFollowUpUserInfoTermsDependentAltDSID;
    type metadata accessor for AAFollowUpUserInfo(0);
    sub_1002B873C();
    v6 = v5;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v7 = sub_10031B060(v15), (v8 & 1) != 0))
    {
      sub_10000DB1C(*(v4 + 56) + 32 * v7, v14);
      sub_1000526B0(v15);
    }

    else
    {
      sub_1000526B0(v15);
      memset(v14, 0, sizeof(v14));
    }

    sub_1000080F8((v2 + 56), *(v2 + 80));
    v15[0] = AAFollowUpIdentifierVerifyTerms;
    v15[1] = v4;
    memset(&v15[2], 0, 24);
    v16 = 1;
    v9 = AAFollowUpIdentifierVerifyTerms;

    sub_1002D2E28(v15, sub_1002B8594, 0);

    sub_100008D3C(v14, &qword_1003D87C8, qword_100344800);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Can't process this push, it does not contain required terms additional context.", v12, 2u);
    }
  }
}

uint64_t sub_1002B8474()
{
  v1 = *(v0 + 16);
  v2 = AAFollowUpUserInfoTermsServerProvidedContext;
  v9[0] = AAFollowUpUserInfoTermsServerProvidedContext;
  type metadata accessor for AAFollowUpUserInfo(0);
  sub_1002B873C();
  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v4 = sub_10031B060(v8), (v5 & 1) != 0))
  {
    sub_10000DB1C(*(v1 + 56) + 32 * v4, v9);
    sub_1000526B0(v8);
    sub_100005814(&qword_1003DBB88, &qword_10033FC30);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000526B0(v8);
    return 0;
  }
}

void sub_1002B8594(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA40);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = _convertErrorToNSError(_:)();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to post Terms notification with error %@", v3, 0xCu);
      sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

unint64_t sub_1002B873C()
{
  result = qword_1003D8430;
  if (!qword_1003D8430)
  {
    type metadata accessor for AAFollowUpUserInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8430);
  }

  return result;
}

uint64_t sub_1002B8794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B87F8(uint64_t a1)
{
  v2 = type metadata accessor for PushMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_1002B8854()
{
  result = String._bridgeToObjectiveC()();
  qword_1003E6D18 = result;
  return result;
}

NSString sub_1002B888C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003E6D20 = result;
  return result;
}

NSString sub_1002B88C4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003E6D28 = result;
  return result;
}

SecKeyRef sub_1002B8920()
{
  if (qword_1003D7E98 != -1)
  {
    swift_once();
  }

  if (qword_1003D7E90 != -1)
  {
    swift_once();
  }

  if (qword_1003D7E88 != -1)
  {
    swift_once();
  }

  ApplePinned = SecPolicyCreateApplePinned();
  trust = 0;
  type metadata accessor for SecCertificate(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = SecTrustCreateWithCertificates(isa, ApplePinned, &trust);

  if (v2 || !trust)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error creating SecTrust from certificates, unable to generate public signing key: %d", v8, 8u);
    }

    goto LABEL_28;
  }

  error = 0;
  v3 = trust;
  if (!SecTrustEvaluateWithError(v3, &error))
  {
    v9 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_1002B9344();
      swift_allocError();
      *v10 = v9;
      v11 = qword_1003D7F20;
      v12 = v9;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = _convertErrorToNSError(_:)();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Error evaluating certificate trust, unable to generate public signing key: %@", v16, 0xCu);
        sub_100083380(v17);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100008D04(v19, qword_1003FAA40);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Certificates are not trusted, unable to generate public signing key.", v22, 2u);
      }
    }

LABEL_28:
    v4 = 0;
    goto LABEL_29;
  }

  v4 = SecTrustCopyKey(v3);

LABEL_29:
  return v4;
}

BOOL sub_1002B8DE4(__SecKey *a1)
{
  v16 = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = Data._bridgeToObjectiveC()().super.isa;
  v4 = SecKeyVerifySignature(a1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, v3, &v16);

  v5 = v16;
  if (!v16)
  {
    return v4 != 0;
  }

  type metadata accessor for CFError(0);
  sub_1002B9344();
  swift_allocError();
  *v6 = v5;
  v7 = qword_1003D7F20;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA40);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = _convertErrorToNSError(_:)();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error validating signature: %@", v12, 0xCu);
    sub_100083380(v13);
  }

  else
  {
  }

  return 0;
}

BOOL sub_1002B9014(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  if (v3)
  {
    v5 = a3[4];
    v6 = a3[5];
    sub_100015D6C(v5, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = SecCertificateCreateWithData(0, isa);

    if (!v8)
    {
LABEL_10:

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to create certificate from data.", v16, 2u);
      }

      sub_100012324(v5, v6);
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    v9 = a3 + 7;
    while (1)
    {
      v10 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100012324(v5, v6);

      if (!--v3)
      {
        break;
      }

      v11 = v9 + 2;
      v5 = *(v9 - 1);
      v6 = *v9;
      sub_100015D6C(v5, *v9);
      v12 = Data._bridgeToObjectiveC()().super.isa;
      v8 = SecCertificateCreateWithData(0, v12);

      v9 = v11;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_1002B8920();

  if (!v14)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    v14 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v19, "Unable to extract public signing key from certificate chain.", v20, 2u);
    }

    goto LABEL_21;
  }

  v17 = sub_1002B8DE4(v14);
LABEL_22:

  return v17;
}

unint64_t sub_1002B9344()
{
  result = qword_1003E6DD0;
  if (!qword_1003E6DD0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DD0);
  }

  return result;
}

uint64_t sub_1002B939C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100007D58();

  *a1 = v2;
  return result;
}

uint64_t sub_1002B93DC(uint64_t result)
{
  LODWORD(v1) = result;
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        goto LABEL_24;
      }

      v1 = &kPCSServiceBladerunner;
      v2 = kPCSServiceBladerunner;
      if (kPCSServiceBladerunner)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_15;
    }

    if (result == 2)
    {
LABEL_18:
      v2 = kPCSServiceLiverpool;
      if (!kPCSServiceLiverpool)
      {
        __break(1u);
        goto LABEL_20;
      }

LABEL_27:
      v4 = v2;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }

    if (result != 3)
    {
      goto LABEL_22;
    }

    v1 = &kPCSServicePianoMover;
    v2 = kPCSServicePianoMover;
    if (kPCSServicePianoMover)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  if (v1 <= 6)
  {
LABEL_15:
    if (v1 != 5)
    {
      goto LABEL_26;
    }

    v2 = kPCSServiceNews;
    if (kPCSServiceNews)
    {
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v1 != 7)
  {
    if (v1 == 8)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

LABEL_20:
  v2 = kPCSServiceSafari;
  if (kPCSServiceSafari)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_22:
  v2 = kPCSServiceNotes;
  if (kPCSServiceNotes)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_24:
  v2 = kPCSServiceHyperion;
  if (kPCSServiceHyperion)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_26:
  v2 = kPCSServiceSharing;
  if (kPCSServiceSharing)
  {
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B9540(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 != 5)
      {
        return 0;
      }

      v1 = &selRef_webAccessNotificationTextForKey_;
    }

    else
    {
      v2 = &selRef_webAccessNotificationTextForKey_;
      if (a1 != 8)
      {
        v2 = &selRef_confettiWebAccessNotificationTextForKey_;
      }

      if (a1 == 7)
      {
        v1 = &selRef_webAccessNotificationTextForKey_;
      }

      else
      {
        v1 = v2;
      }
    }
  }

  else
  {
    v1 = &selRef_webAccessNotificationTextForKey_;
  }

  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 *v1];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}