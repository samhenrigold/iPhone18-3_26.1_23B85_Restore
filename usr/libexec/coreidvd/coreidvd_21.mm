uint64_t sub_10022B374()
{
  *(*v1 + 1552) = v0;

  if (v0)
  {
    v2 = sub_10022B608;
  }

  else
  {
    v2 = sub_10022B488;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022B488()
{
  v1 = v0[190];
  v2 = v0[189];
  v3 = v0[188];
  v4 = v0[187];
  v5 = v0[186];

  sub_1002CCF5C(v5, v4);
  sub_10026C3AC(v3, v2, v1);

  sub_10000BE18((v0 + 31), &qword_10083E3F8, &unk_1006DBD40);

  sub_10026C3C8((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_10022B608(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received a terminal state error from Wallet. Will clear the proofing session data", v4, 2u);
  }

  v5 = v1[184];
  v6 = v1[180];
  v7 = v1[179];
  v8 = v1[177];
  v9 = v1[166];
  v10 = v1[162];

  v5(v6, v8);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v5(v7, v8);
  v1[195] = *(v9 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_cleanupProvider);

  v11 = swift_task_alloc();
  v1[196] = v11;
  *v11 = v1;
  v11[1] = sub_10022B7B8;
  v12 = v1[163];
  v13 = v1[161];

  return sub_10029E160(0, 0, v13, v10, v12, 0);
}

uint64_t sub_10022B7B8()
{

  return _swift_task_switch(sub_10022B8D0, 0, 0);
}

uint64_t sub_10022B8D0()
{
  sub_10026C3AC(v0[188], v0[189], v0[190]);
  sub_10000BE18((v0 + 31), &qword_10083E3F8, &unk_1006DBD40);

  sub_10026C3C8((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_10022BA18()
{

  return _swift_task_switch(sub_10022BB30, 0, 0);
}

uint64_t sub_10022BB30()
{

  sub_10000BE18(v0 + 168, &qword_10083E3F8, &unk_1006DBD40);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022BC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[61] = v5;
  v4[62] = *(v5 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  sub_100007224(&qword_100833A88, qword_1006BF8E0);
  v4[65] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v4[66] = v6;
  v4[67] = *(v6 - 8);
  v4[68] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v4[69] = v7;
  v4[70] = *(v7 - 8);
  v4[71] = swift_task_alloc();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v4[72] = v8;
  v4[73] = *(v8 - 8);
  v4[74] = swift_task_alloc();
  v9 = type metadata accessor for ProofingSession();
  v4[75] = v9;
  v4[76] = *(v9 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[79] = v10;
  v4[80] = *(v10 - 8);
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();

  return _swift_task_switch(sub_10022BF84, 0, 0);
}

uint64_t sub_10022BF84(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to store the provisioning data in case there is a provisioning failure.", v4, 2u);
  }

  v5 = v1[88];
  v6 = v1[80];
  v7 = v1[79];

  v8 = *(v6 + 8);
  v1[89] = v8;
  v8(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v1 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v11 = v1[57];
  v10 = v1[58];
  v1[90] = v1[9];

  sub_100031918((v1 + 2));
  v12 = swift_allocObject();
  v1[91] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = swift_allocObject();
  v1[92] = v13;
  *(v13 + 16) = sub_100269EE4;
  *(v13 + 24) = v12;

  v14 = swift_task_alloc();
  v1[93] = v14;
  v15 = sub_100007224(&qword_10083E3E0, &qword_1006DBCE0);
  *v14 = v1;
  v14[1] = sub_10022C1F8;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 51, sub_10026CBEC, v13, v15);
}

uint64_t sub_10022C1F8()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_10022CEF0;
  }

  else
  {

    *(v2 + 760) = *(v2 + 408);
    v3 = sub_10022C33C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022C33C()
{
  v103 = v0;
  result = *(v0 + 760);
  v2 = *(result + 16);
  *(v0 + 768) = v2;
  if (!v2)
  {
LABEL_34:

    v90 = *(v0 + 8);

    return v90();
  }

  v3 = 0;
  v4 = v0 + 360;
  v5 = *(v0 + 608);
  *(v0 + 776) = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_deviceInfo;
  *(v0 + 784) = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener;
  *(v0 + 896) = *(v5 + 80);
  while (1)
  {
    *(v0 + 792) = v3;
    v7 = *(v0 + 760);
    if (v3 >= *(v7 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v8 = *(v0 + 608);
    v9 = *(v8 + 16);
    v9(*(v0 + 624), v7 + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v8 + 72) * v3, *(v0 + 600));
    ProofingSession.target.getter();
    IdentityTarget.init(rawValue:)();
    if (v10)
    {
      v11 = *(v0 + 624);
      v12 = *(v0 + 616);
      v13 = *(v0 + 600);
      defaultLogger()();
      v9(v12, v11, v13);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 712);
      v98 = *(v0 + 632);
      v100 = *(v0 + 656);
      v18 = *(v0 + 624);
      v19 = *(v0 + 616);
      v20 = *(v0 + 608);
      v21 = *(v0 + 600);
      if (v16)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v102 = v23;
        *v22 = 136315138;
        v24 = ProofingSession.proofingSessionID.getter();
        v96 = v17;
        v97 = v18;
        if (v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0xE000000000000000;
        }

        v28 = *(v20 + 8);
        v28(v19, v21);
        v29 = sub_100141FE4(v26, v27, &v102);

        *(v22 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v14, v15, "unable to retrieve the target information from the proofing session with proofingSessionID -> %s", v22, 0xCu);
        sub_10000BB78(v23);

        v96(v100, v98);
        result = (v28)(v97, v21);
      }

      else
      {

        v6 = *(v20 + 8);
        v6(v19, v21);
        v17(v100, v98);
        result = (v6)(v18, v21);
      }

      goto LABEL_4;
    }

    v30 = IdentityTarget.rawValue.getter();
    if (v30 != IdentityTarget.rawValue.getter())
    {
      break;
    }

    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Attempting to store the provisioning information for the watch target", v33, 2u);
    }

    v34 = *(v0 + 784);
    v35 = *(v0 + 712);
    v36 = *(v0 + 696);
    v37 = *(v0 + 632);
    v38 = *(v0 + 480);

    v35(v36, v37);
    v39 = *(v38 + v34);
    *(v0 + 800) = v39;
    if (v39)
    {
      v39;

      v91 = swift_task_alloc();
      *(v0 + 808) = v91;
      *v91 = v0;
      v91[1] = sub_10022D484;

      return sub_1004C5A24();
    }

    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 712);
    v44 = *(v0 + 680);
    v45 = *(v0 + 632);
    v46 = *(v0 + 624);
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    if (!v42)
    {
LABEL_32:

      v88 = v44;
      v89 = v45;
      goto LABEL_33;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = v41;
    v51 = v40;
    v52 = "Unable to retrieve watch listener. Cannot Store watch provisioning data.";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v51, v50, v52, v49, 2u);

    v88 = v44;
    v89 = v45;
LABEL_33:
    v43(v88, v89);
    result = (*(v47 + 8))(v46, v48);
LABEL_4:
    v3 = *(v0 + 792) + 1;
    v4 = v0 + 360;
    if (v3 == *(v0 + 768))
    {
      goto LABEL_34;
    }
  }

  defaultLogger()();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Attempting to store the provisioning information for the phone target", v55, 2u);
  }

  v56 = *(v0 + 776);
  v57 = *(v0 + 712);
  v58 = *(v0 + 672);
  v59 = *(v0 + 632);
  v60 = *(v0 + 480);

  v57(v58, v59);
  v61 = *(v60 + v56);
  *v4 = xmmword_1006D1BF0;
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  v62 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue;
  v63 = *&v61[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue];
  v64 = swift_allocObject();
  *(v64 + 16) = v4;
  *(v64 + 24) = v61;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_100269F38;
  *(v65 + 24) = v64;
  *(v0 + 248) = sub_10021E8E8;
  *(v0 + 256) = v65;
  *(v0 + 216) = _NSConcreteStackBlock;
  *(v0 + 224) = 1107296256;
  *(v0 + 232) = sub_10057E264;
  *(v0 + 240) = &unk_10080B410;
  v66 = _Block_copy((v0 + 216));
  v67 = v61;

  dispatch_sync(v63, v66);
  _Block_release(v66);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    goto LABEL_44;
  }

  v68 = *(v0 + 360);
  v69 = *(v0 + 368);

  if (v69 == 1)
  {
    v70 = *(v0 + 592);
    v71 = *(v0 + 584);
    v72 = *(v0 + 568);
    v73 = *(v0 + 560);
    v99 = *(v0 + 552);
    v101 = *(v0 + 576);
    static DispatchWorkItemFlags.barrier.getter();
    v74 = swift_allocObject();
    *(v74 + 16) = v67;
    *(v0 + 296) = sub_100269F78;
    *(v0 + 304) = v74;
    *(v0 + 264) = _NSConcreteStackBlock;
    *(v0 + 272) = 1107296256;
    *(v0 + 280) = sub_100503A7C;
    *(v0 + 288) = &unk_10080B460;
    v75 = _Block_copy((v0 + 264));
    v76 = v67;
    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v77 = v75;
    v4 = v0 + 360;
    _Block_release(v77);
    (*(v73 + 8))(v72, v99);
    (*(v71 + 8))(v70, v101);
  }

  else
  {
    sub_10003477C(v68, v69);
  }

  *(v0 + 384) = xmmword_1006D1BF0;
  *(v4 + 44) = 0;
  *(v4 + 40) = 0;
  v78 = *&v61[v62];
  v79 = swift_allocObject();
  *(v79 + 16) = v0 + 384;
  *(v79 + 24) = v67;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_10026CBBC;
  *(v80 + 24) = v79;
  *(v0 + 344) = sub_10026CBB8;
  *(v0 + 352) = v80;
  *(v0 + 312) = _NSConcreteStackBlock;
  *(v0 + 320) = 1107296256;
  *(v0 + 328) = sub_10057E264;
  *(v0 + 336) = &unk_10080B4D8;
  v81 = _Block_copy((v0 + 312));
  v82 = v67;

  dispatch_sync(v78, v81);

  _Block_release(v81);
  LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

  if (v78)
  {
    goto LABEL_45;
  }

  v83 = *(v0 + 384);
  v84 = *(v0 + 392);
  *(v0 + 856) = v83;
  *(v0 + 864) = v84;
  v85 = *(v4 + 40);
  *(v0 + 876) = *(v4 + 44);
  *(v0 + 872) = v85;

  if (v84 < 2)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    v87 = os_log_type_enabled(v40, v86);
    v43 = *(v0 + 712);
    v44 = *(v0 + 664);
    v45 = *(v0 + 632);
    v46 = *(v0 + 624);
    v47 = *(v0 + 608);
    v48 = *(v0 + 600);
    if (!v87)
    {
      goto LABEL_32;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = v86;
    v51 = v40;
    v52 = "Unable to retrieve the seid of the phone. Cannot store the provisioning identifiers";
    goto LABEL_31;
  }

  v92 = swift_task_alloc();
  *(v0 + 880) = v92;
  *v92 = v0;
  v92[1] = sub_10022E0A8;
  v94 = *(v0 + 464);
  v93 = *(v0 + 472);
  v95 = *(v0 + 456);

  return sub_100260D30(v83, v84, v93, 1, v95, v94);
}

uint64_t sub_10022CEF0()
{

  v1 = v0[94];
  v2 = v0[89];
  v3 = v0[81];
  v4 = v0[79];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v2(v3, v4);
  v0[52] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v5 = v0[68];
    v6 = v0[67];
    v7 = v0[66];
    v8 = v0[65];
    v10 = v0[63];
    v9 = v0[64];
    v11 = v0[61];
    v12 = v0[62];
    (*(v6 + 56))(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    DIPError.code.getter();
    v26 = *(v12 + 104);
    v26(v10, enum case for DIPError.Code.failedToStorePIIToken(_:), v11);
    sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13 = *(v12 + 8);
    v13(v10, v11);
    v13(v9, v11);
    if (v0[53] == v0[54] || (v15 = v0[63], v14 = v0[64], v16 = v0[61], DIPError.code.getter(), v26(v15, enum case for DIPError.Code.piiTokenMissingFromContext(_:), v16), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v13(v15, v16), v13(v14, v16), v0[55] == v0[56]))
    {
      v17 = v0[68];
      v18 = v0[67];
      v19 = v0[66];
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v18 + 16))(v20, v17, v19);
      swift_willThrow();

      (*(v18 + 8))(v17, v19);

      v21 = v0[1];
      goto LABEL_7;
    }

    (*(v0[67] + 8))(v0[68], v0[66]);
  }

  else
  {
    v22 = v0[67];
    v23 = v0[66];
    v24 = v0[65];

    (*(v22 + 56))(v24, 1, 1, v23);
    sub_10000BE18(v24, &qword_100833A88, qword_1006BF8E0);
  }

  v21 = v0[1];
LABEL_7:

  return v21();
}

uint64_t sub_10022D484(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[102] = a1;
  v4[103] = a2;
  v4[104] = v2;

  if (v2)
  {
    v5 = sub_10022F360;
  }

  else
  {
    v5 = sub_10022D5A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10022D5A0(uint64_t a1)
{
  v2 = v1[103];
  if (v2)
  {
    v3 = swift_task_alloc();
    v1[105] = v3;
    *v3 = v1;
    v3[1] = sub_10022D868;
    v4 = v1[102];
    v6 = v1[58];
    v5 = v1[59];
    v7 = v1[57];

    return sub_100260D30(v4, v2, v5, 2, v7, v6);
  }

  else
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v1[100];
    v13 = v1[89];
    v14 = v1[86];
    v15 = v1[79];
    v16 = v1[78];
    v17 = v1[76];
    v20 = v1[75];
    if (v11)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to fetch the SEID from the watch, will not be able to save watch provisioning data", v18, 2u);
    }

    else
    {

      v9 = v12;
    }

    v13(v14, v15);
    (*(v17 + 8))(v16, v20);

    v19 = v1[1];

    return v19();
  }
}

uint64_t sub_10022D868()
{
  *(*v1 + 848) = v0;

  if (v0)
  {
    v2 = sub_10022DB08;
  }

  else
  {
    v2 = sub_10022D99C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022D99C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10022DB08()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 848);
  v5 = *(v0 + 712);
  v6 = *(v0 + 648);
  v7 = *(v0 + 632);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v5(v6, v7);
  *(v0 + 416) = v4;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);
    v10 = *(v0 + 528);
    v11 = *(v0 + 520);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 488);
    v15 = *(v0 + 496);
    (*(v9 + 56))(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    DIPError.code.getter();
    v29 = *(v15 + 104);
    v29(v13, enum case for DIPError.Code.failedToStorePIIToken(_:), v14);
    sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v16 = *(v15 + 8);
    v16(v13, v14);
    v16(v12, v14);
    if (*(v0 + 424) == *(v0 + 432) || (v18 = *(v0 + 504), v17 = *(v0 + 512), v19 = *(v0 + 488), DIPError.code.getter(), v29(v18, enum case for DIPError.Code.piiTokenMissingFromContext(_:), v19), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v16(v18, v19), v16(v17, v19), *(v0 + 440) == *(v0 + 448)))
    {
      v20 = *(v0 + 544);
      v21 = *(v0 + 536);
      v22 = *(v0 + 528);
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v21 + 16))(v23, v20, v22);
      swift_willThrow();

      (*(v21 + 8))(v20, v22);

      v24 = *(v0 + 8);
      goto LABEL_7;
    }

    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  }

  else
  {
    v25 = *(v0 + 536);
    v26 = *(v0 + 528);
    v27 = *(v0 + 520);

    (*(v25 + 56))(v27, 1, 1, v26);
    sub_10000BE18(v27, &qword_100833A88, qword_1006BF8E0);
  }

  v24 = *(v0 + 8);
LABEL_7:

  return v24();
}

uint64_t sub_10022E0A8()
{
  v2 = *v1;
  v2[111] = v0;

  v3 = v2[108];
  v4 = v2[107];
  if (v0)
  {

    sub_10003477C(v4, v3);
    v5 = sub_10022EDD0;
  }

  else
  {
    sub_10003477C(v2[107], v2[108]);
    v5 = sub_10022E228;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10022E228()
{
  v101 = v0;
  result = (*(*(v0 + 608) + 8))(*(v0 + 624), *(v0 + 600));
  v2 = *(v0 + 792) + 1;
  if (v2 == *(v0 + 768))
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  v4 = v0 + 360;
  while (1)
  {
    *(v0 + 792) = v2;
    v6 = *(v0 + 760);
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v7 = *(v0 + 608);
    v8 = *(v7 + 16);
    v8(*(v0 + 624), v6 + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v7 + 72) * v2, *(v0 + 600));
    ProofingSession.target.getter();
    IdentityTarget.init(rawValue:)();
    if (v9)
    {
      v10 = *(v0 + 624);
      v11 = *(v0 + 616);
      v12 = *(v0 + 600);
      defaultLogger()();
      v8(v11, v10, v12);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 712);
      v96 = *(v0 + 632);
      v98 = *(v0 + 656);
      v17 = *(v0 + 624);
      v18 = *(v0 + 616);
      v19 = *(v0 + 608);
      v20 = *(v0 + 600);
      if (v15)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v100 = v22;
        *v21 = 136315138;
        v23 = ProofingSession.proofingSessionID.getter();
        v94 = v16;
        v95 = v17;
        if (v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0xE000000000000000;
        }

        v27 = *(v19 + 8);
        v27(v18, v20);
        v28 = sub_100141FE4(v25, v26, &v100);

        *(v21 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v13, v14, "unable to retrieve the target information from the proofing session with proofingSessionID -> %s", v21, 0xCu);
        sub_10000BB78(v22);

        v94(v98, v96);
        result = (v27)(v95, v20);
      }

      else
      {

        v5 = *(v19 + 8);
        v5(v18, v20);
        v16(v98, v96);
        result = (v5)(v17, v20);
      }

      goto LABEL_7;
    }

    v29 = IdentityTarget.rawValue.getter();
    if (v29 != IdentityTarget.rawValue.getter())
    {
      break;
    }

    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Attempting to store the provisioning information for the watch target", v32, 2u);
    }

    v33 = *(v0 + 784);
    v34 = *(v0 + 712);
    v35 = *(v0 + 696);
    v36 = *(v0 + 632);
    v37 = *(v0 + 480);

    v34(v35, v36);
    v38 = *(v37 + v33);
    *(v0 + 800) = v38;
    if (v38)
    {
      v38;

      v89 = swift_task_alloc();
      *(v0 + 808) = v89;
      *v89 = v0;
      v89[1] = sub_10022D484;

      return sub_1004C5A24();
    }

    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 712);
    v43 = *(v0 + 680);
    v44 = *(v0 + 632);
    v45 = *(v0 + 624);
    v46 = *(v0 + 608);
    v47 = *(v0 + 600);
    if (!v41)
    {
LABEL_35:

      v87 = v43;
      v88 = v44;
      goto LABEL_36;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = v40;
    v50 = v39;
    v51 = "Unable to retrieve watch listener. Cannot Store watch provisioning data.";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v50, v49, v51, v48, 2u);

    v87 = v43;
    v88 = v44;
LABEL_36:
    v42(v87, v88);
    result = (*(v46 + 8))(v45, v47);
LABEL_7:
    v2 = *(v0 + 792) + 1;
    v4 = v0 + 360;
    if (v2 == *(v0 + 768))
    {
      goto LABEL_2;
    }
  }

  defaultLogger()();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Attempting to store the provisioning information for the phone target", v54, 2u);
  }

  v55 = *(v0 + 776);
  v56 = *(v0 + 712);
  v57 = *(v0 + 672);
  v58 = *(v0 + 632);
  v59 = *(v0 + 480);

  v56(v57, v58);
  v60 = *(v59 + v55);
  *v4 = xmmword_1006D1BF0;
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  v61 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue;
  v62 = *&v60[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue];
  v63 = swift_allocObject();
  *(v63 + 16) = v4;
  *(v63 + 24) = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_100269F38;
  *(v64 + 24) = v63;
  *(v0 + 248) = sub_10021E8E8;
  *(v0 + 256) = v64;
  *(v0 + 216) = _NSConcreteStackBlock;
  *(v0 + 224) = 1107296256;
  *(v0 + 232) = sub_10057E264;
  *(v0 + 240) = &unk_10080B410;
  v65 = _Block_copy((v0 + 216));
  v66 = v60;

  dispatch_sync(v62, v65);
  _Block_release(v65);
  LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

  if (v62)
  {
    goto LABEL_44;
  }

  v67 = *(v0 + 360);
  v68 = *(v0 + 368);

  if (v68 == 1)
  {
    v69 = *(v0 + 592);
    v70 = *(v0 + 584);
    v71 = *(v0 + 568);
    v72 = *(v0 + 560);
    v97 = *(v0 + 552);
    v99 = *(v0 + 576);
    static DispatchWorkItemFlags.barrier.getter();
    v73 = swift_allocObject();
    *(v73 + 16) = v66;
    *(v0 + 296) = sub_100269F78;
    *(v0 + 304) = v73;
    *(v0 + 264) = _NSConcreteStackBlock;
    *(v0 + 272) = 1107296256;
    *(v0 + 280) = sub_100503A7C;
    *(v0 + 288) = &unk_10080B460;
    v74 = _Block_copy((v0 + 264));
    v75 = v66;
    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v76 = v74;
    v4 = v0 + 360;
    _Block_release(v76);
    (*(v72 + 8))(v71, v97);
    (*(v70 + 8))(v69, v99);
  }

  else
  {
    sub_10003477C(v67, v68);
  }

  *(v0 + 384) = xmmword_1006D1BF0;
  *(v4 + 44) = 0;
  *(v4 + 40) = 0;
  v77 = *&v60[v61];
  v78 = swift_allocObject();
  *(v78 + 16) = v0 + 384;
  *(v78 + 24) = v66;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_10026CBBC;
  *(v79 + 24) = v78;
  *(v0 + 344) = sub_10026CBB8;
  *(v0 + 352) = v79;
  *(v0 + 312) = _NSConcreteStackBlock;
  *(v0 + 320) = 1107296256;
  *(v0 + 328) = sub_10057E264;
  *(v0 + 336) = &unk_10080B4D8;
  v80 = _Block_copy((v0 + 312));
  v81 = v66;

  dispatch_sync(v77, v80);

  _Block_release(v80);
  LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

  if (v77)
  {
    goto LABEL_45;
  }

  v82 = *(v0 + 384);
  v83 = *(v0 + 392);
  *(v0 + 856) = v82;
  *(v0 + 864) = v83;
  v84 = *(v4 + 40);
  *(v0 + 876) = *(v4 + 44);
  *(v0 + 872) = v84;

  if (v83 < 2)
  {
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v86 = os_log_type_enabled(v39, v85);
    v42 = *(v0 + 712);
    v43 = *(v0 + 664);
    v44 = *(v0 + 632);
    v45 = *(v0 + 624);
    v46 = *(v0 + 608);
    v47 = *(v0 + 600);
    if (!v86)
    {
      goto LABEL_35;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = v85;
    v50 = v39;
    v51 = "Unable to retrieve the seid of the phone. Cannot store the provisioning identifiers";
    goto LABEL_34;
  }

  v90 = swift_task_alloc();
  *(v0 + 880) = v90;
  *v90 = v0;
  v90[1] = sub_10022E0A8;
  v92 = *(v0 + 464);
  v91 = *(v0 + 472);
  v93 = *(v0 + 456);

  return sub_100260D30(v82, v83, v91, 1, v93, v92);
}

uint64_t sub_10022EDD0()
{
  (*(v0[76] + 8))(v0[78], v0[75]);
  v1 = v0[111];
  v2 = v0[89];
  v3 = v0[81];
  v4 = v0[79];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v2(v3, v4);
  v0[52] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v5 = v0[68];
    v6 = v0[67];
    v7 = v0[66];
    v8 = v0[65];
    v10 = v0[63];
    v9 = v0[64];
    v11 = v0[61];
    v12 = v0[62];
    (*(v6 + 56))(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    DIPError.code.getter();
    v26 = *(v12 + 104);
    v26(v10, enum case for DIPError.Code.failedToStorePIIToken(_:), v11);
    sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13 = *(v12 + 8);
    v13(v10, v11);
    v13(v9, v11);
    if (v0[53] == v0[54] || (v15 = v0[63], v14 = v0[64], v16 = v0[61], DIPError.code.getter(), v26(v15, enum case for DIPError.Code.piiTokenMissingFromContext(_:), v16), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v13(v15, v16), v13(v14, v16), v0[55] == v0[56]))
    {
      v17 = v0[68];
      v18 = v0[67];
      v19 = v0[66];
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v18 + 16))(v20, v17, v19);
      swift_willThrow();

      (*(v18 + 8))(v17, v19);

      v21 = v0[1];
      goto LABEL_7;
    }

    (*(v0[67] + 8))(v0[68], v0[66]);
  }

  else
  {
    v22 = v0[67];
    v23 = v0[66];
    v24 = v0[65];

    (*(v22 + 56))(v24, 1, 1, v23);
    sub_10000BE18(v24, &qword_100833A88, qword_1006BF8E0);
  }

  v21 = v0[1];
LABEL_7:

  return v21();
}

uint64_t sub_10022F360()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 832);
  v5 = *(v0 + 712);
  v6 = *(v0 + 648);
  v7 = *(v0 + 632);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v5(v6, v7);
  *(v0 + 416) = v4;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 544);
    v9 = *(v0 + 536);
    v10 = *(v0 + 528);
    v11 = *(v0 + 520);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 488);
    v15 = *(v0 + 496);
    (*(v9 + 56))(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    DIPError.code.getter();
    v29 = *(v15 + 104);
    v29(v13, enum case for DIPError.Code.failedToStorePIIToken(_:), v14);
    sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v16 = *(v15 + 8);
    v16(v13, v14);
    v16(v12, v14);
    if (*(v0 + 424) == *(v0 + 432) || (v18 = *(v0 + 504), v17 = *(v0 + 512), v19 = *(v0 + 488), DIPError.code.getter(), v29(v18, enum case for DIPError.Code.piiTokenMissingFromContext(_:), v19), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v16(v18, v19), v16(v17, v19), *(v0 + 440) == *(v0 + 448)))
    {
      v20 = *(v0 + 544);
      v21 = *(v0 + 536);
      v22 = *(v0 + 528);
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v21 + 16))(v23, v20, v22);
      swift_willThrow();

      (*(v21 + 8))(v20, v22);

      v24 = *(v0 + 8);
      goto LABEL_7;
    }

    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  }

  else
  {
    v25 = *(v0 + 536);
    v26 = *(v0 + 528);
    v27 = *(v0 + 520);

    (*(v25 + 56))(v27, 1, 1, v26);
    sub_10000BE18(v27, &qword_100833A88, qword_1006BF8E0);
  }

  v24 = *(v0 + 8);
LABEL_7:

  return v24();
}

unint64_t sub_10022F900@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = type metadata accessor for ProofingSession();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  result = sub_1005791C8(a1, a2);
  if (v3)
  {
    return result;
  }

  v30 = 0;
  if (!(result >> 62))
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a3 = _swiftEmptyArrayStorage;
    return result;
  }

  v27 = result;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  result = v27;
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_4:
  v16 = result;
  v32 = _swiftEmptyArrayStorage;
  result = sub_100173040(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = a3;
    v17 = v32;
    v18 = v16;
    v31 = v7;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        v20 = v18;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ProofingSession.init(_:)();
        v32 = v17;
        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_100173040((v21 > 1), v22 + 1, 1);
          v17 = v32;
        }

        ++v19;
        v17[2] = v22 + 1;
        (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v13, v31);
        v18 = v20;
      }

      while (v15 != v19);
    }

    else
    {
      v23 = 32;
      do
      {
        v24 = *(v16 + v23);
        ProofingSession.init(_:)();
        v32 = v17;
        v26 = v17[2];
        v25 = v17[3];
        if (v26 >= v25 >> 1)
        {
          sub_100173040((v25 > 1), v26 + 1, 1);
          v17 = v32;
        }

        v17[2] = v26 + 1;
        (*(v8 + 32))(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v11, v31);
        v23 += 8;
        --v15;
      }

      while (v15);
    }

    *v29 = v17;
  }

  return result;
}

void sub_10022FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v77 = a8;
  v75 = a7;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v73 = v21;
  v74 = v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v61 - v26;
  v28 = sub_1005792EC(a2, a3, a4);
  if (v14)
  {
    return;
  }

  v68 = a3;
  v69 = a1;
  v66 = v27;
  v67 = a4;
  v29 = v75;
  v30 = v77;
  v70 = a2;
  v72 = 0;
  if (v28)
  {
    v31 = a5;
    v71 = v28;
    v32 = (a14 + *(type metadata accessor for PendingActionContext(0) + 128));
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32;
    }

    else
    {
      v34 = 0;
    }

    v42 = v71;
    v43 = [v71 managedObjectContext];
    if (v43)
    {
      v63 = a13;
      v64 = v34;
      v65 = a12;
      v62 = a9;
      v75 = v43;
      v44 = swift_allocObject();
      v44[2] = v42;
      v44[3] = v31;
      v44[4] = a6;
      v44[5] = v29;
      v44[6] = v30;
      v45 = v63;
      v44[7] = v62;
      v44[8] = a10;
      v44[9] = a11;
      v44[10] = a12;
      v46 = v64;
      v44[11] = v45;
      v44[12] = v46;
      v44[13] = v33;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_10026C26C;
      *(v47 + 24) = v44;
      aBlock[4] = sub_10026CBB8;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10057E264;
      aBlock[3] = &unk_10080B668;
      v48 = _Block_copy(aBlock);
      v49 = v42;

      sub_10000B8B8(a11, v65);

      v50 = v75;
      [v75 performBlockAndWait:v48];

      _Block_release(v48);
      LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

      if ((v48 & 1) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

LABEL_13:
    v51 = v72;
    sub_1005783D4();
    v52 = v70;
    if (v51)
    {
    }

    else
    {
      v53 = v66;
      defaultLogger()();
      v54 = v68;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v57 = 136315394;
        *(v57 + 4) = sub_100141FE4(v52, v54, aBlock);
        *(v57 + 12) = 2080;
        v58 = IdentityTarget.debugDescription.getter();
        v60 = sub_100141FE4(v58, v59, aBlock);

        *(v57 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v55, v56, "Successfully saved provisioning identifiers for %s and target %s", v57, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v74 + 8))(v53, v73);
    }

    return;
  }

  defaultLogger()();
  v35 = v68;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100141FE4(v70, v35, aBlock);
    *(v38 + 12) = 2080;
    v39 = IdentityTarget.debugDescription.getter();
    v41 = sub_100141FE4(v39, v40, aBlock);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "Unable to find proofing session with proofingSessionID %s for target %s. Will not save provisioning identifiers", v38, 0x16u);
    swift_arrayDestroy();
  }

  (*(v74 + 8))(v25, v73);
}

void sub_1002301B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v130 = a8;
  v131 = a7;
  v132 = a6;
  v127 = a5;
  v139 = a1;
  v124 = type metadata accessor for DIPError.Code();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v128 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for DIPError();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v129 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Logger();
  v134 = *(v135 - 8);
  v14 = __chkstk_darwin(v135);
  v16 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v113 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v113 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v113 - v24;
  __chkstk_darwin(v23);
  v27 = &v113 - v26;
  v28 = a2;
  v133 = a3;
  v29 = v136;
  sub_10057BE48(a2, a3, a4);
  if (v29)
  {
    return;
  }

  v31 = v30;
  v121 = v27;
  v117 = v25;
  v119 = v19;
  v120 = v16;
  v122 = v28;
  v136 = 0;
  v32 = v133;
  v33 = v22;
  if (v30)
  {
    v34 = [v30 credentialIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = [v31 workflowID];
      if (v39)
      {
        v113 = v36;
        v114 = v38;
        v118 = v31;
        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = v127;
        swift_beginAccess();
        v115 = v41;
        *(v44 + 2) = v41;
        *(v44 + 3) = v43;
        v116 = v43;

        v45 = v121;
        defaultLogger()();

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *&v137[0] = swift_slowAlloc();
          *v48 = 136315394;
          v49 = IdentityTarget.debugDescription.getter();
          v51 = sub_100141FE4(v49, v50, v137);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2080;
          *(v48 + 14) = sub_100141FE4(v122, v32, v137);
          _os_log_impl(&_mh_execute_header, v46, v47, "Successfully fetched proofing session for target: %s, proofingSesionID: %s", v48, 0x16u);
          swift_arrayDestroy();
        }

        v52 = v135;
        v127 = *(v134 + 8);
        (v127)(v45, v135);
        v53 = v132;
        v54 = v128;
        v55 = v130;
        swift_beginAccess();
        v56 = v114;
        *(v53 + 16) = v113;
        *(v53 + 24) = v56;

        v57 = IdentityTarget.rawValue.getter();
        if (v57 == IdentityTarget.rawValue.getter())
        {
          v58 = [v118 pairingID];
          if (v58)
          {
            v59 = v58;
            v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v62 = v61;
          }

          else
          {
            v60 = 0;
            v62 = 0;
          }

          v69 = v131;
          swift_beginAccess();
          *(v69 + 16) = v60;
          *(v69 + 24) = v62;

          v55 = v130;
        }

        sub_10057F780(*v55, v55[1], v55[2], v55[3], v55[4], v55[5]);
        v70 = v136;
        sub_10057BA64();
        v136 = v70;
        v71 = v129;
        if (v70)
        {
          *&v137[0] = 0;
          *(&v137[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(66);
          v72._countAndFlagsBits = 0xD000000000000040;
          v72._object = 0x8000000100707F80;
          String.append(_:)(v72);
          v138 = v136;
          sub_100007224(&qword_100833B90, &qword_1006D95C0);
          _print_unlocked<A, B>(_:_:)();
          (*(v123 + 104))(v54, enum case for DIPError.Code.unableToSaveProvisioningIdentifiers(_:), v124);
          sub_1000402AC(_swiftEmptyArrayStorage);
          v73 = v135;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v74 = v126;
          swift_allocError();
          v75 = v125;
          (*(v125 + 16))(v76, v71, v74);
          v77 = v119;
          defaultLogger()();
          DIPRecordError(_:message:log:)();
          v78 = v127;
          (v127)(v77, v73);

          v79 = v120;
          defaultLogger()();
          v80 = v71;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v127 = v78;
            *v83 = 0;
            _os_log_impl(&_mh_execute_header, v81, v82, "Ignoring the error and continuing the provisioning flow", v83, 2u);

            (v127)(v79, v73);
          }

          else
          {

            (v78)(v79, v73);
          }

          (*(v75 + 8))(v80, v74);
          v136 = 0;
        }

        else
        {
          v84 = v117;
          defaultLogger()();

          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *&v137[0] = swift_slowAlloc();
            *v87 = 136315394;
            v88 = IdentityTarget.debugDescription.getter();
            v90 = sub_100141FE4(v88, v89, v137);

            *(v87 + 4) = v90;
            *(v87 + 12) = 2080;
            *(v87 + 14) = sub_100141FE4(v122, v32, v137);
            _os_log_impl(&_mh_execute_header, v85, v86, "Successfully updated provisioning identifiers for target: %s, proofingSesionID: %s", v87, 0x16u);
            swift_arrayDestroy();

            v91 = v84;
            v92 = v135;
          }

          else
          {

            v91 = v84;
            v92 = v52;
          }

          (v127)(v91, v92);
        }

        v93 = v131;
        v94 = v132;
        swift_beginAccess();
        v95 = *(v94 + 24);
        v135 = *(v94 + 16);
        swift_beginAccess();
        v96 = *(v93 + 24);
        v134 = *(v93 + 16);
        v139 = v96;

        v97 = [v118 productIdentifier];
        if (v97)
        {
          v98 = v97;
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;
        }

        else
        {
          v99 = 0;
          v101 = 0;
        }

        v102 = v118;
        v103 = [v118 supplementalProvisioningData];
        if (v103)
        {
          v104 = v99;
          v105 = v103;
          v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;

          v99 = v104;
        }

        else
        {

          v106 = 0;
          v108 = 0xF000000000000000;
        }

        swift_beginAccess();
        v109 = *(a9 + 64);
        v137[2] = *(a9 + 48);
        v137[3] = v109;
        v137[4] = *(a9 + 80);
        v110 = *(a9 + 16);
        v137[1] = *(a9 + 32);
        v137[0] = v110;
        *(a9 + 16) = v135;
        *(a9 + 24) = v95;
        v111 = v116;
        *(a9 + 32) = v115;
        *(a9 + 40) = v111;
        v112 = v139;
        *(a9 + 48) = v134;
        *(a9 + 56) = v112;
        *(a9 + 64) = v99;
        *(a9 + 72) = v101;
        *(a9 + 80) = v106;
        *(a9 + 88) = v108;
        sub_10000BE18(v137, &qword_10083E3F8, &unk_1006DBD40);
        return;
      }
    }

    else
    {
    }
  }

  defaultLogger()();

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *&v137[0] = swift_slowAlloc();
    *v65 = 136315394;
    v66 = IdentityTarget.debugDescription.getter();
    v68 = sub_100141FE4(v66, v67, v137);

    *(v65 + 4) = v68;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_100141FE4(v122, v32, v137);
    _os_log_impl(&_mh_execute_header, v63, v64, "Unable to retrieve proofing session for target: %s, proofingSessionID: %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  (*(v134 + 8))(v33, v135);
}

uint64_t sub_100230F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[128] = v4;
  v5[127] = a4;
  v5[126] = a3;
  v5[125] = a2;
  v5[124] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[129] = v6;
  v5[130] = *(v6 - 8);
  v5[131] = swift_task_alloc();
  v7 = type metadata accessor for String.Encoding();
  v5[132] = v7;
  v5[133] = *(v7 - 8);
  v5[134] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  sub_100007224(&qword_100835968, &qword_1006DBC90);
  v5[137] = swift_task_alloc();
  sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[150] = v8;
  v5[151] = *(v8 - 8);
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v5[165] = swift_task_alloc();
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v9 = type metadata accessor for ActionRequest(0);
  v5[169] = v9;
  v10 = *(v9 - 8);
  v5[170] = v10;
  v5[171] = *(v10 + 64);
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();
  v5[176] = swift_task_alloc();
  v5[177] = swift_task_alloc();
  v5[178] = swift_task_alloc();
  v5[179] = swift_task_alloc();
  sub_100007224(&qword_10083E3E8, &unk_1006DBD00);
  v5[180] = swift_task_alloc();
  v5[181] = swift_task_alloc();
  v5[182] = swift_task_alloc();
  v5[183] = swift_task_alloc();
  v5[184] = swift_task_alloc();
  v5[185] = swift_task_alloc();
  v5[186] = swift_task_alloc();
  v5[187] = swift_task_alloc();

  return _swift_task_switch(sub_100231408, 0, 0);
}

uint64_t sub_100231408()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 992);
  v5 = *(v2 + 56);
  *(v0 + 1504) = v5;
  *(v0 + 1512) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = *(v4 + 128);
  *(v0 + 928) = v6;
  *(v0 + 936) = v6;
  sub_10000BBC4(v0 + 928, v0 + 944, &qword_1008377E0, &qword_1006C9940);
  sub_10021F3E8(v0 + 936);
  sub_10021F9A4(v0 + 936);
  sub_10021FF40(v0 + 936);
  v7 = *(v0 + 936);
  *(v0 + 1520) = v7;
  v8 = *(v7 + 16);
  *(v0 + 1528) = v8;
  v334 = v8;
  if (v8)
  {
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1360);
    v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);

    v13 = _swiftEmptyArrayStorage;
    do
    {
      v14 = *(v0 + 1432);
      sub_100269FE8(v11, v14, type metadata accessor for ActionRequest);
      v15 = *v14;
      v16 = *(v9 + 8);

      v17._countAndFlagsBits = v15;
      v17._object = v16;
      v18 = _findStringSwitchCase(cases:string:)(&off_1007F86A0, v17);

      if (v18 >= 0xA)
      {
        sub_100267A1C(*(v0 + 1432), type metadata accessor for ActionRequest);
      }

      else
      {
        sub_100267A1C(*(v0 + 1432), type metadata accessor for ActionRequest);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1003C5494(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_1003C5494((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v13[v20 + 32] = v18;
      }

      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  *(v0 + 1536) = sub_10069746C(v13);

  if (!v334)
  {
LABEL_93:

    v178 = *(v0 + 1496);
    v179 = *(v0 + 1448);
    v180 = *(v0 + 1360);
    v181 = *(v0 + 1352);

    sub_10000BBC4(v178, v179, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v180 + 48))(v179, 1, v181) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v182 = *(v0 + 8);
LABEL_95:

      return v182();
    }

    else
    {
      v184 = *(v0 + 1504);
      v185 = *(v0 + 1440);
      v186 = *(v0 + 1376);
      v187 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v186, type metadata accessor for ActionRequest);
      sub_100269FE8(v186, v185, type metadata accessor for ActionRequest);
      v184(v185, 0, 1, v187);
      v188 = swift_task_alloc();
      *(v0 + 1880) = v188;
      *v188 = v0;
      v188[1] = sub_10024F280;
      v189 = *(v0 + 1440);
      v190 = *(v0 + 1008);
      v191 = *(v0 + 1000);

      return sub_1002550B8(v189, v191, v190);
    }
  }

  v21 = 0;
  v321 = (v0 + 984);
  v22 = *(v0 + 1360);
  *(v0 + 1544) = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_biomeManager;
  *(v0 + 1896) = *(v22 + 80);
  *(v0 + 1552) = kSecValueData;
  *(v0 + 1900) = enum case for DIPError.Code.failedToStorePIITokenCredentialIdentifierNil(_:);
  v23 = 3;
  while (1)
  {
    *(v0 + 1568) = v21;
    *(v0 + 1908) = v23;
    *(v0 + 1560) = 0;
    v31 = *(v0 + 1520);
    if (v21 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_158;
    }

    v32 = *(v0 + 1424);
    v33 = *(v0 + 1016);
    v34 = *(v0 + 1008);
    v35 = *(v0 + 1000);
    v36 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v31 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v36 * v21, v32, type metadata accessor for ActionRequest);
    sub_10025DCD8(v32, v35, v34, v33);
    v37 = *v32;
    v38 = v32[1];

    v336._countAndFlagsBits = v37;
    v336._object = v38;
    v39 = sub_10025DC8C(v336);
    if (v39 > 4)
    {
      if (v39 <= 7)
      {
        if (v39 != 6)
        {
          if (v39 == 7)
          {
            defaultLogger()();
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.debug.getter();
            v42 = os_log_type_enabled(v40, v41);
            v43 = *(v0 + 1424);
            v44 = *(v0 + 1264);
            v45 = *(v0 + 1208);
            v46 = *(v0 + 1200);
            if (v42)
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              v48 = v41;
              v49 = v40;
              v50 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_46;
            }

            goto LABEL_47;
          }

          v192 = *(v0 + 1424);
          v193 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v192, v193, type metadata accessor for ActionRequest);
          v194 = Logger.logObject.getter();
          v195 = static os_log_type_t.debug.getter();
          v196 = os_log_type_enabled(v194, v195);
          v197 = *(v0 + 1400);
          LOBYTE(v334) = v23;
          if (!v196)
          {
            v224 = *(v0 + 1296);
            v225 = *(v0 + 1208);
            v226 = *(v0 + 1200);

            sub_100267A1C(v197, type metadata accessor for ActionRequest);
            v227 = *(v225 + 8);
            v227(v224, v226);
LABEL_124:
            v332 = v227;
            *(v0 + 1608) = v227;
            v250 = *(*(v0 + 1520) + 16);
            if (v250)
            {
              v251 = 0;
              v252 = 0;
              while (1)
              {
                v253 = *(v0 + 1520);
                if (v252 >= *(v253 + 16))
                {
                  break;
                }

                v254 = *(v0 + 1392);
                sub_100269FE8(v253 + v251 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v254, type metadata accessor for ActionRequest);
                v255 = *v254 == 0x5F4F545F444E4553 && v254[1] == 0xED0000454D4F4942;
                if (v255 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v256 = 0;
                  goto LABEL_135;
                }

                ++v252;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v251 += v36;
                if (v250 == v252)
                {
                  goto LABEL_133;
                }
              }

LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

LABEL_133:
            v256 = 1;
LABEL_135:
            v257 = *(v0 + 1488);
            v258 = *(v0 + 1480);
            (*(v0 + 1504))(v257, v256, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v257, v258, &qword_10083E3E8, &unk_1006DBD00);
            v259 = Logger.logObject.getter();
            v260 = static os_log_type_t.debug.getter();
            v261 = os_log_type_enabled(v259, v260);
            v262 = *(v0 + 1480);
            if (v261)
            {
              v263 = *(v0 + 1360);
              v264 = *(v0 + 1352);
              v265 = swift_slowAlloc();
              *v265 = 67109120;
              LODWORD(v264) = (*(v263 + 48))(v262, 1, v264) != 1;
              sub_10000BE18(v262, &qword_10083E3E8, &unk_1006DBD00);
              *(v265 + 4) = v264;
              _os_log_impl(&_mh_execute_header, v259, v260, "Biome data exists to be donated? -> %{BOOL}d", v265, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v266 = v259;
            v267 = *(v0 + 1488);
            v268 = *(v0 + 1472);
            v269 = *(v0 + 1360);
            v270 = *(v0 + 1352);
            v271 = *(v0 + 1288);
            v272 = *(v0 + 1208);
            v273 = *(v0 + 1200);

            *(v0 + 1616) = (v272 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v332(v271, v273);
            sub_10000BBC4(v267, v268, &qword_10083E3E8, &unk_1006DBD00);
            v274 = *(v269 + 48);
            v275 = v274(v268, 1, v270);
            v276 = *(v0 + 1472);
            v330 = v274;
            if (v275 == 1)
            {
              v277 = *(v0 + 1160);

              sub_10000BE18(v276, &qword_10083E3E8, &unk_1006DBD00);
              v278 = type metadata accessor for PendingActionContext(0);
              (*(*(v278 - 8) + 56))(v277, 1, 1, v278);
            }

            else
            {
              sub_10000BBC4(v276 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v276, type metadata accessor for ActionRequest);
            }

            v279 = *(v0 + 1160);
            v280 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v279);

            sub_10000BE18(v279, &unk_100840960, &qword_1006DBCB0);
            if (*(v280 + 152) == 1)
            {
LABEL_159:
              v292 = *(v0 + 1424);
              v293 = *(v0 + 1152);
              v294 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v294;
              sub_10000BBC4(v292 + v294, v293, &unk_100840960, &qword_1006DBCB0);
              v295 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v295;
              v296 = *(v295 - 8);
              v297 = *(v296 + 48);
              *(v0 + 1632) = v297;
              *(v0 + 1640) = (v296 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v333 = v297;
              v298 = v297(v293, 1, v295);
              v299 = *(v0 + 1152);
              v322 = v294;
              v325 = v292;
              if (v298 == 1)
              {
                sub_10000BE18(v299, &unk_100840960, &qword_1006DBCB0);
                v329 = 0;
                v300 = 0;
              }

              else
              {
                v300 = *(v299 + 72);
                v329 = *(v299 + 64);
                v301 = *(v0 + 1152);

                sub_100267A1C(v301, type metadata accessor for PendingActionContext);
              }

              v328 = v300;
              *(v0 + 1648) = v300;
              v302 = *(v0 + 1488);
              v303 = *(v0 + 1456);
              v304 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v302, v303, &qword_10083E3E8, &unk_1006DBD00);
              v305 = v330(v303, 1, v304);
              v306 = *(v0 + 1456);
              if (v305 == 1)
              {
                v307 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v296 + 56))(v307, 1, 1, v295);
                v308 = v334;
                v310 = v322;
                v309 = v325;
              }

              else
              {
                v311 = *(v0 + 1144);
                sub_10000BBC4(v306 + *(*(v0 + 1352) + 20), v311, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v306, type metadata accessor for ActionRequest);
                v308 = v334;
                v310 = v322;
                v309 = v325;
                v333(v311, 1, v295);
              }

              v312 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v309 + v310, v312, &unk_100840960, &qword_1006DBCB0);
              v313 = v333(v312, 1, v295);
              v314 = *(v0 + 1136);
              if (v313 == 1)
              {
                sub_10000BE18(v314, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v314, type metadata accessor for PendingActionContext);
              }

              v315 = swift_task_alloc();
              *(v0 + 1656) = v315;
              *v315 = v0;
              v315[1] = sub_100239F30;
              v316 = *(v0 + 1536);
              v317 = *(v0 + 1464);
              v318 = *(v0 + 1016);
              v319 = *(v0 + 1008);
              v320 = *(v0 + 1000);

              return sub_10025744C(v329, v328, v316, v320, v319, v318, v308, v317);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_159;
            }

LABEL_158:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_159;
          }

          v198 = *(v0 + 1352);
          v199 = *(v0 + 1168);
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *(v0 + 968) = v201;
          *v200 = 136315138;
          sub_10000BBC4(v197 + *(v198 + 20), v199, &unk_100840960, &qword_1006DBCB0);
          v202 = type metadata accessor for PendingActionContext(0);
          v203 = (*(*(v202 - 8) + 48))(v199, 1, v202);
          v204 = *(v0 + 1168);
          if (v203 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v243 = *(v204 + 72);

            sub_100267A1C(v204, type metadata accessor for PendingActionContext);
            if (v243)
            {
              v244 = String.debugDescription.getter();
              v246 = v245;

LABEL_123:
              v331 = *(v0 + 1296);
              v247 = *(v0 + 1208);
              v248 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v249 = sub_100141FE4(v244, v246, (v0 + 968));

              *(v200 + 4) = v249;
              _os_log_impl(&_mh_execute_header, v194, v195, "server requested an action to set state:%s", v200, 0xCu);
              sub_10000BB78(v201);

              v227 = *(v247 + 8);
              v227(v331, v248);
              goto LABEL_124;
            }
          }

          v244 = 0;
          v246 = 0xE000000000000000;
          goto LABEL_123;
        }

        LODWORD(v334) = v23;
        defaultLogger()();
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "display notification received", v97, 2u);
        }

        v24 = *(v0 + 1504);
        v25 = *(v0 + 1496);
        v26 = *(v0 + 1424);
        v27 = *(v0 + 1352);
        v28 = *(v0 + 1344);
        v29 = *(v0 + 1208);
        v30 = *(v0 + 1200);

        (*(v29 + 8))(v28, v30);
        sub_10000BE18(v25, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v26, v25, type metadata accessor for ActionRequest);
        v24(v25, 0, 1, v27);
        goto LABEL_15;
      }

      if (v39 != 8)
      {
        if (v39 != 10)
        {
          defaultLogger()();
          v212 = Logger.logObject.getter();
          v213 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v212, v213))
          {
            v214 = swift_slowAlloc();
            *v214 = 0;
            _os_log_impl(&_mh_execute_header, v212, v213, "server requested an action to store token", v214, 2u);
          }

          v215 = *(v0 + 1424);
          v216 = *(v0 + 1352);
          v217 = *(v0 + 1248);
          v218 = *(v0 + 1208);
          v219 = *(v0 + 1200);
          v220 = *(v0 + 1104);

          v221 = *(v218 + 8);
          *(v0 + 1672) = v221;
          v221(v217, v219);
          sub_10000BBC4(v215 + *(v216 + 20), v220, &unk_100840960, &qword_1006DBCB0);
          v222 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v222 - 8) + 48))(v220, 1, v222) == 1)
          {
            v223 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v223, &unk_100840960, &qword_1006DBCB0);
LABEL_152:
            v287 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v287, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v182 = *(v0 + 8);
            goto LABEL_95;
          }

          v228 = *(v0 + 1104);
          v229 = (v228 + *(v222 + 128));
          v230 = *v229;
          *(v0 + 1680) = *v229;
          v231 = v229[1];
          *(v0 + 1688) = v231;
          v233 = v229[2];
          v232 = v229[3];
          *(v0 + 1696) = v232;
          sub_1000AB7D8(v230, v231, v233, v232);
          sub_100267A1C(v228, type metadata accessor for PendingActionContext);
          if (!v231)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_152;
          }

          v234 = *(v0 + 1072);
          v235 = *(v0 + 1064);
          v236 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v237 = String.data(using:allowLossyConversion:)();
          v239 = v238;
          *(v0 + 1704) = v237;
          *(v0 + 1712) = v238;
          (*(v235 + 8))(v234, v236);
          if (v239 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_152;
          }

          if (qword_100832C20 == -1)
          {
LABEL_154:
            v288 = *(qword_100882228 + 16);
            *(v0 + 1720) = v288;
            v289 = v288;
            v290 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v290;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v291 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v291;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v289 retrievePIITokenFromSyncableKeyStoreForIdentifier:v290 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_173:
          swift_once();
          goto LABEL_154;
        }

        defaultLogger()();
        v40 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        v67 = os_log_type_enabled(v40, v66);
        v43 = *(v0 + 1424);
        v44 = *(v0 + 1232);
        v45 = *(v0 + 1208);
        v46 = *(v0 + 1200);
        if (v67)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = v66;
          v49 = v40;
          v50 = "INVALID ACTION REQUEST";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v98 = *(v0 + 1424);
      v99 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v98, v99, type metadata accessor for ActionRequest);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.info.getter();
      v102 = os_log_type_enabled(v100, v101);
      v103 = *(v0 + 1384);
      LODWORD(v334) = v23;
      if (!v102)
      {
        v124 = *(v0 + 1256);
        v125 = *(v0 + 1208);
        v126 = *(v0 + 1200);

        sub_100267A1C(v103, type metadata accessor for ActionRequest);
        (*(v125 + 8))(v124, v126);
LABEL_78:
        v160 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v160, &unk_100840960, &qword_1006DBCB0);
        v161 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v161 - 8) + 48))(v160, 1, v161) == 1)
        {
          v162 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v162, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_16;
        }

        v163 = *(v0 + 1112);
        v164 = (v163 + *(v161 + 112));
        v166 = *v164;
        v165 = v164[1];

        sub_100267A1C(v163, type metadata accessor for PendingActionContext);
        if (v165)
        {
          v167 = *(v0 + 1088);
          v168 = *(v0 + 1080);
          v169 = *(v0 + 1024);
          v170 = type metadata accessor for TaskPriority();
          v171 = *(v170 - 8);
          (*(v171 + 56))(v167, 1, 1, v170);
          v172 = swift_allocObject();
          v172[2] = 0;
          v172[3] = 0;
          v172[4] = v169;
          v172[5] = v166;
          v172[6] = v165;
          sub_10000BBC4(v167, v168, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v167) = (*(v171 + 48))(v168, 1, v170);

          v173 = *(v0 + 1080);
          if (v167 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v171 + 8))(v173, v170);
          }

          v174 = v172[2];
          swift_unknownObjectRetain();

          v23 = v334;
          if (v174)
          {
            swift_getObjectType();
            v175 = dispatch thunk of Actor.unownedExecutor.getter();
            v177 = v176;
            swift_unknownObjectRelease();
          }

          else
          {
            v175 = 0;
            v177 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v177 | v175)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v175;
            *(v0 + 872) = v177;
          }

          v43 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_48;
        }

        v152 = *(v0 + 1424);
        goto LABEL_84;
      }

      v104 = *(v0 + 1352);
      v105 = *(v0 + 1120);
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *(v0 + 960) = v107;
      *v106 = 136315138;
      sub_10000BBC4(v103 + *(v104 + 20), v105, &unk_100840960, &qword_1006DBCB0);
      v108 = type metadata accessor for PendingActionContext(0);
      v109 = (*(*(v108 - 8) + 48))(v105, 1, v108);
      v110 = *(v0 + 1120);
      if (v109 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v153 = (v110 + *(v108 + 112));
        v154 = *v153;
        v155 = v153[1];

        sub_100267A1C(v110, type metadata accessor for PendingActionContext);
        if (v155)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_77:
          v156 = *(v0 + 1256);
          v157 = *(v0 + 1208);
          v158 = *(v0 + 1200);
          v159 = sub_100141FE4(v154, v155, (v0 + 960));

          *(v106 + 4) = v159;
          _os_log_impl(&_mh_execute_header, v100, v101, "server requested to delete the Account Key Signing Key with identifier %s", v106, 0xCu);
          sub_10000BB78(v107);

          (*(v157 + 8))(v156, v158);
          v23 = v334;
          goto LABEL_78;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v155 = 0xE300000000000000;
      v154 = 4999502;
      goto LABEL_77;
    }

    if (v39 <= 2)
    {
      break;
    }

    if (v39 == 3)
    {
      v68 = *(v0 + 1424);
      v69 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v68, v69, type metadata accessor for ActionRequest);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v70, v71))
      {
        v119 = *(v0 + 1424);
        v120 = *(v0 + 1408);
        v121 = *(v0 + 1304);
        v122 = *(v0 + 1208);
        v123 = *(v0 + 1200);

        sub_100267A1C(v120, type metadata accessor for ActionRequest);
        (*(v122 + 8))(v121, v123);
        sub_100267A1C(v119, type metadata accessor for ActionRequest);
        goto LABEL_16;
      }

      v72 = *(v0 + 1408);
      v73 = *(v0 + 1352);
      v74 = *(v0 + 1176);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *(v0 + 976) = v76;
      *v75 = 136315138;
      sub_10000BBC4(v72 + *(v73 + 20), v74, &unk_100840960, &qword_1006DBCB0);
      v77 = type metadata accessor for PendingActionContext(0);
      v78 = (*(*(v77 - 8) + 48))(v74, 1, v77);
      v79 = *(v0 + 1176);
      LODWORD(v334) = v23;
      if (v78 == 1)
      {
        sub_10000BE18(v79, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_72;
      }

      v144 = *(v79 + 56);
      v145 = *(v0 + 1176);

      sub_100267A1C(v145, type metadata accessor for PendingActionContext);
      if (v144)
      {
        v146 = String.debugDescription.getter();
        v148 = v147;
      }

      else
      {
LABEL_72:
        v146 = 0;
        v148 = 0xE000000000000000;
      }

      v324 = *(v0 + 1304);
      v327 = *(v0 + 1424);
      v149 = *(v0 + 1208);
      v150 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v151 = sub_100141FE4(v146, v148, (v0 + 976));

      *(v75 + 4) = v151;
      _os_log_impl(&_mh_execute_header, v70, v71, "server requested an action to self heal: %s", v75, 0xCu);
      sub_10000BB78(v76);

      (*(v149 + 8))(v324, v150);
      v152 = v327;
LABEL_84:
      sub_100267A1C(v152, type metadata accessor for ActionRequest);
LABEL_15:
      v23 = v334;
      goto LABEL_16;
    }

    LODWORD(v334) = v23;
    defaultLogger()();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "display message received", v82, 2u);
    }

    v83 = *(v0 + 1424);
    v84 = *(v0 + 1352);
    v85 = *(v0 + 1336);
    v86 = *(v0 + 1208);
    v87 = *(v0 + 1200);
    v88 = *(v0 + 1008);
    v89 = *(v0 + 1000);

    v90 = *(v86 + 8);
    v90(v85, v87);
    sub_1002556F0(v83 + *(v84 + 20), v89, v88);
    type metadata accessor for IdentityProofingDataContext();
    v91 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v92 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v92 + 54);
    sub_100031B5C(&v92[4], v0 + 408);
    os_unfair_lock_unlock(v92 + 54);

    sub_100031918(v0 + 408);
    v330 = 0;
    v127 = sub_10054C274();
    v128 = *(v0 + 1896);
    v129 = *(v0 + 1424);
    v130 = *(v0 + 1416);
    v323 = v90;
    v326 = *(v0 + 1016);
    v131 = *(v0 + 1008);
    v132 = *(v0 + 1000);

    v133 = [v127 newBackgroundContext];
    *(v91 + 16) = v133;
    [v133 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v129, v130, type metadata accessor for ActionRequest);
    v134 = swift_allocObject();
    v134[2] = v91;
    v134[3] = v132;
    v134[4] = v131;
    v134[5] = v326;
    sub_100269F80(v130, v134 + ((v128 + 48) & ~v128), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v135 = *(v91 + 16);
    v136 = swift_allocObject();
    v136[2] = sub_100267BF8;
    v136[3] = v134;
    v136[4] = v321;
    v137 = swift_allocObject();
    *(v137 + 16) = sub_100267C5C;
    *(v137 + 24) = v136;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v137;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v138 = _Block_copy((v0 + 800));

    [v135 performBlockAndWait:v138];
    _Block_release(v138);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_172;
    }

    v140 = *v321;
    if (*v321)
    {
      swift_willThrow();
      v330 = v140;

      v23 = v334;
      v141 = *(v0 + 1328);
      v142 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v323(v141, v142);
    }

    else
    {

      v23 = v334;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_16:
    v21 = *(v0 + 1568) + 1;
    if (v21 == *(v0 + 1528))
    {
      goto LABEL_93;
    }
  }

  if (!v39)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    v94 = os_log_type_enabled(v40, v93);
    v43 = *(v0 + 1424);
    v44 = *(v0 + 1272);
    v45 = *(v0 + 1208);
    v46 = *(v0 + 1200);
    if (v94)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = v93;
      v49 = v40;
      v50 = "server requested an action to wait for update";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v49, v48, v50, v47, 2u);
    }

LABEL_47:

    (*(v45 + 8))(v44, v46);
LABEL_48:
    sub_100267A1C(v43, type metadata accessor for ActionRequest);
    goto LABEL_16;
  }

  if (v39 != 2)
  {
    defaultLogger()();
    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      *v207 = 0;
      _os_log_impl(&_mh_execute_header, v205, v206, "Starting Provisioning flow", v207, 2u);
    }

    v208 = *(v0 + 1312);
    v209 = *(v0 + 1208);
    v210 = *(v0 + 1200);
    v211 = *(v0 + 992);

    (*(v209 + 8))(v208, v210);
    if (*(v211 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v281 = *(v0 + 1424);
    v282 = *(*(v0 + 1352) + 20);
    v283 = swift_task_alloc();
    *(v0 + 1592) = v283;
    *v283 = v0;
    v283[1] = sub_10023710C;
    v284 = *(v0 + 1016);
    v285 = *(v0 + 1008);
    v286 = *(v0 + 1000);

    return sub_100229698(v281 + v282, v286, v285, v284, 0x61746E6567616DLL, 0xE700000000000000);
  }

  defaultLogger()();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "server requested an action to execute new workflow", v53, 2u);
  }

  v54 = *(v0 + 1424);
  v55 = *(v0 + 1352);
  v56 = *(v0 + 1320);
  v57 = *(v0 + 1208);
  v58 = *(v0 + 1200);
  v59 = *(v0 + 1192);

  (*(v57 + 8))(v56, v58);
  v60 = *(v55 + 20);
  sub_10000BBC4(v54 + v60, v59, &unk_100840960, &qword_1006DBCB0);
  v61 = type metadata accessor for PendingActionContext(0);
  v62 = *(*(v61 - 8) + 48);
  v63 = v62(v59, 1, v61);
  v64 = *(v0 + 1192);
  if (v63 == 1)
  {
    sub_10000BE18(v64, &unk_100840960, &qword_1006DBCB0);
    v65 = 3;
  }

  else
  {
    v65 = *(v64 + *(v61 + 76));
    sub_100267A1C(v64, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v65;
  v111 = *(v0 + 1184);
  sub_10000BBC4(v54 + v60, v111, &unk_100840960, &qword_1006DBCB0);
  v112 = v62(v111, 1, v61);
  v113 = *(v0 + 1184);
  v114 = *(v0 + 1096);
  if (v112 == 1)
  {
    sub_10000BE18(v113, &unk_100840960, &qword_1006DBCB0);
    v115 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
  }

  else
  {
    v116 = *(v61 + 72);
    v117 = *(v0 + 1184);
    sub_10000BBC4(v113 + v116, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v117, type metadata accessor for PendingActionContext);
  }

  v118 = *(v0 + 1096);
  sub_1002593E4(v118);
  sub_10000BE18(v118, &qword_100835968, &qword_1006DBC90);
  if (v65 <= 1)
  {
    v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v143)
    {
      goto LABEL_117;
    }

    goto LABEL_69;
  }

  if (v65 == 3)
  {
LABEL_69:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v23 = *(v0 + 1909);
    goto LABEL_16;
  }

LABEL_117:
  v240 = swift_task_alloc();
  *(v0 + 1576) = v240;
  *v240 = v0;
  v240[1] = sub_1002342A8;
  v241 = *(v0 + 1008);
  v242 = *(v0 + 1000);

  return sub_100259898(v54 + v60, v242, v241);
}

uint64_t sub_1002342A8()
{
  *(*v1 + 1584) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v2 = sub_10024F720;
  }

  else
  {
    v2 = sub_1002343D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1002343D4(__n128 a1)
{
  v294 = *(v2 + 1584);
  sub_100267A1C(*(v2 + 1424), type metadata accessor for ActionRequest);
  v3 = *(v2 + 1568) + 1;
  if (v3 == *(v2 + 1528))
  {
    goto LABEL_2;
  }

  v283 = (v2 + 984);
  while (2)
  {
    LODWORD(v293) = *(v2 + 1909);
    while (1)
    {
      *(v2 + 1568) = v3;
      *(v2 + 1908) = v293;
      *(v2 + 1560) = v294;
      v15 = *(v2 + 1520);
      if (v3 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_158;
      }

      v16 = *(v2 + 1424);
      v17 = *(v2 + 1016);
      v18 = *(v2 + 1008);
      v19 = *(v2 + 1000);
      v20 = *(*(v2 + 1360) + 72);
      sub_100269FE8(v15 + ((*(v2 + 1896) + 32) & ~*(v2 + 1896)) + v20 * v3, v16, type metadata accessor for ActionRequest);
      sub_10025DCD8(v16, v19, v18, v17);
      v21 = *v16;
      v22 = v16[1];

      v298._countAndFlagsBits = v21;
      v298._object = v22;
      v23 = sub_10025DC8C(v298);
      if (v23 > 5)
      {
        if (v23 <= 7)
        {
          if (v23 == 6)
          {
            defaultLogger()();
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              *v49 = 0;
              _os_log_impl(&_mh_execute_header, v47, v48, "display notification received", v49, 2u);
            }

            v9 = *(v2 + 1504);
            v10 = *(v2 + 1496);
            v1 = *(v2 + 1424);
            v11 = *(v2 + 1352);
            v12 = *(v2 + 1344);
            v13 = *(v2 + 1208);
            v14 = *(v2 + 1200);

            (*(v13 + 8))(v12, v14);
            sub_10000BE18(v10, &qword_10083E3E8, &unk_1006DBD00);
            sub_100269F80(v1, v10, type metadata accessor for ActionRequest);
            v9(v10, 0, 1, v11);
            goto LABEL_10;
          }

          defaultLogger()();
          v24 = Logger.logObject.getter();
          v1 = static os_log_type_t.debug.getter();
          v51 = os_log_type_enabled(v24, v1);
          v26 = *(v2 + 1424);
          v27 = *(v2 + 1264);
          v28 = *(v2 + 1208);
          v29 = *(v2 + 1200);
          if (v51)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = v1;
            v32 = v24;
            v33 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_35:
            _os_log_impl(&_mh_execute_header, v32, v31, v33, v30, 2u);
          }

          goto LABEL_36;
        }

        if (v23 != 8)
        {
          if (v23 != 10)
          {
            defaultLogger()();
            v168 = Logger.logObject.getter();
            v169 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v168, v169))
            {
              v170 = swift_slowAlloc();
              *v170 = 0;
              _os_log_impl(&_mh_execute_header, v168, v169, "server requested an action to store token", v170, 2u);
            }

            v171 = *(v2 + 1424);
            v172 = *(v2 + 1352);
            v173 = *(v2 + 1248);
            v174 = *(v2 + 1208);
            v175 = *(v2 + 1200);
            v176 = *(v2 + 1104);

            v177 = *(v174 + 8);
            *(v2 + 1672) = v177;
            v177(v173, v175);
            sub_10000BBC4(v171 + *(v172 + 20), v176, &unk_100840960, &qword_1006DBCB0);
            v178 = type metadata accessor for PendingActionContext(0);
            if ((*(*(v178 - 8) + 48))(v176, 1, v178) == 1)
            {
              v179 = *(v2 + 1104);

              swift_bridgeObjectRelease_n();
              sub_10000BE18(v179, &unk_100840960, &qword_1006DBCB0);
            }

            else
            {
              v191 = *(v2 + 1104);
              v192 = (v191 + *(v178 + 128));
              v193 = *v192;
              *(v2 + 1680) = *v192;
              v194 = v192[1];
              *(v2 + 1688) = v194;
              v196 = v192[2];
              v195 = v192[3];
              *(v2 + 1696) = v195;
              sub_1000AB7D8(v193, v194, v196, v195);
              sub_100267A1C(v191, type metadata accessor for PendingActionContext);
              if (v194)
              {
                v197 = *(v2 + 1072);
                v198 = *(v2 + 1064);
                v199 = *(v2 + 1056);
                static String.Encoding.utf8.getter();
                v200 = String.data(using:allowLossyConversion:)();
                v202 = v201;
                *(v2 + 1704) = v200;
                *(v2 + 1712) = v201;
                (*(v198 + 8))(v197, v199);
                if (v202 >> 60 != 15)
                {
                  if (qword_100832C20 != -1)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_142;
                }

                swift_bridgeObjectRelease_n();
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }
            }

            v247 = *(v2 + 1424);
            (*(*(v2 + 1040) + 104))(*(v2 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v2 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v247, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v2 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v8 = *(v2 + 8);
            goto LABEL_4;
          }

          defaultLogger()();
          v24 = Logger.logObject.getter();
          v1 = static os_log_type_t.error.getter();
          v25 = os_log_type_enabled(v24, v1);
          v26 = *(v2 + 1424);
          v27 = *(v2 + 1232);
          v28 = *(v2 + 1208);
          v29 = *(v2 + 1200);
          if (v25)
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            v31 = v1;
            v32 = v24;
            v33 = "INVALID ACTION REQUEST";
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        v52 = *(v2 + 1424);
        v53 = *(v2 + 1384);
        defaultLogger()();
        sub_100269FE8(v52, v53, type metadata accessor for ActionRequest);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();
        v56 = os_log_type_enabled(v54, v55);
        v57 = *(v2 + 1384);
        if (!v56)
        {
          v1 = *(v2 + 1256);
          v77 = *(v2 + 1208);
          v78 = *(v2 + 1200);

          sub_100267A1C(v57, type metadata accessor for ActionRequest);
          (*(v77 + 8))(v1, v78);
LABEL_54:
          v101 = *(v2 + 1112);
          sub_10000BBC4(*(v2 + 1424) + *(*(v2 + 1352) + 20), v101, &unk_100840960, &qword_1006DBCB0);
          v102 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v102 - 8) + 48))(v101, 1, v102) == 1)
          {
            v103 = *(v2 + 1112);
            sub_100267A1C(*(v2 + 1424), type metadata accessor for ActionRequest);
            sub_10000BE18(v103, &unk_100840960, &qword_1006DBCB0);
            goto LABEL_10;
          }

          v104 = *(v2 + 1112);
          v105 = (v104 + *(v102 + 112));
          v107 = *v105;
          v106 = v105[1];

          sub_100267A1C(v104, type metadata accessor for PendingActionContext);
          if (!v106)
          {
            sub_100267A1C(*(v2 + 1424), type metadata accessor for ActionRequest);
            goto LABEL_10;
          }

          v108 = *(v2 + 1088);
          v109 = *(v2 + 1080);
          v110 = *(v2 + 1024);
          v111 = type metadata accessor for TaskPriority();
          v112 = *(v111 - 8);
          (*(v112 + 56))(v108, 1, 1, v111);
          v113 = swift_allocObject();
          v113[2] = 0;
          v113[3] = 0;
          v113[4] = v110;
          v113[5] = v107;
          v113[6] = v106;
          sub_10000BBC4(v108, v109, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v108) = (*(v112 + 48))(v109, 1, v111);

          v114 = *(v2 + 1080);
          if (v108 == 1)
          {
            sub_10000BE18(*(v2 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v112 + 8))(v114, v111);
          }

          v1 = v113[2];
          swift_unknownObjectRetain();

          if (v1)
          {
            swift_getObjectType();
            v121 = dispatch thunk of Actor.unownedExecutor.getter();
            v123 = v122;
            swift_unknownObjectRelease();
          }

          else
          {
            v121 = 0;
            v123 = 0;
          }

          sub_10000BE18(*(v2 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v123 | v121)
          {
            *(v2 + 848) = 0;
            *(v2 + 856) = 0;
            *(v2 + 864) = v121;
            *(v2 + 872) = v123;
          }

          v26 = *(v2 + 1424);
          swift_task_create();

          goto LABEL_37;
        }

        v58 = *(v2 + 1352);
        v59 = *(v2 + 1120);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *(v2 + 960) = v61;
        *v60 = 136315138;
        sub_10000BBC4(v57 + *(v58 + 20), v59, &unk_100840960, &qword_1006DBCB0);
        v62 = type metadata accessor for PendingActionContext(0);
        v63 = (*(*(v62 - 8) + 48))(v59, 1, v62);
        v64 = *(v2 + 1120);
        if (v63 == 1)
        {
          sub_10000BE18(*(v2 + 1120), &unk_100840960, &qword_1006DBCB0);
        }

        else
        {
          v95 = (v64 + *(v62 + 112));
          v96 = *v95;
          v97 = v95[1];

          sub_100267A1C(v64, type metadata accessor for PendingActionContext);
          if (v97)
          {
            sub_100267A1C(*(v2 + 1384), type metadata accessor for ActionRequest);
LABEL_53:
            v1 = *(v2 + 1256);
            v98 = *(v2 + 1208);
            v99 = *(v2 + 1200);
            v100 = sub_100141FE4(v96, v97, (v2 + 960));

            *(v60 + 4) = v100;
            _os_log_impl(&_mh_execute_header, v54, v55, "server requested to delete the Account Key Signing Key with identifier %s", v60, 0xCu);
            sub_10000BB78(v61);

            (*(v98 + 8))(v1, v99);
            goto LABEL_54;
          }
        }

        sub_100267A1C(*(v2 + 1384), type metadata accessor for ActionRequest);

        v97 = 0xE300000000000000;
        v96 = 4999502;
        goto LABEL_53;
      }

      if (v23 <= 2)
      {
        break;
      }

      if (v23 == 3)
      {
        v65 = *(v2 + 1424);
        v66 = *(v2 + 1408);
        defaultLogger()();
        sub_100269FE8(v65, v66, type metadata accessor for ActionRequest);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = *(v2 + 1408);
          v70 = *(v2 + 1352);
          v71 = *(v2 + 1176);
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *(v2 + 976) = v73;
          *v72 = 136315138;
          sub_10000BBC4(v69 + *(v70 + 20), v71, &unk_100840960, &qword_1006DBCB0);
          v74 = type metadata accessor for PendingActionContext(0);
          v75 = (*(*(v74 - 8) + 48))(v71, 1, v74);
          v76 = *(v2 + 1176);
          if (v75 == 1)
          {
            sub_10000BE18(*(v2 + 1176), &unk_100840960, &qword_1006DBCB0);
            goto LABEL_61;
          }

          v115 = *(v76 + 56);

          sub_100267A1C(v76, type metadata accessor for PendingActionContext);
          if (v115)
          {
            v116 = String.debugDescription.getter();
            v118 = v117;
          }

          else
          {
LABEL_61:
            v116 = 0;
            v118 = 0xE000000000000000;
          }

          v291 = *(v2 + 1424);
          v285 = *(v2 + 1304);
          v119 = *(v2 + 1208);
          v1 = *(v2 + 1200);
          sub_100267A1C(*(v2 + 1408), type metadata accessor for ActionRequest);
          v120 = sub_100141FE4(v116, v118, (v2 + 976));

          *(v72 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v67, v68, "server requested an action to self heal: %s", v72, 0xCu);
          sub_10000BB78(v73);

          (*(v119 + 8))(v285, v1);
          sub_100267A1C(v291, type metadata accessor for ActionRequest);
          goto LABEL_10;
        }

        v79 = *(v2 + 1424);
        v1 = *(v2 + 1408);
        v80 = *(v2 + 1304);
        v81 = *(v2 + 1208);
        v82 = *(v2 + 1200);

        sub_100267A1C(v1, type metadata accessor for ActionRequest);
        (*(v81 + 8))(v80, v82);
        sub_100267A1C(v79, type metadata accessor for ActionRequest);
      }

      else
      {
        if (v23 != 4)
        {
          v155 = *(v2 + 1424);
          v156 = *(v2 + 1400);
          defaultLogger()();
          sub_100269FE8(v155, v156, type metadata accessor for ActionRequest);
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.debug.getter();
          v159 = os_log_type_enabled(v157, v158);
          v160 = *(v2 + 1400);
          if (v159)
          {
            v161 = *(v2 + 1352);
            v162 = *(v2 + 1168);
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            *(v2 + 968) = v164;
            *v163 = 136315138;
            sub_10000BBC4(v160 + *(v161 + 20), v162, &unk_100840960, &qword_1006DBCB0);
            v165 = type metadata accessor for PendingActionContext(0);
            v166 = (*(*(v165 - 8) + 48))(v162, 1, v165);
            v167 = *(v2 + 1168);
            if (v166 == 1)
            {
              sub_10000BE18(*(v2 + 1168), &unk_100840960, &qword_1006DBCB0);
              goto LABEL_110;
            }

            v203 = *(v167 + 72);

            sub_100267A1C(v167, type metadata accessor for PendingActionContext);
            if (v203)
            {
              v204 = String.debugDescription.getter();
              v206 = v205;
            }

            else
            {
LABEL_110:
              v204 = 0;
              v206 = 0xE000000000000000;
            }

            v296 = *(v2 + 1296);
            v207 = *(v2 + 1208);
            v208 = *(v2 + 1200);
            sub_100267A1C(*(v2 + 1400), type metadata accessor for ActionRequest);
            v209 = sub_100141FE4(v204, v206, (v2 + 968));

            *(v163 + 4) = v209;
            _os_log_impl(&_mh_execute_header, v157, v158, "server requested an action to set state:%s", v163, 0xCu);
            sub_10000BB78(v164);

            v190 = *(v207 + 8);
            v190(v296, v208);
          }

          else
          {
            v187 = *(v2 + 1296);
            v188 = *(v2 + 1208);
            v189 = *(v2 + 1200);

            sub_100267A1C(v160, type metadata accessor for ActionRequest);
            v190 = *(v188 + 8);
            v190(v187, v189);
          }

          *(v2 + 1608) = v190;
          v210 = *(*(v2 + 1520) + 16);
          if (!v210)
          {
LABEL_121:
            v216 = 1;
LABEL_123:
            v217 = *(v2 + 1488);
            v218 = *(v2 + 1480);
            (*(v2 + 1504))(v217, v216, 1, *(v2 + 1352));
            defaultLogger()();
            sub_10000BBC4(v217, v218, &qword_10083E3E8, &unk_1006DBD00);
            v219 = Logger.logObject.getter();
            v220 = static os_log_type_t.debug.getter();
            v221 = os_log_type_enabled(v219, v220);
            v222 = *(v2 + 1480);
            if (v221)
            {
              v223 = *(v2 + 1360);
              v224 = *(v2 + 1352);
              v225 = swift_slowAlloc();
              *v225 = 67109120;
              LODWORD(v224) = (*(v223 + 48))(v222, 1, v224) != 1;
              sub_10000BE18(v222, &qword_10083E3E8, &unk_1006DBD00);
              *(v225 + 4) = v224;
              _os_log_impl(&_mh_execute_header, v219, v220, "Biome data exists to be donated? -> %{BOOL}d", v225, 8u);
            }

            else
            {
              sub_10000BE18(v222, &qword_10083E3E8, &unk_1006DBD00);
            }

            v226 = v219;
            v227 = *(v2 + 1488);
            v228 = *(v2 + 1472);
            v229 = *(v2 + 1360);
            v230 = *(v2 + 1352);
            v231 = *(v2 + 1288);
            v232 = *(v2 + 1208);
            v233 = *(v2 + 1200);

            *(v2 + 1616) = (v232 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v190(v231, v233);
            sub_10000BBC4(v227, v228, &qword_10083E3E8, &unk_1006DBD00);
            v234 = *(v229 + 48);
            v235 = v234(v228, 1, v230);
            v236 = *(v2 + 1472);
            v292 = v234;
            if (v235 == 1)
            {
              v237 = *(v2 + 1160);

              sub_10000BE18(v236, &qword_10083E3E8, &unk_1006DBD00);
              v238 = type metadata accessor for PendingActionContext(0);
              (*(*(v238 - 8) + 56))(v237, 1, 1, v238);
            }

            else
            {
              sub_10000BBC4(v236 + *(*(v2 + 1352) + 20), *(v2 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v236, type metadata accessor for ActionRequest);
            }

            v239 = *(v2 + 1160);
            v240 = *(v2 + 992);
            sub_100300724(*(v2 + 1000), *(v2 + 1008), v239);

            sub_10000BE18(v239, &unk_100840960, &qword_1006DBCB0);
            if (*(v240 + 152) != 1)
            {
              if (*(*(v2 + 992) + 136) > 1u)
              {
                if (*(*(v2 + 992) + 136) == 2)
                {
                }
              }

              else
              {
                _stringCompareWithSmolCheck(_:_:expecting:)();
              }
            }

            v252 = *(v2 + 1424);
            v253 = *(v2 + 1152);
            v254 = *(*(v2 + 1352) + 20);
            *(v2 + 1904) = v254;
            sub_10000BBC4(v252 + v254, v253, &unk_100840960, &qword_1006DBCB0);
            v255 = type metadata accessor for PendingActionContext(0);
            *(v2 + 1624) = v255;
            v256 = *(v255 - 8);
            v257 = *(v256 + 48);
            *(v2 + 1632) = v257;
            *(v2 + 1640) = (v256 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
            v258 = v257(v253, 1, v255);
            v259 = *(v2 + 1152);
            v286 = v254;
            v287 = v252;
            if (v258 == 1)
            {
              sub_10000BE18(v259, &unk_100840960, &qword_1006DBCB0);
              v289 = 0;
              v260 = 0;
            }

            else
            {
              v260 = *(v259 + 72);
              v289 = *(v259 + 64);
              v261 = *(v2 + 1152);

              sub_100267A1C(v261, type metadata accessor for PendingActionContext);
            }

            v288 = v260;
            *(v2 + 1648) = v260;
            v262 = *(v2 + 1488);
            v263 = *(v2 + 1456);
            v264 = *(v2 + 1352);
            sub_10000BBC4(*(v2 + 1496), *(v2 + 1464), &qword_10083E3E8, &unk_1006DBD00);
            sub_10000BBC4(v262, v263, &qword_10083E3E8, &unk_1006DBD00);
            v265 = v292(v263, 1, v264);
            v266 = *(v2 + 1456);
            if (v265 == 1)
            {
              v267 = *(v2 + 1144);
              sub_10000BE18(*(v2 + 1456), &qword_10083E3E8, &unk_1006DBD00);
              (*(v256 + 56))(v267, 1, 1, v255);
              v269 = v286;
              v268 = v287;
            }

            else
            {
              v270 = *(v2 + 1144);
              sub_10000BBC4(v266 + *(*(v2 + 1352) + 20), v270, &unk_100840960, &qword_1006DBCB0);
              sub_100267A1C(v266, type metadata accessor for ActionRequest);
              v269 = v286;
              v268 = v287;
              v257(v270, 1, v255);
            }

            v271 = *(v2 + 1136);
            sub_10000BE18(*(v2 + 1144), &unk_100840960, &qword_1006DBCB0);
            sub_10000BBC4(v268 + v269, v271, &unk_100840960, &qword_1006DBCB0);
            v272 = v257(v271, 1, v255);
            v273 = *(v2 + 1136);
            if (v272 == 1)
            {
              sub_10000BE18(v273, &unk_100840960, &qword_1006DBCB0);
            }

            else
            {
              sub_100267A1C(v273, type metadata accessor for PendingActionContext);
            }

            v274 = swift_task_alloc();
            *(v2 + 1656) = v274;
            *v274 = v2;
            v274[1] = sub_100239F30;
            v275 = *(v2 + 1536);
            v276 = *(v2 + 1464);
            v277 = *(v2 + 1016);
            v278 = *(v2 + 1008);
            v279 = *(v2 + 1000);

            sub_10025744C(v289, v288, v275, v279, v278, v277, v293, v276);
            return;
          }

          v211 = 0;
          v212 = 0;
          while (1)
          {
            v213 = *(v2 + 1520);
            if (v212 >= *(v213 + 16))
            {
              break;
            }

            v214 = *(v2 + 1392);
            sub_100269FE8(v213 + v211 + ((*(v2 + 1896) + 32) & ~*(v2 + 1896)), v214, type metadata accessor for ActionRequest);
            v215 = *v214 == 0x5F4F545F444E4553 && v214[1] == 0xED0000454D4F4942;
            if (v215 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_100269F80(*(v2 + 1392), *(v2 + 1488), type metadata accessor for ActionRequest);
              v216 = 0;
              goto LABEL_123;
            }

            ++v212;
            sub_100267A1C(*(v2 + 1392), type metadata accessor for ActionRequest);
            v211 += v20;
            if (v210 == v212)
            {
              goto LABEL_121;
            }
          }

LABEL_163:
          __break(1u);
LABEL_164:
          swift_once();
LABEL_142:
          v248 = *(qword_100882228 + 16);
          *(v2 + 1720) = v248;
          v249 = v248;
          v250 = String._bridgeToObjectiveC()();
          *(v2 + 1728) = v250;
          *(v2 + 16) = v2;
          *(v2 + 56) = v2 + 880;
          *(v2 + 24) = sub_10023D0AC;
          v251 = swift_continuation_init();
          *(v2 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
          *(v2 + 640) = v251;
          *(v2 + 608) = _NSConcreteStackBlock;
          *(v2 + 616) = 1107296256;
          *(v2 + 624) = sub_100672A4C;
          *(v2 + 632) = &unk_10080B0F0;
          [v249 retrievePIITokenFromSyncableKeyStoreForIdentifier:v250 completion:v2 + 608];

          _swift_continuation_await(v2 + 16);
          return;
        }

        defaultLogger()();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "display message received", v36, 2u);
        }

        v37 = *(v2 + 1424);
        v38 = *(v2 + 1352);
        v39 = *(v2 + 1336);
        v40 = *(v2 + 1208);
        v41 = *(v2 + 1200);
        v42 = *(v2 + 1008);
        v43 = *(v2 + 1000);

        v290 = *(v40 + 8);
        v290(v39, v41);
        sub_1002556F0(v37 + *(v38 + 20), v43, v42);
        type metadata accessor for IdentityProofingDataContext();
        v44 = swift_allocObject();
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v45 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v45 + 54);
        sub_100031B5C(&v45[4], v2 + 408);
        os_unfair_lock_unlock(v45 + 54);
        if (v294)
        {
          return;
        }

        sub_100031918(v2 + 408);
        v46 = sub_10054C274();
        v83 = *(v2 + 1896);
        v84 = *(v2 + 1424);
        v85 = *(v2 + 1416);
        v295 = *(v2 + 1016);
        v1 = *(v2 + 1008);
        v284 = *(v2 + 1000);
        v86 = v46;

        v87 = [v86 newBackgroundContext];
        *(v44 + 16) = v87;
        [v87 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

        sub_100269FE8(v84, v85, type metadata accessor for ActionRequest);
        v88 = swift_allocObject();
        v88[2] = v44;
        v88[3] = v284;
        v88[4] = v1;
        v88[5] = v295;
        sub_100269F80(v85, v88 + ((v83 + 48) & ~v83), type metadata accessor for ActionRequest);
        *(v2 + 984) = 0;
        v89 = *(v44 + 16);
        v90 = swift_allocObject();
        v90[2] = sub_100267BF8;
        v90[3] = v88;
        v90[4] = v283;
        v91 = swift_allocObject();
        *(v91 + 16) = sub_100267C5C;
        *(v91 + 24) = v90;
        *(v2 + 832) = sub_10026CBB8;
        *(v2 + 840) = v91;
        *(v2 + 800) = _NSConcreteStackBlock;
        *(v2 + 808) = 1107296256;
        *(v2 + 816) = sub_10057E264;
        *(v2 + 824) = &unk_10080B258;
        v92 = _Block_copy((v2 + 800));

        [v89 performBlockAndWait:v92];
        _Block_release(v92);
        LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

        if (v92)
        {
          __break(1u);
          goto LABEL_163;
        }

        if (*v283)
        {
          swift_willThrow();

          v93 = *(v2 + 1328);
          v94 = *(v2 + 1200);
          v1 = *(v2 + 1208) + 8;
          defaultLogger()();
          DIPRecordError(_:message:log:)();

          v290(v93, v94);
        }

        else
        {
        }

        sub_100267A1C(*(v2 + 1424), type metadata accessor for ActionRequest);
        v294 = 0;
      }

LABEL_10:
      v3 = *(v2 + 1568) + 1;
      if (v3 == *(v2 + 1528))
      {
        goto LABEL_2;
      }
    }

    if (!v23)
    {
      defaultLogger()();
      v24 = Logger.logObject.getter();
      v1 = static os_log_type_t.debug.getter();
      v50 = os_log_type_enabled(v24, v1);
      v26 = *(v2 + 1424);
      v27 = *(v2 + 1272);
      v28 = *(v2 + 1208);
      v29 = *(v2 + 1200);
      if (v50)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = v1;
        v32 = v24;
        v33 = "server requested an action to wait for update";
        goto LABEL_35;
      }

LABEL_36:

      (*(v28 + 8))(v27, v29);
LABEL_37:
      sub_100267A1C(v26, type metadata accessor for ActionRequest);
      goto LABEL_10;
    }

    if (v23 == 1)
    {
      defaultLogger()();
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&_mh_execute_header, v180, v181, "Starting Provisioning flow", v182, 2u);
      }

      v183 = *(v2 + 1312);
      v184 = *(v2 + 1208);
      v185 = *(v2 + 1200);
      v186 = *(v2 + 992);

      (*(v184 + 8))(v183, v185);
      if (*(v186 + 152) != 1 && (*(*(v2 + 992) + 136) <= 1u || *(*(v2 + 992) + 136) == 2))
      {
      }

      v241 = *(v2 + 1424);
      v242 = *(*(v2 + 1352) + 20);
      v243 = swift_task_alloc();
      *(v2 + 1592) = v243;
      *v243 = v2;
      v243[1] = sub_10023710C;
      v244 = *(v2 + 1016);
      v245 = *(v2 + 1008);
      v246 = *(v2 + 1000);

      sub_100229698(v241 + v242, v246, v245, v244, 0x61746E6567616DLL, 0xE700000000000000);
      return;
    }

    defaultLogger()();
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "server requested an action to execute new workflow", v126, 2u);
    }

    v127 = *(v2 + 1424);
    v128 = *(v2 + 1352);
    v129 = *(v2 + 1320);
    v130 = *(v2 + 1208);
    v131 = *(v2 + 1200);
    v132 = *(v2 + 1192);

    (*(v130 + 8))(v129, v131);
    v293 = *(v128 + 20);
    sub_10000BBC4(v127 + v293, v132, &unk_100840960, &qword_1006DBCB0);
    v133 = type metadata accessor for PendingActionContext(0);
    v134 = *(*(v133 - 8) + 48);
    v135 = v134(v132, 1, v133);
    v136 = *(v2 + 1192);
    if (v135 == 1)
    {
      sub_10000BE18(v136, &unk_100840960, &qword_1006DBCB0);
      v137 = 3;
    }

    else
    {
      v137 = *(v136 + *(v133 + 76));
      sub_100267A1C(v136, type metadata accessor for PendingActionContext);
    }

    *(v2 + 1909) = v137;
    v138 = *(v2 + 1184);
    v1 = v127;
    sub_10000BBC4(v127 + v293, v138, &unk_100840960, &qword_1006DBCB0);
    v139 = v134(v138, 1, v133);
    v140 = *(v2 + 1184);
    v141 = *(v2 + 1096);
    if (v139 == 1)
    {
      sub_10000BE18(v140, &unk_100840960, &qword_1006DBCB0);
      v142 = type metadata accessor for WorkflowRecommendationResponse(0);
      (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
    }

    else
    {
      v143 = *(v133 + 72);
      v144 = *(v2 + 1184);
      sub_10000BBC4(v140 + v143, *(v2 + 1096), &qword_100835968, &qword_1006DBC90);
      sub_100267A1C(v144, type metadata accessor for PendingActionContext);
    }

    v145 = *(v2 + 1096);
    sub_1002593E4(v145);
    sub_10000BE18(v145, &qword_100835968, &qword_1006DBC90);
    if (v137 > 1)
    {
      if (v137 == 3)
      {
LABEL_86:
        sub_100267A1C(*(v2 + 1424), type metadata accessor for ActionRequest);
        v3 = *(v2 + 1568) + 1;
        if (v3 != *(v2 + 1528))
        {
          continue;
        }

LABEL_2:

        v4 = *(v2 + 1496);
        v5 = *(v2 + 1448);
        v6 = *(v2 + 1360);
        v7 = *(v2 + 1352);

        sub_10000BBC4(v4, v5, &qword_10083E3E8, &unk_1006DBD00);
        if ((*(v6 + 48))(v5, 1, v7) == 1)
        {
          sub_10000BE18(*(v2 + 1496), &qword_10083E3E8, &unk_1006DBD00);
          sub_10000BE18(*(v2 + 1448), &qword_10083E3E8, &unk_1006DBD00);

          v8 = *(v2 + 8);
LABEL_4:

          v8();
        }

        else
        {
          v147 = *(v2 + 1504);
          v148 = *(v2 + 1440);
          v149 = *(v2 + 1376);
          v150 = *(v2 + 1352);
          sub_100269F80(*(v2 + 1448), v149, type metadata accessor for ActionRequest);
          sub_100269FE8(v149, v148, type metadata accessor for ActionRequest);
          v147(v148, 0, 1, v150);
          v151 = swift_task_alloc();
          *(v2 + 1880) = v151;
          *v151 = v2;
          v151[1] = sub_10024F280;
          v152 = *(v2 + 1440);
          v153 = *(v2 + 1008);
          v154 = *(v2 + 1000);

          sub_1002550B8(v152, v154, v153);
        }

        return;
      }

LABEL_158:

      goto LABEL_159;
    }

    break;
  }

  v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v146 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_159:
  v280 = swift_task_alloc();
  *(v2 + 1576) = v280;
  *v280 = v2;
  v280[1] = sub_1002342A8;
  v281 = *(v2 + 1008);
  v282 = *(v2 + 1000);

  sub_100259898(v1 + v293, v282, v281);
}

uint64_t sub_10023710C()
{
  *(*v1 + 1600) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v2 = sub_10024FA84;
  }

  else
  {
    v2 = sub_100237238;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100237238(__n128 a1)
{
  sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
  v2 = *(v1 + 1568) + 1;
  if (v2 == *(v1 + 1528))
  {
LABEL_2:

    v3 = *(v1 + 1496);
    v4 = *(v1 + 1448);
    v5 = *(v1 + 1360);
    v6 = *(v1 + 1352);

    sub_10000BBC4(v3, v4, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v5 + 48))(v4, 1, v6) == 1)
    {
      sub_10000BE18(*(v1 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v1 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v7 = *(v1 + 8);
LABEL_4:

      v7();
    }

    else
    {
      v162 = *(v1 + 1504);
      v163 = *(v1 + 1440);
      v164 = *(v1 + 1376);
      v165 = *(v1 + 1352);
      sub_100269F80(*(v1 + 1448), v164, type metadata accessor for ActionRequest);
      sub_100269FE8(v164, v163, type metadata accessor for ActionRequest);
      v162(v163, 0, 1, v165);
      v166 = swift_task_alloc();
      *(v1 + 1880) = v166;
      *v166 = v1;
      v166[1] = sub_10024F280;
      v167 = *(v1 + 1440);
      v168 = *(v1 + 1008);
      v169 = *(v1 + 1000);

      sub_1002550B8(v167, v169, v168);
    }

    return;
  }

  v299 = (v1 + 984);
  v8 = *(v1 + 1908);
  v309 = *(v1 + 1600);
  v307 = "redential list provided";
  v9 = &unk_1006BF9D0;
  while (1)
  {
    *(v1 + 1568) = v2;
    *(v1 + 1908) = v8;
    *(v1 + 1560) = v309;
    v17 = *(v1 + 1520);
    if (v2 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v18 = *(v1 + 1424);
    v19 = *(v1 + 1016);
    v20 = *(v1 + 1008);
    v21 = *(v1 + 1000);
    v22 = *(*(v1 + 1360) + 72);
    sub_100269FE8(v17 + ((*(v1 + 1896) + 32) & ~*(v1 + 1896)) + v22 * v2, v18, type metadata accessor for ActionRequest);
    sub_10025DCD8(v18, v21, v20, v19);
    v23 = *v18;
    v24 = v18[1];

    v315._countAndFlagsBits = v23;
    v315._object = v24;
    v25 = sub_10025DC8C(v315);
    if (v25 > 4)
    {
      if (v25 <= 7)
      {
        if (v25 != 6)
        {
          if (v25 == 7)
          {
            defaultLogger()();
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.debug.getter();
            v28 = os_log_type_enabled(v26, v27);
            v29 = *(v1 + 1424);
            v30 = *(v1 + 1264);
            v31 = *(v1 + 1208);
            v32 = *(v1 + 1200);
            if (v28)
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              v34 = v27;
              v35 = v26;
              v36 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_42:
              _os_log_impl(&_mh_execute_header, v35, v34, v36, v33, 2u);
              v9 = &unk_1006BF9D0;

              goto LABEL_43;
            }

            goto LABEL_43;
          }

          v170 = *(v1 + 1424);
          v171 = *(v1 + 1400);
          defaultLogger()();
          sub_100269FE8(v170, v171, type metadata accessor for ActionRequest);
          v172 = Logger.logObject.getter();
          v173 = static os_log_type_t.debug.getter();
          v174 = os_log_type_enabled(v172, v173);
          v175 = *(v1 + 1400);
          LOBYTE(v308) = v8;
          if (!v174)
          {
            v202 = *(v1 + 1296);
            v203 = *(v1 + 1208);
            v204 = *(v1 + 1200);

            sub_100267A1C(v175, type metadata accessor for ActionRequest);
            v205 = *(v203 + 8);
            v205(v202, v204);
LABEL_115:
            v312 = v205;
            *(v1 + 1608) = v205;
            v228 = *(*(v1 + 1520) + 16);
            if (v228)
            {
              v229 = 0;
              v230 = 0;
              while (1)
              {
                v231 = *(v1 + 1520);
                if (v230 >= *(v231 + 16))
                {
                  break;
                }

                v232 = *(v1 + 1392);
                sub_100269FE8(v231 + v229 + ((*(v1 + 1896) + 32) & ~*(v1 + 1896)), v232, type metadata accessor for ActionRequest);
                v233 = *v232 == 0x5F4F545F444E4553 && v232[1] == 0xED0000454D4F4942;
                if (v233 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v1 + 1392), *(v1 + 1488), type metadata accessor for ActionRequest);
                  v234 = 0;
                  goto LABEL_126;
                }

                ++v230;
                sub_100267A1C(*(v1 + 1392), type metadata accessor for ActionRequest);
                v229 += v22;
                if (v228 == v230)
                {
                  goto LABEL_124;
                }
              }

LABEL_163:
              __break(1u);
              goto LABEL_164;
            }

LABEL_124:
            v234 = 1;
LABEL_126:
            v235 = *(v1 + 1488);
            v236 = *(v1 + 1480);
            (*(v1 + 1504))(v235, v234, 1, *(v1 + 1352));
            defaultLogger()();
            sub_10000BBC4(v235, v236, &qword_10083E3E8, &unk_1006DBD00);
            v237 = Logger.logObject.getter();
            v238 = static os_log_type_t.debug.getter();
            v239 = os_log_type_enabled(v237, v238);
            v240 = *(v1 + 1480);
            if (v239)
            {
              v241 = *(v1 + 1360);
              v242 = *(v1 + 1352);
              v243 = swift_slowAlloc();
              *v243 = 67109120;
              LODWORD(v242) = (*(v241 + 48))(v240, 1, v242) != 1;
              sub_10000BE18(v240, &qword_10083E3E8, &unk_1006DBD00);
              *(v243 + 4) = v242;
              _os_log_impl(&_mh_execute_header, v237, v238, "Biome data exists to be donated? -> %{BOOL}d", v243, 8u);
            }

            else
            {
              sub_10000BE18(*(v1 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v244 = v237;
            v245 = *(v1 + 1488);
            v246 = *(v1 + 1472);
            v247 = *(v1 + 1360);
            v248 = *(v1 + 1352);
            v249 = *(v1 + 1288);
            v250 = *(v1 + 1208);
            v251 = *(v1 + 1200);

            *(v1 + 1616) = (v250 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v312(v249, v251);
            sub_10000BBC4(v245, v246, &qword_10083E3E8, &unk_1006DBD00);
            v252 = *(v247 + 48);
            v253 = (v252)(v246, 1, v248);
            v254 = *(v1 + 1472);
            if (v253 == 1)
            {
              v255 = *(v1 + 1160);

              sub_10000BE18(v254, &qword_10083E3E8, &unk_1006DBD00);
              v256 = type metadata accessor for PendingActionContext(0);
              (*(*(v256 - 8) + 56))(v255, 1, 1, v256);
            }

            else
            {
              sub_10000BBC4(v254 + *(*(v1 + 1352) + 20), *(v1 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v254, type metadata accessor for ActionRequest);
            }

            v257 = *(v1 + 1160);
            v258 = *(v1 + 992);
            sub_100300724(*(v1 + 1000), *(v1 + 1008), v257);

            sub_10000BE18(v257, &unk_100840960, &qword_1006DBCB0);
            v307 = v252;
            if (*(v258 + 152) == 1)
            {
LABEL_150:
              v270 = *(v1 + 1424);
              v271 = *(v1 + 1152);
              v272 = *(*(v1 + 1352) + 20);
              *(v1 + 1904) = v272;
              sub_10000BBC4(v270 + v272, v271, &unk_100840960, &qword_1006DBCB0);
              v273 = type metadata accessor for PendingActionContext(0);
              *(v1 + 1624) = v273;
              v274 = *(v273 - 8);
              v275 = *(v274 + 48);
              *(v1 + 1632) = v275;
              *(v1 + 1640) = (v274 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v313 = v275;
              v276 = v275(v271, 1, v273);
              v277 = *(v1 + 1152);
              v301 = v272;
              v304 = v270;
              if (v276 == 1)
              {
                sub_10000BE18(v277, &unk_100840960, &qword_1006DBCB0);
                v306 = 0;
                v278 = 0;
              }

              else
              {
                v278 = *(v277 + 72);
                v306 = *(v277 + 64);
                v279 = *(v1 + 1152);

                sub_100267A1C(v279, type metadata accessor for PendingActionContext);
              }

              v305 = v278;
              *(v1 + 1648) = v278;
              v280 = *(v1 + 1488);
              v281 = *(v1 + 1456);
              v282 = *(v1 + 1352);
              sub_10000BBC4(*(v1 + 1496), *(v1 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v280, v281, &qword_10083E3E8, &unk_1006DBD00);
              v283 = (v307)(v281, 1, v282);
              v284 = *(v1 + 1456);
              if (v283 == 1)
              {
                v285 = *(v1 + 1144);
                sub_10000BE18(*(v1 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v274 + 56))(v285, 1, 1, v273);
                v286 = v308;
                v288 = v301;
                v287 = v304;
              }

              else
              {
                v289 = *(v1 + 1144);
                sub_10000BBC4(v284 + *(*(v1 + 1352) + 20), v289, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v284, type metadata accessor for ActionRequest);
                v286 = v308;
                v288 = v301;
                v287 = v304;
                v313(v289, 1, v273);
              }

              v290 = *(v1 + 1136);
              sub_10000BE18(*(v1 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v287 + v288, v290, &unk_100840960, &qword_1006DBCB0);
              v291 = v313(v290, 1, v273);
              v292 = *(v1 + 1136);
              if (v291 == 1)
              {
                sub_10000BE18(v292, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v292, type metadata accessor for PendingActionContext);
              }

              v293 = swift_task_alloc();
              *(v1 + 1656) = v293;
              *v293 = v1;
              v293[1] = sub_100239F30;
              v294 = *(v1 + 1536);
              v295 = *(v1 + 1464);
              v296 = *(v1 + 1016);
              v297 = *(v1 + 1008);
              v298 = *(v1 + 1000);

              sub_10025744C(v306, v305, v294, v298, v297, v296, v286, v295);
              return;
            }

            if (*(*(v1 + 992) + 136) > 1u)
            {
              if (*(*(v1 + 992) + 136) == 2)
              {
              }

              goto LABEL_150;
            }

LABEL_149:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_150;
          }

          v176 = *(v1 + 1352);
          v177 = *(v1 + 1168);
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          *(v1 + 968) = v179;
          *v178 = 136315138;
          sub_10000BBC4(v175 + *(v176 + 20), v177, &unk_100840960, &qword_1006DBCB0);
          v180 = type metadata accessor for PendingActionContext(0);
          v181 = (*(*(v180 - 8) + 48))(v177, 1, v180);
          v182 = *(v1 + 1168);
          if (v181 == 1)
          {
            sub_10000BE18(*(v1 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v221 = *(v182 + 72);

            sub_100267A1C(v182, type metadata accessor for PendingActionContext);
            if (v221)
            {
              v222 = String.debugDescription.getter();
              v224 = v223;

LABEL_114:
              v311 = *(v1 + 1296);
              v225 = *(v1 + 1208);
              v226 = *(v1 + 1200);
              sub_100267A1C(*(v1 + 1400), type metadata accessor for ActionRequest);
              v227 = sub_100141FE4(v222, v224, (v1 + 968));

              *(v178 + 4) = v227;
              _os_log_impl(&_mh_execute_header, v172, v173, "server requested an action to set state:%s", v178, 0xCu);
              sub_10000BB78(v179);

              v205 = *(v225 + 8);
              v205(v311, v226);
              goto LABEL_115;
            }
          }

          v222 = 0;
          v224 = 0xE000000000000000;
          goto LABEL_114;
        }

        v308 = v8;
        defaultLogger()();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "display notification received", v83, 2u);
        }

        v10 = *(v1 + 1504);
        v11 = *(v1 + 1496);
        v12 = *(v1 + 1424);
        v13 = *(v1 + 1352);
        v14 = *(v1 + 1344);
        v15 = *(v1 + 1208);
        v16 = *(v1 + 1200);

        (*(v15 + 8))(v14, v16);
        sub_10000BE18(v11, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v12, v11, type metadata accessor for ActionRequest);
        v10(v11, 0, 1, v13);
        goto LABEL_9;
      }

      if (v25 != 8)
      {
        if (v25 != 10)
        {
          defaultLogger()();
          v190 = Logger.logObject.getter();
          v191 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v190, v191))
          {
            v192 = swift_slowAlloc();
            *v192 = 0;
            _os_log_impl(&_mh_execute_header, v190, v191, "server requested an action to store token", v192, 2u);
          }

          v193 = *(v1 + 1424);
          v194 = *(v1 + 1352);
          v195 = *(v1 + 1248);
          v196 = *(v1 + 1208);
          v197 = *(v1 + 1200);
          v198 = *(v1 + 1104);

          v199 = *(v196 + 8);
          *(v1 + 1672) = v199;
          v199(v195, v197);
          sub_10000BBC4(v193 + *(v194 + 20), v198, &unk_100840960, &qword_1006DBCB0);
          v200 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v200 - 8) + 48))(v198, 1, v200) == 1)
          {
            v201 = *(v1 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v201, &unk_100840960, &qword_1006DBCB0);
LABEL_143:
            v265 = *(v1 + 1424);
            (*(*(v1 + 1040) + 104))(*(v1 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v1 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v265, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v1 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v7 = *(v1 + 8);
            goto LABEL_4;
          }

          v206 = *(v1 + 1104);
          v207 = (v206 + *(v200 + 128));
          v208 = *v207;
          *(v1 + 1680) = *v207;
          v209 = v207[1];
          *(v1 + 1688) = v209;
          v211 = v207[2];
          v210 = v207[3];
          *(v1 + 1696) = v210;
          sub_1000AB7D8(v208, v209, v211, v210);
          sub_100267A1C(v206, type metadata accessor for PendingActionContext);
          if (!v209)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_143;
          }

          v212 = *(v1 + 1072);
          v213 = *(v1 + 1064);
          v214 = *(v1 + 1056);
          static String.Encoding.utf8.getter();
          v215 = String.data(using:allowLossyConversion:)();
          v217 = v216;
          *(v1 + 1704) = v215;
          *(v1 + 1712) = v216;
          (*(v213 + 8))(v212, v214);
          if (v217 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_143;
          }

          if (qword_100832C20 == -1)
          {
LABEL_145:
            v266 = *(qword_100882228 + 16);
            *(v1 + 1720) = v266;
            v267 = v266;
            v268 = String._bridgeToObjectiveC()();
            *(v1 + 1728) = v268;
            *(v1 + 16) = v1;
            *(v1 + 56) = v1 + 880;
            *(v1 + 24) = sub_10023D0AC;
            v269 = swift_continuation_init();
            *(v1 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v1 + 640) = v269;
            *(v1 + 608) = _NSConcreteStackBlock;
            *(v1 + 616) = 1107296256;
            *(v1 + 624) = sub_100672A4C;
            *(v1 + 632) = &unk_10080B0F0;
            [v267 retrievePIITokenFromSyncableKeyStoreForIdentifier:v268 completion:v1 + 608];

            _swift_continuation_await(v1 + 16);
            return;
          }

LABEL_164:
          swift_once();
          goto LABEL_145;
        }

        defaultLogger()();
        v26 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        v53 = os_log_type_enabled(v26, v52);
        v29 = *(v1 + 1424);
        v30 = *(v1 + 1232);
        v31 = *(v1 + 1208);
        v32 = *(v1 + 1200);
        if (!v53)
        {
          goto LABEL_43;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = v52;
        v35 = v26;
        v36 = "INVALID ACTION REQUEST";
        goto LABEL_42;
      }

      v84 = *(v1 + 1424);
      v85 = *(v1 + 1384);
      defaultLogger()();
      sub_100269FE8(v84, v85, type metadata accessor for ActionRequest);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.info.getter();
      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v1 + 1384);
      v308 = v8;
      if (!v88)
      {
        v110 = *(v1 + 1256);
        v111 = *(v1 + 1208);
        v112 = *(v1 + 1200);

        sub_100267A1C(v89, type metadata accessor for ActionRequest);
        (*(v111 + 8))(v110, v112);
LABEL_74:
        v143 = *(v1 + 1112);
        sub_10000BBC4(*(v1 + 1424) + *(*(v1 + 1352) + 20), v143, &unk_100840960, &qword_1006DBCB0);
        v144 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v144 - 8) + 48))(v143, 1, v144) == 1)
        {
          v145 = *(v1 + 1112);
          sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v145, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_11;
        }

        v146 = *(v1 + 1112);
        v147 = (v146 + *(v144 + 112));
        v149 = *v147;
        v148 = v147[1];

        sub_100267A1C(v146, type metadata accessor for PendingActionContext);
        if (!v148)
        {
          sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
          v8 = v308;
          goto LABEL_11;
        }

        v150 = *(v1 + 1088);
        v151 = *(v1 + 1080);
        v152 = v9;
        v153 = *(v1 + 1024);
        v154 = type metadata accessor for TaskPriority();
        v155 = *(v154 - 8);
        (*(v155 + 56))(v150, 1, 1, v154);
        v156 = swift_allocObject();
        v156[2] = 0;
        v156[3] = 0;
        v156[4] = v153;
        v156[5] = v149;
        v156[6] = v148;
        sub_10000BBC4(v150, v151, &unk_100845860, v152);
        LODWORD(v150) = (*(v155 + 48))(v151, 1, v154);

        v157 = *(v1 + 1080);
        if (v150 == 1)
        {
          sub_10000BE18(*(v1 + 1080), &unk_100845860, v152);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v155 + 8))(v157, v154);
        }

        v9 = v152;
        v158 = v156[2];
        swift_unknownObjectRetain();

        v8 = v308;
        if (v158)
        {
          swift_getObjectType();
          v159 = dispatch thunk of Actor.unownedExecutor.getter();
          v161 = v160;
          swift_unknownObjectRelease();
        }

        else
        {
          v159 = 0;
          v161 = 0;
        }

        sub_10000BE18(*(v1 + 1088), &unk_100845860, v152);
        if (v161 | v159)
        {
          *(v1 + 848) = 0;
          *(v1 + 856) = 0;
          *(v1 + 864) = v159;
          *(v1 + 872) = v161;
        }

        v29 = *(v1 + 1424);
        swift_task_create();

        goto LABEL_44;
      }

      v90 = *(v1 + 1352);
      v91 = *(v1 + 1120);
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *(v1 + 960) = v93;
      *v92 = 136315138;
      sub_10000BBC4(v89 + *(v90 + 20), v91, &unk_100840960, &qword_1006DBCB0);
      v94 = type metadata accessor for PendingActionContext(0);
      v95 = (*(*(v94 - 8) + 48))(v91, 1, v94);
      v96 = *(v1 + 1120);
      if (v95 == 1)
      {
        sub_10000BE18(*(v1 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v136 = (v96 + *(v94 + 112));
        v137 = *v136;
        v138 = v136[1];

        sub_100267A1C(v96, type metadata accessor for PendingActionContext);
        if (v138)
        {
          sub_100267A1C(*(v1 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v139 = *(v1 + 1256);
          v140 = *(v1 + 1208);
          v141 = *(v1 + 1200);
          v142 = sub_100141FE4(v137, v138, (v1 + 960));

          *(v92 + 4) = v142;
          _os_log_impl(&_mh_execute_header, v86, v87, "server requested to delete the Account Key Signing Key with identifier %s", v92, 0xCu);
          sub_10000BB78(v93);

          (*(v140 + 8))(v139, v141);
          v8 = v308;
          v9 = &unk_1006BF9D0;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v1 + 1384), type metadata accessor for ActionRequest);

      v138 = 0xE300000000000000;
      v137 = 4999502;
      goto LABEL_73;
    }

    if (v25 <= 2)
    {
      break;
    }

    if (v25 == 3)
    {
      v54 = *(v1 + 1424);
      v55 = *(v1 + 1408);
      defaultLogger()();
      sub_100269FE8(v54, v55, type metadata accessor for ActionRequest);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v1 + 1408);
        v59 = *(v1 + 1352);
        v60 = *(v1 + 1176);
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *(v1 + 976) = v62;
        *v61 = 136315138;
        sub_10000BBC4(v58 + *(v59 + 20), v60, &unk_100840960, &qword_1006DBCB0);
        v63 = type metadata accessor for PendingActionContext(0);
        v64 = (*(*(v63 - 8) + 48))(v60, 1, v63);
        v65 = *(v1 + 1176);
        v308 = v8;
        if (v64 == 1)
        {
          sub_10000BE18(v65, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_68;
        }

        v128 = *(v65 + 56);
        v129 = *(v1 + 1176);

        sub_100267A1C(v129, type metadata accessor for PendingActionContext);
        if (v128)
        {
          v130 = String.debugDescription.getter();
          v132 = v131;
        }

        else
        {
LABEL_68:
          v130 = 0;
          v132 = 0xE000000000000000;
        }

        v300 = *(v1 + 1304);
        v303 = *(v1 + 1424);
        v133 = *(v1 + 1208);
        v134 = *(v1 + 1200);
        sub_100267A1C(*(v1 + 1408), type metadata accessor for ActionRequest);
        v135 = sub_100141FE4(v130, v132, (v1 + 976));

        *(v61 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v56, v57, "server requested an action to self heal: %s", v61, 0xCu);
        sub_10000BB78(v62);

        (*(v133 + 8))(v300, v134);
        sub_100267A1C(v303, type metadata accessor for ActionRequest);
LABEL_9:
        v8 = v308;
      }

      else
      {
        v105 = *(v1 + 1424);
        v106 = *(v1 + 1408);
        v107 = *(v1 + 1304);
        v108 = *(v1 + 1208);
        v109 = *(v1 + 1200);

        sub_100267A1C(v106, type metadata accessor for ActionRequest);
        (*(v108 + 8))(v107, v109);
        sub_100267A1C(v105, type metadata accessor for ActionRequest);
      }

      v9 = &unk_1006BF9D0;
      goto LABEL_11;
    }

    v308 = v8;
    defaultLogger()();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "display message received", v68, 2u);
    }

    v69 = *(v1 + 1424);
    v70 = *(v1 + 1352);
    v71 = *(v1 + 1336);
    v72 = *(v1 + 1208);
    v73 = *(v1 + 1200);
    v74 = *(v1 + 1008);
    v75 = *(v1 + 1000);

    v76 = *(v72 + 8);
    v76(v71, v73);
    sub_1002556F0(v69 + *(v70 + 20), v75, v74);
    type metadata accessor for IdentityProofingDataContext();
    v77 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v78 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v78 + 54);
    sub_100031B5C(&v78[4], v1 + 408);
    os_unfair_lock_unlock(v78 + 54);
    if (v309)
    {
      return;
    }

    sub_100031918(v1 + 408);
    v113 = sub_10054C274();
    v302 = v76;
    v114 = *(v1 + 1896);
    v115 = *(v1 + 1424);
    v116 = *(v1 + 1416);
    v310 = *(v1 + 1016);
    v117 = *(v1 + 1008);
    v118 = *(v1 + 1000);

    v119 = [v113 newBackgroundContext];
    *(v77 + 16) = v119;
    [v119 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v115, v116, type metadata accessor for ActionRequest);
    v120 = swift_allocObject();
    v120[2] = v77;
    v120[3] = v118;
    v120[4] = v117;
    v120[5] = v310;
    sub_100269F80(v116, v120 + ((v114 + 48) & ~v114), type metadata accessor for ActionRequest);
    *(v1 + 984) = 0;
    v121 = *(v77 + 16);
    v122 = swift_allocObject();
    v122[2] = sub_100267BF8;
    v122[3] = v120;
    v122[4] = v299;
    v123 = swift_allocObject();
    *(v123 + 16) = sub_100267C5C;
    *(v123 + 24) = v122;
    *(v1 + 832) = sub_10026CBB8;
    *(v1 + 840) = v123;
    *(v1 + 800) = _NSConcreteStackBlock;
    *(v1 + 808) = 1107296256;
    *(v1 + 816) = sub_10057E264;
    *(v1 + 824) = &unk_10080B258;
    v124 = _Block_copy((v1 + 800));

    [v121 performBlockAndWait:v124];
    _Block_release(v124);
    LOBYTE(v124) = swift_isEscapingClosureAtFileLocation();

    if (v124)
    {
      __break(1u);
      goto LABEL_163;
    }

    if (*v299)
    {
      swift_willThrow();

      v8 = v308;
      v9 = &unk_1006BF9D0;
      v125 = *(v1 + 1328);
      v126 = *(v1 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v302(v125, v126);
    }

    else
    {

      v8 = v308;
      v9 = &unk_1006BF9D0;
    }

    sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
    v309 = 0;
LABEL_11:
    v2 = *(v1 + 1568) + 1;
    if (v2 == *(v1 + 1528))
    {
      goto LABEL_2;
    }
  }

  if (!v25)
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v80 = os_log_type_enabled(v26, v79);
    v29 = *(v1 + 1424);
    v30 = *(v1 + 1272);
    v31 = *(v1 + 1208);
    v32 = *(v1 + 1200);
    if (v80)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = v79;
      v35 = v26;
      v36 = "server requested an action to wait for update";
      goto LABEL_42;
    }

LABEL_43:

    (*(v31 + 8))(v30, v32);
LABEL_44:
    sub_100267A1C(v29, type metadata accessor for ActionRequest);
    goto LABEL_11;
  }

  if (v25 != 2)
  {
    defaultLogger()();
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&_mh_execute_header, v183, v184, "Starting Provisioning flow", v185, 2u);
    }

    v186 = *(v1 + 1312);
    v187 = *(v1 + 1208);
    v188 = *(v1 + 1200);
    v189 = *(v1 + 992);

    (*(v187 + 8))(v186, v188);
    if (*(v189 + 152) != 1 && (*(*(v1 + 992) + 136) <= 1u || *(*(v1 + 992) + 136) == 2))
    {
    }

    v259 = *(v1 + 1424);
    v260 = *(*(v1 + 1352) + 20);
    v261 = swift_task_alloc();
    *(v1 + 1592) = v261;
    *v261 = v1;
    v261[1] = sub_10023710C;
    v262 = *(v1 + 1016);
    v263 = *(v1 + 1008);
    v264 = *(v1 + 1000);

    sub_100229698(v259 + v260, v264, v263, v262, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "server requested an action to execute new workflow", v39, 2u);
  }

  v40 = *(v1 + 1424);
  v41 = *(v1 + 1352);
  v42 = *(v1 + 1320);
  v43 = *(v1 + 1208);
  v44 = *(v1 + 1200);
  v45 = *(v1 + 1192);

  (*(v43 + 8))(v42, v44);
  v46 = *(v41 + 20);
  sub_10000BBC4(v40 + v46, v45, &unk_100840960, &qword_1006DBCB0);
  v47 = type metadata accessor for PendingActionContext(0);
  v48 = *(*(v47 - 8) + 48);
  v49 = v48(v45, 1, v47);
  v50 = *(v1 + 1192);
  if (v49 == 1)
  {
    sub_10000BE18(v50, &unk_100840960, &qword_1006DBCB0);
    v51 = 3;
  }

  else
  {
    v51 = *(v50 + *(v47 + 76));
    sub_100267A1C(v50, type metadata accessor for PendingActionContext);
  }

  *(v1 + 1909) = v51;
  v97 = *(v1 + 1184);
  sub_10000BBC4(v40 + v46, v97, &unk_100840960, &qword_1006DBCB0);
  v98 = v48(v97, 1, v47);
  v99 = *(v1 + 1184);
  v100 = *(v1 + 1096);
  if (v98 == 1)
  {
    sub_10000BE18(v99, &unk_100840960, &qword_1006DBCB0);
    v101 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v101 - 8) + 56))(v100, 1, 1, v101);
  }

  else
  {
    v102 = *(v47 + 72);
    v103 = *(v1 + 1184);
    sub_10000BBC4(v99 + v102, *(v1 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v103, type metadata accessor for PendingActionContext);
  }

  v104 = *(v1 + 1096);
  sub_1002593E4(v104);
  sub_10000BE18(v104, &qword_100835968, &qword_1006DBC90);
  if (v51 <= 1)
  {
    v9 = &unk_1006BF9D0;
    v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v127)
    {
      goto LABEL_108;
    }

    goto LABEL_65;
  }

  v9 = &unk_1006BF9D0;
  if (v51 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
    v8 = *(v1 + 1909);
    goto LABEL_11;
  }

LABEL_108:
  v218 = swift_task_alloc();
  *(v1 + 1576) = v218;
  *v218 = v1;
  v218[1] = sub_1002342A8;
  v219 = *(v1 + 1008);
  v220 = *(v1 + 1000);

  sub_100259898(v40 + v46, v220, v219);
}

uint64_t sub_100239F30()
{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  sub_10000BE18(*(v2 + 1464), &qword_10083E3E8, &unk_1006DBD00);

  if (v0)
  {
    swift_bridgeObjectRelease_n();

    v3 = sub_10024FDE8;
  }

  else
  {
    v3 = sub_10023A0BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10023A0BC()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1128);
  sub_10000BBC4(*(v0 + 1424) + *(v0 + 1904), v3, &unk_100840960, &qword_1006DBCB0);
  if (v1(v3, 1, v2) != 1)
  {
    v6 = *(v0 + 1128);
    v8 = *(v6 + 64);
    v7 = *(v6 + 72);

    sub_100267A1C(v6, type metadata accessor for PendingActionContext);
    if (v7)
    {
      v335._countAndFlagsBits = v8;
      v335._object = v7;
      v9 = sub_100265C7C(v335);
      if (v9 <= 2)
      {
        if (!v9)
        {

LABEL_13:
          defaultLogger()();
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v11, v12, "Setting notificationAction to nil...", v13, 2u);
          }

          v14 = *(v0 + 1608);
          v328 = *(v0 + 1504);
          v15 = *(v0 + 1496);
          v16 = *(v0 + 1488);
          v17 = *(v0 + 1424);
          v18 = *(v0 + 1352);
          v19 = *(v0 + 1280);
          v20 = *(v0 + 1200);

          v14(v19, v20);
          sub_10000BE18(v16, &qword_10083E3E8, &unk_1006DBD00);
          sub_100267A1C(v17, type metadata accessor for ActionRequest);
          sub_10000BE18(v15, &qword_10083E3E8, &unk_1006DBD00);
          v328(v15, 1, 1, v18);
          goto LABEL_17;
        }
      }

      else if (v9 > 4 && v9 != 5)
      {
        goto LABEL_16;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v21 = *(v0 + 1424);
    sub_10000BE18(*(v0 + 1488), &qword_10083E3E8, &unk_1006DBD00);
    sub_100267A1C(v21, type metadata accessor for ActionRequest);
    goto LABEL_17;
  }

  v4 = *(v0 + 1424);
  v5 = *(v0 + 1128);
  sub_10000BE18(*(v0 + 1488), &qword_10083E3E8, &unk_1006DBD00);
  sub_100267A1C(v4, type metadata accessor for ActionRequest);
  sub_10000BE18(v5, &unk_100840960, &qword_1006DBCB0);
LABEL_17:
  v22 = *(v0 + 1568) + 1;
  if (v22 == *(v0 + 1528))
  {
LABEL_18:

    v23 = *(v0 + 1496);
    v24 = *(v0 + 1448);
    v25 = *(v0 + 1360);
    v26 = *(v0 + 1352);

    sub_10000BBC4(v23, v24, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v25 + 48))(v24, 1, v26) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v27 = *(v0 + 8);
LABEL_20:

      v27();
    }

    else
    {
      v182 = *(v0 + 1504);
      v183 = *(v0 + 1440);
      v184 = *(v0 + 1376);
      v185 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v184, type metadata accessor for ActionRequest);
      sub_100269FE8(v184, v183, type metadata accessor for ActionRequest);
      v182(v183, 0, 1, v185);
      v186 = swift_task_alloc();
      *(v0 + 1880) = v186;
      *v186 = v0;
      v186[1] = sub_10024F280;
      v187 = *(v0 + 1440);
      v188 = *(v0 + 1008);
      v189 = *(v0 + 1000);

      sub_1002550B8(v187, v189, v188);
    }

    return;
  }

  v319 = (v0 + 984);
  v28 = *(v0 + 1908);
  v329 = *(v0 + 1664);
  v327 = "redential list provided";
  v29 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v22;
    *(v0 + 1908) = v28;
    *(v0 + 1560) = v329;
    v37 = *(v0 + 1520);
    if (v22 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_165;
    }

    v38 = *(v0 + 1424);
    v39 = *(v0 + 1016);
    v40 = *(v0 + 1008);
    v41 = *(v0 + 1000);
    v42 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v37 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v42 * v22, v38, type metadata accessor for ActionRequest);
    sub_10025DCD8(v38, v41, v40, v39);
    v43 = *v38;
    v44 = v38[1];

    v336._countAndFlagsBits = v43;
    v336._object = v44;
    v45 = sub_10025DC8C(v336);
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 != 6)
        {
          if (v45 == 7)
          {
            defaultLogger()();
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.debug.getter();
            v48 = os_log_type_enabled(v46, v47);
            v49 = *(v0 + 1424);
            v50 = *(v0 + 1264);
            v51 = *(v0 + 1208);
            v52 = *(v0 + 1200);
            if (v48)
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              v54 = v47;
              v55 = v46;
              v56 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_58:
              _os_log_impl(&_mh_execute_header, v55, v54, v56, v53, 2u);
              v29 = &unk_1006BF9D0;

              goto LABEL_59;
            }

            goto LABEL_59;
          }

          v190 = *(v0 + 1424);
          v191 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v190, v191, type metadata accessor for ActionRequest);
          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.debug.getter();
          v194 = os_log_type_enabled(v192, v193);
          v195 = *(v0 + 1400);
          LOBYTE(v328) = v28;
          if (!v194)
          {
            v222 = *(v0 + 1296);
            v223 = *(v0 + 1208);
            v224 = *(v0 + 1200);

            sub_100267A1C(v195, type metadata accessor for ActionRequest);
            v225 = *(v223 + 8);
            v225(v222, v224);
LABEL_131:
            v332 = v225;
            *(v0 + 1608) = v225;
            v248 = *(*(v0 + 1520) + 16);
            if (v248)
            {
              v249 = 0;
              v250 = 0;
              while (1)
              {
                v251 = *(v0 + 1520);
                if (v250 >= *(v251 + 16))
                {
                  break;
                }

                v252 = *(v0 + 1392);
                sub_100269FE8(v251 + v249 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v252, type metadata accessor for ActionRequest);
                v253 = *v252 == 0x5F4F545F444E4553 && v252[1] == 0xED0000454D4F4942;
                if (v253 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v254 = 0;
                  goto LABEL_142;
                }

                ++v250;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v249 += v42;
                if (v248 == v250)
                {
                  goto LABEL_140;
                }
              }

LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

LABEL_140:
            v254 = 1;
LABEL_142:
            v255 = *(v0 + 1488);
            v256 = *(v0 + 1480);
            (*(v0 + 1504))(v255, v254, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v255, v256, &qword_10083E3E8, &unk_1006DBD00);
            v257 = Logger.logObject.getter();
            v258 = static os_log_type_t.debug.getter();
            v259 = os_log_type_enabled(v257, v258);
            v260 = *(v0 + 1480);
            if (v259)
            {
              v261 = *(v0 + 1360);
              v262 = *(v0 + 1352);
              v263 = swift_slowAlloc();
              *v263 = 67109120;
              LODWORD(v262) = (*(v261 + 48))(v260, 1, v262) != 1;
              sub_10000BE18(v260, &qword_10083E3E8, &unk_1006DBD00);
              *(v263 + 4) = v262;
              _os_log_impl(&_mh_execute_header, v257, v258, "Biome data exists to be donated? -> %{BOOL}d", v263, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v264 = v257;
            v265 = *(v0 + 1488);
            v266 = *(v0 + 1472);
            v267 = *(v0 + 1360);
            v268 = *(v0 + 1352);
            v269 = *(v0 + 1288);
            v270 = *(v0 + 1208);
            v271 = *(v0 + 1200);

            *(v0 + 1616) = (v270 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v332(v269, v271);
            sub_10000BBC4(v265, v266, &qword_10083E3E8, &unk_1006DBD00);
            v272 = *(v267 + 48);
            v273 = (v272)(v266, 1, v268);
            v274 = *(v0 + 1472);
            if (v273 == 1)
            {
              v275 = *(v0 + 1160);

              sub_10000BE18(v274, &qword_10083E3E8, &unk_1006DBD00);
              v276 = type metadata accessor for PendingActionContext(0);
              (*(*(v276 - 8) + 56))(v275, 1, 1, v276);
            }

            else
            {
              sub_10000BBC4(v274 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v274, type metadata accessor for ActionRequest);
            }

            v277 = *(v0 + 1160);
            v278 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v277);

            sub_10000BE18(v277, &unk_100840960, &qword_1006DBCB0);
            v327 = v272;
            if (*(v278 + 152) == 1)
            {
LABEL_166:
              v290 = *(v0 + 1424);
              v291 = *(v0 + 1152);
              v292 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v292;
              sub_10000BBC4(v290 + v292, v291, &unk_100840960, &qword_1006DBCB0);
              v293 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v293;
              v294 = *(v293 - 8);
              v295 = *(v294 + 48);
              *(v0 + 1632) = v295;
              *(v0 + 1640) = (v294 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v333 = v295;
              v296 = v295(v291, 1, v293);
              v297 = *(v0 + 1152);
              v321 = v292;
              v324 = v290;
              if (v296 == 1)
              {
                sub_10000BE18(v297, &unk_100840960, &qword_1006DBCB0);
                v326 = 0;
                v298 = 0;
              }

              else
              {
                v298 = *(v297 + 72);
                v326 = *(v297 + 64);
                v299 = *(v0 + 1152);

                sub_100267A1C(v299, type metadata accessor for PendingActionContext);
              }

              v325 = v298;
              *(v0 + 1648) = v298;
              v300 = *(v0 + 1488);
              v301 = *(v0 + 1456);
              v302 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v300, v301, &qword_10083E3E8, &unk_1006DBD00);
              v303 = (v327)(v301, 1, v302);
              v304 = *(v0 + 1456);
              if (v303 == 1)
              {
                v305 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v294 + 56))(v305, 1, 1, v293);
                v306 = v328;
                v308 = v321;
                v307 = v324;
              }

              else
              {
                v309 = *(v0 + 1144);
                sub_10000BBC4(v304 + *(*(v0 + 1352) + 20), v309, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v304, type metadata accessor for ActionRequest);
                v306 = v328;
                v308 = v321;
                v307 = v324;
                v333(v309, 1, v293);
              }

              v310 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v307 + v308, v310, &unk_100840960, &qword_1006DBCB0);
              v311 = v333(v310, 1, v293);
              v312 = *(v0 + 1136);
              if (v311 == 1)
              {
                sub_10000BE18(v312, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v312, type metadata accessor for PendingActionContext);
              }

              v313 = swift_task_alloc();
              *(v0 + 1656) = v313;
              *v313 = v0;
              v313[1] = sub_100239F30;
              v314 = *(v0 + 1536);
              v315 = *(v0 + 1464);
              v316 = *(v0 + 1016);
              v317 = *(v0 + 1008);
              v318 = *(v0 + 1000);

              sub_10025744C(v326, v325, v314, v318, v317, v316, v306, v315);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_166;
            }

LABEL_165:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_166;
          }

          v196 = *(v0 + 1352);
          v197 = *(v0 + 1168);
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          *(v0 + 968) = v199;
          *v198 = 136315138;
          sub_10000BBC4(v195 + *(v196 + 20), v197, &unk_100840960, &qword_1006DBCB0);
          v200 = type metadata accessor for PendingActionContext(0);
          v201 = (*(*(v200 - 8) + 48))(v197, 1, v200);
          v202 = *(v0 + 1168);
          if (v201 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v241 = *(v202 + 72);

            sub_100267A1C(v202, type metadata accessor for PendingActionContext);
            if (v241)
            {
              v242 = String.debugDescription.getter();
              v244 = v243;

LABEL_130:
              v331 = *(v0 + 1296);
              v245 = *(v0 + 1208);
              v246 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v247 = sub_100141FE4(v242, v244, (v0 + 968));

              *(v198 + 4) = v247;
              _os_log_impl(&_mh_execute_header, v192, v193, "server requested an action to set state:%s", v198, 0xCu);
              sub_10000BB78(v199);

              v225 = *(v245 + 8);
              v225(v331, v246);
              goto LABEL_131;
            }
          }

          v242 = 0;
          v244 = 0xE000000000000000;
          goto LABEL_130;
        }

        LODWORD(v328) = v28;
        defaultLogger()();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "display notification received", v103, 2u);
        }

        v30 = *(v0 + 1504);
        v31 = *(v0 + 1496);
        v32 = *(v0 + 1424);
        v33 = *(v0 + 1352);
        v34 = *(v0 + 1344);
        v35 = *(v0 + 1208);
        v36 = *(v0 + 1200);

        (*(v35 + 8))(v34, v36);
        sub_10000BE18(v31, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v32, v31, type metadata accessor for ActionRequest);
        v30(v31, 0, 1, v33);
        goto LABEL_25;
      }

      if (v45 != 8)
      {
        if (v45 != 10)
        {
          defaultLogger()();
          v210 = Logger.logObject.getter();
          v211 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v210, v211))
          {
            v212 = swift_slowAlloc();
            *v212 = 0;
            _os_log_impl(&_mh_execute_header, v210, v211, "server requested an action to store token", v212, 2u);
          }

          v213 = *(v0 + 1424);
          v214 = *(v0 + 1352);
          v215 = *(v0 + 1248);
          v216 = *(v0 + 1208);
          v217 = *(v0 + 1200);
          v218 = *(v0 + 1104);

          v219 = *(v216 + 8);
          *(v0 + 1672) = v219;
          v219(v215, v217);
          sub_10000BBC4(v213 + *(v214 + 20), v218, &unk_100840960, &qword_1006DBCB0);
          v220 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v220 - 8) + 48))(v218, 1, v220) == 1)
          {
            v221 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v221, &unk_100840960, &qword_1006DBCB0);
LABEL_159:
            v285 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v285, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v27 = *(v0 + 8);
            goto LABEL_20;
          }

          v226 = *(v0 + 1104);
          v227 = (v226 + *(v220 + 128));
          v228 = *v227;
          *(v0 + 1680) = *v227;
          v229 = v227[1];
          *(v0 + 1688) = v229;
          v231 = v227[2];
          v230 = v227[3];
          *(v0 + 1696) = v230;
          sub_1000AB7D8(v228, v229, v231, v230);
          sub_100267A1C(v226, type metadata accessor for PendingActionContext);
          if (!v229)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_159;
          }

          v232 = *(v0 + 1072);
          v233 = *(v0 + 1064);
          v234 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v235 = String.data(using:allowLossyConversion:)();
          v237 = v236;
          *(v0 + 1704) = v235;
          *(v0 + 1712) = v236;
          (*(v233 + 8))(v232, v234);
          if (v237 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_159;
          }

          if (qword_100832C20 == -1)
          {
LABEL_161:
            v286 = *(qword_100882228 + 16);
            *(v0 + 1720) = v286;
            v287 = v286;
            v288 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v288;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v289 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v289;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v287 retrievePIITokenFromSyncableKeyStoreForIdentifier:v288 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_180:
          swift_once();
          goto LABEL_161;
        }

        defaultLogger()();
        v46 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        v73 = os_log_type_enabled(v46, v72);
        v49 = *(v0 + 1424);
        v50 = *(v0 + 1232);
        v51 = *(v0 + 1208);
        v52 = *(v0 + 1200);
        if (!v73)
        {
          goto LABEL_59;
        }

        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = v72;
        v55 = v46;
        v56 = "INVALID ACTION REQUEST";
        goto LABEL_58;
      }

      v104 = *(v0 + 1424);
      v105 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v104, v105, type metadata accessor for ActionRequest);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();
      v108 = os_log_type_enabled(v106, v107);
      v109 = *(v0 + 1384);
      LODWORD(v328) = v28;
      if (!v108)
      {
        v130 = *(v0 + 1256);
        v131 = *(v0 + 1208);
        v132 = *(v0 + 1200);

        sub_100267A1C(v109, type metadata accessor for ActionRequest);
        (*(v131 + 8))(v130, v132);
LABEL_90:
        v163 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v163, &unk_100840960, &qword_1006DBCB0);
        v164 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v164 - 8) + 48))(v163, 1, v164) == 1)
        {
          v165 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v165, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_27;
        }

        v166 = *(v0 + 1112);
        v167 = (v166 + *(v164 + 112));
        v169 = *v167;
        v168 = v167[1];

        sub_100267A1C(v166, type metadata accessor for PendingActionContext);
        if (!v168)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v28 = v328;
          goto LABEL_27;
        }

        v170 = *(v0 + 1088);
        v171 = *(v0 + 1080);
        v172 = v29;
        v173 = *(v0 + 1024);
        v174 = type metadata accessor for TaskPriority();
        v175 = *(v174 - 8);
        (*(v175 + 56))(v170, 1, 1, v174);
        v176 = swift_allocObject();
        v176[2] = 0;
        v176[3] = 0;
        v176[4] = v173;
        v176[5] = v169;
        v176[6] = v168;
        sub_10000BBC4(v170, v171, &unk_100845860, v172);
        LODWORD(v170) = (*(v175 + 48))(v171, 1, v174);

        v177 = *(v0 + 1080);
        if (v170 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v172);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v175 + 8))(v177, v174);
        }

        v29 = v172;
        v178 = v176[2];
        swift_unknownObjectRetain();

        v28 = v328;
        if (v178)
        {
          swift_getObjectType();
          v179 = dispatch thunk of Actor.unownedExecutor.getter();
          v181 = v180;
          swift_unknownObjectRelease();
        }

        else
        {
          v179 = 0;
          v181 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v172);
        if (v181 | v179)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v179;
          *(v0 + 872) = v181;
        }

        v49 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_60;
      }

      v110 = *(v0 + 1352);
      v111 = *(v0 + 1120);
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *(v0 + 960) = v113;
      *v112 = 136315138;
      sub_10000BBC4(v109 + *(v110 + 20), v111, &unk_100840960, &qword_1006DBCB0);
      v114 = type metadata accessor for PendingActionContext(0);
      v115 = (*(*(v114 - 8) + 48))(v111, 1, v114);
      v116 = *(v0 + 1120);
      if (v115 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v156 = (v116 + *(v114 + 112));
        v157 = *v156;
        v158 = v156[1];

        sub_100267A1C(v116, type metadata accessor for PendingActionContext);
        if (v158)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_89:
          v159 = *(v0 + 1256);
          v160 = *(v0 + 1208);
          v161 = *(v0 + 1200);
          v162 = sub_100141FE4(v157, v158, (v0 + 960));

          *(v112 + 4) = v162;
          _os_log_impl(&_mh_execute_header, v106, v107, "server requested to delete the Account Key Signing Key with identifier %s", v112, 0xCu);
          sub_10000BB78(v113);

          (*(v160 + 8))(v159, v161);
          v28 = v328;
          v29 = &unk_1006BF9D0;
          goto LABEL_90;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v158 = 0xE300000000000000;
      v157 = 4999502;
      goto LABEL_89;
    }

    if (v45 <= 2)
    {
      break;
    }

    if (v45 == 3)
    {
      v74 = *(v0 + 1424);
      v75 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v74, v75, type metadata accessor for ActionRequest);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 1408);
        v79 = *(v0 + 1352);
        v80 = *(v0 + 1176);
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *(v0 + 976) = v82;
        *v81 = 136315138;
        sub_10000BBC4(v78 + *(v79 + 20), v80, &unk_100840960, &qword_1006DBCB0);
        v83 = type metadata accessor for PendingActionContext(0);
        v84 = (*(*(v83 - 8) + 48))(v80, 1, v83);
        v85 = *(v0 + 1176);
        LODWORD(v328) = v28;
        if (v84 == 1)
        {
          sub_10000BE18(v85, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_84;
        }

        v148 = *(v85 + 56);
        v149 = *(v0 + 1176);

        sub_100267A1C(v149, type metadata accessor for PendingActionContext);
        if (v148)
        {
          v150 = String.debugDescription.getter();
          v152 = v151;
        }

        else
        {
LABEL_84:
          v150 = 0;
          v152 = 0xE000000000000000;
        }

        v320 = *(v0 + 1304);
        v323 = *(v0 + 1424);
        v153 = *(v0 + 1208);
        v154 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v155 = sub_100141FE4(v150, v152, (v0 + 976));

        *(v81 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v76, v77, "server requested an action to self heal: %s", v81, 0xCu);
        sub_10000BB78(v82);

        (*(v153 + 8))(v320, v154);
        sub_100267A1C(v323, type metadata accessor for ActionRequest);
LABEL_25:
        v28 = v328;
      }

      else
      {
        v125 = *(v0 + 1424);
        v126 = *(v0 + 1408);
        v127 = *(v0 + 1304);
        v128 = *(v0 + 1208);
        v129 = *(v0 + 1200);

        sub_100267A1C(v126, type metadata accessor for ActionRequest);
        (*(v128 + 8))(v127, v129);
        sub_100267A1C(v125, type metadata accessor for ActionRequest);
      }

      v29 = &unk_1006BF9D0;
      goto LABEL_27;
    }

    LODWORD(v328) = v28;
    defaultLogger()();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "display message received", v88, 2u);
    }

    v89 = *(v0 + 1424);
    v90 = *(v0 + 1352);
    v91 = *(v0 + 1336);
    v92 = *(v0 + 1208);
    v93 = *(v0 + 1200);
    v94 = *(v0 + 1008);
    v95 = *(v0 + 1000);

    v96 = *(v92 + 8);
    v96(v91, v93);
    sub_1002556F0(v89 + *(v90 + 20), v95, v94);
    type metadata accessor for IdentityProofingDataContext();
    v97 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v98 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v98 + 54);
    sub_100031B5C(&v98[4], v0 + 408);
    os_unfair_lock_unlock(v98 + 54);
    if (v329)
    {
      return;
    }

    sub_100031918(v0 + 408);
    v133 = sub_10054C274();
    v322 = v96;
    v134 = *(v0 + 1896);
    v135 = *(v0 + 1424);
    v136 = *(v0 + 1416);
    v330 = *(v0 + 1016);
    v137 = *(v0 + 1008);
    v138 = *(v0 + 1000);

    v139 = [v133 newBackgroundContext];
    *(v97 + 16) = v139;
    [v139 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v135, v136, type metadata accessor for ActionRequest);
    v140 = swift_allocObject();
    v140[2] = v97;
    v140[3] = v138;
    v140[4] = v137;
    v140[5] = v330;
    sub_100269F80(v136, v140 + ((v134 + 48) & ~v134), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v141 = *(v97 + 16);
    v142 = swift_allocObject();
    v142[2] = sub_100267BF8;
    v142[3] = v140;
    v142[4] = v319;
    v143 = swift_allocObject();
    *(v143 + 16) = sub_100267C5C;
    *(v143 + 24) = v142;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v143;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v144 = _Block_copy((v0 + 800));

    [v141 performBlockAndWait:v144];
    _Block_release(v144);
    LOBYTE(v144) = swift_isEscapingClosureAtFileLocation();

    if (v144)
    {
      __break(1u);
      goto LABEL_179;
    }

    if (*v319)
    {
      swift_willThrow();

      v28 = v328;
      v29 = &unk_1006BF9D0;
      v145 = *(v0 + 1328);
      v146 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v322(v145, v146);
    }

    else
    {

      v28 = v328;
      v29 = &unk_1006BF9D0;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v329 = 0;
LABEL_27:
    v22 = *(v0 + 1568) + 1;
    if (v22 == *(v0 + 1528))
    {
      goto LABEL_18;
    }
  }

  if (!v45)
  {
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    v100 = os_log_type_enabled(v46, v99);
    v49 = *(v0 + 1424);
    v50 = *(v0 + 1272);
    v51 = *(v0 + 1208);
    v52 = *(v0 + 1200);
    if (v100)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = v99;
      v55 = v46;
      v56 = "server requested an action to wait for update";
      goto LABEL_58;
    }

LABEL_59:

    (*(v51 + 8))(v50, v52);
LABEL_60:
    sub_100267A1C(v49, type metadata accessor for ActionRequest);
    goto LABEL_27;
  }

  if (v45 != 2)
  {
    defaultLogger()();
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&_mh_execute_header, v203, v204, "Starting Provisioning flow", v205, 2u);
    }

    v206 = *(v0 + 1312);
    v207 = *(v0 + 1208);
    v208 = *(v0 + 1200);
    v209 = *(v0 + 992);

    (*(v207 + 8))(v206, v208);
    if (*(v209 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v279 = *(v0 + 1424);
    v280 = *(*(v0 + 1352) + 20);
    v281 = swift_task_alloc();
    *(v0 + 1592) = v281;
    *v281 = v0;
    v281[1] = sub_10023710C;
    v282 = *(v0 + 1016);
    v283 = *(v0 + 1008);
    v284 = *(v0 + 1000);

    sub_100229698(v279 + v280, v284, v283, v282, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  defaultLogger()();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "server requested an action to execute new workflow", v59, 2u);
  }

  v60 = *(v0 + 1424);
  v61 = *(v0 + 1352);
  v62 = *(v0 + 1320);
  v63 = *(v0 + 1208);
  v64 = *(v0 + 1200);
  v65 = *(v0 + 1192);

  (*(v63 + 8))(v62, v64);
  v66 = *(v61 + 20);
  sub_10000BBC4(v60 + v66, v65, &unk_100840960, &qword_1006DBCB0);
  v67 = type metadata accessor for PendingActionContext(0);
  v68 = *(*(v67 - 8) + 48);
  v69 = v68(v65, 1, v67);
  v70 = *(v0 + 1192);
  if (v69 == 1)
  {
    sub_10000BE18(v70, &unk_100840960, &qword_1006DBCB0);
    v71 = 3;
  }

  else
  {
    v71 = *(v70 + *(v67 + 76));
    sub_100267A1C(v70, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v71;
  v117 = *(v0 + 1184);
  sub_10000BBC4(v60 + v66, v117, &unk_100840960, &qword_1006DBCB0);
  v118 = v68(v117, 1, v67);
  v119 = *(v0 + 1184);
  v120 = *(v0 + 1096);
  if (v118 == 1)
  {
    sub_10000BE18(v119, &unk_100840960, &qword_1006DBCB0);
    v121 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v121 - 8) + 56))(v120, 1, 1, v121);
  }

  else
  {
    v122 = *(v67 + 72);
    v123 = *(v0 + 1184);
    sub_10000BBC4(v119 + v122, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v123, type metadata accessor for PendingActionContext);
  }

  v124 = *(v0 + 1096);
  sub_1002593E4(v124);
  sub_10000BE18(v124, &qword_100835968, &qword_1006DBC90);
  if (v71 <= 1)
  {
    v29 = &unk_1006BF9D0;
    v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v147)
    {
      goto LABEL_124;
    }

    goto LABEL_81;
  }

  v29 = &unk_1006BF9D0;
  if (v71 == 3)
  {
LABEL_81:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v28 = *(v0 + 1909);
    goto LABEL_27;
  }

LABEL_124:
  v238 = swift_task_alloc();
  *(v0 + 1576) = v238;
  *v238 = v0;
  v238[1] = sub_1002342A8;
  v239 = *(v0 + 1008);
  v240 = *(v0 + 1000);

  sub_100259898(v60 + v66, v240, v239);
}

uint64_t sub_10023D0AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1736) = v1;
  if (v1)
  {
    v2 = sub_100250168;
  }

  else
  {
    v2 = sub_10023D1BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10023D1BC()
{
  v1 = v0[216];

  v2 = v0[195];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_100031B5C(&v3[4], (v0 + 26));
  if (v2)
  {

    os_unfair_lock_unlock(v3 + 54);
  }

  else
  {
    v4 = v0[127];
    v5 = v0[126];
    v6 = v0[125];
    os_unfair_lock_unlock(v3 + 54);
    v0[218] = v0[33];

    sub_100031918((v0 + 26));
    v7 = swift_allocObject();
    v0[219] = v7;
    v7[2] = v6;
    v7[3] = v5;
    v7[4] = v4;
    v8 = swift_allocObject();
    v0[220] = v8;
    *(v8 + 16) = sub_100267AA8;
    *(v8 + 24) = v7;

    v9 = swift_task_alloc();
    v0[221] = v9;
    v10 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
    *v9 = v0;
    v9[1] = sub_10023D3CC;

    AsyncCoreDataContainer.performRead<A>(_:)(v0 + 112, sub_100267AC8, v8, v10);
  }
}

uint64_t sub_10023D3CC()
{
  v2 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {

    v3 = sub_100240874;
  }

  else
  {

    *(v2 + 1784) = *(v2 + 896);
    v3 = sub_10023D534;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10023D534()
{
  if (*(v0 + 1792))
  {
    v1 = *(v0 + 1720);
    v2 = *(v0 + 1712);
    v3 = *(v0 + 1704);
    if (*(v0 + 1736))
    {
      v4 = v0 + 80;
      v352 = *(v0 + 1720);
      v5 = String._bridgeToObjectiveC()();
      *(v0 + 1800) = v5;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 1808) = isa;
      v7 = String._bridgeToObjectiveC()();
      *(v0 + 1816) = v7;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_10024382C;
      v8 = swift_continuation_init();
      *(v0 + 728) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 704) = v8;
      *(v0 + 672) = _NSConcreteStackBlock;
      *(v0 + 680) = 1107296256;
      *(v0 + 688) = sub_100429100;
      *(v0 + 696) = &unk_10080B168;
      [v352 storePIITokenInSyncableKeyStoreForIdentifier:v5 data:isa credentialIdentifier:v7 completion:v0 + 672];
    }

    else
    {
      v4 = v0 + 144;
      sub_100007224(&qword_100834440, &qword_1006BFEC8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1006BF520;
      *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v21 + 72) = &type metadata for Data;
      *(v21 + 40) = v22;
      *(v21 + 48) = v3;
      *(v21 + 56) = v2;
      sub_1000363B4(v3, v2);
      sub_10003D8DC(v21);
      swift_setDeallocating();
      sub_10000BE18(v21 + 32, &qword_100834450, &unk_1006BFED0);
      swift_deallocClassInstance();
      v23 = String._bridgeToObjectiveC()();
      *(v0 + 1832) = v23;
      v24 = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v0 + 1840) = v24;

      v25 = String._bridgeToObjectiveC()();
      *(v0 + 1848) = v25;
      *(v0 + 144) = v0;
      *(v0 + 152) = sub_100246764;
      v26 = swift_continuation_init();
      *(v0 + 792) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 768) = v26;
      *(v0 + 736) = _NSConcreteStackBlock;
      *(v0 + 744) = 1107296256;
      *(v0 + 752) = sub_100429100;
      *(v0 + 760) = &unk_10080B190;
      [v1 updatePIITokenInSyncableKeyStoreForIdentifier:v23 attributesToUpdate:v24 credentialIdentifier:v25 completion:v0 + 736];
    }

    v27 = v4;
    goto LABEL_12;
  }

  v9 = *(v0 + 1900);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);

  (*(v11 + 104))(v10, v9, v12);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v13 = swift_allocError();
  v336 = 0x8000000100707AB0;
  v337 = 791;
  v335 = 0xD000000000000032;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  if (*(v0 + 1736))
  {
    swift_bridgeObjectRelease_n();

    v350 = *(v0 + 1712);
    v346 = *(v0 + 1720);
    v348 = *(v0 + 1704);
    v344 = *(v0 + 1424);
    v14 = *(v0 + 1048);
    v15 = *(v0 + 1040);
    v16 = *(v0 + 1032);
    _StringGuts.grow(_:)(29);
    *(v0 + 912) = 0;
    *(v0 + 920) = 0xE000000000000000;
    v17._countAndFlagsBits = 0xD00000000000001BLL;
    v17._object = 0x8000000100707AF0;
    String.append(_:)(v17);
    *(v0 + 952) = v13;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    (*(v15 + 104))(v14, enum case for DIPError.Code.failedToStorePIIToken(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    v18 = v344;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v348, v350);

LABEL_6:
    sub_100267A1C(v18, type metadata accessor for ActionRequest);
    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

    v19 = *(v0 + 8);
    goto LABEL_7;
  }

  v351 = v13;
  defaultLogger()();
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to update PII Token: %@", v30, 0xCu);
    sub_10000BE18(v31, &unk_100833B50, &unk_1006D8FB0);
  }

  v33 = *(v0 + 1712);
  v34 = *(v0 + 1704);
  v35 = *(v0 + 1672);
  v36 = *(v0 + 1424);
  v37 = *(v0 + 1224);
  v38 = *(v0 + 1200);

  sub_10000BD94(v34, v33);

  v35(v37, v38);
  sub_100267A1C(v36, type metadata accessor for ActionRequest);
  v39 = *(v0 + 1568) + 1;
  if (v39 == *(v0 + 1528))
  {
LABEL_18:

    v40 = *(v0 + 1496);
    v41 = *(v0 + 1448);
    v42 = *(v0 + 1360);
    v43 = *(v0 + 1352);

    sub_10000BBC4(v40, v41, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v42 + 48))(v41, 1, v43) != 1)
    {
      v199 = *(v0 + 1504);
      v200 = *(v0 + 1440);
      v201 = *(v0 + 1376);
      v202 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v201, type metadata accessor for ActionRequest);
      sub_100269FE8(v201, v200, type metadata accessor for ActionRequest);
      v199(v200, 0, 1, v202);
      v203 = swift_task_alloc();
      *(v0 + 1880) = v203;
      *v203 = v0;
      v203[1] = sub_10024F280;
      v204 = *(v0 + 1440);
      v205 = *(v0 + 1008);
      v206 = *(v0 + 1000);

      return sub_1002550B8(v204, v206, v205);
    }

    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
    sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

    v19 = *(v0 + 8);
LABEL_7:

    return v19();
  }

  v338 = (v0 + 984);
  v44 = *(v0 + 1908);
  while (1)
  {
    *(v0 + 1568) = v39;
    *(v0 + 1908) = v44;
    *(v0 + 1560) = 0;
    v52 = *(v0 + 1520);
    if (v39 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_157;
    }

    v53 = *(v0 + 1424);
    v54 = *(v0 + 1016);
    v55 = *(v0 + 1008);
    v56 = *(v0 + 1000);
    v57 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v52 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v57 * v39, v53, type metadata accessor for ActionRequest);
    sub_10025DCD8(v53, v56, v55, v54);
    v58 = *v53;
    v59 = v53[1];

    v358._countAndFlagsBits = v58;
    v358._object = v59;
    v60 = sub_10025DC8C(v358);
    if (v60 > 4)
    {
      if (v60 <= 7)
      {
        if (v60 != 6)
        {
          if (v60 == 7)
          {
            defaultLogger()();
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.debug.getter();
            v63 = os_log_type_enabled(v61, v62);
            v64 = *(v0 + 1424);
            v65 = *(v0 + 1264);
            v66 = *(v0 + 1208);
            v67 = *(v0 + 1200);
            if (v63)
            {
              v68 = swift_slowAlloc();
              *v68 = 0;
              v69 = v62;
              v70 = v61;
              v71 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          v207 = *(v0 + 1424);
          v208 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v207, v208, type metadata accessor for ActionRequest);
          v209 = Logger.logObject.getter();
          v210 = static os_log_type_t.debug.getter();
          v211 = os_log_type_enabled(v209, v210);
          v212 = *(v0 + 1400);
          LOBYTE(v356) = v44;
          if (!v211)
          {
            v239 = *(v0 + 1296);
            v240 = *(v0 + 1208);
            v241 = *(v0 + 1200);

            sub_100267A1C(v212, type metadata accessor for ActionRequest);
            v242 = *(v240 + 8);
            v242(v239, v241);
LABEL_125:
            v354 = v242;
            *(v0 + 1608) = v242;
            v265 = *(*(v0 + 1520) + 16);
            if (v265)
            {
              v266 = 0;
              v267 = 0;
              while (1)
              {
                v268 = *(v0 + 1520);
                if (v267 >= *(v268 + 16))
                {
                  break;
                }

                v269 = *(v0 + 1392);
                sub_100269FE8(v268 + v266 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v269, type metadata accessor for ActionRequest);
                v270 = *v269 == 0x5F4F545F444E4553 && v269[1] == 0xED0000454D4F4942;
                if (v270 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v271 = 0;
                  goto LABEL_136;
                }

                ++v267;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v266 += v57;
                if (v265 == v267)
                {
                  goto LABEL_134;
                }
              }

LABEL_171:
              __break(1u);
              goto LABEL_172;
            }

LABEL_134:
            v271 = 1;
LABEL_136:
            v272 = *(v0 + 1488);
            v273 = *(v0 + 1480);
            (*(v0 + 1504))(v272, v271, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v272, v273, &qword_10083E3E8, &unk_1006DBD00);
            v274 = Logger.logObject.getter();
            v275 = static os_log_type_t.debug.getter();
            v276 = os_log_type_enabled(v274, v275);
            v277 = *(v0 + 1480);
            if (v276)
            {
              v278 = *(v0 + 1360);
              v279 = *(v0 + 1352);
              v280 = swift_slowAlloc();
              *v280 = 67109120;
              LODWORD(v279) = (*(v278 + 48))(v277, 1, v279) != 1;
              sub_10000BE18(v277, &qword_10083E3E8, &unk_1006DBD00);
              *(v280 + 4) = v279;
              _os_log_impl(&_mh_execute_header, v274, v275, "Biome data exists to be donated? -> %{BOOL}d", v280, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v281 = v274;
            v282 = *(v0 + 1488);
            v283 = *(v0 + 1472);
            v284 = *(v0 + 1360);
            v285 = *(v0 + 1352);
            v286 = *(v0 + 1288);
            v287 = *(v0 + 1208);
            v288 = *(v0 + 1200);

            *(v0 + 1616) = (v287 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v354(v286, v288);
            sub_10000BBC4(v282, v283, &qword_10083E3E8, &unk_1006DBD00);
            v289 = *(v284 + 48);
            v290 = v289(v283, 1, v285);
            v291 = *(v0 + 1472);
            if (v290 == 1)
            {
              v292 = *(v0 + 1160);

              sub_10000BE18(v291, &qword_10083E3E8, &unk_1006DBD00);
              v293 = type metadata accessor for PendingActionContext(0);
              (*(*(v293 - 8) + 56))(v292, 1, 1, v293);
            }

            else
            {
              sub_10000BBC4(v291 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v291, type metadata accessor for ActionRequest);
            }

            v294 = *(v0 + 1160);
            v295 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v294);

            sub_10000BE18(v294, &unk_100840960, &qword_1006DBCB0);
            v351 = v289;
            if (*(v295 + 152) == 1)
            {
LABEL_158:
              v306 = *(v0 + 1424);
              v307 = *(v0 + 1152);
              v308 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v308;
              sub_10000BBC4(v306 + v308, v307, &unk_100840960, &qword_1006DBCB0);
              v309 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v309;
              v310 = *(v309 - 8);
              v311 = *(v310 + 48);
              *(v0 + 1632) = v311;
              *(v0 + 1640) = (v310 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v355 = v311;
              v312 = v311(v307, 1, v309);
              v313 = *(v0 + 1152);
              v343 = v308;
              v345 = v306;
              if (v312 == 1)
              {
                sub_10000BE18(v313, &unk_100840960, &qword_1006DBCB0);
                v349 = 0;
                v314 = 0;
              }

              else
              {
                v314 = *(v313 + 72);
                v349 = *(v313 + 64);
                v315 = *(v0 + 1152);

                sub_100267A1C(v315, type metadata accessor for PendingActionContext);
              }

              v347 = v314;
              *(v0 + 1648) = v314;
              v316 = *(v0 + 1488);
              v317 = *(v0 + 1456);
              v318 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v316, v317, &qword_10083E3E8, &unk_1006DBD00);
              v319 = v351(v317, 1, v318);
              v320 = *(v0 + 1456);
              if (v319 == 1)
              {
                v321 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v310 + 56))(v321, 1, 1, v309);
                v322 = v356;
                v324 = v343;
                v323 = v345;
              }

              else
              {
                v325 = *(v0 + 1144);
                sub_10000BBC4(v320 + *(*(v0 + 1352) + 20), v325, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v320, type metadata accessor for ActionRequest);
                v322 = v356;
                v324 = v343;
                v323 = v345;
                v355(v325, 1, v309);
              }

              v326 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v323 + v324, v326, &unk_100840960, &qword_1006DBCB0);
              v327 = v355(v326, 1, v309);
              v328 = *(v0 + 1136);
              if (v327 == 1)
              {
                sub_10000BE18(v328, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v328, type metadata accessor for PendingActionContext);
              }

              v329 = swift_task_alloc();
              *(v0 + 1656) = v329;
              *v329 = v0;
              v329[1] = sub_100239F30;
              v330 = *(v0 + 1536);
              v331 = *(v0 + 1464);
              v332 = *(v0 + 1016);
              v333 = *(v0 + 1008);
              v334 = *(v0 + 1000);

              return sub_10025744C(v349, v347, v330, v334, v333, v332, v322, v331);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_158;
            }

LABEL_157:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_158;
          }

          v213 = *(v0 + 1352);
          v214 = *(v0 + 1168);
          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *(v0 + 968) = v216;
          *v215 = 136315138;
          sub_10000BBC4(v212 + *(v213 + 20), v214, &unk_100840960, &qword_1006DBCB0);
          v217 = type metadata accessor for PendingActionContext(0);
          v218 = (*(*(v217 - 8) + 48))(v214, 1, v217);
          v219 = *(v0 + 1168);
          if (v218 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v258 = *(v219 + 72);

            sub_100267A1C(v219, type metadata accessor for PendingActionContext);
            if (v258)
            {
              v259 = String.debugDescription.getter();
              v261 = v260;

LABEL_124:
              v353 = *(v0 + 1296);
              v262 = *(v0 + 1208);
              v263 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v264 = sub_100141FE4(v259, v261, (v0 + 968));

              *(v215 + 4) = v264;
              _os_log_impl(&_mh_execute_header, v209, v210, "server requested an action to set state:%s", v215, 0xCu);
              sub_10000BB78(v216);

              v242 = *(v262 + 8);
              v242(v353, v263);
              goto LABEL_125;
            }
          }

          v259 = 0;
          v261 = 0xE000000000000000;
          goto LABEL_124;
        }

        v356 = v44;
        defaultLogger()();
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&_mh_execute_header, v117, v118, "display notification received", v119, 2u);
        }

        v45 = *(v0 + 1504);
        v46 = *(v0 + 1496);
        v47 = *(v0 + 1424);
        v48 = *(v0 + 1352);
        v49 = *(v0 + 1344);
        v50 = *(v0 + 1208);
        v51 = *(v0 + 1200);

        (*(v50 + 8))(v49, v51);
        sub_10000BE18(v46, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v47, v46, type metadata accessor for ActionRequest);
        v45(v46, 0, 1, v48);
        goto LABEL_22;
      }

      if (v60 != 8)
      {
        if (v60 != 10)
        {
          defaultLogger()();
          v227 = Logger.logObject.getter();
          v228 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v227, v228))
          {
            v229 = swift_slowAlloc();
            *v229 = 0;
            _os_log_impl(&_mh_execute_header, v227, v228, "server requested an action to store token", v229, 2u);
          }

          v230 = *(v0 + 1424);
          v231 = *(v0 + 1352);
          v232 = *(v0 + 1248);
          v233 = *(v0 + 1208);
          v234 = *(v0 + 1200);
          v235 = *(v0 + 1104);

          v236 = *(v233 + 8);
          *(v0 + 1672) = v236;
          v236(v232, v234);
          sub_10000BBC4(v230 + *(v231 + 20), v235, &unk_100840960, &qword_1006DBCB0);
          v237 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v237 - 8) + 48))(v235, 1, v237) == 1)
          {
            v238 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v238, &unk_100840960, &qword_1006DBCB0);
LABEL_153:
            v18 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            goto LABEL_6;
          }

          v243 = *(v0 + 1104);
          v244 = (v243 + *(v237 + 128));
          v245 = *v244;
          *(v0 + 1680) = *v244;
          v246 = v244[1];
          *(v0 + 1688) = v246;
          v248 = v244[2];
          v247 = v244[3];
          *(v0 + 1696) = v247;
          sub_1000AB7D8(v245, v246, v248, v247);
          sub_100267A1C(v243, type metadata accessor for PendingActionContext);
          if (!v246)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_153;
          }

          v249 = *(v0 + 1072);
          v250 = *(v0 + 1064);
          v251 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v252 = String.data(using:allowLossyConversion:)();
          v254 = v253;
          *(v0 + 1704) = v252;
          *(v0 + 1712) = v253;
          (*(v250 + 8))(v249, v251);
          if (v254 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_153;
          }

          if (qword_100832C20 == -1)
          {
LABEL_155:
            v302 = *(qword_100882228 + 16);
            *(v0 + 1720) = v302;
            v303 = v302;
            v304 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v304;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v305 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v305;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v303 retrievePIITokenFromSyncableKeyStoreForIdentifier:v304 completion:v0 + 608];
            v27 = v0 + 16;
LABEL_12:

            return _swift_continuation_await(v27);
          }

LABEL_172:
          swift_once();
          goto LABEL_155;
        }

        defaultLogger()();
        v61 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        v88 = os_log_type_enabled(v61, v87);
        v64 = *(v0 + 1424);
        v65 = *(v0 + 1232);
        v66 = *(v0 + 1208);
        v67 = *(v0 + 1200);
        if (v88)
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          v69 = v87;
          v70 = v61;
          v71 = "INVALID ACTION REQUEST";
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      v120 = *(v0 + 1424);
      v121 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v120, v121, type metadata accessor for ActionRequest);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.info.getter();
      v124 = os_log_type_enabled(v122, v123);
      v125 = *(v0 + 1384);
      v356 = v44;
      if (!v124)
      {
        v146 = *(v0 + 1256);
        v147 = *(v0 + 1208);
        v148 = *(v0 + 1200);

        sub_100267A1C(v125, type metadata accessor for ActionRequest);
        (*(v147 + 8))(v146, v148);
LABEL_85:
        v181 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v181, &unk_100840960, &qword_1006DBCB0);
        v182 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v182 - 8) + 48))(v181, 1, v182) == 1)
        {
          v183 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v183, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_23;
        }

        v184 = *(v0 + 1112);
        v185 = (v184 + *(v182 + 112));
        v187 = *v185;
        v186 = v185[1];

        sub_100267A1C(v184, type metadata accessor for PendingActionContext);
        if (v186)
        {
          v188 = *(v0 + 1088);
          v189 = *(v0 + 1080);
          v190 = *(v0 + 1024);
          v191 = type metadata accessor for TaskPriority();
          v192 = *(v191 - 8);
          (*(v192 + 56))(v188, 1, 1, v191);
          v193 = swift_allocObject();
          v193[2] = 0;
          v193[3] = 0;
          v193[4] = v190;
          v193[5] = v187;
          v193[6] = v186;
          sub_10000BBC4(v188, v189, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v188) = (*(v192 + 48))(v189, 1, v191);

          v194 = *(v0 + 1080);
          if (v188 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v192 + 8))(v194, v191);
          }

          v195 = v193[2];
          swift_unknownObjectRetain();

          v44 = v356;
          if (v195)
          {
            swift_getObjectType();
            v196 = dispatch thunk of Actor.unownedExecutor.getter();
            v198 = v197;
            swift_unknownObjectRelease();
          }

          else
          {
            v196 = 0;
            v198 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v198 | v196)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v196;
            *(v0 + 872) = v198;
          }

          v64 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_55;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_22;
      }

      v126 = *(v0 + 1352);
      v127 = *(v0 + 1120);
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *(v0 + 960) = v129;
      *v128 = 136315138;
      sub_10000BBC4(v125 + *(v126 + 20), v127, &unk_100840960, &qword_1006DBCB0);
      v130 = type metadata accessor for PendingActionContext(0);
      v131 = (*(*(v130 - 8) + 48))(v127, 1, v130);
      v132 = *(v0 + 1120);
      if (v131 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v174 = (v132 + *(v130 + 112));
        v175 = *v174;
        v176 = v174[1];

        sub_100267A1C(v132, type metadata accessor for PendingActionContext);
        if (v176)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_84:
          v177 = *(v0 + 1256);
          v178 = *(v0 + 1208);
          v179 = *(v0 + 1200);
          v180 = sub_100141FE4(v175, v176, (v0 + 960));

          *(v128 + 4) = v180;
          _os_log_impl(&_mh_execute_header, v122, v123, "server requested to delete the Account Key Signing Key with identifier %s", v128, 0xCu);
          sub_10000BB78(v129);

          (*(v178 + 8))(v177, v179);
          v44 = v356;
          goto LABEL_85;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v176 = 0xE300000000000000;
      v175 = 4999502;
      goto LABEL_84;
    }

    if (v60 <= 2)
    {
      break;
    }

    if (v60 == 3)
    {
      v89 = *(v0 + 1424);
      v90 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v89, v90, type metadata accessor for ActionRequest);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v91, v92))
      {
        v141 = *(v0 + 1424);
        v142 = *(v0 + 1408);
        v143 = *(v0 + 1304);
        v144 = *(v0 + 1208);
        v145 = *(v0 + 1200);

        sub_100267A1C(v142, type metadata accessor for ActionRequest);
        (*(v144 + 8))(v143, v145);
        sub_100267A1C(v141, type metadata accessor for ActionRequest);
        goto LABEL_23;
      }

      v356 = v44;
      v93 = *(v0 + 1408);
      v94 = *(v0 + 1352);
      v95 = *(v0 + 1176);
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *(v0 + 976) = v97;
      *v96 = 136315138;
      sub_10000BBC4(v93 + *(v94 + 20), v95, &unk_100840960, &qword_1006DBCB0);
      v98 = type metadata accessor for PendingActionContext(0);
      v99 = (*(*(v98 - 8) + 48))(v95, 1, v98);
      v100 = *(v0 + 1176);
      if (v99 == 1)
      {
        sub_10000BE18(v100, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_79;
      }

      v166 = *(v100 + 56);
      v167 = *(v0 + 1176);

      sub_100267A1C(v167, type metadata accessor for PendingActionContext);
      if (v166)
      {
        v168 = String.debugDescription.getter();
        v170 = v169;
      }

      else
      {
LABEL_79:
        v168 = 0;
        v170 = 0xE000000000000000;
      }

      v340 = *(v0 + 1304);
      v342 = *(v0 + 1424);
      v171 = *(v0 + 1208);
      v172 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v173 = sub_100141FE4(v168, v170, (v0 + 976));

      *(v96 + 4) = v173;
      _os_log_impl(&_mh_execute_header, v91, v92, "server requested an action to self heal: %s", v96, 0xCu);
      sub_10000BB78(v97);

      (*(v171 + 8))(v340, v172);
      sub_100267A1C(v342, type metadata accessor for ActionRequest);
LABEL_22:
      v44 = v356;
      goto LABEL_23;
    }

    v356 = v44;
    defaultLogger()();
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "display message received", v103, 2u);
    }

    v104 = *(v0 + 1424);
    v105 = *(v0 + 1352);
    v106 = *(v0 + 1336);
    v107 = *(v0 + 1208);
    v108 = *(v0 + 1200);
    v109 = *(v0 + 1008);
    v110 = *(v0 + 1000);

    v111 = *(v107 + 8);
    v111(v106, v108);
    v112 = v111;
    sub_1002556F0(v104 + *(v105 + 20), v110, v109);
    type metadata accessor for IdentityProofingDataContext();
    v113 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v114 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v114 + 54);
    sub_100031B5C(&v114[4], v0 + 408);
    os_unfair_lock_unlock(v114 + 54);

    sub_100031918(v0 + 408);
    v351 = 0;
    v149 = sub_10054C274();
    v150 = *(v0 + 1896);
    v151 = *(v0 + 1424);
    v152 = *(v0 + 1416);
    v339 = v112;
    v341 = *(v0 + 1016);
    v153 = *(v0 + 1008);
    v154 = *(v0 + 1000);

    v155 = [v149 newBackgroundContext];
    *(v113 + 16) = v155;
    [v155 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v151, v152, type metadata accessor for ActionRequest);
    v156 = swift_allocObject();
    v156[2] = v113;
    v156[3] = v154;
    v156[4] = v153;
    v156[5] = v341;
    sub_100269F80(v152, v156 + ((v150 + 48) & ~v150), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v157 = *(v113 + 16);
    v158 = swift_allocObject();
    v158[2] = sub_100267BF8;
    v158[3] = v156;
    v158[4] = v338;
    v159 = swift_allocObject();
    *(v159 + 16) = sub_100267C5C;
    *(v159 + 24) = v158;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v159;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v160 = _Block_copy((v0 + 800));

    [v157 performBlockAndWait:v160];
    _Block_release(v160);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_171;
    }

    v162 = *v338;
    if (*v338)
    {
      swift_willThrow();
      v351 = v162;

      v44 = v356;
      v163 = *(v0 + 1328);
      v164 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v339(v163, v164);
    }

    else
    {

      v44 = v356;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_23:
    v39 = *(v0 + 1568) + 1;
    if (v39 == *(v0 + 1528))
    {
      goto LABEL_18;
    }
  }

  if (!v60)
  {
    defaultLogger()();
    v61 = Logger.logObject.getter();
    v115 = static os_log_type_t.debug.getter();
    v116 = os_log_type_enabled(v61, v115);
    v64 = *(v0 + 1424);
    v65 = *(v0 + 1272);
    v66 = *(v0 + 1208);
    v67 = *(v0 + 1200);
    if (v116)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = v115;
      v70 = v61;
      v71 = "server requested an action to wait for update";
LABEL_53:
      _os_log_impl(&_mh_execute_header, v70, v69, v71, v68, 2u);
    }

LABEL_54:

    (*(v66 + 8))(v65, v67);
LABEL_55:
    sub_100267A1C(v64, type metadata accessor for ActionRequest);
    goto LABEL_23;
  }

  if (v60 != 2)
  {
    defaultLogger()();
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&_mh_execute_header, v220, v221, "Starting Provisioning flow", v222, 2u);
    }

    v223 = *(v0 + 1312);
    v224 = *(v0 + 1208);
    v225 = *(v0 + 1200);
    v226 = *(v0 + 992);

    (*(v224 + 8))(v223, v225);
    if (*(v226 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v296 = *(v0 + 1424);
    v297 = *(*(v0 + 1352) + 20);
    v298 = swift_task_alloc();
    *(v0 + 1592) = v298;
    *v298 = v0;
    v298[1] = sub_10023710C;
    v299 = *(v0 + 1016);
    v300 = *(v0 + 1008);
    v301 = *(v0 + 1000);

    return sub_100229698(v296 + v297, v301, v300, v299, 0x61746E6567616DLL, 0xE700000000000000);
  }

  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "server requested an action to execute new workflow", v74, 2u);
  }

  v75 = *(v0 + 1424);
  v76 = *(v0 + 1352);
  v77 = *(v0 + 1320);
  v78 = *(v0 + 1208);
  v79 = *(v0 + 1200);
  v80 = *(v0 + 1192);

  (*(v78 + 8))(v77, v79);
  v81 = *(v76 + 20);
  sub_10000BBC4(v75 + v81, v80, &unk_100840960, &qword_1006DBCB0);
  v82 = type metadata accessor for PendingActionContext(0);
  v83 = *(*(v82 - 8) + 48);
  v84 = v83(v80, 1, v82);
  v85 = *(v0 + 1192);
  if (v84 == 1)
  {
    sub_10000BE18(v85, &unk_100840960, &qword_1006DBCB0);
    v86 = 3;
  }

  else
  {
    v86 = *(v85 + *(v82 + 76));
    sub_100267A1C(v85, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v86;
  v133 = *(v0 + 1184);
  sub_10000BBC4(v75 + v81, v133, &unk_100840960, &qword_1006DBCB0);
  v134 = v83(v133, 1, v82);
  v135 = *(v0 + 1184);
  v136 = *(v0 + 1096);
  if (v134 == 1)
  {
    sub_10000BE18(v135, &unk_100840960, &qword_1006DBCB0);
    v137 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v137 - 8) + 56))(v136, 1, 1, v137);
  }

  else
  {
    v138 = *(v82 + 72);
    v139 = *(v0 + 1184);
    sub_10000BBC4(v135 + v138, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v139, type metadata accessor for PendingActionContext);
  }

  v140 = *(v0 + 1096);
  sub_1002593E4(v140);
  sub_10000BE18(v140, &qword_100835968, &qword_1006DBC90);
  if (v86 <= 1)
  {
    v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v165)
    {
      goto LABEL_118;
    }

    goto LABEL_76;
  }

  if (v86 == 3)
  {
LABEL_76:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v44 = *(v0 + 1909);
    goto LABEL_23;
  }

LABEL_118:
  v255 = swift_task_alloc();
  *(v0 + 1576) = v255;
  *v255 = v0;
  v255[1] = sub_1002342A8;
  v256 = *(v0 + 1008);
  v257 = *(v0 + 1000);

  return sub_100259898(v75 + v81, v257, v256);
}

uint64_t sub_100240874()
{

  v1 = *(v0 + 1776);
  if (*(v0 + 1736))
  {
    swift_bridgeObjectRelease_n();

    v328 = *(v0 + 1712);
    v326 = *(v0 + 1720);
    v327 = *(v0 + 1704);
    v323 = *(v0 + 1424);
    v2 = *(v0 + 1048);
    v3 = *(v0 + 1040);
    v4 = *(v0 + 1032);
    _StringGuts.grow(_:)(29);
    *(v0 + 912) = 0;
    *(v0 + 920) = 0xE000000000000000;
    v5._countAndFlagsBits = 0xD00000000000001BLL;
    v5._object = 0x8000000100707AF0;
    String.append(_:)(v5);
    *(v0 + 952) = v1;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    (*(v3 + 104))(v2, enum case for DIPError.Code.failedToStorePIIToken(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v6 = v323;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v327, v328);

LABEL_3:
    sub_100267A1C(v6, type metadata accessor for ActionRequest);
    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

    v7 = *(v0 + 8);
    goto LABEL_4;
  }

  defaultLogger()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to update PII Token: %@", v11, 0xCu);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);
  }

  v14 = *(v0 + 1712);
  v15 = *(v0 + 1704);
  v16 = *(v0 + 1672);
  v17 = *(v0 + 1424);
  v18 = *(v0 + 1224);
  v19 = *(v0 + 1200);

  sub_10000BD94(v15, v14);

  v16(v18, v19);
  sub_100267A1C(v17, type metadata accessor for ActionRequest);
  v20 = *(v0 + 1568) + 1;
  if (v20 == *(v0 + 1528))
  {
LABEL_10:

    v21 = *(v0 + 1496);
    v22 = *(v0 + 1448);
    v23 = *(v0 + 1360);
    v24 = *(v0 + 1352);

    sub_10000BBC4(v21, v22, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v23 + 48))(v22, 1, v24) != 1)
    {
      v179 = *(v0 + 1504);
      v180 = *(v0 + 1440);
      v181 = *(v0 + 1376);
      v182 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v181, type metadata accessor for ActionRequest);
      sub_100269FE8(v181, v180, type metadata accessor for ActionRequest);
      v179(v180, 0, 1, v182);
      v183 = swift_task_alloc();
      *(v0 + 1880) = v183;
      *v183 = v0;
      v183[1] = sub_10024F280;
      v184 = *(v0 + 1440);
      v185 = *(v0 + 1008);
      v186 = *(v0 + 1000);

      return sub_1002550B8(v184, v186, v185);
    }

    sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
    sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

    v7 = *(v0 + 8);
LABEL_4:

    return v7();
  }

  v315 = (v0 + 984);
  v25 = *(v0 + 1908);
  while (1)
  {
    *(v0 + 1568) = v20;
    *(v0 + 1908) = v25;
    *(v0 + 1560) = 0;
    v33 = *(v0 + 1520);
    if (v20 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_151;
    }

    v34 = *(v0 + 1424);
    v35 = *(v0 + 1016);
    v36 = *(v0 + 1008);
    v37 = *(v0 + 1000);
    v38 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v33 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v38 * v20, v34, type metadata accessor for ActionRequest);
    sub_10025DCD8(v34, v37, v36, v35);
    v39 = *v34;
    v40 = v34[1];

    v334._countAndFlagsBits = v39;
    v334._object = v40;
    v41 = sub_10025DC8C(v334);
    if (v41 > 4)
    {
      if (v41 <= 7)
      {
        if (v41 != 6)
        {
          if (v41 == 7)
          {
            defaultLogger()();
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.debug.getter();
            v44 = os_log_type_enabled(v42, v43);
            v45 = *(v0 + 1424);
            v46 = *(v0 + 1264);
            v47 = *(v0 + 1208);
            v48 = *(v0 + 1200);
            if (v44)
            {
              v49 = swift_slowAlloc();
              *v49 = 0;
              v50 = v43;
              v51 = v42;
              v52 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_45;
            }

            goto LABEL_46;
          }

          v187 = *(v0 + 1424);
          v188 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v187, v188, type metadata accessor for ActionRequest);
          v189 = Logger.logObject.getter();
          v190 = static os_log_type_t.debug.getter();
          v191 = os_log_type_enabled(v189, v190);
          v192 = *(v0 + 1400);
          LOBYTE(v332) = v25;
          if (!v191)
          {
            v219 = *(v0 + 1296);
            v220 = *(v0 + 1208);
            v221 = *(v0 + 1200);

            sub_100267A1C(v192, type metadata accessor for ActionRequest);
            v222 = *(v220 + 8);
            v222(v219, v221);
LABEL_117:
            v330 = v222;
            *(v0 + 1608) = v222;
            v245 = *(*(v0 + 1520) + 16);
            if (v245)
            {
              v246 = 0;
              v247 = 0;
              while (1)
              {
                v248 = *(v0 + 1520);
                if (v247 >= *(v248 + 16))
                {
                  break;
                }

                v249 = *(v0 + 1392);
                sub_100269FE8(v248 + v246 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v249, type metadata accessor for ActionRequest);
                v250 = *v249 == 0x5F4F545F444E4553 && v249[1] == 0xED0000454D4F4942;
                if (v250 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v251 = 0;
                  goto LABEL_128;
                }

                ++v247;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v246 += v38;
                if (v245 == v247)
                {
                  goto LABEL_126;
                }
              }

LABEL_165:
              __break(1u);
              goto LABEL_166;
            }

LABEL_126:
            v251 = 1;
LABEL_128:
            v252 = *(v0 + 1488);
            v253 = *(v0 + 1480);
            (*(v0 + 1504))(v252, v251, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v252, v253, &qword_10083E3E8, &unk_1006DBD00);
            v254 = Logger.logObject.getter();
            v255 = static os_log_type_t.debug.getter();
            v256 = os_log_type_enabled(v254, v255);
            v257 = *(v0 + 1480);
            if (v256)
            {
              v258 = *(v0 + 1360);
              v259 = *(v0 + 1352);
              v260 = swift_slowAlloc();
              *v260 = 67109120;
              LODWORD(v259) = (*(v258 + 48))(v257, 1, v259) != 1;
              sub_10000BE18(v257, &qword_10083E3E8, &unk_1006DBD00);
              *(v260 + 4) = v259;
              _os_log_impl(&_mh_execute_header, v254, v255, "Biome data exists to be donated? -> %{BOOL}d", v260, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v261 = v254;
            v262 = *(v0 + 1488);
            v263 = *(v0 + 1472);
            v264 = *(v0 + 1360);
            v265 = *(v0 + 1352);
            v266 = *(v0 + 1288);
            v267 = *(v0 + 1208);
            v268 = *(v0 + 1200);

            *(v0 + 1616) = (v267 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v330(v266, v268);
            sub_10000BBC4(v262, v263, &qword_10083E3E8, &unk_1006DBD00);
            v269 = *(v264 + 48);
            v270 = v269(v263, 1, v265);
            v271 = *(v0 + 1472);
            if (v270 == 1)
            {
              v272 = *(v0 + 1160);

              sub_10000BE18(v271, &qword_10083E3E8, &unk_1006DBD00);
              v273 = type metadata accessor for PendingActionContext(0);
              (*(*(v273 - 8) + 56))(v272, 1, 1, v273);
            }

            else
            {
              sub_10000BBC4(v271 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v271, type metadata accessor for ActionRequest);
            }

            v274 = *(v0 + 1160);
            v275 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v274);

            sub_10000BE18(v274, &unk_100840960, &qword_1006DBCB0);
            v325 = v269;
            if (*(v275 + 152) == 1)
            {
LABEL_152:
              v286 = *(v0 + 1424);
              v287 = *(v0 + 1152);
              v288 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v288;
              sub_10000BBC4(v286 + v288, v287, &unk_100840960, &qword_1006DBCB0);
              v289 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v289;
              v290 = *(v289 - 8);
              v291 = *(v290 + 48);
              *(v0 + 1632) = v291;
              *(v0 + 1640) = (v290 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v331 = v291;
              v292 = v291(v287, 1, v289);
              v293 = *(v0 + 1152);
              v316 = v288;
              v319 = v286;
              if (v292 == 1)
              {
                sub_10000BE18(v293, &unk_100840960, &qword_1006DBCB0);
                v324 = 0;
                v294 = 0;
              }

              else
              {
                v294 = *(v293 + 72);
                v324 = *(v293 + 64);
                v295 = *(v0 + 1152);

                sub_100267A1C(v295, type metadata accessor for PendingActionContext);
              }

              v322 = v294;
              *(v0 + 1648) = v294;
              v296 = *(v0 + 1488);
              v297 = *(v0 + 1456);
              v298 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v296, v297, &qword_10083E3E8, &unk_1006DBD00);
              v299 = v325(v297, 1, v298);
              v300 = *(v0 + 1456);
              if (v299 == 1)
              {
                v301 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v290 + 56))(v301, 1, 1, v289);
                v302 = v332;
                v304 = v316;
                v303 = v319;
              }

              else
              {
                v305 = *(v0 + 1144);
                sub_10000BBC4(v300 + *(*(v0 + 1352) + 20), v305, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v300, type metadata accessor for ActionRequest);
                v302 = v332;
                v304 = v316;
                v303 = v319;
                v331(v305, 1, v289);
              }

              v306 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v303 + v304, v306, &unk_100840960, &qword_1006DBCB0);
              v307 = v331(v306, 1, v289);
              v308 = *(v0 + 1136);
              if (v307 == 1)
              {
                sub_10000BE18(v308, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v308, type metadata accessor for PendingActionContext);
              }

              v309 = swift_task_alloc();
              *(v0 + 1656) = v309;
              *v309 = v0;
              v309[1] = sub_100239F30;
              v310 = *(v0 + 1536);
              v311 = *(v0 + 1464);
              v312 = *(v0 + 1016);
              v313 = *(v0 + 1008);
              v314 = *(v0 + 1000);

              return sub_10025744C(v324, v322, v310, v314, v313, v312, v302, v311);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_152;
            }

LABEL_151:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_152;
          }

          v193 = *(v0 + 1352);
          v194 = *(v0 + 1168);
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          *(v0 + 968) = v196;
          *v195 = 136315138;
          sub_10000BBC4(v192 + *(v193 + 20), v194, &unk_100840960, &qword_1006DBCB0);
          v197 = type metadata accessor for PendingActionContext(0);
          v198 = (*(*(v197 - 8) + 48))(v194, 1, v197);
          v199 = *(v0 + 1168);
          if (v198 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v238 = *(v199 + 72);

            sub_100267A1C(v199, type metadata accessor for PendingActionContext);
            if (v238)
            {
              v239 = String.debugDescription.getter();
              v241 = v240;

LABEL_116:
              v329 = *(v0 + 1296);
              v242 = *(v0 + 1208);
              v243 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v244 = sub_100141FE4(v239, v241, (v0 + 968));

              *(v195 + 4) = v244;
              _os_log_impl(&_mh_execute_header, v189, v190, "server requested an action to set state:%s", v195, 0xCu);
              sub_10000BB78(v196);

              v222 = *(v242 + 8);
              v222(v329, v243);
              goto LABEL_117;
            }
          }

          v239 = 0;
          v241 = 0xE000000000000000;
          goto LABEL_116;
        }

        v332 = v25;
        defaultLogger()();
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&_mh_execute_header, v97, v98, "display notification received", v99, 2u);
        }

        v26 = *(v0 + 1504);
        v27 = *(v0 + 1496);
        v28 = *(v0 + 1424);
        v29 = *(v0 + 1352);
        v30 = *(v0 + 1344);
        v31 = *(v0 + 1208);
        v32 = *(v0 + 1200);

        (*(v31 + 8))(v30, v32);
        sub_10000BE18(v27, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v28, v27, type metadata accessor for ActionRequest);
        v26(v27, 0, 1, v29);
        goto LABEL_14;
      }

      if (v41 != 8)
      {
        if (v41 != 10)
        {
          defaultLogger()();
          v207 = Logger.logObject.getter();
          v208 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v207, v208))
          {
            v209 = swift_slowAlloc();
            *v209 = 0;
            _os_log_impl(&_mh_execute_header, v207, v208, "server requested an action to store token", v209, 2u);
          }

          v210 = *(v0 + 1424);
          v211 = *(v0 + 1352);
          v212 = *(v0 + 1248);
          v213 = *(v0 + 1208);
          v214 = *(v0 + 1200);
          v215 = *(v0 + 1104);

          v216 = *(v213 + 8);
          *(v0 + 1672) = v216;
          v216(v212, v214);
          sub_10000BBC4(v210 + *(v211 + 20), v215, &unk_100840960, &qword_1006DBCB0);
          v217 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v217 - 8) + 48))(v215, 1, v217) == 1)
          {
            v218 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v218, &unk_100840960, &qword_1006DBCB0);
LABEL_145:
            v6 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            goto LABEL_3;
          }

          v223 = *(v0 + 1104);
          v224 = (v223 + *(v217 + 128));
          v225 = *v224;
          *(v0 + 1680) = *v224;
          v226 = v224[1];
          *(v0 + 1688) = v226;
          v228 = v224[2];
          v227 = v224[3];
          *(v0 + 1696) = v227;
          sub_1000AB7D8(v225, v226, v228, v227);
          sub_100267A1C(v223, type metadata accessor for PendingActionContext);
          if (!v226)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_145;
          }

          v229 = *(v0 + 1072);
          v230 = *(v0 + 1064);
          v231 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v232 = String.data(using:allowLossyConversion:)();
          v234 = v233;
          *(v0 + 1704) = v232;
          *(v0 + 1712) = v233;
          (*(v230 + 8))(v229, v231);
          if (v234 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_145;
          }

          if (qword_100832C20 == -1)
          {
LABEL_147:
            v282 = *(qword_100882228 + 16);
            *(v0 + 1720) = v282;
            v283 = v282;
            v284 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v284;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v285 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v285;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v283 retrievePIITokenFromSyncableKeyStoreForIdentifier:v284 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_166:
          swift_once();
          goto LABEL_147;
        }

        defaultLogger()();
        v42 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        v69 = os_log_type_enabled(v42, v68);
        v45 = *(v0 + 1424);
        v46 = *(v0 + 1232);
        v47 = *(v0 + 1208);
        v48 = *(v0 + 1200);
        if (v69)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = v68;
          v51 = v42;
          v52 = "INVALID ACTION REQUEST";
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      v100 = *(v0 + 1424);
      v101 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v100, v101, type metadata accessor for ActionRequest);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.info.getter();
      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 1384);
      v332 = v25;
      if (!v104)
      {
        v126 = *(v0 + 1256);
        v127 = *(v0 + 1208);
        v128 = *(v0 + 1200);

        sub_100267A1C(v105, type metadata accessor for ActionRequest);
        (*(v127 + 8))(v126, v128);
LABEL_77:
        v161 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v161, &unk_100840960, &qword_1006DBCB0);
        v162 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v162 - 8) + 48))(v161, 1, v162) == 1)
        {
          v163 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v163, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_15;
        }

        v164 = *(v0 + 1112);
        v165 = (v164 + *(v162 + 112));
        v167 = *v165;
        v166 = v165[1];

        sub_100267A1C(v164, type metadata accessor for PendingActionContext);
        if (v166)
        {
          v168 = *(v0 + 1088);
          v169 = *(v0 + 1080);
          v170 = *(v0 + 1024);
          v171 = type metadata accessor for TaskPriority();
          v172 = *(v171 - 8);
          (*(v172 + 56))(v168, 1, 1, v171);
          v173 = swift_allocObject();
          v173[2] = 0;
          v173[3] = 0;
          v173[4] = v170;
          v173[5] = v167;
          v173[6] = v166;
          sub_10000BBC4(v168, v169, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v168) = (*(v172 + 48))(v169, 1, v171);

          v174 = *(v0 + 1080);
          if (v168 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v172 + 8))(v174, v171);
          }

          v175 = v173[2];
          swift_unknownObjectRetain();

          v25 = v332;
          if (v175)
          {
            swift_getObjectType();
            v176 = dispatch thunk of Actor.unownedExecutor.getter();
            v178 = v177;
            swift_unknownObjectRelease();
          }

          else
          {
            v176 = 0;
            v178 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v178 | v176)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v176;
            *(v0 + 872) = v178;
          }

          v45 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_47;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_14;
      }

      v106 = *(v0 + 1352);
      v107 = *(v0 + 1120);
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *(v0 + 960) = v109;
      *v108 = 136315138;
      sub_10000BBC4(v105 + *(v106 + 20), v107, &unk_100840960, &qword_1006DBCB0);
      v110 = type metadata accessor for PendingActionContext(0);
      v111 = (*(*(v110 - 8) + 48))(v107, 1, v110);
      v112 = *(v0 + 1120);
      if (v111 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v154 = (v112 + *(v110 + 112));
        v155 = *v154;
        v156 = v154[1];

        sub_100267A1C(v112, type metadata accessor for PendingActionContext);
        if (v156)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_76:
          v157 = *(v0 + 1256);
          v158 = *(v0 + 1208);
          v159 = *(v0 + 1200);
          v160 = sub_100141FE4(v155, v156, (v0 + 960));

          *(v108 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v102, v103, "server requested to delete the Account Key Signing Key with identifier %s", v108, 0xCu);
          sub_10000BB78(v109);

          (*(v158 + 8))(v157, v159);
          v25 = v332;
          goto LABEL_77;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v156 = 0xE300000000000000;
      v155 = 4999502;
      goto LABEL_76;
    }

    if (v41 <= 2)
    {
      break;
    }

    if (v41 == 3)
    {
      v70 = *(v0 + 1424);
      v71 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v70, v71, type metadata accessor for ActionRequest);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v72, v73))
      {
        v121 = *(v0 + 1424);
        v122 = *(v0 + 1408);
        v123 = *(v0 + 1304);
        v124 = *(v0 + 1208);
        v125 = *(v0 + 1200);

        sub_100267A1C(v122, type metadata accessor for ActionRequest);
        (*(v124 + 8))(v123, v125);
        sub_100267A1C(v121, type metadata accessor for ActionRequest);
        goto LABEL_15;
      }

      v74 = *(v0 + 1408);
      v75 = *(v0 + 1352);
      v76 = *(v0 + 1176);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *(v0 + 976) = v78;
      *v77 = 136315138;
      sub_10000BBC4(v74 + *(v75 + 20), v76, &unk_100840960, &qword_1006DBCB0);
      v79 = type metadata accessor for PendingActionContext(0);
      v80 = (*(*(v79 - 8) + 48))(v76, 1, v79);
      v81 = *(v0 + 1176);
      v332 = v25;
      if (v80 == 1)
      {
        sub_10000BE18(v81, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_71;
      }

      v146 = *(v81 + 56);
      v147 = *(v0 + 1176);

      sub_100267A1C(v147, type metadata accessor for PendingActionContext);
      if (v146)
      {
        v148 = String.debugDescription.getter();
        v150 = v149;
      }

      else
      {
LABEL_71:
        v148 = 0;
        v150 = 0xE000000000000000;
      }

      v318 = *(v0 + 1304);
      v321 = *(v0 + 1424);
      v151 = *(v0 + 1208);
      v152 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v153 = sub_100141FE4(v148, v150, (v0 + 976));

      *(v77 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v72, v73, "server requested an action to self heal: %s", v77, 0xCu);
      sub_10000BB78(v78);

      (*(v151 + 8))(v318, v152);
      sub_100267A1C(v321, type metadata accessor for ActionRequest);
LABEL_14:
      v25 = v332;
      goto LABEL_15;
    }

    v332 = v25;
    defaultLogger()();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "display message received", v84, 2u);
    }

    v85 = *(v0 + 1424);
    v86 = *(v0 + 1352);
    v87 = *(v0 + 1336);
    v88 = *(v0 + 1208);
    v89 = *(v0 + 1200);
    v90 = *(v0 + 1008);
    v91 = *(v0 + 1000);

    v92 = *(v88 + 8);
    v92(v87, v89);
    sub_1002556F0(v85 + *(v86 + 20), v91, v90);
    type metadata accessor for IdentityProofingDataContext();
    v93 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v94 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v94 + 54);
    sub_100031B5C(&v94[4], v0 + 408);
    os_unfair_lock_unlock(v94 + 54);

    sub_100031918(v0 + 408);
    v325 = 0;
    v129 = sub_10054C274();
    v130 = *(v0 + 1896);
    v131 = *(v0 + 1424);
    v132 = *(v0 + 1416);
    v317 = v92;
    v320 = *(v0 + 1016);
    v133 = *(v0 + 1008);
    v134 = *(v0 + 1000);

    v135 = [v129 newBackgroundContext];
    *(v93 + 16) = v135;
    [v135 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v131, v132, type metadata accessor for ActionRequest);
    v136 = swift_allocObject();
    v136[2] = v93;
    v136[3] = v134;
    v136[4] = v133;
    v136[5] = v320;
    sub_100269F80(v132, v136 + ((v130 + 48) & ~v130), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v137 = *(v93 + 16);
    v138 = swift_allocObject();
    v138[2] = sub_100267BF8;
    v138[3] = v136;
    v138[4] = v315;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_100267C5C;
    *(v139 + 24) = v138;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v139;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v140 = _Block_copy((v0 + 800));

    [v137 performBlockAndWait:v140];
    _Block_release(v140);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_165;
    }

    v142 = *v315;
    v25 = v332;
    if (*v315)
    {
      swift_willThrow();
      v325 = v142;

      v143 = *(v0 + 1328);
      v144 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v317(v143, v144);
    }

    else
    {
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_15:
    v20 = *(v0 + 1568) + 1;
    if (v20 == *(v0 + 1528))
    {
      goto LABEL_10;
    }
  }

  if (!v41)
  {
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    v96 = os_log_type_enabled(v42, v95);
    v45 = *(v0 + 1424);
    v46 = *(v0 + 1272);
    v47 = *(v0 + 1208);
    v48 = *(v0 + 1200);
    if (v96)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = v95;
      v51 = v42;
      v52 = "server requested an action to wait for update";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v51, v50, v52, v49, 2u);
    }

LABEL_46:

    (*(v47 + 8))(v46, v48);
LABEL_47:
    sub_100267A1C(v45, type metadata accessor for ActionRequest);
    goto LABEL_15;
  }

  if (v41 != 2)
  {
    defaultLogger()();
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "Starting Provisioning flow", v202, 2u);
    }

    v203 = *(v0 + 1312);
    v204 = *(v0 + 1208);
    v205 = *(v0 + 1200);
    v206 = *(v0 + 992);

    (*(v204 + 8))(v203, v205);
    if (*(v206 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v276 = *(v0 + 1424);
    v277 = *(*(v0 + 1352) + 20);
    v278 = swift_task_alloc();
    *(v0 + 1592) = v278;
    *v278 = v0;
    v278[1] = sub_10023710C;
    v279 = *(v0 + 1016);
    v280 = *(v0 + 1008);
    v281 = *(v0 + 1000);

    return sub_100229698(v276 + v277, v281, v280, v279, 0x61746E6567616DLL, 0xE700000000000000);
  }

  defaultLogger()();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "server requested an action to execute new workflow", v55, 2u);
  }

  v56 = *(v0 + 1424);
  v57 = *(v0 + 1352);
  v58 = *(v0 + 1320);
  v59 = *(v0 + 1208);
  v60 = *(v0 + 1200);
  v61 = *(v0 + 1192);

  (*(v59 + 8))(v58, v60);
  v62 = *(v57 + 20);
  sub_10000BBC4(v56 + v62, v61, &unk_100840960, &qword_1006DBCB0);
  v63 = type metadata accessor for PendingActionContext(0);
  v64 = *(*(v63 - 8) + 48);
  v65 = v64(v61, 1, v63);
  v66 = *(v0 + 1192);
  if (v65 == 1)
  {
    sub_10000BE18(v66, &unk_100840960, &qword_1006DBCB0);
    v67 = 3;
  }

  else
  {
    v67 = *(v66 + *(v63 + 76));
    sub_100267A1C(v66, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v67;
  v113 = *(v0 + 1184);
  sub_10000BBC4(v56 + v62, v113, &unk_100840960, &qword_1006DBCB0);
  v114 = v64(v113, 1, v63);
  v115 = *(v0 + 1184);
  v116 = *(v0 + 1096);
  if (v114 == 1)
  {
    sub_10000BE18(v115, &unk_100840960, &qword_1006DBCB0);
    v117 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v117 - 8) + 56))(v116, 1, 1, v117);
  }

  else
  {
    v118 = *(v63 + 72);
    v119 = *(v0 + 1184);
    sub_10000BBC4(v115 + v118, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v119, type metadata accessor for PendingActionContext);
  }

  v120 = *(v0 + 1096);
  sub_1002593E4(v120);
  sub_10000BE18(v120, &qword_100835968, &qword_1006DBC90);
  if (v67 <= 1)
  {
    v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v145)
    {
      goto LABEL_110;
    }

    goto LABEL_68;
  }

  if (v67 == 3)
  {
LABEL_68:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v25 = *(v0 + 1909);
    goto LABEL_15;
  }

LABEL_110:
  v235 = swift_task_alloc();
  *(v0 + 1576) = v235;
  *v235 = v0;
  v235[1] = sub_1002342A8;
  v236 = *(v0 + 1008);
  v237 = *(v0 + 1000);

  return sub_100259898(v56 + v62, v237, v236);
}

uint64_t sub_10024382C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1824) = v1;
  if (v1)
  {

    v2 = sub_100250498;
  }

  else
  {
    v2 = sub_10024395C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10024395C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1800);

  v3 = IdentityTarget.rawValue.getter();
  if (v3 == IdentityTarget.rawValue.getter())
  {
    v4 = *(v0 + 1688);
    v5 = swift_task_alloc();
    *(v0 + 1864) = v5;
    *v5 = v0;
    v5[1] = sub_10024969C;
    v6 = *(v0 + 1792);
    v7 = *(v0 + 1784);
    v8 = *(v0 + 1680);

    sub_10025F680(v8, v4, v7, v6);
    return;
  }

  v9 = *(v0 + 1720);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1704);
  sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
  sub_10000BD94(v11, v10);

  v12 = *(v0 + 1568) + 1;
  if (v12 == *(v0 + 1528))
  {
LABEL_6:

    v13 = *(v0 + 1496);
    v14 = *(v0 + 1448);
    v15 = *(v0 + 1360);
    v16 = *(v0 + 1352);

    sub_10000BBC4(v13, v14, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v15 + 48))(v14, 1, v16) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v17 = *(v0 + 8);
LABEL_8:

      v17();
    }

    else
    {
      v172 = *(v0 + 1504);
      v173 = *(v0 + 1440);
      v174 = *(v0 + 1376);
      v175 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v174, type metadata accessor for ActionRequest);
      sub_100269FE8(v174, v173, type metadata accessor for ActionRequest);
      v172(v173, 0, 1, v175);
      v176 = swift_task_alloc();
      *(v0 + 1880) = v176;
      *v176 = v0;
      v176[1] = sub_10024F280;
      v177 = *(v0 + 1440);
      v178 = *(v0 + 1008);
      v179 = *(v0 + 1000);

      sub_1002550B8(v177, v179, v178);
    }

    return;
  }

  v309 = (v0 + 984);
  v18 = *(v0 + 1908);
  v319 = *(v0 + 1776);
  v317 = "redential list provided";
  v19 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v12;
    *(v0 + 1908) = v18;
    *(v0 + 1560) = v319;
    v27 = *(v0 + 1520);
    if (v12 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_153;
    }

    v28 = *(v0 + 1424);
    v29 = *(v0 + 1016);
    v30 = *(v0 + 1008);
    v31 = *(v0 + 1000);
    v32 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v27 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v32 * v12, v28, type metadata accessor for ActionRequest);
    sub_10025DCD8(v28, v31, v30, v29);
    v33 = *v28;
    v34 = v28[1];

    v325._countAndFlagsBits = v33;
    v325._object = v34;
    v35 = sub_10025DC8C(v325);
    if (v35 > 4)
    {
      if (v35 <= 7)
      {
        if (v35 != 6)
        {
          if (v35 == 7)
          {
            defaultLogger()();
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.debug.getter();
            v38 = os_log_type_enabled(v36, v37);
            v39 = *(v0 + 1424);
            v40 = *(v0 + 1264);
            v41 = *(v0 + 1208);
            v42 = *(v0 + 1200);
            if (v38)
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              v44 = v37;
              v45 = v36;
              v46 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_46:
              _os_log_impl(&_mh_execute_header, v45, v44, v46, v43, 2u);
              v19 = &unk_1006BF9D0;

              goto LABEL_47;
            }

            goto LABEL_47;
          }

          v180 = *(v0 + 1424);
          v181 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v180, v181, type metadata accessor for ActionRequest);
          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.debug.getter();
          v184 = os_log_type_enabled(v182, v183);
          v185 = *(v0 + 1400);
          LOBYTE(v318) = v18;
          if (!v184)
          {
            v212 = *(v0 + 1296);
            v213 = *(v0 + 1208);
            v214 = *(v0 + 1200);

            sub_100267A1C(v185, type metadata accessor for ActionRequest);
            v215 = *(v213 + 8);
            v215(v212, v214);
LABEL_119:
            v322 = v215;
            *(v0 + 1608) = v215;
            v238 = *(*(v0 + 1520) + 16);
            if (v238)
            {
              v239 = 0;
              v240 = 0;
              while (1)
              {
                v241 = *(v0 + 1520);
                if (v240 >= *(v241 + 16))
                {
                  break;
                }

                v242 = *(v0 + 1392);
                sub_100269FE8(v241 + v239 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v242, type metadata accessor for ActionRequest);
                v243 = *v242 == 0x5F4F545F444E4553 && v242[1] == 0xED0000454D4F4942;
                if (v243 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v244 = 0;
                  goto LABEL_130;
                }

                ++v240;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v239 += v32;
                if (v238 == v240)
                {
                  goto LABEL_128;
                }
              }

LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

LABEL_128:
            v244 = 1;
LABEL_130:
            v245 = *(v0 + 1488);
            v246 = *(v0 + 1480);
            (*(v0 + 1504))(v245, v244, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v245, v246, &qword_10083E3E8, &unk_1006DBD00);
            v247 = Logger.logObject.getter();
            v248 = static os_log_type_t.debug.getter();
            v249 = os_log_type_enabled(v247, v248);
            v250 = *(v0 + 1480);
            if (v249)
            {
              v251 = *(v0 + 1360);
              v252 = *(v0 + 1352);
              v253 = swift_slowAlloc();
              *v253 = 67109120;
              LODWORD(v252) = (*(v251 + 48))(v250, 1, v252) != 1;
              sub_10000BE18(v250, &qword_10083E3E8, &unk_1006DBD00);
              *(v253 + 4) = v252;
              _os_log_impl(&_mh_execute_header, v247, v248, "Biome data exists to be donated? -> %{BOOL}d", v253, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v254 = v247;
            v255 = *(v0 + 1488);
            v256 = *(v0 + 1472);
            v257 = *(v0 + 1360);
            v258 = *(v0 + 1352);
            v259 = *(v0 + 1288);
            v260 = *(v0 + 1208);
            v261 = *(v0 + 1200);

            *(v0 + 1616) = (v260 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v322(v259, v261);
            sub_10000BBC4(v255, v256, &qword_10083E3E8, &unk_1006DBD00);
            v262 = *(v257 + 48);
            v263 = (v262)(v256, 1, v258);
            v264 = *(v0 + 1472);
            if (v263 == 1)
            {
              v265 = *(v0 + 1160);

              sub_10000BE18(v264, &qword_10083E3E8, &unk_1006DBD00);
              v266 = type metadata accessor for PendingActionContext(0);
              (*(*(v266 - 8) + 56))(v265, 1, 1, v266);
            }

            else
            {
              sub_10000BBC4(v264 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v264, type metadata accessor for ActionRequest);
            }

            v267 = *(v0 + 1160);
            v268 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v267);

            sub_10000BE18(v267, &unk_100840960, &qword_1006DBCB0);
            v317 = v262;
            if (*(v268 + 152) == 1)
            {
LABEL_154:
              v280 = *(v0 + 1424);
              v281 = *(v0 + 1152);
              v282 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v282;
              sub_10000BBC4(v280 + v282, v281, &unk_100840960, &qword_1006DBCB0);
              v283 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v283;
              v284 = *(v283 - 8);
              v285 = *(v284 + 48);
              *(v0 + 1632) = v285;
              *(v0 + 1640) = (v284 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v323 = v285;
              v286 = v285(v281, 1, v283);
              v287 = *(v0 + 1152);
              v311 = v282;
              v314 = v280;
              if (v286 == 1)
              {
                sub_10000BE18(v287, &unk_100840960, &qword_1006DBCB0);
                v316 = 0;
                v288 = 0;
              }

              else
              {
                v288 = *(v287 + 72);
                v316 = *(v287 + 64);
                v289 = *(v0 + 1152);

                sub_100267A1C(v289, type metadata accessor for PendingActionContext);
              }

              v315 = v288;
              *(v0 + 1648) = v288;
              v290 = *(v0 + 1488);
              v291 = *(v0 + 1456);
              v292 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v290, v291, &qword_10083E3E8, &unk_1006DBD00);
              v293 = (v317)(v291, 1, v292);
              v294 = *(v0 + 1456);
              if (v293 == 1)
              {
                v295 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v284 + 56))(v295, 1, 1, v283);
                v296 = v318;
                v298 = v311;
                v297 = v314;
              }

              else
              {
                v299 = *(v0 + 1144);
                sub_10000BBC4(v294 + *(*(v0 + 1352) + 20), v299, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v294, type metadata accessor for ActionRequest);
                v296 = v318;
                v298 = v311;
                v297 = v314;
                v323(v299, 1, v283);
              }

              v300 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v297 + v298, v300, &unk_100840960, &qword_1006DBCB0);
              v301 = v323(v300, 1, v283);
              v302 = *(v0 + 1136);
              if (v301 == 1)
              {
                sub_10000BE18(v302, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v302, type metadata accessor for PendingActionContext);
              }

              v303 = swift_task_alloc();
              *(v0 + 1656) = v303;
              *v303 = v0;
              v303[1] = sub_100239F30;
              v304 = *(v0 + 1536);
              v305 = *(v0 + 1464);
              v306 = *(v0 + 1016);
              v307 = *(v0 + 1008);
              v308 = *(v0 + 1000);

              sub_10025744C(v316, v315, v304, v308, v307, v306, v296, v305);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_154;
            }

LABEL_153:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_154;
          }

          v186 = *(v0 + 1352);
          v187 = *(v0 + 1168);
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          *(v0 + 968) = v189;
          *v188 = 136315138;
          sub_10000BBC4(v185 + *(v186 + 20), v187, &unk_100840960, &qword_1006DBCB0);
          v190 = type metadata accessor for PendingActionContext(0);
          v191 = (*(*(v190 - 8) + 48))(v187, 1, v190);
          v192 = *(v0 + 1168);
          if (v191 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v231 = *(v192 + 72);

            sub_100267A1C(v192, type metadata accessor for PendingActionContext);
            if (v231)
            {
              v232 = String.debugDescription.getter();
              v234 = v233;

LABEL_118:
              v321 = *(v0 + 1296);
              v235 = *(v0 + 1208);
              v236 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v237 = sub_100141FE4(v232, v234, (v0 + 968));

              *(v188 + 4) = v237;
              _os_log_impl(&_mh_execute_header, v182, v183, "server requested an action to set state:%s", v188, 0xCu);
              sub_10000BB78(v189);

              v215 = *(v235 + 8);
              v215(v321, v236);
              goto LABEL_119;
            }
          }

          v232 = 0;
          v234 = 0xE000000000000000;
          goto LABEL_118;
        }

        v318 = v18;
        defaultLogger()();
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "display notification received", v93, 2u);
        }

        v20 = *(v0 + 1504);
        v21 = *(v0 + 1496);
        v22 = *(v0 + 1424);
        v23 = *(v0 + 1352);
        v24 = *(v0 + 1344);
        v25 = *(v0 + 1208);
        v26 = *(v0 + 1200);

        (*(v25 + 8))(v24, v26);
        sub_10000BE18(v21, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v22, v21, type metadata accessor for ActionRequest);
        v20(v21, 0, 1, v23);
        goto LABEL_13;
      }

      if (v35 != 8)
      {
        if (v35 != 10)
        {
          defaultLogger()();
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            *v202 = 0;
            _os_log_impl(&_mh_execute_header, v200, v201, "server requested an action to store token", v202, 2u);
          }

          v203 = *(v0 + 1424);
          v204 = *(v0 + 1352);
          v205 = *(v0 + 1248);
          v206 = *(v0 + 1208);
          v207 = *(v0 + 1200);
          v208 = *(v0 + 1104);

          v209 = *(v206 + 8);
          *(v0 + 1672) = v209;
          v209(v205, v207);
          sub_10000BBC4(v203 + *(v204 + 20), v208, &unk_100840960, &qword_1006DBCB0);
          v210 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v210 - 8) + 48))(v208, 1, v210) == 1)
          {
            v211 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v211, &unk_100840960, &qword_1006DBCB0);
LABEL_147:
            v275 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v275, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v17 = *(v0 + 8);
            goto LABEL_8;
          }

          v216 = *(v0 + 1104);
          v217 = (v216 + *(v210 + 128));
          v218 = *v217;
          *(v0 + 1680) = *v217;
          v219 = v217[1];
          *(v0 + 1688) = v219;
          v221 = v217[2];
          v220 = v217[3];
          *(v0 + 1696) = v220;
          sub_1000AB7D8(v218, v219, v221, v220);
          sub_100267A1C(v216, type metadata accessor for PendingActionContext);
          if (!v219)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_147;
          }

          v222 = *(v0 + 1072);
          v223 = *(v0 + 1064);
          v224 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v225 = String.data(using:allowLossyConversion:)();
          v227 = v226;
          *(v0 + 1704) = v225;
          *(v0 + 1712) = v226;
          (*(v223 + 8))(v222, v224);
          if (v227 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_147;
          }

          if (qword_100832C20 == -1)
          {
LABEL_149:
            v276 = *(qword_100882228 + 16);
            *(v0 + 1720) = v276;
            v277 = v276;
            v278 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v278;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v279 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v279;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v277 retrievePIITokenFromSyncableKeyStoreForIdentifier:v278 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_168:
          swift_once();
          goto LABEL_149;
        }

        defaultLogger()();
        v36 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        v63 = os_log_type_enabled(v36, v62);
        v39 = *(v0 + 1424);
        v40 = *(v0 + 1232);
        v41 = *(v0 + 1208);
        v42 = *(v0 + 1200);
        if (!v63)
        {
          goto LABEL_47;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = v62;
        v45 = v36;
        v46 = "INVALID ACTION REQUEST";
        goto LABEL_46;
      }

      v94 = *(v0 + 1424);
      v95 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v94, v95, type metadata accessor for ActionRequest);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.info.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 1384);
      v318 = v18;
      if (!v98)
      {
        v120 = *(v0 + 1256);
        v121 = *(v0 + 1208);
        v122 = *(v0 + 1200);

        sub_100267A1C(v99, type metadata accessor for ActionRequest);
        (*(v121 + 8))(v120, v122);
LABEL_78:
        v153 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v153, &unk_100840960, &qword_1006DBCB0);
        v154 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v154 - 8) + 48))(v153, 1, v154) == 1)
        {
          v155 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v155, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_15;
        }

        v156 = *(v0 + 1112);
        v157 = (v156 + *(v154 + 112));
        v159 = *v157;
        v158 = v157[1];

        sub_100267A1C(v156, type metadata accessor for PendingActionContext);
        if (!v158)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v18 = v318;
          goto LABEL_15;
        }

        v160 = *(v0 + 1088);
        v161 = *(v0 + 1080);
        v162 = v19;
        v163 = *(v0 + 1024);
        v164 = type metadata accessor for TaskPriority();
        v165 = *(v164 - 8);
        (*(v165 + 56))(v160, 1, 1, v164);
        v166 = swift_allocObject();
        v166[2] = 0;
        v166[3] = 0;
        v166[4] = v163;
        v166[5] = v159;
        v166[6] = v158;
        sub_10000BBC4(v160, v161, &unk_100845860, v162);
        LODWORD(v160) = (*(v165 + 48))(v161, 1, v164);

        v167 = *(v0 + 1080);
        if (v160 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v162);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v165 + 8))(v167, v164);
        }

        v19 = v162;
        v168 = v166[2];
        swift_unknownObjectRetain();

        v18 = v318;
        if (v168)
        {
          swift_getObjectType();
          v169 = dispatch thunk of Actor.unownedExecutor.getter();
          v171 = v170;
          swift_unknownObjectRelease();
        }

        else
        {
          v169 = 0;
          v171 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v162);
        if (v171 | v169)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v169;
          *(v0 + 872) = v171;
        }

        v39 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_48;
      }

      v100 = *(v0 + 1352);
      v101 = *(v0 + 1120);
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *(v0 + 960) = v103;
      *v102 = 136315138;
      sub_10000BBC4(v99 + *(v100 + 20), v101, &unk_100840960, &qword_1006DBCB0);
      v104 = type metadata accessor for PendingActionContext(0);
      v105 = (*(*(v104 - 8) + 48))(v101, 1, v104);
      v106 = *(v0 + 1120);
      if (v105 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v146 = (v106 + *(v104 + 112));
        v147 = *v146;
        v148 = v146[1];

        sub_100267A1C(v106, type metadata accessor for PendingActionContext);
        if (v148)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_77:
          v149 = *(v0 + 1256);
          v150 = *(v0 + 1208);
          v151 = *(v0 + 1200);
          v152 = sub_100141FE4(v147, v148, (v0 + 960));

          *(v102 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v96, v97, "server requested to delete the Account Key Signing Key with identifier %s", v102, 0xCu);
          sub_10000BB78(v103);

          (*(v150 + 8))(v149, v151);
          v18 = v318;
          v19 = &unk_1006BF9D0;
          goto LABEL_78;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v148 = 0xE300000000000000;
      v147 = 4999502;
      goto LABEL_77;
    }

    if (v35 <= 2)
    {
      break;
    }

    if (v35 == 3)
    {
      v64 = *(v0 + 1424);
      v65 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v64, v65, type metadata accessor for ActionRequest);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 1408);
        v69 = *(v0 + 1352);
        v70 = *(v0 + 1176);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *(v0 + 976) = v72;
        *v71 = 136315138;
        sub_10000BBC4(v68 + *(v69 + 20), v70, &unk_100840960, &qword_1006DBCB0);
        v73 = type metadata accessor for PendingActionContext(0);
        v74 = (*(*(v73 - 8) + 48))(v70, 1, v73);
        v75 = *(v0 + 1176);
        v318 = v18;
        if (v74 == 1)
        {
          sub_10000BE18(v75, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_72;
        }

        v138 = *(v75 + 56);
        v139 = *(v0 + 1176);

        sub_100267A1C(v139, type metadata accessor for PendingActionContext);
        if (v138)
        {
          v140 = String.debugDescription.getter();
          v142 = v141;
        }

        else
        {
LABEL_72:
          v140 = 0;
          v142 = 0xE000000000000000;
        }

        v310 = *(v0 + 1304);
        v313 = *(v0 + 1424);
        v143 = *(v0 + 1208);
        v144 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v145 = sub_100141FE4(v140, v142, (v0 + 976));

        *(v71 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v66, v67, "server requested an action to self heal: %s", v71, 0xCu);
        sub_10000BB78(v72);

        (*(v143 + 8))(v310, v144);
        sub_100267A1C(v313, type metadata accessor for ActionRequest);
LABEL_13:
        v18 = v318;
      }

      else
      {
        v115 = *(v0 + 1424);
        v116 = *(v0 + 1408);
        v117 = *(v0 + 1304);
        v118 = *(v0 + 1208);
        v119 = *(v0 + 1200);

        sub_100267A1C(v116, type metadata accessor for ActionRequest);
        (*(v118 + 8))(v117, v119);
        sub_100267A1C(v115, type metadata accessor for ActionRequest);
      }

      v19 = &unk_1006BF9D0;
      goto LABEL_15;
    }

    v318 = v18;
    defaultLogger()();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "display message received", v78, 2u);
    }

    v79 = *(v0 + 1424);
    v80 = *(v0 + 1352);
    v81 = *(v0 + 1336);
    v82 = *(v0 + 1208);
    v83 = *(v0 + 1200);
    v84 = *(v0 + 1008);
    v85 = *(v0 + 1000);

    v86 = *(v82 + 8);
    v86(v81, v83);
    sub_1002556F0(v79 + *(v80 + 20), v85, v84);
    type metadata accessor for IdentityProofingDataContext();
    v87 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v88 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v88 + 54);
    sub_100031B5C(&v88[4], v0 + 408);
    os_unfair_lock_unlock(v88 + 54);
    if (v319)
    {
      return;
    }

    sub_100031918(v0 + 408);
    v123 = sub_10054C274();
    v312 = v86;
    v124 = *(v0 + 1896);
    v125 = *(v0 + 1424);
    v126 = *(v0 + 1416);
    v320 = *(v0 + 1016);
    v127 = *(v0 + 1008);
    v128 = *(v0 + 1000);

    v129 = [v123 newBackgroundContext];
    *(v87 + 16) = v129;
    [v129 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v125, v126, type metadata accessor for ActionRequest);
    v130 = swift_allocObject();
    v130[2] = v87;
    v130[3] = v128;
    v130[4] = v127;
    v130[5] = v320;
    sub_100269F80(v126, v130 + ((v124 + 48) & ~v124), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v131 = *(v87 + 16);
    v132 = swift_allocObject();
    v132[2] = sub_100267BF8;
    v132[3] = v130;
    v132[4] = v309;
    v133 = swift_allocObject();
    *(v133 + 16) = sub_100267C5C;
    *(v133 + 24) = v132;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v133;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v134 = _Block_copy((v0 + 800));

    [v131 performBlockAndWait:v134];
    _Block_release(v134);
    LOBYTE(v134) = swift_isEscapingClosureAtFileLocation();

    if (v134)
    {
      __break(1u);
      goto LABEL_167;
    }

    v18 = v318;
    v19 = &unk_1006BF9D0;
    if (*v309)
    {
      swift_willThrow();

      v135 = *(v0 + 1328);
      v136 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v312(v135, v136);
    }

    else
    {
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v319 = 0;
LABEL_15:
    v12 = *(v0 + 1568) + 1;
    if (v12 == *(v0 + 1528))
    {
      goto LABEL_6;
    }
  }

  if (!v35)
  {
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    v90 = os_log_type_enabled(v36, v89);
    v39 = *(v0 + 1424);
    v40 = *(v0 + 1272);
    v41 = *(v0 + 1208);
    v42 = *(v0 + 1200);
    if (v90)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = v89;
      v45 = v36;
      v46 = "server requested an action to wait for update";
      goto LABEL_46;
    }

LABEL_47:

    (*(v41 + 8))(v40, v42);
LABEL_48:
    sub_100267A1C(v39, type metadata accessor for ActionRequest);
    goto LABEL_15;
  }

  if (v35 != 2)
  {
    defaultLogger()();
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&_mh_execute_header, v193, v194, "Starting Provisioning flow", v195, 2u);
    }

    v196 = *(v0 + 1312);
    v197 = *(v0 + 1208);
    v198 = *(v0 + 1200);
    v199 = *(v0 + 992);

    (*(v197 + 8))(v196, v198);
    if (*(v199 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v269 = *(v0 + 1424);
    v270 = *(*(v0 + 1352) + 20);
    v271 = swift_task_alloc();
    *(v0 + 1592) = v271;
    *v271 = v0;
    v271[1] = sub_10023710C;
    v272 = *(v0 + 1016);
    v273 = *(v0 + 1008);
    v274 = *(v0 + 1000);

    sub_100229698(v269 + v270, v274, v273, v272, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  defaultLogger()();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "server requested an action to execute new workflow", v49, 2u);
  }

  v50 = *(v0 + 1424);
  v51 = *(v0 + 1352);
  v52 = *(v0 + 1320);
  v53 = *(v0 + 1208);
  v54 = *(v0 + 1200);
  v55 = *(v0 + 1192);

  (*(v53 + 8))(v52, v54);
  v56 = *(v51 + 20);
  sub_10000BBC4(v50 + v56, v55, &unk_100840960, &qword_1006DBCB0);
  v57 = type metadata accessor for PendingActionContext(0);
  v58 = *(*(v57 - 8) + 48);
  v59 = v58(v55, 1, v57);
  v60 = *(v0 + 1192);
  if (v59 == 1)
  {
    sub_10000BE18(v60, &unk_100840960, &qword_1006DBCB0);
    v61 = 3;
  }

  else
  {
    v61 = *(v60 + *(v57 + 76));
    sub_100267A1C(v60, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v61;
  v107 = *(v0 + 1184);
  sub_10000BBC4(v50 + v56, v107, &unk_100840960, &qword_1006DBCB0);
  v108 = v58(v107, 1, v57);
  v109 = *(v0 + 1184);
  v110 = *(v0 + 1096);
  if (v108 == 1)
  {
    sub_10000BE18(v109, &unk_100840960, &qword_1006DBCB0);
    v111 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v111 - 8) + 56))(v110, 1, 1, v111);
  }

  else
  {
    v112 = *(v57 + 72);
    v113 = *(v0 + 1184);
    sub_10000BBC4(v109 + v112, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v113, type metadata accessor for PendingActionContext);
  }

  v114 = *(v0 + 1096);
  sub_1002593E4(v114);
  sub_10000BE18(v114, &qword_100835968, &qword_1006DBC90);
  if (v61 <= 1)
  {
    v19 = &unk_1006BF9D0;
    v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v137)
    {
      goto LABEL_112;
    }

    goto LABEL_69;
  }

  v19 = &unk_1006BF9D0;
  if (v61 == 3)
  {
LABEL_69:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v18 = *(v0 + 1909);
    goto LABEL_15;
  }

LABEL_112:
  v228 = swift_task_alloc();
  *(v0 + 1576) = v228;
  *v228 = v0;
  v228[1] = sub_1002342A8;
  v229 = *(v0 + 1008);
  v230 = *(v0 + 1000);

  sub_100259898(v50 + v56, v230, v229);
}

uint64_t sub_100246764()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1856) = v1;
  if (v1)
  {

    v2 = sub_1002509E4;
  }

  else
  {
    v2 = sub_100246894;
  }

  return _swift_task_switch(v2, 0, 0);
}