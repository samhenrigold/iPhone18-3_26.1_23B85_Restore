uint64_t sub_100513634()
{
  v1 = *(*v0 + 696);

  return _swift_task_switch(sub_100513760, v1, 0);
}

uint64_t sub_100513760()
{
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[68];
  v5 = v0[51];
  v14 = v0[50];
  v6 = v0[38];
  sub_10000FF90(v0[91] + v0[97], v4, &unk_1009755F0, &unk_1007FE9A0);
  sub_100688470(v4);
  sub_100005508(v4, &unk_1009755F0, &unk_1007FE9A0);
  v1(v2, v3);
  (*(v5 + 56))(v6, 1, 1, v14);
  sub_100688030(v6, v2);
  sub_100005508(v6, &qword_100977DC0, &unk_1007FB320);
  v1(v2, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Monitoring Transfer END - Failure {%@}", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100513B2C()
{
  v1 = v0[66];
  v17 = v0[65];
  v18 = v0[67];
  v16 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[55];
  v5 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[50];
  v8 = v0[51];
  (*(v0[45] + 8))(v0[46], v0[44]);
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v16, v3);
  (*(v1 + 8))(v18, v17);
  v10 = v0[21];
  v0[22] = v10;
  v0[116] = v10;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v11 = swift_allocError();
    v0[117] = v11;
    CancellationError.init()();
    v12 = swift_task_alloc();
    v0[118] = v12;
    *v12 = v0;
    v12[1] = sub_1005130FC;
    v13 = v11;
  }

  else
  {

    swift_errorRetain();
    v14 = swift_task_alloc();
    v0[119] = v14;
    *v14 = v0;
    v14[1] = sub_100513634;
    v13 = v10;
  }

  return sub_100641284(v13);
}

uint64_t sub_100513D90()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[54];
  (*(v0[51] + 8))(v0[53], v0[50]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = v0[115];
  v0[22] = v10;
  v0[116] = v10;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v11 = swift_allocError();
    v0[117] = v11;
    CancellationError.init()();
    v12 = swift_task_alloc();
    v0[118] = v12;
    *v12 = v0;
    v12[1] = sub_1005130FC;
    v13 = v11;
  }

  else
  {

    swift_errorRetain();
    v14 = swift_task_alloc();
    v0[119] = v14;
    *v14 = v0;
    v14[1] = sub_100513634;
    v13 = v10;
  }

  return sub_100641284(v13);
}

uint64_t sub_100513FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 234) = a4;
  *(v5 + 264) = a3;
  *(v5 + 272) = v4;
  *(v5 + 248) = a1;
  *(v5 + 256) = a2;
  sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v6 = sub_10028088C(&unk_1009892E0, &unk_1007FE6A0);
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.Transfer.State();
  *(v5 + 320) = v7;
  *(v5 + 328) = *(v7 - 8);
  *(v5 + 336) = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.DeclineAction();
  *(v5 + 344) = v8;
  *(v5 + 352) = *(v8 - 8);
  *(v5 + 360) = swift_task_alloc();
  v9 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v5 + 368) = v9;
  *(v5 + 376) = *(v9 - 8);
  *(v5 + 384) = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *(v5 + 392) = v10;
  *(v5 + 400) = *(v10 - 8);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferType();
  *(v5 + 432) = v11;
  *(v5 + 440) = *(v11 - 8);
  *(v5 + 448) = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.AskRequest();
  *(v5 + 456) = v12;
  *(v5 + 464) = *(v12 - 8);
  *(v5 + 472) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer();
  *(v5 + 480) = v13;
  *(v5 + 488) = *(v13 - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  *(v5 + 520) = static AirDropActor.shared;

  return _swift_task_switch(sub_1005143E4, v14, 0);
}

uint64_t sub_1005143E4()
{
  v97 = v0;
  v1 = type metadata accessor for SDAirDropUserSafetyContentHandler();
  *(v0 + 16) = swift_allocObject();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_1008E3278;
  v3 = sub_10049F1E0();
  v5 = v4;
  *(v0 + 528) = v3;
  *(v0 + 536) = v4;
  v95 = (v0 + 16);
  *(v0 + 235) = v2;
  if (v2)
  {
    v90 = v1;
    if ((*(v0 + 234) & 1) == 0)
    {
      v6 = *(v0 + 512);
      v8 = *(v0 + 480);
      v7 = *(v0 + 488);
      v9 = *(v0 + 464);
      v10 = *(v0 + 472);
      v11 = *(v0 + 456);
      *(v0 + 544) = *(*(v0 + 272) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
      v92 = v2;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v12 = *(v7 + 8);
      *(v0 + 552) = v12;
      *(v0 + 560) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v88 = v12;
      v12(v6, v8);
      v13 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v14 = *(v9 + 8);
      v14(v10, v11);
      v2 = v92;
      if ((v13 & 1) == 0)
      {
        v15 = *(v0 + 512);
        v16 = *(v0 + 472);
        v17 = *(v0 + 448);
        v79 = *(v0 + 480);
        v80 = *(v0 + 456);
        v83 = *(v0 + 440);
        v85 = *(v0 + 432);
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v88(v15, v79);
        SFAirDropReceive.AskRequest.type.getter();
        v14(v16, v80);
        v18 = SFAirDrop.TransferType.isFiles.getter();
        (*(v83 + 8))(v17, v85);
        v2 = v92;
        if (v18)
        {
          v19 = *(v0 + 424);
          v20 = *(v0 + 392);
          v21 = *(v0 + 400);
          v22 = *(v0 + 264);
          v23 = *(v21 + 16);
          *(v0 + 568) = v23;
          *(v0 + 576) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v81 = v23;
          v23(v19, v22, v20);
          *(v0 + 584) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "Analyzing full content START", v26, 2u);
          }

          v27 = *(v0 + 512);
          v93 = *(v0 + 480);
          v28 = *(v0 + 384);
          v29 = *(v0 + 360);
          v30 = *(v0 + 352);
          v74 = *(v0 + 392);
          v75 = *(v0 + 344);
          v31 = *(v0 + 336);
          v76 = *(v0 + 328);
          v77 = *(v0 + 320);
          v32 = *(v0 + 272);
          v33 = *(v0 + 256);
          v73 = *(v0 + 264);

          sub_10002CDC0(v95, v90);
          sub_100498F44(v33);
          v34 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
          *(v0 + 592) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
          swift_beginAccess();
          sub_1002A9938(v32 + v34, v0 + 56);
          v36 = *(v0 + 80);
          v35 = *(v0 + 88);
          sub_10002CDC0((v0 + 56), v36);
          CurrentValueSubject.value.getter();
          sub_100587FBC(v27, 0xD000000000000014, 0x8000000100794B20, v28, v36, &type metadata for Double, &type metadata for Bool, v35, v29);
          v88(v27, v93);
          sub_10000C60C((v0 + 56));
          v37 = sub_10028088C(&qword_100974E88, &unk_100808F30);
          *(v0 + 600) = v37;
          v38 = v37[12];
          v39 = v37[16];
          v40 = v37[20];
          v81(v31, v73, v74);
          *(v31 + v38) = v33;
          *(v31 + v39) = 0;
          v41 = *(v30 + 16);
          *(v0 + 608) = v41;
          *(v0 + 616) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v41(v31 + v40, v29, v75);
          *(v0 + 236) = enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:);
          v42 = *(v76 + 104);
          *(v0 + 624) = v42;
          *(v0 + 632) = (v76 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
          v42(v31);

          sub_100687AF8(v31, v27);
          v43 = *(v76 + 8);
          *(v0 + 640) = v43;
          *(v0 + 648) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v43(v31, v77);
          v88(v27, v93);
          SFProgressTask.makeAsyncIterator()();
          v44 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
          *(v0 + 656) = v44;
          v45 = *(v0 + 520);
          v46 = swift_task_alloc();
          *(v0 + 664) = v46;
          *v46 = v0;
          v46[1] = sub_100514E0C;
          v47 = *(v0 + 296);

          return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 224, v45, v44, v47, v0 + 240);
        }
      }
    }

    sub_1003C3F0C(v3, v5, v2);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v48, v49))
    {

      goto LABEL_17;
    }

    v50 = *(v0 + 512);
    v52 = *(v0 + 480);
    v51 = *(v0 + 488);
    v78 = v52;
    v94 = v49;
    v53 = *(v0 + 464);
    v54 = *(v0 + 472);
    v82 = *(v0 + 456);
    v84 = *(v0 + 448);
    v86 = *(v0 + 432);
    v87 = *(v0 + 440);
    v91 = v48;
    v55 = *(v0 + 234);
    v56 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v96 = v89;
    *v56 = 67109634;
    *(v56 + 4) = v55;
    *(v56 + 8) = 1024;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v57 = *(v51 + 8);
    v57(v50, v52);
    LOBYTE(v55) = SFAirDropReceive.AskRequest.senderIsMe.getter();
    v58 = *(v53 + 8);
    v58(v54, v82);
    *(v56 + 10) = v55 & 1;

    *(v56 + 14) = 2080;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v57(v50, v78);
    SFAirDropReceive.AskRequest.type.getter();
    v58(v54, v82);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v87 + 8))(v84, v86);
    v62 = sub_10000C4E4(v59, v61, &v96);

    *(v56 + 16) = v62;
    v63 = v91;
    _os_log_impl(&_mh_execute_header, v91, v94, "Analyzing full content SKIP {isPreviewSensitive: %{BOOL}d, senderIsMe: %{BOOL}d, askRequest.type: %s", v56, 0x18u);
    sub_10000C60C(v89);
  }

  else
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v63, v64))
    {

      sub_1003C3F0C(v3, v5, 0);
      goto LABEL_17;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v96 = v66;
    *v65 = 136315138;
    v67 = sub_100498E20(v3, v5, 0);
    v69 = v68;
    sub_1003C3F0C(v3, v5, 0);
    v70 = sub_10000C4E4(v67, v69, &v96);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "Analyzing full content SKIP {userSafetyMode: %s}", v65, 0xCu);
    sub_10000C60C(v66);
  }

LABEL_17:
  (*(*(v0 + 400) + 16))(*(v0 + 248), *(v0 + 264), *(v0 + 392));
  sub_10000C60C(v95);

  v71 = *(v0 + 8);

  return v71(0);
}

uint64_t sub_100514E0C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 520);
    sub_1003C3F0C(*(v2 + 528), *(v2 + 536), *(v2 + 235));
    v4 = sub_100516F68;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 520);
    v4 = sub_100514F38;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100514F38()
{
  v1 = *(v0 + 224);
  if (*(v0 + 232))
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    v2 = swift_task_alloc();
    *(v0 + 672) = v2;
    *v2 = v0;
    v2[1] = sub_1005151BC;
    v3 = *(v0 + 368);

    return SFProgressTask.finalValue.getter(v0 + 233, v3);
  }

  else
  {
    v24 = *(v0 + 640);
    v21 = *(v0 + 624);
    v19 = *(v0 + 236);
    v18 = *(v0 + 608);
    v4 = *(v0 + 600);
    v23 = *(v0 + 552);
    v20 = *(v0 + 512);
    v22 = *(v0 + 480);
    v5 = *(v0 + 360);
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 320);
    v9 = *(v0 + 256);
    v10 = v4[12];
    v11 = v4[16];
    v12 = v4[20];
    (*(v0 + 568))(v7, *(v0 + 264), *(v0 + 392));
    *(v7 + v10) = v9;
    *(v7 + v11) = v1;
    v18(v7 + v12, v5, v6);
    v21(v7, v19, v8);

    sub_100687AF8(v7, v20);
    v24(v7, v8);
    v23(v20, v22);
    v13 = *(v0 + 656);
    v14 = *(v0 + 520);
    v15 = swift_task_alloc();
    *(v0 + 664) = v15;
    *v15 = v0;
    v15[1] = sub_100514E0C;
    v16 = *(v0 + 296);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 224, v14, v13, v16, v0 + 240);
  }
}

uint64_t sub_1005151BC()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);
    sub_1003C3F0C(*(v2 + 528), *(v2 + 536), *(v2 + 235));
    v4 = sub_100517200;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 520);
    v4 = sub_1005152EC;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005152EC(uint64_t a1)
{
  v77 = v1;
  v2 = *(v1 + 233);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Analyzing full content END {isSensitive: %{BOOL}d}", v5, 8u);
  }

  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.sensitive.setter();
  swift_endAccess();
  if (!v2)
  {
    v26 = *(v1 + 536);
    v27 = *(v1 + 528);
    v28 = *(v1 + 235);
    sub_100530B64(v27, v26, v28);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v27, v26, v28);
    v66 = v30;
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v1 + 235);
    v33 = *(v1 + 536);
    v34 = *(v1 + 528);
    v35 = *(v1 + 424);
    v37 = *(v1 + 392);
    v36 = *(v1 + 400);
    v38 = *(v1 + 376);
    v72 = *(v1 + 368);
    v75 = *(v1 + 384);
    v39 = *(v1 + 352);
    v68 = *(v1 + 344);
    v69 = *(v1 + 360);
    if (v31)
    {
      log = v29;
      v40 = swift_slowAlloc();
      v64 = v36;
      v41 = swift_slowAlloc();
      v76 = v41;
      *v40 = 136315394;
      v61 = v37;
      v63 = v35;
      v42 = sub_100498E20(v34, v33, v32);
      v44 = v43;
      sub_1003C3F0C(v34, v33, v32);
      v45 = sub_10000C4E4(v42, v44, &v76);

      *(v40 + 4) = v45;
      *(v40 + 12) = 1024;
      *(v40 + 14) = 0;
      _os_log_impl(&_mh_execute_header, log, v66, "Sensitive preview step SKIP {userSafetyMode: %s, isSensitive: %{BOOL}d}", v40, 0x12u);
      sub_10000C60C(v41);

      (*(v39 + 8))(v69, v68);
      (*(v38 + 8))(v75, v72);
      (*(v64 + 8))(v63, v61);
    }

    else
    {

      sub_1003C3F0C(v34, v33, v32);
      (*(v39 + 8))(v69, v68);
      (*(v38 + 8))(v75, v72);
      (*(v36 + 8))(v35, v37);
    }

    (*(v1 + 568))(*(v1 + 248), *(v1 + 264), *(v1 + 392));
    sub_10000C60C((v1 + 16));

    v25 = *(v1 + 8);
LABEL_12:

    return v25(0);
  }

  v6 = *(v1 + 680);
  v7 = *(v1 + 504);
  v8 = *(v1 + 288);
  sub_1002A9938(*(v1 + 272) + *(v1 + 592), v1 + 96);
  sub_10002CDC0((v1 + 96), *(v1 + 120));
  CurrentValueSubject.value.getter();
  sub_10058ADEC(v7, v8);
  if (v6)
  {
    v9 = *(v1 + 552);
    v10 = *(v1 + 504);
    v11 = *(v1 + 480);
    v12 = *(v1 + 376);
    v13 = *(v1 + 360);
    v71 = *(v1 + 368);
    v74 = *(v1 + 384);
    v15 = *(v1 + 344);
    v14 = *(v1 + 352);
    sub_1003C3F0C(*(v1 + 528), *(v1 + 536), *(v1 + 235));
    v9(v10, v11);
    (*(v14 + 8))(v13, v15);
    (*(v12 + 8))(v74, v71);
    sub_10000C60C((v1 + 96));
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Analyzing full content END - Failure {%@}", v18, 0xCu);
      sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
    }

    v21 = *(v1 + 424);
    v22 = *(v1 + 400);
    v23 = v16;
    v24 = *(v1 + 392);

    swift_willThrow();
    (*(v22 + 8))(v21, v24);
    sub_10000C60C((v1 + 16));

    v25 = *(v1 + 8);
    goto LABEL_12;
  }

  v73 = *(v1 + 640);
  v62 = *(v1 + 624);
  v47 = *(v1 + 568);
  v70 = *(v1 + 552);
  v65 = *(v1 + 480);
  v67 = *(v1 + 512);
  v48 = *(v1 + 392);
  v49 = *(v1 + 336);
  v50 = *(v1 + 320);
  v51 = *(v1 + 264);
  v59 = *(v1 + 288);
  v52 = *(v1 + 256);
  (v70)(*(v1 + 504));
  sub_10000C60C((v1 + 96));
  v53 = sub_10028088C(&qword_100974E80, &qword_100808F40);
  *(v1 + 688) = v53;
  v54 = *(v53 + 48);
  v55 = *(v53 + 64);
  v47(v49, v51, v48);
  *(v49 + v54) = v52;
  v56 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  *(v1 + 696) = v56;
  v57 = *(v56 - 8);
  v58 = *(v57 + 16);
  *(v1 + 704) = v58;
  *(v1 + 712) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58(v49 + v55, v59, v56);
  v62(v49, enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:), v50);

  sub_100687AF8(v49, v67);
  v73(v49, v50);
  v70(v67, v65);

  return _swift_task_switch(sub_100515B30, 0, 0);
}

uint64_t sub_100515B30()
{
  v1 = v0[36];
  v2 = swift_task_alloc();
  v0[90] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[91] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[92] = v4;
  *v4 = v0;
  v4[1] = sub_100515C38;
  v5 = v0[52];
  v6 = v0[49];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100808F48, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_100515C38()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);
    sub_1003C3F0C(*(v2 + 528), *(v2 + 536), *(v2 + 235));

    v4 = sub_100516590;
  }

  else
  {
    v3 = *(v2 + 520);

    v4 = sub_100515DBC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100515DBC()
{
  v79 = v0;
  v1 = *(v0 + 235);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v5 + 8);
  *(v0 + 752) = v6;
  *(v0 + 760) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  v7 = *(v5 + 32);
  *(v0 + 768) = v7;
  *(v0 + 776) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v3, v2, v4);
  if (v1 != 2)
  {
    v32 = *(v0 + 536);
    v33 = *(v0 + 528);
    v34 = *(v0 + 235);
    sub_100530B64(v33, v32, v34);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v33, v32, v34);
    v70 = v36;
    log = v35;
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 235);
    v39 = *(v0 + 536);
    v40 = *(v0 + 528);
    v41 = *(v0 + 376);
    v42 = *(v0 + 384);
    v77 = *(v0 + 368);
    v43 = *(v0 + 352);
    v72 = *(v0 + 344);
    v74 = *(v0 + 360);
    v44 = *(v0 + 288);
    if (v37)
    {
      v69 = *(v0 + 384);
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78 = v64;
      *v45 = 136315394;
      v66 = v41;
      v67 = v44;
      v46 = sub_100498E20(v40, v39, v38);
      v48 = v47;
      sub_1003C3F0C(v40, v39, v38);
      v49 = sub_10000C4E4(v46, v48, &v78);

      *(v45 + 4) = v49;
      *(v45 + 12) = 1024;
      *(v45 + 14) = 1;
      _os_log_impl(&_mh_execute_header, log, v70, "Intervention step SKIP {userSafetyMode: %s, isSensitive: %{BOOL}d}", v45, 0x12u);
      sub_10000C60C(v64);

      (*(v43 + 8))(v74, v72);
      (*(v66 + 8))(v69, v77);
      v50 = v67;
    }

    else
    {

      sub_1003C3F0C(v40, v39, v38);
      (*(v43 + 8))(v74, v72);
      (*(v41 + 8))(v42, v77);
      v50 = v44;
    }

    sub_100005508(v50, &qword_100976908, &unk_100801D60);
    v7(*(v0 + 248), *(v0 + 424), *(v0 + 392));
    sub_10000C60C((v0 + 16));

    v30 = *(v0 + 8);
    v31 = 1;
LABEL_10:

    return v30(v31);
  }

  v8 = *(v0 + 744);
  v9 = *(v0 + 592);
  v10 = *(v0 + 496);
  v11 = *(v0 + 424);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  sub_1003C3F0C(*(v0 + 528), *(v0 + 536), 2u);
  sub_1002A9938(v13 + v9, v0 + 136);
  sub_10002CDC0((v0 + 136), *(v0 + 160));
  CurrentValueSubject.value.getter();
  sub_100589278(v10, v11, v12);
  if (v8)
  {
    v15 = *(v0 + 376);
    v14 = *(v0 + 384);
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v20 = *(v0 + 288);
    (*(v0 + 552))(*(v0 + 496), *(v0 + 480));
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    sub_100005508(v20, &qword_100976908, &unk_100801D60);
    sub_10000C60C((v0 + 136));
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Analyzing full content END - Failure {%@}", v23, 0xCu);
      sub_100005508(v24, &qword_100975400, &qword_1007F65D0);
    }

    v26 = *(v0 + 424);
    v27 = *(v0 + 400);
    v28 = v21;
    v29 = *(v0 + 392);

    swift_willThrow();
    (*(v27 + 8))(v26, v29);
    sub_10000C60C((v0 + 16));

    v30 = *(v0 + 8);
    v31 = 0;
    goto LABEL_10;
  }

  v65 = *(v0 + 704);
  v63 = *(v0 + 696);
  v52 = *(v0 + 688);
  loga = *(v0 + 640);
  v68 = *(v0 + 624);
  v62 = *(v0 + 568);
  v53 = *(v0 + 552);
  v73 = *(v0 + 512);
  v71 = *(v0 + 480);
  v54 = *(v0 + 424);
  v55 = *(v0 + 392);
  v56 = *(v0 + 336);
  v57 = *(v0 + 320);
  v58 = *(v0 + 280);
  v59 = *(v0 + 256);
  (v53)(*(v0 + 496));
  sub_10000C60C((v0 + 136));
  v60 = *(v52 + 48);
  v61 = *(v52 + 64);
  v62(v56, v54, v55);
  *(v56 + v60) = v59;
  v65(v56 + v61, v58, v63);
  v68(v56, enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:), v57);

  sub_100687AF8(v56, v73);
  (loga)(v56, v57);
  v53(v73, v71);

  return _swift_task_switch(sub_100516824, 0, 0);
}

uint64_t sub_100516590()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[36];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Analyzing full content END - Failure {%@}", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  v10 = v0[53];
  v11 = v5;
  v13 = v0[49];
  v12 = v0[50];

  swift_willThrow();
  (*(v12 + 8))(v10, v13);
  sub_10000C60C(v0 + 2);

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100516824()
{
  v1 = v0[35];
  v2 = swift_task_alloc();
  v0[98] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[99] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_10051692C;
  v5 = v0[51];
  v6 = v0[49];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100808F50, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_10051692C()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = sub_100516C44;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 520);
    (*(v2 + 752))(*(v2 + 408), *(v2 + 392));

    v3 = sub_100516A80;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100516A80()
{
  v1 = v0[96];
  v2 = v0[53];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v6 = v0[47];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[31];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v6 + 8))(v4, v5);
  sub_100005508(v8, &qword_100976908, &unk_100801D60);
  sub_100005508(v7, &qword_100976908, &unk_100801D60);
  v1(v9, v2, v3);
  sub_10000C60C(v0 + 2);

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_100516C44()
{
  v1 = *(v0 + 520);

  return _swift_task_switch(sub_100516CBC, v1, 0);
}

uint64_t sub_100516CBC()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[35];
  v4 = v0[36];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "Analyzing full content END - Failure {%@}", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  v11 = v0[53];
  v12 = v6;
  v14 = v0[49];
  v13 = v0[50];

  swift_willThrow();
  (*(v13 + 8))(v11, v14);
  sub_10000C60C(v0 + 2);

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_100516F68()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  (*(v0[38] + 8))(v0[39], v0[37]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Analyzing full content END - Failure {%@}", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  v12 = v0[53];
  v13 = v7;
  v15 = v0[49];
  v14 = v0[50];

  swift_willThrow();
  (*(v14 + 8))(v12, v15);
  sub_10000C60C(v0 + 2);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_100517200()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Analyzing full content END - Failure {%@}", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[53];
  v10 = v4;
  v12 = v0[49];
  v11 = v0[50];

  swift_willThrow();
  (*(v11 + 8))(v9, v12);
  sub_10000C60C(v0 + 2);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_100517478(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v8 + 560) = v7;
  *(v8 + 552) = a6;
  *(v8 + 544) = a5;
  *(v8 + 536) = a4;
  *(v8 + 528) = a7;
  *(v8 + 1106) = a3;
  *(v8 + 520) = a2;
  *(v8 + 512) = a1;
  v9 = type metadata accessor for SFAirDropReceive.Failure();
  *(v8 + 568) = v9;
  *(v8 + 576) = *(v9 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  sub_10028088C(&qword_100982508, &unk_100808D50);
  *(v8 + 600) = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer.State();
  *(v8 + 608) = v10;
  *(v8 + 616) = *(v10 - 8);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v8 + 640) = swift_task_alloc();
  v11 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v8 + 648) = v11;
  *(v8 + 656) = *(v11 - 8);
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *(v8 + 680) = v12;
  *(v8 + 688) = *(v12 - 8);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  v13 = type metadata accessor for SFPlatform();
  *(v8 + 752) = v13;
  *(v8 + 760) = *(v13 - 8);
  *(v8 + 768) = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.TransferType();
  *(v8 + 776) = v14;
  *(v8 + 784) = *(v14 - 8);
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropReceive.AskRequest();
  *(v8 + 808) = v15;
  *(v8 + 816) = *(v15 - 8);
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropReceive.Transfer();
  *(v8 + 840) = v16;
  *(v8 + 848) = *(v16 - 8);
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  *(v8 + 880) = static AirDropActor.shared;

  return _swift_task_switch(sub_10051792C, v17, 0);
}

uint64_t sub_10051792C(uint64_t a1)
{
  v160 = v1;
  v2 = *(v1 + 872);
  v3 = *(v1 + 848);
  v4 = *(v1 + 840);
  v5 = *(v1 + 832);
  v143 = *(v1 + 864);
  v146 = *(v1 + 824);
  v6 = *(v1 + 816);
  v157 = *(v1 + 808);
  v7 = *(v1 + 800);
  v149 = *(v1 + 792);
  v151 = *(v1 + 784);
  v140 = *(v1 + 776);
  *(v1 + 888) = *(*(v1 + 560) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v8 = *(v3 + 8);
  *(v1 + 896) = v8;
  *(v1 + 904) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  SFAirDropReceive.AskRequest.type.getter();
  v155 = *(v6 + 8);
  v155(v5, v157);
  v136 = SFAirDrop.TransferType.isPeerPayment.getter();
  v9 = *(v151 + 8);
  v9(v7, v140);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v10 = v143;
  v144 = v8;
  v8(v10, v4);
  SFAirDropReceive.AskRequest.type.getter();
  v155(v146, v157);
  v11 = SFAirDrop.TransferType.isLinks.getter();
  v9(v149, v140);
  if ((v11 & 1) == 0)
  {
    v12 = *(v1 + 872);
    v13 = *(v1 + 840);
    v14 = *(v1 + 832);
    v15 = *(v1 + 808);
    v16 = *(v1 + 800);
    v152 = *(v1 + 776);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v144(v12, v13);
    SFAirDropReceive.AskRequest.type.getter();
    v155(v14, v15);
    v17 = SFAirDrop.TransferType.isFiles.getter();
    v9(v16, v152);
    if (((v17 | v136) & 1) == 0)
    {

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v1 + 872);
        v54 = *(v1 + 832);
        v138 = *(v1 + 840);
        v141 = *(v1 + 808);
        v55 = *(v1 + 800);
        v147 = *(v1 + 776);
        v56 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v159[0] = v150;
        *v56 = 136315138;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v144(v53, v138);
        SFAirDropReceive.AskRequest.type.getter();
        v155(v54, v141);
        sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        v9(v55, v147);
        v60 = sub_10000C4E4(v57, v59, v159);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v51, v52, "Ask open/move SKIP. {type: %s}", v56, 0xCu);
        sub_10000C60C(v150);
      }

      goto LABEL_18;
    }
  }

  v18 = *(v1 + 560);
  v19 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  *(v1 + 912) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v18 + v19, v1 + 56);
  *(v1 + 920) = sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100976910, &unk_100808E80);
  if (!swift_dynamicCast())
  {
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    sub_100005508(v1 + 96, &qword_100976918, &qword_1007F9890);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v159[0] = v45;
      *v44 = 136315138;
      sub_1002A9938(v18 + v19, v1 + 136);
      sub_10002CDC0((v1 + 136), *(v1 + 160));
      DynamicType = swift_getDynamicType();
      v47 = *(v1 + 168);
      sub_10000C60C((v1 + 136));
      *(v1 + 480) = DynamicType;
      *(v1 + 488) = v47;
      sub_10028088C(&qword_100976920, &qword_100808E90);
      v48 = String.init<A>(describing:)();
      v50 = sub_10000C4E4(v48, v49, v159);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Ask open/move SKIP. {handler: %s}", v44, 0xCu);
      sub_10000C60C(v45);
    }

LABEL_18:
    v61 = *(v1 + 520);
    (*(*(v1 + 688) + 16))(*(v1 + 512), *(v1 + 552), *(v1 + 680));
    v62 = _s15ExchangeRequestVMa(0);
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);

LABEL_19:
    v158 = *(v1 + 544);

    v63 = *(v1 + 8);

    return v63(0, v158);
  }

  v20 = *(v1 + 768);
  v21 = *(v1 + 760);
  v22 = *(v1 + 752);
  v23 = *(v1 + 528);
  sub_1000121F8((v1 + 96), v1 + 16);
  sub_1002A9938(v18 + v19, v1 + 176);
  v24 = *(v1 + 200);
  v25 = *(v1 + 208);
  sub_10002CDC0((v1 + 176), v24);
  v26 = (*(v25 + 24))(v24, v25);
  *(v1 + 1107) = v26 & 1;
  sub_10000C60C((v1 + 176));
  sub_1002A9938(v18 + v19, v1 + 216);
  v27 = *(v1 + 240);
  v28 = *(v1 + 248);
  sub_10002CDC0((v1 + 216), v27);
  v29 = (*(v28 + 16))(v27, v28);
  *(v1 + 1108) = v29 & 1;
  sub_10000C60C((v1 + 216));
  v30 = v23 < 8.0;
  static SFPlatform.macOS.getter();
  v31 = static SFPlatform.isPlatform(_:)();
  v32 = *(v21 + 8);
  *(v1 + 928) = v32;
  *(v1 + 936) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v20, v22);
  if (v31)
  {
    if (v23 < 8.0)
    {
      if (((v26 | v29) & 1) == 0 && (*(v1 + 1106) & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    v65 = *(v1 + 744);
    v66 = *(v1 + 688);
    v67 = *(v1 + 680);
    (*(v66 + 104))(v65, enum case for SFAirDropReceive.ItemDestination.default(_:), v67);
    sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v66 + 8))(v65, v67);
    v30 = v68 ^ 1;
  }

  if (((v26 | (v29 | *(v1 + 1106)) & v30) & 1) == 0)
  {
LABEL_8:
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v1 + 528);
      v36 = *(v1 + 1106);
      v37 = swift_slowAlloc();
      *v37 = 67109888;
      *(v37 + 4) = v26 & 1;
      *(v37 + 8) = 1024;
      *(v37 + 10) = v29 & 1;
      *(v37 + 14) = 1024;
      *(v37 + 16) = v36;
      *(v37 + 20) = 2048;
      *(v37 + 22) = v35;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not auto-opening URLs {shouldEndAfterAutoOpen: %{BOOL}d, supportsAutoOpen: %{BOOL}d, requestedAutoOpen: %{BOOL}d, transferImportSeconds: %f}", v37, 0x1Eu);
    }

    *(v1 + 1109) = 0;
    sub_1002A9938(*(v1 + 560) + *(v1 + 912), v1 + 296);
    sub_10028088C(&qword_100982538, &qword_100808E98);
    if (swift_dynamicCast())
    {
      v38 = *(v1 + 544);
      sub_1000121F8((v1 + 336), v1 + 256);
      v39 = *(v1 + 280);
      v40 = *(v1 + 288);
      sub_10002CDC0((v1 + 256), v39);
      v41 = (*(v40 + 8))(v38, v39, v40);
      sub_10000C60C((v1 + 256));
    }

    else
    {
      *(v1 + 368) = 0;
      *(v1 + 336) = 0u;
      *(v1 + 352) = 0u;
      sub_100005508(v1 + 336, &qword_100982540, &unk_100808EA0);
      v41 = 0;
    }

    v84 = *(v1 + 1107);
    v85 = *(v1 + 896);
    v86 = *(v1 + 872);
    v87 = *(v1 + 840);
    sub_1002A9938(*(v1 + 560) + *(v1 + 912), v1 + 376);
    v88 = *(v1 + 400);
    v89 = *(v1 + 408);
    sub_10002CDC0((v1 + 376), v88);
    CurrentValueSubject.value.getter();
    v90 = sub_10058C73C(v86, v84, 0, v41 & 1, v88, v89);
    v85(v86, v87);
    sub_10000C60C((v1 + 376));
    if (v90)
    {
      v91 = *(v1 + 728);
      v92 = *(v1 + 688);
      v93 = *(v1 + 680);
      v94 = *(v1 + 552);
      *(v1 + 992) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
      v95 = *(v92 + 16);
      *(v1 + 1000) = v95;
      *(v1 + 1008) = (v92 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v95(v91, v94, v93);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      v156 = v95;
      if (os_log_type_enabled(v96, v97))
      {
        v98 = *(v1 + 744);
        v99 = *(v1 + 728);
        v100 = *(v1 + 688);
        v101 = *(v1 + 680);
        v102 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v159[0] = v153;
        *v102 = 67109378;
        *(v102 + 8) = 2080;
        v95(v98, v99, v101);
        v103 = String.init<A>(describing:)();
        v105 = v104;
        v106 = *(v100 + 8);
        v106(v99, v101);
        v107 = sub_10000C4E4(v103, v105, v159);

        *(v102 + 10) = v107;
        _os_log_impl(&_mh_execute_header, v96, v97, "Ask open/move START. {alreadyViewed: %{BOOL}d, destination: %s}", v102, 0x12u);
        sub_10000C60C(v153);
      }

      else
      {
        v110 = *(v1 + 728);
        v111 = *(v1 + 688);
        v112 = *(v1 + 680);

        v106 = *(v111 + 8);
        v106(v110, v112);
      }

      *(v1 + 1016) = v106;
      v113 = *(v1 + 856);
      v114 = *(v1 + 640);
      v115 = *(v1 + 552);
      v116 = *(v1 + 544);
      sub_1002A9938(*(v1 + 560) + *(v1 + 912), v1 + 416);
      v117 = *(v1 + 440);
      v118 = *(v1 + 448);
      sub_10002CDC0((v1 + 416), v117);
      CurrentValueSubject.value.getter();
      sub_100588474(v113, v116, 0, v115, v117, v118, v114);
      v119 = *(v1 + 896);
      v139 = *(v1 + 680);
      v142 = *(v1 + 640);
      v120 = *(v1 + 632);
      v121 = *(v1 + 616);
      v145 = *(v1 + 608);
      v148 = *(v1 + 840);
      v154 = *(v1 + 872);
      v122 = *(v1 + 552);
      v137 = *(v1 + 544);
      v123 = *(v1 + 536);
      (v119)(*(v1 + 856));
      sub_10000C60C((v1 + 416));
      v124 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v125 = v124[12];
      v126 = v124[16];
      v127 = v124[20];
      v156(v120, v122, v139);
      *(v120 + v125) = v123;
      *(v120 + v126) = v137;
      v128 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
      (*(*(v128 - 8) + 16))(v120 + v127, v142, v128);
      v129 = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
      v130 = *(v121 + 104);
      *(v1 + 1024) = v130;
      *(v1 + 1032) = (v121 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v130(v120, v129, v145);

      sub_100687AF8(v120, v154);
      v119(v154, v148);
      v131 = swift_task_alloc();
      *(v1 + 1040) = v131;
      *v131 = v1;
      v131[1] = sub_10051A170;
      v132 = *(v1 + 720);
      v133 = *(v1 + 640);
      v134 = *(v1 + 600);
      v135 = *(v1 + 552);

      return sub_10052DBB4(v132, v134, v133, v135);
    }

    v108 = *(v1 + 520);
    (*(*(v1 + 688) + 16))(*(v1 + 512), *(v1 + 552), *(v1 + 680));
    v109 = _s15ExchangeRequestVMa(0);
    (*(*(v109 - 8) + 56))(v108, 1, 1, v109);

    sub_10000C60C((v1 + 16));
    goto LABEL_19;
  }

LABEL_24:
  v69 = (*(v1 + 560) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager);
  v70 = v69[3];
  v71 = v69[4];
  sub_10002CDC0(v69, v70);
  if ((*(v71 + 8))(v70, v71))
  {
    *(v1 + 944) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Waiting for unlock before auto-opening...", v74, 2u);
    }

    v75 = *(v1 + 880);

    v76 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v77 = swift_task_alloc();
    *(v1 + 952) = v77;
    *v77 = v1;
    v77[1] = sub_100518F84;
    v78 = *(v1 + 560);

    return withCheckedContinuation<A>(isolation:function:_:)(v77, v75, v76, 0xD00000000000005BLL, 0x8000000100794AC0, sub_1005308A0, v78, &type metadata for () + 8);
  }

  else
  {
    v79 = swift_task_alloc();
    *(v1 + 960) = v79;
    *v79 = v1;
    v79[1] = sub_1005191B8;
    v80 = *(v1 + 736);
    v81 = *(v1 + 552);
    v82 = *(v1 + 544);
    v83 = *(v1 + 536);

    return sub_10052CF4C(v80, v83, v82, v81);
  }
}

uint64_t sub_100518F84()
{
  v1 = *(*v0 + 880);

  return _swift_task_switch(sub_100519094, v1, 0);
}

uint64_t sub_100519094(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished waiting for unlock", v4, 2u);
  }

  v5 = swift_task_alloc();
  v1[120] = v5;
  *v5 = v1;
  v5[1] = sub_1005191B8;
  v6 = v1[92];
  v7 = v1[69];
  v8 = v1[68];
  v9 = v1[67];

  return sub_10052CF4C(v6, v9, v8, v7);
}

uint64_t sub_1005191B8()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  v3 = *(v2 + 880);
  if (v0)
  {
    v4 = sub_10051AF94;
  }

  else
  {
    v4 = sub_1005192E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005192E4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 1108);
    v5 = *(v1 + 1107);
    v6 = *(v1 + 528);
    v7 = *(v1 + 1106);
    v8 = swift_slowAlloc();
    *v8 = 67109888;
    *(v8 + 4) = v5;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v4;
    *(v8 + 14) = 1024;
    *(v8 + 16) = v7;
    *(v8 + 20) = 2048;
    *(v8 + 22) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opening autoOpen URLs {shouldEndAfterAutoOpen: %{BOOL}d, supportsAutoOpen: %{BOOL}d, requestedAutoOpen: %{BOOL}d, transferImportSeconds: %f}", v8, 0x1Eu);
  }

  v9 = *(v1 + 736);
  v10 = *(v1 + 544);

  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  sub_10002CDC0((v1 + 16), v11);
  (*(v12 + 8))(v10, v9, v11, v12);
  v13 = swift_task_alloc();
  *(v1 + 976) = v13;
  *v13 = v1;
  v13[1] = sub_10051949C;
  v14 = *(v1 + 648);

  return SFProgressTask.finalValue.getter(v1 + 1105, v14);
}

uint64_t sub_10051949C()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  v3 = v2[110];
  (*(v2[82] + 8))(v2[84], v2[81]);
  if (v0)
  {
    v4 = sub_10051B474;
  }

  else
  {
    v4 = sub_100519618;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100519618()
{
  v85 = v0;
  (*(*(v0 + 688) + 8))(*(v0 + 736), *(v0 + 680));
  v1 = *(v0 + 1105);
  v80 = *(v0 + 984);
  *(v0 + 1109) = v1;
  sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 296);
  sub_10028088C(&qword_100982538, &qword_100808E98);
  v82 = v1;
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 544);
    sub_1000121F8((v0 + 336), v0 + 256);
    v3 = *(v0 + 280);
    v4 = *(v0 + 288);
    sub_10002CDC0((v0 + 256), v3);
    v5 = (*(v4 + 8))(v2, v3, v4);
    sub_10000C60C((v0 + 256));
  }

  else
  {
    *(v0 + 368) = 0;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_100005508(v0 + 336, &qword_100982540, &unk_100808EA0);
    v5 = 0;
  }

  v6 = *(v0 + 1107);
  v7 = *(v0 + 896);
  v8 = *(v0 + 872);
  v9 = *(v0 + 840);
  sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 376);
  v10 = *(v0 + 400);
  v11 = *(v0 + 408);
  sub_10002CDC0((v0 + 376), v10);
  CurrentValueSubject.value.getter();
  v12 = sub_10058C73C(v8, v6, v82, v5 & 1, v10, v11);
  v7(v8, v9);
  sub_10000C60C((v0 + 376));
  if ((v12 & 1) == 0)
  {
    v30 = *(v0 + 520);
    (*(*(v0 + 688) + 16))(*(v0 + 512), *(v0 + 552), *(v0 + 680));
    v31 = _s15ExchangeRequestVMa(0);
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);

    sub_10000C60C((v0 + 16));
    v32 = *(v0 + 544);
LABEL_8:
    v81 = v32;

    v33 = *(v0 + 8);

    return v33(v82, v81);
  }

  v13 = *(v0 + 728);
  v14 = *(v0 + 688);
  v15 = *(v0 + 680);
  v16 = *(v0 + 552);
  *(v0 + 992) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v17 = *(v14 + 16);
  *(v0 + 1000) = v17;
  *(v0 + 1008) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v13, v16, v15);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v79 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 744);
    v21 = *(v0 + 728);
    v22 = *(v0 + 688);
    v23 = *(v0 + 680);
    v24 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v84 = v77;
    *v24 = 67109378;
    *(v24 + 4) = v82;
    *(v24 + 8) = 2080;
    v17(v20, v21, v23);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v28 = *(v22 + 8);
    v28(v21, v23);
    v29 = sub_10000C4E4(v25, v27, &v84);

    *(v24 + 10) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Ask open/move START. {alreadyViewed: %{BOOL}d, destination: %s}", v24, 0x12u);
    sub_10000C60C(v77);
  }

  else
  {
    v35 = *(v0 + 728);
    v36 = *(v0 + 688);
    v37 = *(v0 + 680);

    v28 = *(v36 + 8);
    v28(v35, v37);
  }

  *(v0 + 1016) = v28;
  v38 = *(v0 + 856);
  v39 = *(v0 + 640);
  v40 = *(v0 + 552);
  v41 = *(v0 + 544);
  sub_1002A9938(*(v0 + 560) + *(v0 + 912), v0 + 416);
  v42 = *(v0 + 440);
  v43 = *(v0 + 448);
  sub_10002CDC0((v0 + 416), v42);
  CurrentValueSubject.value.getter();
  sub_100588474(v38, v41, v82, v40, v42, v43, v39);
  v44 = *(v0 + 896);
  if (v80)
  {
    (v44)(*(v0 + 856), *(v0 + 840));
    sub_10000C60C((v0 + 416));
    *(v0 + 496) = v80;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v45 = (*(*(v0 + 576) + 88))(*(v0 + 584), *(v0 + 568));
      if (v45 == enum case for SFAirDropReceive.Failure.declined(_:))
      {

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = "Ask open/move END - Declined. Not opening or moving";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

          goto LABEL_24;
        }

        goto LABEL_24;
      }

      if (v45 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
      {

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = "Ask open/move END - Not handled. Not opening or moving";
          goto LABEL_23;
        }

LABEL_24:
        v66 = *(v0 + 1000);
        v67 = *(v0 + 680);
        v68 = *(v0 + 552);
        v69 = *(v0 + 520);
        v70 = *(v0 + 512);

        v66(v70, v68, v67);
        v71 = _s15ExchangeRequestVMa(0);
        (*(*(v71 - 8) + 56))(v69, 1, 1, v71);

        sub_10000C60C((v0 + 16));
        v82 = 0;
        v32 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }

      (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    }

    sub_10000C60C((v0 + 16));

    v72 = *(v0 + 8);

    return v72(0);
  }

  else
  {
    v83 = *(v0 + 872);
    v74 = *(v0 + 680);
    v75 = *(v0 + 640);
    v50 = *(v0 + 632);
    v51 = *(v0 + 616);
    v76 = *(v0 + 608);
    v78 = *(v0 + 840);
    v52 = *(v0 + 552);
    v73 = *(v0 + 544);
    v53 = *(v0 + 536);
    v44(*(v0 + 856));
    sub_10000C60C((v0 + 416));
    v54 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v55 = v54[12];
    v56 = v54[16];
    v57 = v54[20];
    v79(v50, v52, v74);
    *(v50 + v55) = v53;
    *(v50 + v56) = v73;
    v58 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v58 - 8) + 16))(v50 + v57, v75, v58);
    v59 = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
    v60 = *(v51 + 104);
    *(v0 + 1024) = v60;
    *(v0 + 1032) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v60(v50, v59, v76);

    sub_100687AF8(v50, v83);
    (v44)(v83, v78);
    v61 = swift_task_alloc();
    *(v0 + 1040) = v61;
    *v61 = v0;
    v61[1] = sub_10051A170;
    v62 = *(v0 + 720);
    v63 = *(v0 + 640);
    v64 = *(v0 + 600);
    v65 = *(v0 + 552);

    return sub_10052DBB4(v62, v64, v63, v65);
  }
}

uint64_t sub_10051A170()
{
  v2 = *v1;
  *(*v1 + 1048) = v0;

  v3 = *(v2 + 880);
  if (v0)
  {
    v4 = sub_10051B970;
  }

  else
  {
    v4 = sub_10051A29C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10051A29C()
{
  v24 = v0;
  (*(v0 + 1000))(*(v0 + 712), *(v0 + 720), *(v0 + 680));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1016);
  if (v3)
  {
    v5 = *(v0 + 1000);
    v6 = *(v0 + 744);
    v7 = *(v0 + 712);
    v8 = *(v0 + 680);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v5(v6, v7, v8);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v4(v7, v8);
    v14 = sub_10000C4E4(v11, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ask open/move END - accepted {destination: %s}", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {
    v15 = *(v0 + 712);
    v16 = *(v0 + 680);

    v4(v15, v16);
  }

  v17 = swift_task_alloc();
  *(v0 + 1056) = v17;
  *v17 = v0;
  v17[1] = sub_10051A4D4;
  v18 = *(v0 + 720);
  v19 = *(v0 + 704);
  v20 = *(v0 + 544);
  v21 = *(v0 + 536);

  return sub_10052CF4C(v19, v21, v20, v18);
}

uint64_t sub_10051A4D4()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  v3 = *(v2 + 880);
  if (v0)
  {
    v4 = sub_10051BEE0;
  }

  else
  {
    v4 = sub_10051A600;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10051A600()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  (*(v0 + 1000))(v1, *(v0 + 704), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
    if (v4 != enum case for SFAirDropReceive.ItemDestination.noItem(_:))
    {
      v12 = *(v0 + 1109);
      (*(v0 + 1016))(*(v0 + 696), *(v0 + 680));
      if (v12 != 1)
      {
LABEL_17:
        v41 = *(v0 + 1024);
        v40 = *(v0 + 1000);
        v44 = *(v0 + 840);
        v45 = *(v0 + 896);
        v17 = *(v0 + 704);
        v42 = *(v0 + 872);
        v43 = v17;
        v18 = *(v0 + 680);
        v19 = *(v0 + 624);
        v20 = *(v0 + 616);
        v21 = *(v0 + 608);
        v22 = *(v0 + 544);
        v23 = *(v0 + 536);
        v24 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        v40(v19, v17, v18);
        *(v19 + v25) = v23;
        *(v19 + v26) = v22;
        v41(v19, enum case for SFAirDropReceive.Transfer.State.opening(_:), v21);

        sub_100687AF8(v19, v42);
        v27 = *(v20 + 8);
        *(v0 + 1072) = v27;
        *(v0 + 1080) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27(v19, v21);
        v45(v42, v44);
        v28 = *(v0 + 40);
        v29 = *(v0 + 48);
        sub_10002CDC0((v0 + 16), v28);
        (*(v29 + 8))(v22, v43, v28, v29);
        v30 = swift_task_alloc();
        *(v0 + 1088) = v30;
        *v30 = v0;
        v30[1] = sub_10051ABA8;
        v31 = *(v0 + 648);

        return SFProgressTask.finalValue.getter(v0 + 1104, v31);
      }

      v11 = 1;
LABEL_15:
      v13 = *(v0 + 928);
      v14 = *(v0 + 768);
      v15 = *(v0 + 752);
      static SFPlatform.macOS.getter();
      v16 = static SFPlatform.isPlatform(_:)();
      v13(v14, v15);
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if ((*(v0 + 1109) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_15;
  }

  v5 = *(v0 + 696);
  (*(*(v0 + 688) + 96))(v5, *(v0 + 680));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + 1109);
  if (v6 == 0xD000000000000034 && 0x800000010078AA10 == v7)
  {

    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v11 = v10 ^ 1;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v11)
  {
    goto LABEL_17;
  }

LABEL_20:
  v32 = *(v0 + 640);
  v33 = *(v0 + 632);
  v34 = *(v0 + 616);
  v35 = *(v0 + 608);
  (*(v0 + 1016))(*(v0 + 720), *(v0 + 680));
  (*(v34 + 8))(v33, v35);
  sub_100005508(v32, &qword_100976908, &unk_100801D60);
  v36 = *(v0 + 600);
  v37 = *(v0 + 520);
  (*(*(v0 + 688) + 32))(*(v0 + 512), *(v0 + 704), *(v0 + 680));
  sub_10002C4E4(v36, v37, &qword_100982508, &unk_100808D50);

  sub_10000C60C((v0 + 16));
  v46 = *(v0 + 544);

  v38 = *(v0 + 8);

  return v38(1, v46);
}

uint64_t sub_10051ABA8()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = v2[110];
  (*(v2[82] + 8))(v2[83], v2[81]);
  if (v0)
  {
    v4 = sub_10051C498;
  }

  else
  {
    v4 = sub_10051AD24;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10051AD24()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 608);
  (*(v0 + 1016))(*(v0 + 720), *(v0 + 680));
  v1(v3, v4);
  sub_100005508(v2, &qword_100976908, &unk_100801D60);
  v10 = *(v0 + 1104);
  v5 = *(v0 + 600);
  v6 = *(v0 + 520);
  (*(*(v0 + 688) + 32))(*(v0 + 512), *(v0 + 704), *(v0 + 680));
  sub_10002C4E4(v5, v6, &qword_100982508, &unk_100808D50);

  sub_10000C60C((v0 + 16));
  v9 = *(v0 + 544);

  v7 = *(v0 + 8);

  return v7(v10, v9);
}

uint64_t sub_10051AF94()
{
  v0[63] = v0[121];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    if ((*(v0[72] + 88))(v0[74], v0[71]) == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, v1, v2, "Ask open/move END - Declined. Not opening or moving", v3, 2u);
      }

      v4 = v0[86];
      v5 = v0[85];
      v6 = v0[69];
      v7 = v0[65];
      v8 = v0[64];

      (*(v4 + 16))(v8, v6, v5);
      v9 = _s15ExchangeRequestVMa(0);
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);

      sub_10000C60C(v0 + 2);

      v10 = v0[1];

      return v10(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[74], v0[71]);
  }

  sub_10000C60C(v0 + 2);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_10051B474()
{
  (*(v0[86] + 8))(v0[92], v0[85]);
  v0[63] = v0[123];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    if ((*(v0[72] + 88))(v0[74], v0[71]) == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&_mh_execute_header, v1, v2, "Ask open/move END - Declined. Not opening or moving", v3, 2u);
      }

      v4 = v0[86];
      v5 = v0[85];
      v6 = v0[69];
      v7 = v0[65];
      v8 = v0[64];

      (*(v4 + 16))(v8, v6, v5);
      v9 = _s15ExchangeRequestVMa(0);
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);

      sub_10000C60C(v0 + 2);

      v10 = v0[1];

      return v10(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[74], v0[71]);
  }

  sub_10000C60C(v0 + 2);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_10051B970()
{
  v1 = v0[80];
  (*(v0[77] + 8))(v0[79], v0[76]);
  sub_100005508(v1, &qword_100976908, &unk_100801D60);
  v0[62] = v0[131];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v2 = (*(v0[72] + 88))(v0[73], v0[71]);
    if (v2 == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v2 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v7 = v0[125];
      v8 = v0[85];
      v9 = v0[69];
      v10 = v0[65];
      v11 = v0[64];

      v7(v11, v9, v8);
      v12 = _s15ExchangeRequestVMa(0);
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

      sub_10000C60C(v0 + 2);

      v13 = v0[1];

      return v13(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[73], v0[71]);
  }

  sub_10000C60C(v0 + 2);

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_10051BEE0()
{
  v1 = v0[127];
  v2 = v0[90];
  v3 = v0[85];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[77];
  v7 = v0[76];
  sub_100005508(v0[75], &qword_100982508, &unk_100808D50);
  v1(v2, v3);
  (*(v6 + 8))(v5, v7);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);
  v0[62] = v0[133];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v8 = (*(v0[72] + 88))(v0[73], v0[71]);
    if (v8 == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v8 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v13 = v0[125];
      v14 = v0[85];
      v15 = v0[69];
      v16 = v0[65];
      v17 = v0[64];

      v13(v17, v15, v14);
      v18 = _s15ExchangeRequestVMa(0);
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);

      sub_10000C60C(v0 + 2);

      v19 = v0[1];

      return v19(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[73], v0[71]);
  }

  sub_10000C60C(v0 + 2);

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_10051C498()
{
  v1 = v0[134];
  v2 = v0[127];
  v3 = v0[90];
  v4 = v0[85];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[76];
  v8 = v0[75];
  v2(v0[88], v4);
  sub_100005508(v8, &qword_100982508, &unk_100808D50);
  v2(v3, v4);
  v1(v6, v7);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  v0[62] = v0[137];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v9 = (*(v0[72] + 88))(v0[73], v0[71]);
    if (v9 == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v9 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v14 = v0[125];
      v15 = v0[85];
      v16 = v0[69];
      v17 = v0[65];
      v18 = v0[64];

      v14(v18, v16, v15);
      v19 = _s15ExchangeRequestVMa(0);
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);

      sub_10000C60C(v0 + 2);

      v20 = v0[1];

      return v20(0, _swiftEmptyArrayStorage);
    }

    (*(v0[72] + 8))(v0[73], v0[71]);
  }

  sub_10000C60C(v0 + 2);

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_10051CA68(uint64_t a1, uint64_t a2)
{
  v3[228] = v2;
  v3[227] = a2;
  v3[226] = a1;
  sub_10028088C(&qword_10097B200, &qword_1007FE578);
  v3[229] = swift_task_alloc();
  sub_10028088C(&qword_100982518, &unk_100808DA0);
  v3[230] = swift_task_alloc();
  v3[231] = swift_task_alloc();
  v4 = type metadata accessor for SDAirDropServerConnection(0);
  v3[232] = v4;
  v3[233] = *(v4 - 8);
  v3[234] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[235] = v5;
  v3[236] = *(v5 - 8);
  v3[237] = swift_task_alloc();
  v3[238] = swift_task_alloc();
  sub_10028088C(&qword_100976908, &unk_100801D60);
  v3[239] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[240] = v6;
  v3[241] = *(v6 - 8);
  v3[242] = swift_task_alloc();
  v3[243] = swift_task_alloc();
  v3[244] = swift_task_alloc();
  v3[245] = _s16ExchangeResponseVMa(0);
  v3[246] = swift_task_alloc();
  v3[247] = swift_task_alloc();
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v3[250] = swift_task_alloc();
  v3[251] = swift_task_alloc();
  sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8);
  v3[252] = swift_task_alloc();
  v3[253] = swift_task_alloc();
  v3[254] = swift_task_alloc();
  v3[255] = swift_task_alloc();
  sub_10028088C(&qword_10097B198, &qword_1007FE450);
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v3[258] = swift_task_alloc();
  v3[259] = swift_task_alloc();
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v3[262] = swift_task_alloc();
  v3[263] = swift_task_alloc();
  v3[264] = swift_task_alloc();
  v3[265] = swift_task_alloc();
  v3[266] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.ContactInfo();
  v3[267] = v7;
  v3[268] = *(v7 - 8);
  v3[269] = swift_task_alloc();
  v3[270] = swift_task_alloc();
  v3[271] = swift_task_alloc();
  v3[272] = swift_task_alloc();
  v3[273] = swift_task_alloc();
  v3[274] = swift_task_alloc();
  v3[275] = swift_task_alloc();
  v3[276] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v3[277] = v8;
  v3[278] = *(v8 - 8);
  v3[279] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[280] = v9;
  v3[281] = *(v9 - 8);
  v3[282] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.ContactRequest();
  v3[283] = v10;
  v3[284] = *(v10 - 8);
  v3[285] = swift_task_alloc();
  v3[286] = swift_task_alloc();
  v3[287] = swift_task_alloc();
  v3[288] = swift_task_alloc();
  v3[289] = swift_task_alloc();
  v3[290] = swift_task_alloc();
  v3[291] = swift_task_alloc();
  v3[292] = swift_task_alloc();
  v3[293] = swift_task_alloc();
  v3[294] = swift_task_alloc();
  v3[295] = swift_task_alloc();
  v3[296] = swift_task_alloc();
  v3[297] = swift_task_alloc();
  v3[298] = swift_task_alloc();
  v3[299] = swift_task_alloc();
  v3[300] = swift_task_alloc();
  v3[301] = swift_task_alloc();
  v3[302] = swift_task_alloc();
  v3[303] = swift_task_alloc();
  sub_10028088C(&qword_100982508, &unk_100808D50);
  v3[304] = swift_task_alloc();
  v11 = _s15ExchangeRequestVMa(0);
  v3[305] = v11;
  v3[306] = *(v11 - 8);
  v3[307] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[308] = v12;
  v3[309] = *(v12 - 8);
  v3[310] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[311] = v13;
  v3[312] = *(v13 - 8);
  v3[313] = swift_task_alloc();
  v3[314] = swift_task_alloc();
  v3[315] = swift_task_alloc();
  v3[316] = swift_task_alloc();
  sub_10028088C(&qword_100982520, &qword_10080E300);
  v3[317] = swift_task_alloc();
  v14 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  v3[318] = v14;
  v3[319] = *(v14 - 8);
  v3[320] = swift_task_alloc();
  v3[321] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v3[322] = static AirDropActor.shared;

  return _swift_task_switch(sub_10051D32C, v15, 0);
}

uint64_t sub_10051D32C()
{
  v319 = v0;
  v1 = *(v0 + 2536);
  v2 = *(*(v0 + 1824) + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  *(v0 + 2584) = v2;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100982520, &qword_10080E300);
  v4 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_100005508(*(v0 + 2536), &qword_100982520, &qword_10080E300);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Exchange Contact Request SKIP - No contact request task", v8, 2u);
    }

    v9 = *(v0 + 8);

    return v9(0, 0);
  }

  v11 = *(v0 + 2568);
  v12 = *(v0 + 2560);
  v13 = *(v0 + 2552);
  v14 = *(v0 + 2544);
  v15 = *(v0 + 2536);
  SFProgressContinuation.task.getter();
  (*(v5 + 8))(v15, v4);
  (*(v13 + 32))(v11, v12, v14);
  *(v0 + 2592) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Exchange Contact START", v18, 2u);
  }

  v19 = *(v0 + 2528);
  v20 = *(v0 + 2496);
  v21 = *(v0 + 2480);
  v22 = *(v0 + 2472);
  v23 = *(v0 + 2464);
  v24 = *(v0 + 2448);
  v308 = *(v0 + 2488);
  v314 = *(v0 + 2440);
  v25 = *(v0 + 1808);

  v26 = enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:);
  v27 = *(v22 + 104);
  *(v0 + 2600) = v27;
  *(v0 + 2608) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v27(v21, v26, v23);
  sub_100687AF8(v21, v19);
  v28 = *(v22 + 8);
  *(v0 + 2616) = v28;
  *(v0 + 2624) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v21, v23);
  v29 = *(v20 + 8);
  *(v0 + 2632) = v29;
  *(v0 + 2640) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v19, v308);
  v30 = *(v24 + 48);
  if (v30(v25, 1, v314) == 1)
  {
    v31 = swift_task_alloc();
    *(v0 + 2648) = v31;
    *v31 = v0;
    v31[1] = sub_10051F28C;
    v32 = *(v0 + 2544);
    v33 = *(v0 + 2456);

    return SFProgressTask.finalValue.getter(v33, v32);
  }

  v34 = *(v0 + 2440);
  v35 = *(v0 + 2432);
  sub_10000FF90(*(v0 + 1808), v35, &qword_100982508, &unk_100808D50);
  v33 = (v30)(v35, 1, v34);
  if (v33 == 1)
  {
    __break(1u);
    return SFProgressTask.finalValue.getter(v33, v32);
  }

  sub_1005304C4(*(v0 + 2432), *(v0 + 2456), _s15ExchangeRequestVMa);
  v287 = *(v0 + 2632);
  v36 = *(v0 + 2528);
  v37 = *(v0 + 2488);
  v38 = *(v0 + 2256);
  v39 = *(v0 + 2248);
  v294 = *(v0 + 2240);
  v40 = *(v0 + 2232);
  v41 = *(v0 + 2224);
  v303 = *(v0 + 2216);
  v42 = *(v0 + 2144);
  v309 = *(v0 + 2128);
  v315 = *(v0 + 2136);
  v43 = *(v0 + 1824);
  sub_10058250C(*(v0 + 2424));
  *(v0 + 2664) = *(v43 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v287(v36, v37);
  SFAirDropReceive.AskRequest.type.getter();
  v44 = *(v39 + 8);
  *(v0 + 2672) = v44;
  *(v0 + 2680) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v38, v294);
  *(v0 + 3008) = SFAirDrop.TransferType.isOnlyExchange.getter() & 1;
  v45 = *(v41 + 8);
  *(v0 + 2688) = v45;
  *(v0 + 2696) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v290 = v45;
  v45(v40, v303);
  v46 = v309;
  SFAirDrop.ContactRequest.contact.getter();
  v47 = *(v42 + 48);
  *(v0 + 2704) = v47;
  *(v0 + 2712) = (v42 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v310 = v47;
  if (v47(v46, 1, v315) == 1)
  {
    v48 = *(v0 + 2272);
    v49 = *(v0 + 2264);
    v50 = *(v0 + 2016);
    v51 = *(v0 + 1816);
    sub_100005508(*(v0 + 2128), &qword_10097B198, &qword_1007FE450);
    sub_10000FF90(v51, v50, &qword_10097B1C0, &qword_1007FE4C8);
    v52 = *(v48 + 48);
    v53 = v52(v50, 1, v49);
    v54 = *(v0 + 2304);
    v55 = *(v0 + 2272);
    v56 = *(v0 + 2264);
    v57 = *(v0 + 2016);
    if (v53 == 1)
    {
      (*(v55 + 104))(v54, enum case for SFAirDrop.ContactRequest.notNeeded(_:), *(v0 + 2264));
      if (v52(v57, 1, v56) != 1)
      {
        sub_100005508(*(v0 + 2016), &qword_10097B1C0, &qword_1007FE4C8);
      }
    }

    else
    {
      (*(v55 + 32))(v54, *(v0 + 2016), *(v0 + 2264));
    }

    v77 = *(v0 + 2304);
    v78 = *(v0 + 2288);
    v79 = *(v0 + 2264);
    v80 = *(*(v0 + 2272) + 16);
    v80(*(v0 + 2296), *(v0 + 2424), v79);
    v284 = v80;
    v80(v78, v77, v79);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = *(v0 + 2528);
      v265 = *(v0 + 2488);
      v267 = *(v0 + 2632);
      v281 = v82;
      v84 = *(v0 + 2296);
      v85 = *(v0 + 2272);
      v86 = *(v0 + 2264);
      v279 = v81;
      v87 = *(v0 + 2256);
      v269 = *(v0 + 2240);
      v264 = *(v0 + 2232);
      v274 = *(v0 + 2216);
      v276 = *(v0 + 2288);
      v88 = swift_slowAlloc();
      v318[0] = swift_slowAlloc();
      *v88 = 141559043;
      *(v88 + 4) = 1752392040;
      *(v88 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      v92 = *(v85 + 8);
      v92(v84, v86);
      v93 = sub_10000C4E4(v89, v91, v318);

      *(v88 + 14) = v93;
      *(v88 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v267(v83, v265);
      SFAirDropReceive.AskRequest.type.getter();
      v44(v87, v269);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      v290(v264, v274);
      v97 = sub_10000C4E4(v94, v96, v318);

      *(v88 + 24) = v97;
      *(v88 + 32) = 2160;
      *(v88 + 34) = 1752392040;
      *(v88 + 42) = 2081;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v304 = v92;
      v92(v276, v86);
      v101 = sub_10000C4E4(v98, v100, v318);

      *(v88 + 44) = v101;
      _os_log_impl(&_mh_execute_header, v279, v281, "Exchange Contact END - Sender did not send contact {contactRequest: %{private,mask.hash}s, type: %s, contactToSend: %{private,mask.hash}s}", v88, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v105 = *(v0 + 2296);
      v106 = *(v0 + 2288);
      v107 = *(v0 + 2272);
      v108 = *(v0 + 2264);

      v109 = *(v107 + 8);
      v109(v106, v108);
      v304 = v109;
      v109(v105, v108);
    }

    v110 = *(v0 + 2632);
    v111 = *(v0 + 2504);
    v112 = *(v0 + 2488);
    v113 = *(v0 + 2136);
    v114 = *(v0 + 2048);
    v284(*(v0 + 2280), *(v0 + 2304), *(v0 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v110(v111, v112);
    SFAirDrop.ContactRequest.contact.getter();
    v115 = v310(v114, 1, v113);
    v116 = *(v0 + 2264);
    if (v115 == 1)
    {
      v117 = *(v0 + 2048);
      v118 = *(v0 + 1968);
      v119 = *(v0 + 1960);
      v120 = *(v0 + 1936);
      v121 = *(v0 + 1928);
      v122 = *(v0 + 1920);
      v304(*(v0 + 2280), *(v0 + 2264));
      sub_100005508(v117, &qword_10097B198, &qword_1007FE450);
      v123 = v119[7];
      v124 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v124 - 8) + 56))(v118 + v123, 1, 1, v124);
      (*(v121 + 32))(v118, v120, v122);
      v125 = 0;
      v126 = (v118 + v119[5]);
      *v126 = 0;
      v126[1] = 0;
      v127 = (v118 + v119[6]);
      *v127 = 0;
      v127[1] = 0;
      v128 = 0xF000000000000000;
    }

    else
    {
      v129 = *(v0 + 2152);
      v130 = *(v0 + 2144);
      v131 = *(v0 + 1968);
      v132 = *(v0 + 1960);
      v133 = *(v0 + 1936);
      v288 = v133;
      v291 = *(v0 + 2136);
      v134 = *(v0 + 1928);
      v135 = *(v0 + 1920);
      v285 = v135;
      v316 = *(v0 + 2280);
      (*(v130 + 32))(v129, *(v0 + 2048));
      (*(v134 + 16))(v131, v133, v135);
      v136 = SFAirDrop.ContactInfo.givenName.getter();
      v306 = v137;
      v311 = v136;
      v138 = SFAirDrop.ContactInfo.fullName.getter();
      v295 = v139;
      v298 = v138;
      v140 = v132[7];
      SFAirDrop.ContactInfo.handle.getter();
      v141 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v141 - 8) + 56))(v131 + v140, 0, 1, v141);
      v125 = SFAirDrop.ContactInfo.vcard.getter();
      v128 = v142;
      (*(v130 + 8))(v129, v291);
      (*(v134 + 8))(v288, v285);
      v304(v316, v116);
      v143 = (v131 + v132[5]);
      *v143 = v311;
      v143[1] = v306;
      v144 = (v131 + v132[6]);
      *v144 = v298;
      v144[1] = v295;
    }

    v145 = *(v0 + 1976);
    v146 = *(v0 + 1968);
    v147 = *(v0 + 1960);
    v148 = (v146 + *(v147 + 32));
    *v148 = v125;
    v148[1] = v128;
    v149 = v146 + *(v147 + 36);
    *(v149 + 80) = 0;
    *(v149 + 48) = 0u;
    *(v149 + 64) = 0u;
    *(v149 + 16) = 0u;
    *(v149 + 32) = 0u;
    *v149 = 0u;
    sub_1005304C4(v146, v145, _s16ExchangeResponseVMa);
    v150 = swift_task_alloc();
    *(v0 + 2992) = v150;
    *v150 = v0;
    v150[1] = sub_100527DD8;
    v151 = *(v0 + 1976);
    goto LABEL_49;
  }

  v58 = *(v0 + 2424);
  v59 = *(v0 + 2416);
  v60 = *(v0 + 2272);
  v61 = *(v0 + 2264);
  v62 = *(v0 + 2208);
  v63 = *(v0 + 2144);
  v64 = *(v0 + 2136);
  v65 = *(v0 + 2128);
  v66 = *(v63 + 32);
  *(v0 + 2720) = v66;
  *(v0 + 2728) = (v63 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v278 = v66;
  (v66)(v62, v65, v64);
  v67 = *(v60 + 16);
  *(v0 + 2736) = v67;
  *(v0 + 2744) = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v283 = v67;
  v67(v59, v58, v61);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v68, v69);
  v71 = *(v0 + 2416);
  if (v70)
  {
    v275 = v69;
    v297 = v44;
    v72 = *(v0 + 2136);
    v73 = *(v0 + 2120);
    v74 = swift_slowAlloc();
    v318[0] = swift_slowAlloc();
    *v74 = 141558531;
    *(v74 + 4) = 1752392040;
    *(v74 + 12) = 2081;
    SFAirDrop.ContactRequest.contact.getter();
    v280 = v68;
    if (v310(v73, 1, v72) == 1)
    {
      sub_100005508(*(v0 + 2120), &qword_10097B198, &qword_1007FE450);
      v75 = 0x8000000100794A70;
      v76 = 0xD000000000000020;
    }

    else
    {
      v152 = *(v0 + 2144);
      v153 = *(v0 + 2136);
      v154 = *(v0 + 2120);
      v76 = SFAirDrop.ContactInfo.description.getter();
      v75 = v155;
      (*(v152 + 8))(v154, v153);
    }

    v270 = *(v0 + 2632);
    v156 = *(v0 + 2528);
    v157 = *(v0 + 2488);
    v158 = *(v0 + 2256);
    v272 = *(v0 + 2240);
    v159 = *(v0 + 2232);
    v160 = *(v0 + 2216);
    v104 = *(*(v0 + 2272) + 8);
    (v104)(*(v0 + 2416), *(v0 + 2264));
    v161 = sub_10000C4E4(v76, v75, v318);

    *(v74 + 14) = v161;
    *(v74 + 22) = 2080;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v270(v156, v157);
    SFAirDropReceive.AskRequest.type.getter();
    v44 = v297;
    v297(v158, v272);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    v164 = v163;
    v290(v159, v160);
    v165 = sub_10000C4E4(v162, v164, v318);

    *(v74 + 24) = v165;
    _os_log_impl(&_mh_execute_header, v280, v275, "Exchange Contact CONTINUE {senderContact: %{private,mask.hash}s, type: %s}", v74, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v102 = *(v0 + 2272);
    v103 = *(v0 + 2264);

    v104 = *(v102 + 8);
    (v104)(v71, v103);
  }

  *(v0 + 2752) = v104;
  v166 = *(v0 + 2272);
  v167 = *(v0 + 2264);
  v168 = *(v0 + 2040);
  sub_10000FF90(*(v0 + 1816), v168, &qword_10097B1C0, &qword_1007FE4C8);
  v169 = *(v166 + 48);
  *(v0 + 2760) = v169;
  *(v0 + 2768) = (v166 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v169(v168, 1, v167) != 1)
  {
    v180 = *(v0 + 2408);
    v181 = *(v0 + 2400);
    v182 = *(v0 + 2264);
    (*(*(v0 + 2272) + 32))(v180, *(v0 + 2040), v182);
    v283(v181, v180, v182);

    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.default.getter();

    v282 = v104;
    if (os_log_type_enabled(v183, v184))
    {
      v268 = *(v0 + 2632);
      v185 = *(v0 + 2528);
      v277 = v184;
      v186 = *(v0 + 2400);
      v266 = *(v0 + 2488);
      v187 = *(v0 + 2264);
      v300 = v44;
      v188 = *(v0 + 2256);
      v189 = *(v0 + 2232);
      v271 = *(v0 + 2240);
      v273 = *(v0 + 2216);
      v190 = swift_slowAlloc();
      v318[0] = swift_slowAlloc();
      *v190 = 141558531;
      *(v190 + 4) = 1752392040;
      *(v190 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
      v191 = dispatch thunk of CustomStringConvertible.description.getter();
      v192 = v104;
      v193 = v191;
      v195 = v194;
      (v192)(v186, v187);
      v196 = sub_10000C4E4(v193, v195, v318);

      *(v190 + 14) = v196;
      *(v190 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v268(v185, v266);
      SFAirDropReceive.AskRequest.type.getter();
      v300(v188, v271);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v197 = dispatch thunk of CustomStringConvertible.description.getter();
      v199 = v198;
      v290(v189, v273);
      v200 = sub_10000C4E4(v197, v199, v318);

      *(v190 + 24) = v200;
      _os_log_impl(&_mh_execute_header, v183, v277, "Exchange Contact CONTINUE. Respond to sender {contactToSend: %{private,mask.hash}s, type: %s}", v190, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v201 = *(v0 + 2400);
      v202 = *(v0 + 2264);

      (v104)(v201, v202);
    }

    v203 = (v0 + 1336);
    v204 = *(v0 + 2136);
    v205 = *(v0 + 2112);
    SFAirDrop.ContactRequest.contact.getter();
    if (v310(v205, 1, v204) == 1)
    {
      sub_100005508(*(v0 + 2112), &qword_10097B198, &qword_1007FE450);
      v206 = 0;
      v207 = 0;
    }

    else
    {
      v208 = *(v0 + 2144);
      v209 = *(v0 + 2136);
      v210 = *(v0 + 2112);
      v211 = SFAirDrop.ContactInfo.accountHandle.getter();
      v207 = v212;
      (*(v208 + 8))(v210, v209);
      v206 = v211;
    }

    v213 = (v0 + 1424);
    v214 = *(v0 + 2392);
    v215 = *(v0 + 2272);
    v216 = *(v0 + 2264);
    sub_10046A56C(v206, v207, (v0 + 192));
    v217 = *(v0 + 240);
    *(v0 + 1368) = *(v0 + 224);
    *(v0 + 1384) = v217;
    *(v0 + 1400) = *(v0 + 256);
    *(v0 + 1416) = *(v0 + 272);
    v218 = *(v0 + 208);
    *v203 = *(v0 + 192);
    *(v0 + 1352) = v218;

    (*(v215 + 104))(v214, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v216);
    v219 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    *(v0 + 2776) = (v215 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v282)(v214, v216);
    if (v219)
    {
      *(v0 + 1504) = 0;
      *(v0 + 1472) = 0u;
      *(v0 + 1488) = 0u;
      *(v0 + 1440) = 0u;
      *(v0 + 1456) = 0u;
      *v213 = 0u;
    }

    else
    {
      sub_10000FF90(v0 + 192, v0 + 1512, &qword_10097B208, &qword_1007FE5A8);
      v220 = *(v0 + 1384);
      *(v0 + 1456) = *(v0 + 1368);
      *(v0 + 1472) = v220;
      *(v0 + 1488) = *(v0 + 1400);
      *(v0 + 1504) = *(v0 + 1416);
      v221 = *(v0 + 1352);
      *v213 = *v203;
      *(v0 + 1440) = v221;
    }

    v222 = *(v0 + 2632);
    v223 = *(v0 + 2520);
    v224 = *(v0 + 2488);
    v301 = *(v0 + 2136);
    v225 = *(v0 + 2104);
    v283(*(v0 + 2384), *(v0 + 2408), *(v0 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v222(v223, v224);
    sub_10000FF90(v0 + 1424, v0 + 1600, &qword_10097B208, &qword_1007FE5A8);
    SFAirDrop.ContactRequest.contact.getter();
    v226 = v310(v225, 1, v301);
    v227 = *(v0 + 2264);
    if (v226 == 1)
    {
      v228 = *(v0 + 2104);
      v229 = *(v0 + 2000);
      v230 = *(v0 + 1960);
      v231 = *(v0 + 1952);
      v232 = *(v0 + 1928);
      v233 = *(v0 + 1920);
      (v282)(*(v0 + 2384), *(v0 + 2264));
      sub_100005508(v0 + 1424, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v228, &qword_10097B198, &qword_1007FE450);
      v234 = v230[7];
      v235 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v235 - 8) + 56))(v229 + v234, 1, 1, v235);
      (*(v232 + 32))(v229, v231, v233);
      v236 = (v229 + v230[5]);
      *v236 = 0;
      v236[1] = 0;
      v237 = (v229 + v230[6]);
      *v237 = 0;
      v237[1] = 0;
      *(v229 + v230[8]) = xmmword_1007F8A80;
      v238 = v229 + v230[9];
      *(v238 + 80) = 0;
      *(v238 + 48) = 0u;
      *(v238 + 64) = 0u;
      *(v238 + 16) = 0u;
      *(v238 + 32) = 0u;
      *v238 = 0u;
    }

    else
    {
      v239 = *(v0 + 2200);
      v240 = *(v0 + 2144);
      v241 = *(v0 + 2000);
      v242 = *(v0 + 1960);
      v243 = *(v0 + 1952);
      v289 = v243;
      v293 = *(v0 + 2136);
      v244 = *(v0 + 1928);
      v245 = *(v0 + 1920);
      v286 = v245;
      v317 = *(v0 + 2384);
      v278(v239, *(v0 + 2104));
      (*(v244 + 16))(v241, v243, v245);
      v246 = SFAirDrop.ContactInfo.givenName.getter();
      v307 = v247;
      v313 = v246;
      v248 = SFAirDrop.ContactInfo.fullName.getter();
      v296 = v249;
      v302 = v248;
      v250 = v242[7];
      SFAirDrop.ContactInfo.handle.getter();
      v251 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v251 - 8) + 56))(v241 + v250, 0, 1, v251);
      v252 = SFAirDrop.ContactInfo.vcard.getter();
      v254 = v253;
      (*(v240 + 8))(v239, v293);
      (*(v244 + 8))(v289, v286);
      (v282)(v317, v227);
      v255 = (v241 + v242[5]);
      *v255 = v313;
      v255[1] = v307;
      v256 = (v241 + v242[6]);
      *v256 = v302;
      v256[1] = v296;
      v257 = (v241 + v242[8]);
      *v257 = v252;
      v257[1] = v254;
      v258 = v241 + v242[9];
      v259 = *(v0 + 1440);
      *v258 = *v213;
      *(v258 + 16) = v259;
      v260 = *(v0 + 1456);
      v261 = *(v0 + 1472);
      v262 = *(v0 + 1488);
      *(v258 + 80) = *(v0 + 1504);
      *(v258 + 48) = v261;
      *(v258 + 64) = v262;
      *(v258 + 32) = v260;
    }

    sub_1005304C4(*(v0 + 2000), *(v0 + 2008), _s16ExchangeResponseVMa);
    v263 = swift_task_alloc();
    *(v0 + 2784) = v263;
    *v263 = v0;
    v263[1] = sub_100520B28;
    v151 = *(v0 + 2008);
LABEL_49:

    return sub_1006424A0(v151);
  }

  sub_100005508(*(v0 + 2040), &qword_10097B1C0, &qword_1007FE4C8);
  v312 = *(v0 + 2632);
  v305 = *(v0 + 2616);
  v292 = *(v0 + 2600);
  v170 = *(v0 + 2528);
  v299 = *(v0 + 2488);
  v171 = *(v0 + 2480);
  v172 = *(v0 + 2464);
  v173 = *(v0 + 2208);
  v174 = *(v0 + 2144);
  v175 = *(v0 + 2136);
  v176 = *(v0 + 1912);
  sub_10052AC24(v173, v176);
  v177 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
  v178 = *(v174 + 16);
  *(v0 + 2800) = v178;
  *(v0 + 2808) = (v174 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v178(v171, v173, v175);
  v179 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v179 - 8) + 16))(v171 + v177, v176, v179);
  v292(v171, enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:), v172);
  sub_100687AF8(v171, v170);
  v305(v171, v172);
  v312(v170, v299);

  return _swift_task_switch(sub_100520E6C, 0, 0);
}

uint64_t sub_10051F28C()
{
  v2 = *v1;
  *(*v1 + 2656) = v0;

  v3 = *(v2 + 2576);
  if (v0)
  {
    v4 = sub_1005283E8;
  }

  else
  {
    v4 = sub_10051F3B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10051F3B8(uint64_t a1)
{
  v282 = v1;
  v252 = *(v1 + 2632);
  v2 = *(v1 + 2528);
  v3 = *(v1 + 2488);
  v4 = *(v1 + 2256);
  v5 = *(v1 + 2248);
  v259 = *(v1 + 2240);
  v6 = *(v1 + 2232);
  v7 = *(v1 + 2224);
  v268 = *(v1 + 2216);
  v8 = *(v1 + 2144);
  v273 = *(v1 + 2128);
  v278 = *(v1 + 2136);
  v9 = *(v1 + 1824);
  sub_10058250C(*(v1 + 2424));
  *(v1 + 2664) = *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v252(v2, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = *(v5 + 8);
  *(v1 + 2672) = v10;
  *(v1 + 2680) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v259);
  *(v1 + 3008) = SFAirDrop.TransferType.isOnlyExchange.getter() & 1;
  v11 = *(v7 + 8);
  *(v1 + 2688) = v11;
  *(v1 + 2696) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v255 = v11;
  v11(v6, v268);
  v12 = v273;
  SFAirDrop.ContactRequest.contact.getter();
  v13 = *(v8 + 48);
  *(v1 + 2704) = v13;
  *(v1 + 2712) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v274 = v13;
  if (v13(v12, 1, v278) == 1)
  {
    v14 = *(v1 + 2272);
    v15 = *(v1 + 2264);
    v16 = *(v1 + 2016);
    v17 = *(v1 + 1816);
    sub_100005508(*(v1 + 2128), &qword_10097B198, &qword_1007FE450);
    sub_10000FF90(v17, v16, &qword_10097B1C0, &qword_1007FE4C8);
    v18 = *(v14 + 48);
    v19 = v18(v16, 1, v15);
    v20 = *(v1 + 2304);
    v21 = *(v1 + 2272);
    v22 = *(v1 + 2264);
    v23 = *(v1 + 2016);
    if (v19 == 1)
    {
      (*(v21 + 104))(v20, enum case for SFAirDrop.ContactRequest.notNeeded(_:), *(v1 + 2264));
      if (v18(v23, 1, v22) != 1)
      {
        sub_100005508(*(v1 + 2016), &qword_10097B1C0, &qword_1007FE4C8);
      }
    }

    else
    {
      (*(v21 + 32))(v20, *(v1 + 2016), *(v1 + 2264));
    }

    v43 = *(v1 + 2304);
    v44 = *(v1 + 2288);
    v45 = *(v1 + 2264);
    v46 = *(*(v1 + 2272) + 16);
    v46(*(v1 + 2296), *(v1 + 2424), v45);
    v249 = v46;
    v46(v44, v43, v45);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v1 + 2528);
      v230 = *(v1 + 2488);
      v232 = *(v1 + 2632);
      v246 = v48;
      v50 = *(v1 + 2296);
      v241 = *(v1 + 2288);
      v51 = *(v1 + 2272);
      v52 = *(v1 + 2264);
      log = v47;
      v53 = *(v1 + 2256);
      v234 = *(v1 + 2240);
      v229 = *(v1 + 2232);
      v239 = *(v1 + 2216);
      v54 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v54 = 141559043;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v58 = *(v51 + 8);
      v58(v50, v52);
      v59 = sub_10000C4E4(v55, v57, &v281);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v232(v49, v230);
      SFAirDropReceive.AskRequest.type.getter();
      v10(v53, v234);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v255(v229, v239);
      v63 = sub_10000C4E4(v60, v62, &v281);

      *(v54 + 24) = v63;
      *(v54 + 32) = 2160;
      *(v54 + 34) = 1752392040;
      *(v54 + 42) = 2081;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v269 = v58;
      v58(v241, v52);
      v67 = sub_10000C4E4(v64, v66, &v281);

      *(v54 + 44) = v67;
      _os_log_impl(&_mh_execute_header, log, v246, "Exchange Contact END - Sender did not send contact {contactRequest: %{private,mask.hash}s, type: %s, contactToSend: %{private,mask.hash}s}", v54, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v71 = *(v1 + 2296);
      v72 = *(v1 + 2288);
      v73 = *(v1 + 2272);
      v74 = *(v1 + 2264);

      v75 = *(v73 + 8);
      v75(v72, v74);
      v269 = v75;
      v75(v71, v74);
    }

    v76 = *(v1 + 2632);
    v77 = *(v1 + 2504);
    v78 = *(v1 + 2488);
    v79 = *(v1 + 2136);
    v80 = *(v1 + 2048);
    v249(*(v1 + 2280), *(v1 + 2304), *(v1 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v76(v77, v78);
    SFAirDrop.ContactRequest.contact.getter();
    v81 = v274(v80, 1, v79);
    v82 = *(v1 + 2264);
    if (v81 == 1)
    {
      v83 = *(v1 + 2048);
      v84 = *(v1 + 1968);
      v85 = *(v1 + 1960);
      v86 = *(v1 + 1936);
      v87 = *(v1 + 1928);
      v88 = *(v1 + 1920);
      v269(*(v1 + 2280), *(v1 + 2264));
      sub_100005508(v83, &qword_10097B198, &qword_1007FE450);
      v89 = v85[7];
      v90 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v90 - 8) + 56))(v84 + v89, 1, 1, v90);
      (*(v87 + 32))(v84, v86, v88);
      v91 = 0;
      v92 = (v84 + v85[5]);
      *v92 = 0;
      v92[1] = 0;
      v93 = (v84 + v85[6]);
      *v93 = 0;
      v93[1] = 0;
      v94 = 0xF000000000000000;
    }

    else
    {
      v95 = *(v1 + 2152);
      v96 = *(v1 + 2144);
      v97 = *(v1 + 1968);
      v98 = *(v1 + 1960);
      v99 = *(v1 + 1936);
      v253 = v99;
      v256 = *(v1 + 2136);
      v100 = *(v1 + 1928);
      v101 = *(v1 + 1920);
      v250 = v101;
      v279 = *(v1 + 2280);
      (*(v96 + 32))(v95, *(v1 + 2048));
      (*(v100 + 16))(v97, v99, v101);
      v102 = SFAirDrop.ContactInfo.givenName.getter();
      v271 = v103;
      v275 = v102;
      v263 = SFAirDrop.ContactInfo.fullName.getter();
      v260 = v104;
      v105 = v98[7];
      SFAirDrop.ContactInfo.handle.getter();
      v106 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v106 - 8) + 56))(v97 + v105, 0, 1, v106);
      v91 = SFAirDrop.ContactInfo.vcard.getter();
      v94 = v107;
      (*(v96 + 8))(v95, v256);
      (*(v100 + 8))(v253, v250);
      v269(v279, v82);
      v108 = (v97 + v98[5]);
      *v108 = v275;
      v108[1] = v271;
      v109 = (v97 + v98[6]);
      *v109 = v263;
      v109[1] = v260;
    }

    v110 = *(v1 + 1976);
    v111 = *(v1 + 1968);
    v112 = *(v1 + 1960);
    v113 = (v111 + *(v112 + 32));
    *v113 = v91;
    v113[1] = v94;
    v114 = v111 + *(v112 + 36);
    *(v114 + 80) = 0;
    *(v114 + 48) = 0u;
    *(v114 + 64) = 0u;
    *(v114 + 16) = 0u;
    *(v114 + 32) = 0u;
    *v114 = 0u;
    sub_1005304C4(v111, v110, _s16ExchangeResponseVMa);
    v115 = swift_task_alloc();
    *(v1 + 2992) = v115;
    *v115 = v1;
    v115[1] = sub_100527DD8;
    v116 = *(v1 + 1976);
    goto LABEL_36;
  }

  v24 = *(v1 + 2424);
  v25 = *(v1 + 2416);
  v26 = *(v1 + 2272);
  v27 = *(v1 + 2264);
  v28 = *(v1 + 2208);
  v29 = *(v1 + 2144);
  v30 = *(v1 + 2136);
  v31 = *(v1 + 2128);
  v32 = *(v29 + 32);
  *(v1 + 2720) = v32;
  *(v1 + 2728) = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v243 = v32;
  (v32)(v28, v31, v30);
  v33 = *(v26 + 16);
  *(v1 + 2736) = v33;
  *(v1 + 2744) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v248 = v33;
  v33(v25, v24, v27);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v1 + 2416);
  if (v36)
  {
    v240 = v35;
    v262 = v10;
    v38 = *(v1 + 2136);
    v39 = *(v1 + 2120);
    v40 = swift_slowAlloc();
    v281 = swift_slowAlloc();
    *v40 = 141558531;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    SFAirDrop.ContactRequest.contact.getter();
    v245 = v34;
    if (v274(v39, 1, v38) == 1)
    {
      sub_100005508(*(v1 + 2120), &qword_10097B198, &qword_1007FE450);
      v41 = 0x8000000100794A70;
      v42 = 0xD000000000000020;
    }

    else
    {
      v117 = *(v1 + 2144);
      v118 = *(v1 + 2136);
      v119 = *(v1 + 2120);
      v42 = SFAirDrop.ContactInfo.description.getter();
      v41 = v120;
      (*(v117 + 8))(v119, v118);
    }

    v235 = *(v1 + 2632);
    v121 = *(v1 + 2528);
    v122 = *(v1 + 2488);
    v123 = *(v1 + 2256);
    v237 = *(v1 + 2240);
    v124 = *(v1 + 2232);
    v125 = *(v1 + 2216);
    v70 = *(*(v1 + 2272) + 8);
    (v70)(*(v1 + 2416), *(v1 + 2264));
    v126 = sub_10000C4E4(v42, v41, &v281);

    *(v40 + 14) = v126;
    *(v40 + 22) = 2080;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v235(v121, v122);
    SFAirDropReceive.AskRequest.type.getter();
    v10 = v262;
    v262(v123, v237);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v129 = v128;
    v255(v124, v125);
    v130 = sub_10000C4E4(v127, v129, &v281);

    *(v40 + 24) = v130;
    _os_log_impl(&_mh_execute_header, v245, v240, "Exchange Contact CONTINUE {senderContact: %{private,mask.hash}s, type: %s}", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v68 = *(v1 + 2272);
    v69 = *(v1 + 2264);

    v70 = *(v68 + 8);
    (v70)(v37, v69);
  }

  *(v1 + 2752) = v70;
  v131 = *(v1 + 2272);
  v132 = *(v1 + 2264);
  v133 = *(v1 + 2040);
  sub_10000FF90(*(v1 + 1816), v133, &qword_10097B1C0, &qword_1007FE4C8);
  v134 = *(v131 + 48);
  *(v1 + 2760) = v134;
  *(v1 + 2768) = (v131 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v134(v133, 1, v132) != 1)
  {
    v145 = *(v1 + 2408);
    v146 = *(v1 + 2400);
    v147 = *(v1 + 2264);
    (*(*(v1 + 2272) + 32))(v145, *(v1 + 2040), v147);
    v248(v146, v145, v147);

    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.default.getter();

    v247 = v70;
    if (os_log_type_enabled(v148, v149))
    {
      v233 = *(v1 + 2632);
      v150 = *(v1 + 2528);
      v242 = v149;
      v151 = *(v1 + 2400);
      v231 = *(v1 + 2488);
      v152 = *(v1 + 2264);
      v265 = v10;
      v153 = *(v1 + 2256);
      v154 = *(v1 + 2232);
      v236 = *(v1 + 2240);
      v238 = *(v1 + 2216);
      v155 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v155 = 141558531;
      *(v155 + 4) = 1752392040;
      *(v155 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v70;
      v158 = v156;
      v160 = v159;
      (v157)(v151, v152);
      v161 = sub_10000C4E4(v158, v160, &v281);

      *(v155 + 14) = v161;
      *(v155 + 22) = 2080;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v233(v150, v231);
      SFAirDropReceive.AskRequest.type.getter();
      v265(v153, v236);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      v255(v154, v238);
      v165 = sub_10000C4E4(v162, v164, &v281);

      *(v155 + 24) = v165;
      _os_log_impl(&_mh_execute_header, v148, v242, "Exchange Contact CONTINUE. Respond to sender {contactToSend: %{private,mask.hash}s, type: %s}", v155, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v166 = *(v1 + 2400);
      v167 = *(v1 + 2264);

      (v70)(v166, v167);
    }

    v168 = (v1 + 1336);
    v169 = *(v1 + 2136);
    v170 = *(v1 + 2112);
    SFAirDrop.ContactRequest.contact.getter();
    if (v274(v170, 1, v169) == 1)
    {
      sub_100005508(*(v1 + 2112), &qword_10097B198, &qword_1007FE450);
      v171 = 0;
      v172 = 0;
    }

    else
    {
      v173 = *(v1 + 2144);
      v174 = *(v1 + 2136);
      v175 = *(v1 + 2112);
      v176 = SFAirDrop.ContactInfo.accountHandle.getter();
      v172 = v177;
      (*(v173 + 8))(v175, v174);
      v171 = v176;
    }

    v178 = (v1 + 1424);
    v179 = *(v1 + 2392);
    v180 = *(v1 + 2272);
    v181 = *(v1 + 2264);
    sub_10046A56C(v171, v172, (v1 + 192));
    v182 = *(v1 + 240);
    *(v1 + 1368) = *(v1 + 224);
    *(v1 + 1384) = v182;
    *(v1 + 1400) = *(v1 + 256);
    *(v1 + 1416) = *(v1 + 272);
    v183 = *(v1 + 208);
    *v168 = *(v1 + 192);
    *(v1 + 1352) = v183;

    (*(v180 + 104))(v179, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v181);
    v184 = static SFAirDrop.ContactRequest.== infix(_:_:)();
    *(v1 + 2776) = (v180 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v247)(v179, v181);
    if (v184)
    {
      *(v1 + 1504) = 0;
      *(v1 + 1472) = 0u;
      *(v1 + 1488) = 0u;
      *(v1 + 1440) = 0u;
      *(v1 + 1456) = 0u;
      *v178 = 0u;
    }

    else
    {
      sub_10000FF90(v1 + 192, v1 + 1512, &qword_10097B208, &qword_1007FE5A8);
      v185 = *(v1 + 1384);
      *(v1 + 1456) = *(v1 + 1368);
      *(v1 + 1472) = v185;
      *(v1 + 1488) = *(v1 + 1400);
      *(v1 + 1504) = *(v1 + 1416);
      v186 = *(v1 + 1352);
      *v178 = *v168;
      *(v1 + 1440) = v186;
    }

    v187 = *(v1 + 2632);
    v188 = *(v1 + 2520);
    v189 = *(v1 + 2488);
    v266 = *(v1 + 2136);
    v190 = *(v1 + 2104);
    v248(*(v1 + 2384), *(v1 + 2408), *(v1 + 2264));
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.id.getter();
    v187(v188, v189);
    sub_10000FF90(v1 + 1424, v1 + 1600, &qword_10097B208, &qword_1007FE5A8);
    SFAirDrop.ContactRequest.contact.getter();
    v191 = v274(v190, 1, v266);
    v192 = *(v1 + 2264);
    if (v191 == 1)
    {
      v193 = *(v1 + 2104);
      v194 = *(v1 + 2000);
      v195 = *(v1 + 1960);
      v196 = *(v1 + 1952);
      v197 = *(v1 + 1928);
      v198 = *(v1 + 1920);
      (v247)(*(v1 + 2384), *(v1 + 2264));
      sub_100005508(v1 + 1424, &qword_10097B208, &qword_1007FE5A8);
      sub_100005508(v193, &qword_10097B198, &qword_1007FE450);
      v199 = v195[7];
      v200 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v200 - 8) + 56))(v194 + v199, 1, 1, v200);
      (*(v197 + 32))(v194, v196, v198);
      v201 = (v194 + v195[5]);
      *v201 = 0;
      v201[1] = 0;
      v202 = (v194 + v195[6]);
      *v202 = 0;
      v202[1] = 0;
      *(v194 + v195[8]) = xmmword_1007F8A80;
      v203 = v194 + v195[9];
      *(v203 + 80) = 0;
      *(v203 + 48) = 0u;
      *(v203 + 64) = 0u;
      *(v203 + 16) = 0u;
      *(v203 + 32) = 0u;
      *v203 = 0u;
    }

    else
    {
      v204 = *(v1 + 2200);
      v205 = *(v1 + 2144);
      v206 = *(v1 + 2000);
      v207 = *(v1 + 1960);
      v208 = *(v1 + 1952);
      v254 = v208;
      v258 = *(v1 + 2136);
      v209 = *(v1 + 1928);
      v210 = *(v1 + 1920);
      v251 = v210;
      v280 = *(v1 + 2384);
      v243(v204, *(v1 + 2104));
      (*(v209 + 16))(v206, v208, v210);
      v211 = SFAirDrop.ContactInfo.givenName.getter();
      v272 = v212;
      v277 = v211;
      v267 = SFAirDrop.ContactInfo.fullName.getter();
      v261 = v213;
      v214 = v207[7];
      SFAirDrop.ContactInfo.handle.getter();
      v215 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
      (*(*(v215 - 8) + 56))(v206 + v214, 0, 1, v215);
      v216 = SFAirDrop.ContactInfo.vcard.getter();
      v218 = v217;
      (*(v205 + 8))(v204, v258);
      (*(v209 + 8))(v254, v251);
      (v247)(v280, v192);
      v219 = (v206 + v207[5]);
      *v219 = v277;
      v219[1] = v272;
      v220 = (v206 + v207[6]);
      *v220 = v267;
      v220[1] = v261;
      v221 = (v206 + v207[8]);
      *v221 = v216;
      v221[1] = v218;
      v222 = v206 + v207[9];
      v223 = *(v1 + 1440);
      *v222 = *v178;
      *(v222 + 16) = v223;
      v224 = *(v1 + 1456);
      v225 = *(v1 + 1472);
      v226 = *(v1 + 1488);
      *(v222 + 80) = *(v1 + 1504);
      *(v222 + 48) = v225;
      *(v222 + 64) = v226;
      *(v222 + 32) = v224;
    }

    sub_1005304C4(*(v1 + 2000), *(v1 + 2008), _s16ExchangeResponseVMa);
    v227 = swift_task_alloc();
    *(v1 + 2784) = v227;
    *v227 = v1;
    v227[1] = sub_100520B28;
    v116 = *(v1 + 2008);
LABEL_36:

    return sub_1006424A0(v116);
  }

  sub_100005508(*(v1 + 2040), &qword_10097B1C0, &qword_1007FE4C8);
  v276 = *(v1 + 2632);
  v270 = *(v1 + 2616);
  v257 = *(v1 + 2600);
  v135 = *(v1 + 2528);
  v264 = *(v1 + 2488);
  v136 = *(v1 + 2480);
  v137 = *(v1 + 2464);
  v138 = *(v1 + 2208);
  v139 = *(v1 + 2144);
  v140 = *(v1 + 2136);
  v141 = *(v1 + 1912);
  sub_10052AC24(v138, v141);
  v142 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
  v143 = *(v139 + 16);
  *(v1 + 2800) = v143;
  *(v1 + 2808) = (v139 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v143(v136, v138, v140);
  v144 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v144 - 8) + 16))(v136 + v142, v141, v144);
  v257(v136, enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:), v137);
  sub_100687AF8(v136, v135);
  v270(v136, v137);
  v276(v135, v264);

  return _swift_task_switch(sub_100520E6C, 0, 0);
}

uint64_t sub_100520B28()
{
  v2 = *v1;
  *(*v1 + 2792) = v0;

  v3 = *(v2 + 2576);
  if (v0)
  {
    v4 = sub_100528D38;
  }

  else
  {
    v4 = sub_100520C54;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100520C54()
{
  v1 = v0[344];
  v2 = v0[301];
  v3 = v0[283];
  v4 = v0[251];
  sub_100005508((v0 + 178), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 24), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v4, _s16ExchangeResponseVMa);
  v1(v2, v3);
  v19 = v0[329];
  v18 = v0[327];
  v16 = v0[325];
  v5 = v0[316];
  v17 = v0[311];
  v6 = v0[310];
  v7 = v0[308];
  v8 = v0[276];
  v9 = v0[268];
  v10 = v0[267];
  v11 = v0[239];
  sub_10052AC24(v8, v11);
  v12 = *(sub_10028088C(&unk_10097E9C0, &unk_100808DC0) + 48);
  v13 = *(v9 + 16);
  v0[350] = v13;
  v0[351] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v6, v8, v10);
  v14 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v14 - 8) + 16))(v6 + v12, v11, v14);
  v16(v6, enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:), v7);
  sub_100687AF8(v6, v5);
  v18(v6, v7);
  v19(v5, v17);

  return _swift_task_switch(sub_100520E6C, 0, 0);
}

uint64_t sub_100520E6C()
{
  v1 = v0[239];
  v2 = swift_task_alloc();
  v0[352] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[353] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[354] = v4;
  *v4 = v0;
  v4[1] = sub_100520F74;
  v5 = v0[238];
  v6 = v0[235];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1007F9898, v2, sub_1002E3870, v3, 0, 0, v6);
}

uint64_t sub_100520F74()
{
  v2 = *v1;
  *(*v1 + 2840) = v0;

  if (v0)
  {
    v3 = sub_100522990;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 2576);

    v3 = sub_1005210A8;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1005210A8()
{
  v231 = v0;
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  (*(v2 + 104))(v1, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v3);
  sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v5 = *(v2 + 8);
  *(v0 + 2848) = v5;
  *(v0 + 2856) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = (v4 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Exchange Contact CONTINUE. Accept permission {shouldAcceptSenderContact: %{BOOL}d}", v8, 8u);
  }

  v9 = *(v0 + 2704);
  v10 = *(v0 + 2136);
  v11 = *(v0 + 2096);

  SFAirDrop.ContactRequest.contact.getter();
  if (v9(v11, 1, v10) == 1)
  {
    v12 = *(v0 + 2736);
    v13 = *(v0 + 2424);
    v14 = *(v0 + 2360);
    v15 = *(v0 + 2264);
    sub_100005508(*(v0 + 2096), &qword_10097B198, &qword_1007FE450);
    v12(v14, v13, v15);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 2752);
    if (v18)
    {
      v225 = *(v0 + 3008);
      v20 = *(v0 + 2360);
      v21 = *(v0 + 2264);
      v22 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v230[0] = v218;
      *v22 = 141558787;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
      v23 = v4;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v19(v20, v21);
      v27 = sub_10000C4E4(v24, v26, v230);

      *(v22 + 14) = v27;
      *(v22 + 22) = 1024;
      *(v22 + 24) = (v23 & 1) == 0;
      *(v22 + 28) = 1024;
      *(v22 + 30) = v225;
      _os_log_impl(&_mh_execute_header, v16, v17, "Exchange Contact IMPORT SKIP {contactRequest: %{private,mask.hash}s, shouldAcceptSenderContact: %{BOOL}d, isExchangeType: %{BOOL}d}", v22, 0x22u);
      sub_10000C60C(v218);
    }

    else
    {
      v44 = *(v0 + 2360);
      v45 = *(v0 + 2264);

      v19(v44, v45);
    }

    *(v0 + 2920) = 0u;
    v46 = *(v0 + 2760);
    v47 = *(v0 + 2264);
    v48 = *(v0 + 2024);
    sub_10000FF90(*(v0 + 1816), v48, &qword_10097B1C0, &qword_1007FE4C8);
    LODWORD(v47) = v46(v48, 1, v47);
    sub_100005508(v48, &qword_10097B1C0, &qword_1007FE4C8);
    if (v47 == 1)
    {
      v49 = *(v0 + 2704);
      v50 = *(v0 + 2136);
      v51 = *(v0 + 2088);
      SFAirDrop.ContactRequest.contact.getter();
      if (v49(v51, 1, v50) == 1)
      {
        v52 = (v0 + 2088);
LABEL_25:
        v90 = *v52;
        v91 = *(v0 + 2736);
        v92 = *(v0 + 2424);
        v93 = *(v0 + 2328);
        v94 = *(v0 + 2264);
        sub_100005508(v90, &qword_10097B198, &qword_1007FE450);
        v91(v93, v92, v94);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.default.getter();
        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v0 + 2328);
        if (v97)
        {
          v99 = *(v0 + 2704);
          v100 = *(v0 + 2136);
          v101 = *(v0 + 2072);
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v230[0] = v103;
          *v102 = 141558275;
          *(v102 + 4) = 1752392040;
          *(v102 + 12) = 2081;
          SFAirDrop.ContactRequest.contact.getter();
          if (v99(v101, 1, v100) == 1)
          {
            sub_100005508(*(v0 + 2072), &qword_10097B198, &qword_1007FE450);
            v104 = 0x8000000100794A70;
            v105 = 0xD000000000000020;
          }

          else
          {
            v118 = *(v0 + 2144);
            v119 = *(v0 + 2136);
            v120 = *(v0 + 2072);
            v105 = SFAirDrop.ContactInfo.description.getter();
            v104 = v121;
            (*(v118 + 8))(v120, v119);
          }

          (*(v0 + 2752))(*(v0 + 2328), *(v0 + 2264));
          v122 = sub_10000C4E4(v105, v104, v230);

          *(v102 + 14) = v122;
          _os_log_impl(&_mh_execute_header, v95, v96, "Exchange Contact SHARE BACK PERMISSION SKIP. No senderContact or no receiverContact {senderContact: %{private,mask.hash}s}", v102, 0x16u);
          sub_10000C60C(v103);
        }

        else
        {
          v106 = *(v0 + 2752);
          v107 = *(v0 + 2264);

          v106(v98, v107);
        }

        v123 = (v0 + 280);
        v229 = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
        (*(*(v0 + 2272) + 104))(*(v0 + 2352));
        v124 = *(v0 + 2736);
        v215 = *(v0 + 2704);
        v203 = *(v0 + 2632);
        v190 = *(v0 + 2600);
        v191 = *(v0 + 2528);
        v192 = *(v0 + 2488);
        v193 = *(v0 + 2616);
        v125 = *(v0 + 2480);
        v126 = *(v0 + 2464);
        v127 = *(v0 + 2424);
        v128 = *(v0 + 2352);
        v129 = *(v0 + 2264);
        v211 = *(v0 + 2136);
        v196 = *(v0 + 2064);
        v130 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
        v124(v125, v127, v129);
        v124(v125 + v130, v128, v129);
        v190(v125, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v126);
        sub_100687AF8(v125, v191);
        v193(v125, v126);
        v203(v191, v192);
        SFAirDrop.ContactRequest.contact.getter();
        if (v215(v196, 1, v211) == 1)
        {
          sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
          v131 = 0;
          v132 = 0;
        }

        else
        {
          v133 = *(v0 + 2144);
          v134 = *(v0 + 2136);
          v135 = *(v0 + 2064);
          v136 = SFAirDrop.ContactInfo.accountHandle.getter();
          v132 = v137;
          (*(v133 + 8))(v135, v134);
          v131 = v136;
        }

        v138 = *(v0 + 2752);
        v139 = *(v0 + 2392);
        v140 = *(v0 + 2272);
        v141 = *(v0 + 2264);
        sub_10046A56C(v131, v132, (v0 + 104));
        v142 = *(v0 + 152);
        *(v0 + 312) = *(v0 + 136);
        *(v0 + 328) = v142;
        *(v0 + 344) = *(v0 + 168);
        *(v0 + 360) = *(v0 + 184);
        v143 = *(v0 + 120);
        *v123 = *(v0 + 104);
        *(v0 + 296) = v143;

        (*(v140 + 104))(v139, v229, v141);
        v144 = static SFAirDrop.ContactRequest.== infix(_:_:)();
        *(v0 + 2968) = (v140 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v138(v139, v141);
        if (v144)
        {
          *(v0 + 448) = 0;
          *(v0 + 416) = 0u;
          *(v0 + 432) = 0u;
          *(v0 + 384) = 0u;
          *(v0 + 400) = 0u;
          *(v0 + 368) = 0u;
        }

        else
        {
          sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
          v145 = *(v0 + 328);
          *(v0 + 400) = *(v0 + 312);
          *(v0 + 416) = v145;
          *(v0 + 432) = *(v0 + 344);
          *(v0 + 448) = *(v0 + 360);
          v146 = *(v0 + 296);
          *(v0 + 368) = *v123;
          *(v0 + 384) = v146;
        }

        v216 = *(v0 + 2704);
        v147 = *(v0 + 2632);
        v148 = *(v0 + 2512);
        v149 = *(v0 + 2488);
        v150 = *(v0 + 2136);
        v151 = *(v0 + 2056);
        (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.id.getter();
        v147(v148, v149);
        sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
        SFAirDrop.ContactRequest.contact.getter();
        if (v216(v151, 1, v150) == 1)
        {
          v152 = *(v0 + 2056);
          v153 = *(v0 + 1984);
          v154 = *(v0 + 1960);
          v155 = *(v0 + 1944);
          v156 = *(v0 + 1928);
          v157 = *(v0 + 1920);
          (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
          sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
          sub_100005508(v152, &qword_10097B198, &qword_1007FE450);
          v158 = v154[7];
          v159 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
          (*(*(v159 - 8) + 56))(v153 + v158, 1, 1, v159);
          (*(v156 + 32))(v153, v155, v157);
          v160 = (v153 + v154[5]);
          *v160 = 0;
          v160[1] = 0;
          v161 = (v153 + v154[6]);
          *v161 = 0;
          v161[1] = 0;
          *(v153 + v154[8]) = xmmword_1007F8A80;
          v162 = v153 + v154[9];
          *(v162 + 80) = 0;
          *(v162 + 48) = 0u;
          *(v162 + 64) = 0u;
          *(v162 + 16) = 0u;
          *(v162 + 32) = 0u;
          *v162 = 0u;
        }

        else
        {
          v224 = *(v0 + 2752);
          v212 = *(v0 + 2264);
          v217 = *(v0 + 2320);
          v163 = *(v0 + 2160);
          v164 = *(v0 + 2144);
          v165 = *(v0 + 2136);
          v166 = *(v0 + 1984);
          v167 = *(v0 + 1960);
          v168 = *(v0 + 1944);
          v194 = v168;
          v169 = *(v0 + 1928);
          v170 = *(v0 + 1920);
          (*(v0 + 2720))(v163, *(v0 + 2056), v165);
          (*(v169 + 16))(v166, v168, v170);
          v171 = SFAirDrop.ContactInfo.givenName.getter();
          v204 = v172;
          v208 = v171;
          v173 = SFAirDrop.ContactInfo.fullName.getter();
          v197 = v174;
          v200 = v173;
          v175 = v167[7];
          SFAirDrop.ContactInfo.handle.getter();
          v176 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
          (*(*(v176 - 8) + 56))(v166 + v175, 0, 1, v176);
          v177 = SFAirDrop.ContactInfo.vcard.getter();
          v179 = v178;
          (*(v164 + 8))(v163, v165);
          (*(v169 + 8))(v194, v170);
          v224(v217, v212);
          v180 = (v166 + v167[5]);
          *v180 = v208;
          v180[1] = v204;
          v181 = (v166 + v167[6]);
          *v181 = v200;
          v181[1] = v197;
          v182 = (v166 + v167[8]);
          *v182 = v177;
          v182[1] = v179;
          v183 = v166 + v167[9];
          v184 = *(v0 + 384);
          *v183 = *(v0 + 368);
          *(v183 + 16) = v184;
          v185 = *(v0 + 400);
          v186 = *(v0 + 416);
          v187 = *(v0 + 432);
          *(v183 + 80) = *(v0 + 448);
          *(v183 + 48) = v186;
          *(v183 + 64) = v187;
          *(v183 + 32) = v185;
        }

        sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
        v188 = swift_task_alloc();
        *(v0 + 2976) = v188;
        *v188 = v0;
        v188[1] = sub_1005274CC;
        v189 = *(v0 + 1992);

        return sub_1006424A0(v189);
      }

      v87 = *(v0 + 2704);
      v88 = *(v0 + 2136);
      v89 = *(v0 + 2080);
      (*(v0 + 2720))(*(v0 + 2176), *(v0 + 2088), v88);
      sub_1004E5AD8(v89);
      if (v87(v89, 1, v88) == 1)
      {
        v52 = (v0 + 2080);
        (*(*(v0 + 2144) + 8))(*(v0 + 2176), *(v0 + 2136));
        goto LABEL_25;
      }

      v108 = *(v0 + 2800);
      v223 = *(v0 + 2632);
      v210 = *(v0 + 2616);
      v199 = *(v0 + 2600);
      v109 = *(v0 + 2528);
      v207 = *(v0 + 2488);
      v110 = *(v0 + 2480);
      v111 = *(v0 + 2464);
      v112 = *(v0 + 2176);
      v113 = *(v0 + 2168);
      v114 = *(v0 + 2136);
      v115 = *(v0 + 1832);
      (*(v0 + 2720))(v113, *(v0 + 2080), v114);
      sub_10052BDD8(v112, v113, v115);
      v116 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
      v108(v110, v113, v114);
      v117 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
      (*(*(v117 - 8) + 16))(v110 + v116, v115, v117);
      v199(v110, enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:), v111);
      sub_100687AF8(v110, v109);
      v210(v110, v111);
      v223(v109, v207);

      return _swift_task_switch(sub_100526380, 0, 0);
    }

    else
    {

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v220 = *(v0 + 2688);
        v205 = *(v0 + 2672);
        v195 = *(v0 + 2632);
        v65 = *(v0 + 2528);
        v66 = *(v0 + 2488);
        v67 = *(v0 + 2256);
        v201 = *(v0 + 2240);
        v68 = *(v0 + 2232);
        v213 = *(v0 + 2216);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v230[0] = v70;
        *v69 = 136315138;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v195(v65, v66);
        SFAirDropReceive.AskRequest.type.getter();
        v205(v67, v201);
        sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v220(v68, v213);
        v74 = sub_10000C4E4(v71, v73, v230);

        *(v69 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v63, v64, "Exchange Contact SHARE BACK SKIP. Already responded with contact {type: %s}", v69, 0xCu);
        sub_10000C60C(v70);
      }

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Exchange Contact END", v77, 2u);
      }

      v78 = *(v0 + 2848);
      v79 = *(v0 + 2552);
      v214 = *(v0 + 2544);
      v221 = *(v0 + 2568);
      v227 = *(v0 + 2456);
      v202 = *(v0 + 2424);
      v206 = *(v0 + 2752);
      v198 = *(v0 + 2264);
      v80 = *(v0 + 2208);
      v81 = v75;
      v82 = *(v0 + 2144);
      v83 = *(v0 + 2136);
      v209 = *(v0 + 1912);
      v84 = *(v0 + 1904);
      v85 = *(v0 + 1880);

      v78(v84, v85);
      (*(v82 + 8))(v80, v83);
      v206(v202, v198);
      (*(v79 + 8))(v221, v214);
      sub_100005508(v209, &qword_100976908, &unk_100801D60);
      sub_100530400(v227, _s15ExchangeRequestVMa);
      v222 = *(v0 + 2920);
      v228 = *(v0 + 2928);

      v86 = *(v0 + 8);

      return v86(v222, v228);
    }
  }

  else
  {
    v28 = *(v0 + 2800);
    v29 = *(v0 + 2192);
    v30 = *(v0 + 2184);
    v31 = *(v0 + 2136);
    (*(v0 + 2720))(v29, *(v0 + 2096), v31);
    v28(v30, v29, v31);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 2184);
    v36 = *(v0 + 2144);
    v37 = *(v0 + 2136);
    if (v34)
    {
      v38 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v230[0] = v226;
      *v38 = 67109635;
      *(v38 + 4) = (v4 & 1) == 0;
      *(v38 + 8) = 2160;
      *(v38 + 10) = 1752392040;
      *(v38 + 18) = 2081;
      sub_100530ED4(&qword_100982530, &type metadata accessor for SFAirDrop.ContactInfo, &protocol conformance descriptor for SFAirDrop.ContactInfo);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v36 + 8);
      v42(v35, v37);
      v43 = sub_10000C4E4(v39, v41, v230);

      *(v38 + 20) = v43;
      _os_log_impl(&_mh_execute_header, v32, v33, "Exchange Contact CONTINUE. Importing contact {shouldAcceptSenderContact: %{BOOL}d, senderContact: %{private,mask.hash}s}", v38, 0x1Cu);
      sub_10000C60C(v226);
    }

    else
    {

      v42 = *(v36 + 8);
      v42(v35, v37);
    }

    *(v0 + 2864) = v42;
    v219 = *(v0 + 2632);
    v53 = *(v0 + 2616);
    v54 = *(v0 + 2600);
    v55 = *(v0 + 2528);
    v56 = *(v0 + 2488);
    v57 = *(v0 + 2480);
    v58 = *(v0 + 2464);
    (*(v0 + 2800))(v57, *(v0 + 2192), *(v0 + 2136));
    v54(v57, enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:), v58);
    sub_100687AF8(v57, v55);
    v53(v57, v58);
    v219(v55, v56);
    v59 = swift_task_alloc();
    *(v0 + 2872) = v59;
    *v59 = v0;
    v59[1] = sub_100522EF8;
    v60 = *(v0 + 3008);
    v61 = *(v0 + 2192);

    return sub_10034B410(v61, v60);
  }
}

uint64_t sub_100522990()
{
  v1 = *(v0 + 2576);

  return _swift_task_switch(sub_100522A08, v1, 0);
}

uint64_t sub_100522A08()
{
  v1 = v0[344];
  v2 = v0[321];
  v3 = v0[319];
  v4 = v0[318];
  v5 = v0[307];
  v6 = v0[303];
  v7 = v0[283];
  v8 = v0[239];
  (*(v0[268] + 8))(v0[276], v0[267]);
  v1(v6, v7);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v8, &qword_100976908, &unk_100801D60);
  sub_100530400(v5, _s15ExchangeRequestVMa);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100522EF8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[360] = a1;
  v5[361] = a2;
  v5[362] = v2;

  v6 = v4[322];
  if (v2)
  {
    v7 = sub_100524948;
  }

  else
  {
    v7 = sub_100523034;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100523034()
{
  v247 = v0;
  v1 = *(v0 + 2584);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1848);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeConnection;
  swift_beginAccess();
  sub_10000FF90(v1 + v5, v4, &qword_100982518, &unk_100808DA0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_100005508(*(v0 + 1848), &qword_100982518, &unk_100808DA0);
LABEL_7:
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Exchange Contact IDENTITY IMPORT SKIP. Not provided", v25, 2u);
    }

    goto LABEL_10;
  }

  v6 = (v0 + 632);
  v7 = *(v0 + 2456);
  v8 = *(v0 + 2440);
  sub_1005304C4(*(v0 + 1848), *(v0 + 1872), type metadata accessor for SDAirDropServerConnection);
  v9 = v7 + *(v8 + 36);
  v10 = *(v9 + 32);
  v11 = *(v9 + 48);
  v12 = *(v9 + 64);
  *(v0 + 712) = *(v9 + 80);
  *(v0 + 680) = v11;
  *(v0 + 696) = v12;
  *(v0 + 664) = v10;
  v13 = *(v9 + 16);
  *(v0 + 632) = *v9;
  *(v0 + 648) = v13;
  v15 = *(v9 + 32);
  v14 = *(v9 + 48);
  v16 = *(v9 + 16);
  *(v0 + 1752) = *(v9 + 64);
  *(v0 + 1720) = v15;
  *(v0 + 1736) = v14;
  *(v0 + 1704) = v16;
  *(v0 + 1688) = *v9;
  if (!*(v0 + 704))
  {
    sub_100530400(*(v0 + 1872), type metadata accessor for SDAirDropServerConnection);
    goto LABEL_7;
  }

  v242 = *(v0 + 704);
  v17 = *(v0 + 2760);
  v18 = *(v0 + 2264);
  v19 = *(v0 + 2032);
  sub_10000FF90(*(v0 + 1816), v19, &qword_10097B1C0, &qword_1007FE4C8);
  if (v17(v19, 1, v18) == 1)
  {
    v20 = *(v0 + 2032);
    v21 = *(v0 + 680);
    *(v0 + 752) = *(v0 + 664);
    *(v0 + 768) = v21;
    *(v0 + 784) = *(v0 + 696);
    *(v0 + 800) = *(v0 + 712);
    v22 = *(v0 + 648);
    *(v0 + 720) = *v6;
    *(v0 + 736) = v22;
    sub_1003398A0(v0 + 720, v0 + 808);
    sub_100005508(v20, &qword_10097B1C0, &qword_1007FE4C8);
LABEL_36:
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "Exchange Contact CONTINUE. Attempting identity import", v121, 2u);
    }

    v122 = *(v0 + 2456);
    v123 = *(v0 + 2440);
    v124 = *(v0 + 1872);
    v125 = *(v0 + 1864);
    v126 = *(v0 + 1856);
    v127 = *(v0 + 1840);

    v128 = *(v0 + 1736);
    *(v0 + 48) = *(v0 + 1720);
    *(v0 + 64) = v128;
    *(v0 + 80) = *(v0 + 1752);
    v129 = *(v0 + 1704);
    *(v0 + 16) = *(v0 + 1688);
    *(v0 + 32) = v129;
    *(v0 + 88) = v242;
    v130 = (v122 + *(v123 + 32));
    v132 = *v130;
    v131 = v130[1];
    sub_100530460(v124, v127);
    (*(v125 + 56))(v127, 0, 1, v126);
    sub_10000FF90(v0 + 632, v0 + 896, &qword_10097B208, &qword_1007FE5A8);
    v133 = swift_task_alloc();
    *(v0 + 2904) = v133;
    *v133 = v0;
    v133[1] = sub_100524E84;
    v134 = *(v0 + 2888);
    v135 = *(v0 + 2880);
    v136 = *(v0 + 1840);

    return sub_100642E64(v0 + 16, v132, v131, v135, v134, v136);
  }

  v84 = *(v0 + 2736);
  v85 = *(v0 + 2376);
  v86 = *(v0 + 2368);
  v87 = *(v0 + 2272);
  v88 = *(v0 + 2264);
  (*(v87 + 32))(v85, *(v0 + 2032), v88);
  v84(v86, v85, v88);
  v89 = (*(v87 + 88))(v86, v88);
  v90 = *(v0 + 2752);
  if (v89 != enum case for SFAirDrop.ContactRequest.notNeeded(_:))
  {
    v114 = *(v0 + 2376);
    v115 = *(v0 + 2368);
    v116 = *(v0 + 2264);
    v117 = *(v0 + 680);
    *(v0 + 1016) = *(v0 + 664);
    *(v0 + 1032) = v117;
    *(v0 + 1048) = *(v0 + 696);
    *(v0 + 1064) = *(v0 + 712);
    v118 = *(v0 + 648);
    *(v0 + 984) = *v6;
    *(v0 + 1000) = v118;
    sub_1003398A0(v0 + 984, v0 + 1072);
    v90(v114, v116);
    v90(v115, v116);
    goto LABEL_36;
  }

  v91 = *(v0 + 2368);
  v92 = *(v0 + 2264);
  v93 = *(v0 + 680);
  *(v0 + 1192) = *(v0 + 664);
  *(v0 + 1208) = v93;
  *(v0 + 1224) = *(v0 + 696);
  *(v0 + 1240) = *(v0 + 712);
  v94 = *(v0 + 648);
  *(v0 + 1160) = *v6;
  *(v0 + 1176) = v94;
  sub_1003398A0(v0 + 1160, v0 + 1248);
  v90(v91, v92);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&_mh_execute_header, v95, v96, "Exchange Contact IDENTITY IMPORT SKIP. User chose to only receive", v97, 2u);
  }

  v98 = *(v0 + 2752);
  v99 = *(v0 + 2376);
  v100 = *(v0 + 2264);
  v101 = *(v0 + 1872);

  sub_100005508(v0 + 632, &qword_10097B208, &qword_1007FE5A8);
  v98(v99, v100);
  sub_100530400(v101, type metadata accessor for SDAirDropServerConnection);
LABEL_10:
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 2864);
  v30 = *(v0 + 2192);
  v31 = *(v0 + 2136);
  if (v28)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Exchange Contact CONTINUE. Imported contact", v32, 2u);
  }

  v29(v30, v31);
  *(v0 + 2920) = *(v0 + 2880);
  v33 = *(v0 + 2760);
  v34 = *(v0 + 2264);
  v35 = *(v0 + 2024);
  sub_10000FF90(*(v0 + 1816), v35, &qword_10097B1C0, &qword_1007FE4C8);
  LODWORD(v34) = v33(v35, 1, v34);
  sub_100005508(v35, &qword_10097B1C0, &qword_1007FE4C8);
  if (v34 == 1)
  {
    v36 = *(v0 + 2704);
    v37 = *(v0 + 2136);
    v38 = *(v0 + 2088);
    SFAirDrop.ContactRequest.contact.getter();
    if (v36(v38, 1, v37) == 1)
    {
      v39 = (v0 + 2088);
LABEL_24:
      v68 = *v39;
      v69 = *(v0 + 2736);
      v70 = *(v0 + 2424);
      v71 = *(v0 + 2328);
      v72 = *(v0 + 2264);
      sub_100005508(v68, &qword_10097B198, &qword_1007FE450);
      v69(v71, v70, v72);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      v75 = os_log_type_enabled(v73, v74);
      v76 = *(v0 + 2328);
      if (v75)
      {
        v77 = *(v0 + 2704);
        v78 = *(v0 + 2136);
        v79 = *(v0 + 2072);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v246[0] = v81;
        *v80 = 141558275;
        *(v80 + 4) = 1752392040;
        *(v80 + 12) = 2081;
        SFAirDrop.ContactRequest.contact.getter();
        if (v77(v79, 1, v78) == 1)
        {
          sub_100005508(*(v0 + 2072), &qword_10097B198, &qword_1007FE450);
          v82 = 0x8000000100794A70;
          v83 = 0xD000000000000020;
        }

        else
        {
          v137 = *(v0 + 2144);
          v138 = *(v0 + 2136);
          v139 = *(v0 + 2072);
          v83 = SFAirDrop.ContactInfo.description.getter();
          v82 = v140;
          (*(v137 + 8))(v139, v138);
        }

        (*(v0 + 2752))(*(v0 + 2328), *(v0 + 2264));
        v141 = sub_10000C4E4(v83, v82, v246);

        *(v80 + 14) = v141;
        _os_log_impl(&_mh_execute_header, v73, v74, "Exchange Contact SHARE BACK PERMISSION SKIP. No senderContact or no receiverContact {senderContact: %{private,mask.hash}s}", v80, 0x16u);
        sub_10000C60C(v81);
      }

      else
      {
        v102 = *(v0 + 2752);
        v103 = *(v0 + 2264);

        v102(v76, v103);
      }

      v142 = (v0 + 280);
      v245 = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
      (*(*(v0 + 2272) + 104))(*(v0 + 2352));
      v143 = *(v0 + 2736);
      v234 = *(v0 + 2704);
      v222 = *(v0 + 2632);
      v209 = *(v0 + 2600);
      v210 = *(v0 + 2528);
      v211 = *(v0 + 2488);
      v212 = *(v0 + 2616);
      v144 = *(v0 + 2480);
      v145 = *(v0 + 2464);
      v146 = *(v0 + 2424);
      v147 = *(v0 + 2352);
      v148 = *(v0 + 2264);
      v230 = *(v0 + 2136);
      v215 = *(v0 + 2064);
      v149 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
      v143(v144, v146, v148);
      v143(v144 + v149, v147, v148);
      v209(v144, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v145);
      sub_100687AF8(v144, v210);
      v212(v144, v145);
      v222(v210, v211);
      SFAirDrop.ContactRequest.contact.getter();
      if (v234(v215, 1, v230) == 1)
      {
        sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
        v150 = 0;
        v151 = 0;
      }

      else
      {
        v152 = *(v0 + 2144);
        v153 = *(v0 + 2136);
        v154 = *(v0 + 2064);
        v155 = SFAirDrop.ContactInfo.accountHandle.getter();
        v151 = v156;
        (*(v152 + 8))(v154, v153);
        v150 = v155;
      }

      v157 = *(v0 + 2752);
      v158 = *(v0 + 2392);
      v159 = *(v0 + 2272);
      v160 = *(v0 + 2264);
      sub_10046A56C(v150, v151, (v0 + 104));
      v161 = *(v0 + 152);
      *(v0 + 312) = *(v0 + 136);
      *(v0 + 328) = v161;
      *(v0 + 344) = *(v0 + 168);
      *(v0 + 360) = *(v0 + 184);
      v162 = *(v0 + 120);
      *v142 = *(v0 + 104);
      *(v0 + 296) = v162;

      (*(v159 + 104))(v158, v245, v160);
      v163 = static SFAirDrop.ContactRequest.== infix(_:_:)();
      *(v0 + 2968) = (v159 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v157(v158, v160);
      if (v163)
      {
        *(v0 + 448) = 0;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 0u;
        *(v0 + 368) = 0u;
      }

      else
      {
        sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
        v164 = *(v0 + 328);
        *(v0 + 400) = *(v0 + 312);
        *(v0 + 416) = v164;
        *(v0 + 432) = *(v0 + 344);
        *(v0 + 448) = *(v0 + 360);
        v165 = *(v0 + 296);
        *(v0 + 368) = *v142;
        *(v0 + 384) = v165;
      }

      v235 = *(v0 + 2704);
      v166 = *(v0 + 2632);
      v167 = *(v0 + 2512);
      v168 = *(v0 + 2488);
      v169 = *(v0 + 2136);
      v170 = *(v0 + 2056);
      (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.id.getter();
      v166(v167, v168);
      sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
      SFAirDrop.ContactRequest.contact.getter();
      if (v235(v170, 1, v169) == 1)
      {
        v171 = *(v0 + 2056);
        v172 = *(v0 + 1984);
        v173 = *(v0 + 1960);
        v174 = *(v0 + 1944);
        v175 = *(v0 + 1928);
        v176 = *(v0 + 1920);
        (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
        sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
        sub_100005508(v171, &qword_10097B198, &qword_1007FE450);
        v177 = v173[7];
        v178 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v178 - 8) + 56))(v172 + v177, 1, 1, v178);
        (*(v175 + 32))(v172, v174, v176);
        v179 = (v172 + v173[5]);
        *v179 = 0;
        v179[1] = 0;
        v180 = (v172 + v173[6]);
        *v180 = 0;
        v180[1] = 0;
        *(v172 + v173[8]) = xmmword_1007F8A80;
        v181 = v172 + v173[9];
        *(v181 + 80) = 0;
        *(v181 + 48) = 0u;
        *(v181 + 64) = 0u;
        *(v181 + 16) = 0u;
        *(v181 + 32) = 0u;
        *v181 = 0u;
      }

      else
      {
        v241 = *(v0 + 2752);
        v231 = *(v0 + 2264);
        v236 = *(v0 + 2320);
        v182 = *(v0 + 2160);
        v183 = *(v0 + 2144);
        v184 = *(v0 + 2136);
        v185 = *(v0 + 1984);
        v186 = *(v0 + 1960);
        v187 = *(v0 + 1944);
        v213 = v187;
        v188 = *(v0 + 1928);
        v189 = *(v0 + 1920);
        (*(v0 + 2720))(v182, *(v0 + 2056), v184);
        (*(v188 + 16))(v185, v187, v189);
        v190 = SFAirDrop.ContactInfo.givenName.getter();
        v223 = v191;
        v227 = v190;
        v192 = SFAirDrop.ContactInfo.fullName.getter();
        v216 = v193;
        v219 = v192;
        v194 = v186[7];
        SFAirDrop.ContactInfo.handle.getter();
        v195 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v195 - 8) + 56))(v185 + v194, 0, 1, v195);
        v196 = SFAirDrop.ContactInfo.vcard.getter();
        v198 = v197;
        (*(v183 + 8))(v182, v184);
        (*(v188 + 8))(v213, v189);
        v241(v236, v231);
        v199 = (v185 + v186[5]);
        *v199 = v227;
        v199[1] = v223;
        v200 = (v185 + v186[6]);
        *v200 = v219;
        v200[1] = v216;
        v201 = (v185 + v186[8]);
        *v201 = v196;
        v201[1] = v198;
        v202 = v185 + v186[9];
        v203 = *(v0 + 384);
        *v202 = *(v0 + 368);
        *(v202 + 16) = v203;
        v204 = *(v0 + 400);
        v205 = *(v0 + 416);
        v206 = *(v0 + 432);
        *(v202 + 80) = *(v0 + 448);
        *(v202 + 48) = v205;
        *(v202 + 64) = v206;
        *(v202 + 32) = v204;
      }

      sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
      v207 = swift_task_alloc();
      *(v0 + 2976) = v207;
      *v207 = v0;
      v207[1] = sub_1005274CC;
      v208 = *(v0 + 1992);

      return sub_1006424A0(v208);
    }

    v65 = *(v0 + 2704);
    v66 = *(v0 + 2136);
    v67 = *(v0 + 2080);
    (*(v0 + 2720))(*(v0 + 2176), *(v0 + 2088), v66);
    sub_1004E5AD8(v67);
    if (v65(v67, 1, v66) == 1)
    {
      v39 = (v0 + 2080);
      (*(*(v0 + 2144) + 8))(*(v0 + 2176), *(v0 + 2136));
      goto LABEL_24;
    }

    v104 = *(v0 + 2800);
    v240 = *(v0 + 2632);
    v229 = *(v0 + 2616);
    v218 = *(v0 + 2600);
    v105 = *(v0 + 2528);
    v226 = *(v0 + 2488);
    v106 = *(v0 + 2480);
    v107 = *(v0 + 2464);
    v108 = *(v0 + 2176);
    v109 = *(v0 + 2168);
    v110 = *(v0 + 2136);
    v111 = *(v0 + 1832);
    (*(v0 + 2720))(v109, *(v0 + 2080), v110);
    sub_10052BDD8(v108, v109, v111);
    v112 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
    v104(v106, v109, v110);
    v113 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v113 - 8) + 16))(v106 + v112, v111, v113);
    v218(v106, enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:), v107);
    sub_100687AF8(v106, v105);
    v229(v106, v107);
    v240(v105, v226);

    return _swift_task_switch(sub_100526380, 0, 0);
  }

  else
  {

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v237 = *(v0 + 2688);
      v224 = *(v0 + 2672);
      v214 = *(v0 + 2632);
      v42 = *(v0 + 2528);
      v43 = *(v0 + 2488);
      v44 = *(v0 + 2256);
      v220 = *(v0 + 2240);
      v45 = *(v0 + 2232);
      v232 = *(v0 + 2216);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v246[0] = v47;
      *v46 = 136315138;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v214(v42, v43);
      SFAirDropReceive.AskRequest.type.getter();
      v224(v44, v220);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v237(v45, v232);
      v51 = sub_10000C4E4(v48, v50, v246);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "Exchange Contact SHARE BACK SKIP. Already responded with contact {type: %s}", v46, 0xCu);
      sub_10000C60C(v47);
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Exchange Contact END", v54, 2u);
    }

    v55 = *(v0 + 2848);
    v56 = *(v0 + 2552);
    v233 = *(v0 + 2544);
    v238 = *(v0 + 2568);
    v243 = *(v0 + 2456);
    v221 = *(v0 + 2424);
    v225 = *(v0 + 2752);
    v217 = *(v0 + 2264);
    v57 = *(v0 + 2208);
    v58 = v52;
    v59 = *(v0 + 2144);
    v60 = *(v0 + 2136);
    v228 = *(v0 + 1912);
    v61 = *(v0 + 1904);
    v62 = *(v0 + 1880);

    v55(v61, v62);
    (*(v59 + 8))(v57, v60);
    v225(v221, v217);
    (*(v56 + 8))(v238, v233);
    sub_100005508(v228, &qword_100976908, &unk_100801D60);
    sub_100530400(v243, _s15ExchangeRequestVMa);
    v239 = *(v0 + 2920);
    v244 = *(v0 + 2928);

    v63 = *(v0 + 8);

    return v63(v239, v244);
  }
}

uint64_t sub_100524948()
{
  v1 = v0[358];
  v2 = v0[356];
  v3 = v0[319];
  v13 = v0[344];
  v14 = v0[318];
  v15 = v0[321];
  v16 = v0[307];
  v10 = v0[283];
  v4 = v0[276];
  v5 = v0[267];
  v11 = v0[303];
  v12 = v0[239];
  v6 = v0[238];
  v7 = v0[235];
  v1(v0[274], v5);
  v2(v6, v7);
  v1(v4, v5);
  v13(v11, v10);
  (*(v3 + 8))(v15, v14);
  sub_100005508(v12, &qword_100976908, &unk_100801D60);
  sub_100530400(v16, _s15ExchangeRequestVMa);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100524E84()
{
  v2 = *v1;
  v3 = *(*v1 + 1840);
  *(v2 + 2912) = v0;

  sub_100005508(v3, &qword_100982518, &unk_100808DA0);
  sub_100005508(v2 + 632, &qword_10097B208, &qword_1007FE5A8);
  if (v0)
  {
    v4 = *(v2 + 2576);

    v5 = sub_100529270;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 2576);
    v5 = sub_100525000;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100525000()
{
  v181 = v0;
  v1 = *(v0 + 1872);
  sub_100005508(v0 + 632, &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v1, type metadata accessor for SDAirDropServerConnection);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 2864);
  v6 = *(v0 + 2192);
  v7 = *(v0 + 2136);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Exchange Contact CONTINUE. Imported contact", v8, 2u);
  }

  v5(v6, v7);
  *(v0 + 2920) = *(v0 + 2880);
  v9 = *(v0 + 2760);
  v10 = *(v0 + 2264);
  v11 = *(v0 + 2024);
  sub_10000FF90(*(v0 + 1816), v11, &qword_10097B1C0, &qword_1007FE4C8);
  LODWORD(v10) = v9(v11, 1, v10);
  sub_100005508(v11, &qword_10097B1C0, &qword_1007FE4C8);
  if (v10 == 1)
  {
    v12 = *(v0 + 2704);
    v13 = *(v0 + 2136);
    v14 = *(v0 + 2088);
    SFAirDrop.ContactRequest.contact.getter();
    if (v12(v14, 1, v13) == 1)
    {
      v15 = (v0 + 2088);
LABEL_15:
      v44 = *v15;
      v45 = *(v0 + 2736);
      v46 = *(v0 + 2424);
      v47 = *(v0 + 2328);
      v48 = *(v0 + 2264);
      sub_100005508(v44, &qword_10097B198, &qword_1007FE450);
      v45(v47, v46, v48);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 2328);
      if (v51)
      {
        v53 = *(v0 + 2704);
        v54 = *(v0 + 2136);
        v55 = *(v0 + 2072);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v180[0] = v57;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        SFAirDrop.ContactRequest.contact.getter();
        if (v53(v55, 1, v54) == 1)
        {
          sub_100005508(*(v0 + 2072), &qword_10097B198, &qword_1007FE450);
          v58 = 0x8000000100794A70;
          v59 = 0xD000000000000020;
        }

        else
        {
          v72 = *(v0 + 2144);
          v73 = *(v0 + 2136);
          v74 = *(v0 + 2072);
          v59 = SFAirDrop.ContactInfo.description.getter();
          v58 = v75;
          (*(v72 + 8))(v74, v73);
        }

        (*(v0 + 2752))(*(v0 + 2328), *(v0 + 2264));
        v76 = sub_10000C4E4(v59, v58, v180);

        *(v56 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v49, v50, "Exchange Contact SHARE BACK PERMISSION SKIP. No senderContact or no receiverContact {senderContact: %{private,mask.hash}s}", v56, 0x16u);
        sub_10000C60C(v57);
      }

      else
      {
        v60 = *(v0 + 2752);
        v61 = *(v0 + 2264);

        v60(v52, v61);
      }

      v77 = (v0 + 280);
      v179 = enum case for SFAirDrop.ContactRequest.notNeeded(_:);
      (*(*(v0 + 2272) + 104))(*(v0 + 2352));
      v78 = *(v0 + 2736);
      v169 = *(v0 + 2704);
      v157 = *(v0 + 2632);
      v144 = *(v0 + 2600);
      v145 = *(v0 + 2528);
      v146 = *(v0 + 2488);
      v147 = *(v0 + 2616);
      v79 = *(v0 + 2480);
      v80 = *(v0 + 2464);
      v81 = *(v0 + 2424);
      v82 = *(v0 + 2352);
      v83 = *(v0 + 2264);
      v165 = *(v0 + 2136);
      v150 = *(v0 + 2064);
      v84 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
      v78(v79, v81, v83);
      v78(v79 + v84, v82, v83);
      v144(v79, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v80);
      sub_100687AF8(v79, v145);
      v147(v79, v80);
      v157(v145, v146);
      SFAirDrop.ContactRequest.contact.getter();
      if (v169(v150, 1, v165) == 1)
      {
        sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
        v85 = 0;
        v86 = 0;
      }

      else
      {
        v87 = *(v0 + 2144);
        v88 = *(v0 + 2136);
        v89 = *(v0 + 2064);
        v90 = SFAirDrop.ContactInfo.accountHandle.getter();
        v86 = v91;
        (*(v87 + 8))(v89, v88);
        v85 = v90;
      }

      v92 = *(v0 + 2752);
      v93 = *(v0 + 2392);
      v94 = *(v0 + 2272);
      v95 = *(v0 + 2264);
      sub_10046A56C(v85, v86, (v0 + 104));
      v96 = *(v0 + 152);
      *(v0 + 312) = *(v0 + 136);
      *(v0 + 328) = v96;
      *(v0 + 344) = *(v0 + 168);
      *(v0 + 360) = *(v0 + 184);
      v97 = *(v0 + 120);
      *v77 = *(v0 + 104);
      *(v0 + 296) = v97;

      (*(v94 + 104))(v93, v179, v95);
      v98 = static SFAirDrop.ContactRequest.== infix(_:_:)();
      *(v0 + 2968) = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92(v93, v95);
      if (v98)
      {
        *(v0 + 448) = 0;
        *(v0 + 416) = 0u;
        *(v0 + 432) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 0u;
        *(v0 + 368) = 0u;
      }

      else
      {
        sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
        v99 = *(v0 + 328);
        *(v0 + 400) = *(v0 + 312);
        *(v0 + 416) = v99;
        *(v0 + 432) = *(v0 + 344);
        *(v0 + 448) = *(v0 + 360);
        v100 = *(v0 + 296);
        *(v0 + 368) = *v77;
        *(v0 + 384) = v100;
      }

      v170 = *(v0 + 2704);
      v101 = *(v0 + 2632);
      v102 = *(v0 + 2512);
      v103 = *(v0 + 2488);
      v104 = *(v0 + 2136);
      v105 = *(v0 + 2056);
      (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.id.getter();
      v101(v102, v103);
      sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
      SFAirDrop.ContactRequest.contact.getter();
      if (v170(v105, 1, v104) == 1)
      {
        v106 = *(v0 + 2056);
        v107 = *(v0 + 1984);
        v108 = *(v0 + 1960);
        v109 = *(v0 + 1944);
        v110 = *(v0 + 1928);
        v111 = *(v0 + 1920);
        (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
        sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
        sub_100005508(v106, &qword_10097B198, &qword_1007FE450);
        v112 = v108[7];
        v113 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v113 - 8) + 56))(v107 + v112, 1, 1, v113);
        (*(v110 + 32))(v107, v109, v111);
        v114 = (v107 + v108[5]);
        *v114 = 0;
        v114[1] = 0;
        v115 = (v107 + v108[6]);
        *v115 = 0;
        v115[1] = 0;
        *(v107 + v108[8]) = xmmword_1007F8A80;
        v116 = v107 + v108[9];
        *(v116 + 80) = 0;
        *(v116 + 48) = 0u;
        *(v116 + 64) = 0u;
        *(v116 + 16) = 0u;
        *(v116 + 32) = 0u;
        *v116 = 0u;
      }

      else
      {
        v176 = *(v0 + 2752);
        v166 = *(v0 + 2264);
        v171 = *(v0 + 2320);
        v117 = *(v0 + 2160);
        v118 = *(v0 + 2144);
        v119 = *(v0 + 2136);
        v120 = *(v0 + 1984);
        v121 = *(v0 + 1960);
        v122 = *(v0 + 1944);
        v148 = v122;
        v123 = *(v0 + 1928);
        v124 = *(v0 + 1920);
        (*(v0 + 2720))(v117, *(v0 + 2056), v119);
        (*(v123 + 16))(v120, v122, v124);
        v125 = SFAirDrop.ContactInfo.givenName.getter();
        v158 = v126;
        v162 = v125;
        v127 = SFAirDrop.ContactInfo.fullName.getter();
        v151 = v128;
        v154 = v127;
        v129 = v121[7];
        SFAirDrop.ContactInfo.handle.getter();
        v130 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
        (*(*(v130 - 8) + 56))(v120 + v129, 0, 1, v130);
        v131 = SFAirDrop.ContactInfo.vcard.getter();
        v133 = v132;
        (*(v118 + 8))(v117, v119);
        (*(v123 + 8))(v148, v124);
        v176(v171, v166);
        v134 = (v120 + v121[5]);
        *v134 = v162;
        v134[1] = v158;
        v135 = (v120 + v121[6]);
        *v135 = v154;
        v135[1] = v151;
        v136 = (v120 + v121[8]);
        *v136 = v131;
        v136[1] = v133;
        v137 = v120 + v121[9];
        v138 = *(v0 + 384);
        *v137 = *(v0 + 368);
        *(v137 + 16) = v138;
        v139 = *(v0 + 400);
        v140 = *(v0 + 416);
        v141 = *(v0 + 432);
        *(v137 + 80) = *(v0 + 448);
        *(v137 + 48) = v140;
        *(v137 + 64) = v141;
        *(v137 + 32) = v139;
      }

      sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
      v142 = swift_task_alloc();
      *(v0 + 2976) = v142;
      *v142 = v0;
      v142[1] = sub_1005274CC;
      v143 = *(v0 + 1992);

      return sub_1006424A0(v143);
    }

    v41 = *(v0 + 2704);
    v42 = *(v0 + 2136);
    v43 = *(v0 + 2080);
    (*(v0 + 2720))(*(v0 + 2176), *(v0 + 2088), v42);
    sub_1004E5AD8(v43);
    if (v41(v43, 1, v42) == 1)
    {
      v15 = (v0 + 2080);
      (*(*(v0 + 2144) + 8))(*(v0 + 2176), *(v0 + 2136));
      goto LABEL_15;
    }

    v62 = *(v0 + 2800);
    v175 = *(v0 + 2632);
    v164 = *(v0 + 2616);
    v153 = *(v0 + 2600);
    v63 = *(v0 + 2528);
    v161 = *(v0 + 2488);
    v64 = *(v0 + 2480);
    v65 = *(v0 + 2464);
    v66 = *(v0 + 2176);
    v67 = *(v0 + 2168);
    v68 = *(v0 + 2136);
    v69 = *(v0 + 1832);
    (*(v0 + 2720))(v67, *(v0 + 2080), v68);
    sub_10052BDD8(v66, v67, v69);
    v70 = *(sub_10028088C(&qword_10097C658, &unk_1008042B0) + 48);
    v62(v64, v67, v68);
    v71 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v71 - 8) + 16))(v64 + v70, v69, v71);
    v153(v64, enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:), v65);
    sub_100687AF8(v64, v63);
    v164(v64, v65);
    v175(v63, v161);

    return _swift_task_switch(sub_100526380, 0, 0);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v172 = *(v0 + 2688);
      v159 = *(v0 + 2672);
      v149 = *(v0 + 2632);
      v18 = *(v0 + 2528);
      v19 = *(v0 + 2488);
      v20 = *(v0 + 2256);
      v155 = *(v0 + 2240);
      v21 = *(v0 + 2232);
      v167 = *(v0 + 2216);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v180[0] = v23;
      *v22 = 136315138;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v149(v18, v19);
      SFAirDropReceive.AskRequest.type.getter();
      v159(v20, v155);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v172(v21, v167);
      v27 = sub_10000C4E4(v24, v26, v180);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "Exchange Contact SHARE BACK SKIP. Already responded with contact {type: %s}", v22, 0xCu);
      sub_10000C60C(v23);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Exchange Contact END", v30, 2u);
    }

    v31 = *(v0 + 2848);
    v32 = *(v0 + 2552);
    v168 = *(v0 + 2544);
    v173 = *(v0 + 2568);
    v177 = *(v0 + 2456);
    v156 = *(v0 + 2424);
    v160 = *(v0 + 2752);
    v152 = *(v0 + 2264);
    v33 = *(v0 + 2208);
    v34 = v28;
    v35 = *(v0 + 2144);
    v36 = *(v0 + 2136);
    v163 = *(v0 + 1912);
    v37 = *(v0 + 1904);
    v38 = *(v0 + 1880);

    v31(v37, v38);
    (*(v35 + 8))(v33, v36);
    v160(v156, v152);
    (*(v32 + 8))(v173, v168);
    sub_100005508(v163, &qword_100976908, &unk_100801D60);
    sub_100530400(v177, _s15ExchangeRequestVMa);
    v174 = *(v0 + 2920);
    v178 = *(v0 + 2928);

    v39 = *(v0 + 8);

    return v39(v174, v178);
  }
}

uint64_t sub_100526380()
{
  v1 = v0[229];
  v2 = swift_task_alloc();
  v0[367] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[368] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[369] = v4;
  *v4 = v0;
  v4[1] = sub_100526488;
  v5 = v0[293];
  v6 = v0[283];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1007FE590, v2, sub_1003C3800, v3, 0, 0, v6);
}

uint64_t sub_100526488()
{
  v2 = *v1;
  *(*v1 + 2960) = v0;

  if (v0)
  {
    v3 = sub_100526ECC;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 2576);

    v3 = sub_1005265BC;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1005265BC()
{
  v115 = v0;
  v1 = *(v0 + 2736);
  v2 = *(v0 + 2352);
  v3 = *(v0 + 2336);
  v4 = *(v0 + 2264);
  (*(*(v0 + 2272) + 32))(v2, *(v0 + 2344), v4);
  v1(v3, v2, v4);
  v5 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v5, v110);
  v113 = *(v0 + 2752);
  v7 = *(v0 + 2336);
  v8 = *(v0 + 2264);
  v9 = *(v0 + 2176);
  v10 = *(v0 + 2168);
  v11 = *(v0 + 2144);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 1832);
  if (v6)
  {
    v104 = *(v0 + 2168);
    v14 = swift_slowAlloc();
    v106 = v13;
    v15 = swift_slowAlloc();
    v114 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
    v99 = v12;
    v101 = v9;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v113(v7, v8);
    v19 = sub_10000C4E4(v16, v18, &v114);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v110, "Exchange Contact CONTINUE. Share back permission {contactToSend: %{private,mask.hash}s}", v14, 0x16u);
    sub_10000C60C(v15);

    v20 = *(v11 + 8);
    v20(v104, v99);
    v20(v101, v99);
    v21 = v106;
  }

  else
  {

    v113(v7, v8);
    v22 = *(v11 + 8);
    v22(v10, v12);
    v22(v9, v12);
    v21 = v13;
  }

  sub_100005508(v21, &qword_10097B200, &qword_1007FE578);
  v23 = (v0 + 280);
  v24 = *(v0 + 2736);
  v111 = *(v0 + 2704);
  v102 = *(v0 + 2632);
  v91 = *(v0 + 2600);
  v92 = *(v0 + 2528);
  v93 = *(v0 + 2488);
  v95 = *(v0 + 2616);
  v25 = *(v0 + 2480);
  v26 = *(v0 + 2464);
  v27 = *(v0 + 2424);
  v28 = *(v0 + 2352);
  v29 = *(v0 + 2264);
  v107 = *(v0 + 2136);
  v97 = *(v0 + 2064);
  v30 = *(sub_10028088C(&qword_10097C650, &unk_100808DE0) + 48);
  v24(v25, v27, v29);
  v24(v25 + v30, v28, v29);
  v91(v25, enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:), v26);
  sub_100687AF8(v25, v92);
  v95(v25, v26);
  v102(v92, v93);
  SFAirDrop.ContactRequest.contact.getter();
  if (v111(v97, 1, v107) == 1)
  {
    sub_100005508(*(v0 + 2064), &qword_10097B198, &qword_1007FE450);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v33 = *(v0 + 2144);
    v34 = *(v0 + 2136);
    v35 = *(v0 + 2064);
    v36 = SFAirDrop.ContactInfo.accountHandle.getter();
    v32 = v37;
    (*(v33 + 8))(v35, v34);
    v31 = v36;
  }

  v38 = *(v0 + 2752);
  v39 = *(v0 + 2392);
  v40 = *(v0 + 2272);
  v41 = *(v0 + 2264);
  sub_10046A56C(v31, v32, (v0 + 104));
  v42 = *(v0 + 152);
  *(v0 + 312) = *(v0 + 136);
  *(v0 + 328) = v42;
  *(v0 + 344) = *(v0 + 168);
  *(v0 + 360) = *(v0 + 184);
  v43 = *(v0 + 120);
  *v23 = *(v0 + 104);
  *(v0 + 296) = v43;

  (*(v40 + 104))(v39, enum case for SFAirDrop.ContactRequest.notNeeded(_:), v41);
  v44 = static SFAirDrop.ContactRequest.== infix(_:_:)();
  *(v0 + 2968) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v39, v41);
  if (v44)
  {
    *(v0 + 448) = 0;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 368) = 0u;
  }

  else
  {
    sub_10000FF90(v0 + 104, v0 + 456, &qword_10097B208, &qword_1007FE5A8);
    v45 = *(v0 + 328);
    *(v0 + 400) = *(v0 + 312);
    *(v0 + 416) = v45;
    *(v0 + 432) = *(v0 + 344);
    *(v0 + 448) = *(v0 + 360);
    v46 = *(v0 + 296);
    *(v0 + 368) = *v23;
    *(v0 + 384) = v46;
  }

  v108 = *(v0 + 2704);
  v47 = *(v0 + 2632);
  v48 = *(v0 + 2512);
  v49 = *(v0 + 2488);
  v50 = *(v0 + 2136);
  v51 = *(v0 + 2056);
  (*(v0 + 2736))(*(v0 + 2320), *(v0 + 2352), *(v0 + 2264));
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.id.getter();
  v47(v48, v49);
  sub_10000FF90(v0 + 368, v0 + 544, &qword_10097B208, &qword_1007FE5A8);
  SFAirDrop.ContactRequest.contact.getter();
  if (v108(v51, 1, v50) == 1)
  {
    v52 = *(v0 + 2056);
    v53 = *(v0 + 1984);
    v54 = *(v0 + 1960);
    v55 = *(v0 + 1944);
    v56 = *(v0 + 1928);
    v57 = *(v0 + 1920);
    (*(v0 + 2752))(*(v0 + 2320), *(v0 + 2264));
    sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v52, &qword_10097B198, &qword_1007FE450);
    v58 = v54[7];
    v59 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v59 - 8) + 56))(v53 + v58, 1, 1, v59);
    (*(v56 + 32))(v53, v55, v57);
    v60 = (v53 + v54[5]);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v53 + v54[6]);
    *v61 = 0;
    v61[1] = 0;
    *(v53 + v54[8]) = xmmword_1007F8A80;
    v62 = v53 + v54[9];
    *(v62 + 80) = 0;
    *(v62 + 48) = 0u;
    *(v62 + 64) = 0u;
    *(v62 + 16) = 0u;
    *(v62 + 32) = 0u;
    *v62 = 0u;
  }

  else
  {
    v112 = *(v0 + 2752);
    v105 = *(v0 + 2264);
    v109 = *(v0 + 2320);
    v63 = *(v0 + 2160);
    v64 = *(v0 + 2144);
    v65 = *(v0 + 2136);
    v66 = *(v0 + 1984);
    v67 = *(v0 + 1960);
    v68 = *(v0 + 1944);
    v94 = v68;
    v69 = *(v0 + 1928);
    v70 = *(v0 + 1920);
    (*(v0 + 2720))(v63, *(v0 + 2056), v65);
    (*(v69 + 16))(v66, v68, v70);
    v71 = SFAirDrop.ContactInfo.givenName.getter();
    v100 = v72;
    v103 = v71;
    v73 = SFAirDrop.ContactInfo.fullName.getter();
    v96 = v74;
    v98 = v73;
    v75 = v67[7];
    SFAirDrop.ContactInfo.handle.getter();
    v76 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
    (*(*(v76 - 8) + 56))(v66 + v75, 0, 1, v76);
    v77 = SFAirDrop.ContactInfo.vcard.getter();
    v79 = v78;
    (*(v64 + 8))(v63, v65);
    (*(v69 + 8))(v94, v70);
    v112(v109, v105);
    v80 = (v66 + v67[5]);
    *v80 = v103;
    v80[1] = v100;
    v81 = (v66 + v67[6]);
    *v81 = v98;
    v81[1] = v96;
    v82 = (v66 + v67[8]);
    *v82 = v77;
    v82[1] = v79;
    v83 = v66 + v67[9];
    v84 = *(v0 + 384);
    *v83 = *(v0 + 368);
    *(v83 + 16) = v84;
    v85 = *(v0 + 400);
    v86 = *(v0 + 416);
    v87 = *(v0 + 432);
    *(v83 + 80) = *(v0 + 448);
    *(v83 + 48) = v86;
    *(v83 + 64) = v87;
    *(v83 + 32) = v85;
  }

  sub_1005304C4(*(v0 + 1984), *(v0 + 1992), _s16ExchangeResponseVMa);
  v88 = swift_task_alloc();
  *(v0 + 2976) = v88;
  *v88 = v0;
  v88[1] = sub_1005274CC;
  v89 = *(v0 + 1992);

  return sub_1006424A0(v89);
}

uint64_t sub_100526ECC()
{
  v1 = *(v0 + 2576);

  return _swift_task_switch(sub_100526F58, v1, 0);
}

uint64_t sub_100526F58()
{
  v10 = v0[356];
  v1 = v0[319];
  v14 = v0[344];
  v15 = v0[318];
  v18 = v0[307];
  v11 = v0[283];
  v12 = v0[303];
  v2 = v0[276];
  v3 = v0[272];
  v4 = v0[267];
  v16 = v0[321];
  v17 = v0[239];
  v5 = v0[238];
  v6 = v0[235];
  v13 = v0[229];
  v7 = *(v0[268] + 8);
  v7(v0[271], v4);
  v7(v3, v4);
  v10(v5, v6);
  v7(v2, v4);
  v14(v12, v11);
  (*(v1 + 8))(v16, v15);
  sub_100005508(v13, &qword_10097B200, &qword_1007FE578);
  sub_100005508(v17, &qword_100976908, &unk_100801D60);
  sub_100530400(v18, _s15ExchangeRequestVMa);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005274CC()
{
  v2 = *v1;
  *(*v1 + 2984) = v0;

  if (v0)
  {
    v3 = *(v2 + 2576);

    v4 = sub_1005297F4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 2576);
    v4 = sub_1005275F4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005275F4()
{
  v41 = v0;
  (*(v0 + 2736))(*(v0 + 2312), *(v0 + 2352), *(v0 + 2264));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 2752);
  v5 = *(v0 + 2352);
  v6 = *(v0 + 2312);
  v7 = *(v0 + 2264);
  v8 = *(v0 + 1992);
  if (v3)
  {
    v9 = swift_slowAlloc();
    v37 = v5;
    v40 = swift_slowAlloc();
    v10 = v40;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
    v34 = v8;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v2;
    v13 = v12;
    v4(v6, v7);
    v14 = sub_10000C4E4(v11, v13, &v40);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v32, "Exchange Contact CONTINUE. Shared back {contactToSend: %{private,mask.hash}s}", v9, 0x16u);
    sub_10000C60C(v10);

    sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v0 + 104, &qword_10097B208, &qword_1007FE5A8);
    sub_100530400(v34, _s16ExchangeResponseVMa);
    v4(v37, v7);
  }

  else
  {

    sub_100005508(v0 + 368, &qword_10097B208, &qword_1007FE5A8);
    sub_100005508(v0 + 104, &qword_10097B208, &qword_1007FE5A8);
    v4(v6, v7);
    sub_100530400(v8, _s16ExchangeResponseVMa);
    v4(v5, v7);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Exchange Contact END", v17, 2u);
  }

  v18 = *(v0 + 2848);
  v19 = *(v0 + 2552);
  v33 = *(v0 + 2544);
  v35 = *(v0 + 2568);
  v38 = *(v0 + 2456);
  v29 = *(v0 + 2424);
  v30 = *(v0 + 2752);
  v28 = *(v0 + 2264);
  v20 = *(v0 + 2208);
  v21 = v15;
  v22 = *(v0 + 2144);
  v23 = *(v0 + 2136);
  v31 = *(v0 + 1912);
  v24 = *(v0 + 1904);
  v25 = *(v0 + 1880);

  v18(v24, v25);
  (*(v22 + 8))(v20, v23);
  v30(v29, v28);
  (*(v19 + 8))(v35, v33);
  sub_100005508(v31, &qword_100976908, &unk_100801D60);
  sub_100530400(v38, _s15ExchangeRequestVMa);
  v36 = *(v0 + 2920);
  v39 = *(v0 + 2928);

  v26 = *(v0 + 8);

  return v26(v36, v39);
}

uint64_t sub_100527DD8()
{
  v2 = *v1;
  *(*v1 + 3000) = v0;

  v3 = *(v2 + 2576);
  if (v0)
  {
    v4 = sub_100528850;
  }

  else
  {
    v4 = sub_100527F04;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100527F04()
{
  v1 = v0[321];
  v2 = v0[319];
  v3 = v0[318];
  v4 = v0[307];
  v5 = v0[303];
  v6 = v0[288];
  v7 = v0[284];
  v8 = v0[283];
  sub_100530400(v0[247], _s16ExchangeResponseVMa);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v2 + 8))(v1, v3);
  sub_100530400(v4, _s15ExchangeRequestVMa);

  v10 = v0[1];

  return v10(0, 0);
}

uint64_t sub_1005283E8()
{
  (*(v0[319] + 8))(v0[321], v0[318]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100528850()
{
  v1 = v0[321];
  v2 = v0[319];
  v3 = v0[318];
  v4 = v0[307];
  v5 = v0[303];
  v6 = v0[288];
  v7 = v0[284];
  v8 = v0[283];
  sub_100530400(v0[247], _s16ExchangeResponseVMa);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v2 + 8))(v1, v3);
  sub_100530400(v4, _s15ExchangeRequestVMa);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100528D38()
{
  v1 = v0[344];
  v2 = v0[319];
  v12 = v0[318];
  v13 = v0[321];
  v14 = v0[307];
  v3 = v0[301];
  v4 = v0[283];
  v10 = v0[276];
  v11 = v0[303];
  v5 = v0[268];
  v9 = v0[267];
  v6 = v0[251];
  sub_100005508((v0 + 178), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 24), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v6, _s16ExchangeResponseVMa);
  v1(v3, v4);
  (*(v5 + 8))(v10, v9);
  v1(v11, v4);
  (*(v2 + 8))(v13, v12);
  sub_100530400(v14, _s15ExchangeRequestVMa);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100529270()
{
  v1 = v0[358];
  v11 = v0[356];
  v2 = v0[319];
  v15 = v0[344];
  v16 = v0[318];
  v17 = v0[321];
  v18 = v0[307];
  v12 = v0[283];
  v13 = v0[303];
  v3 = v0[276];
  v4 = v0[274];
  v5 = v0[267];
  v14 = v0[239];
  v6 = v0[238];
  v7 = v0[235];
  v8 = v0[234];
  sub_100005508((v0 + 79), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v8, type metadata accessor for SDAirDropServerConnection);
  v1(v4, v5);
  v11(v6, v7);
  v1(v3, v5);
  v15(v13, v12);
  (*(v2 + 8))(v17, v16);
  sub_100005508(v14, &qword_100976908, &unk_100801D60);
  sub_100530400(v18, _s15ExchangeRequestVMa);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005297F4()
{
  v13 = v0[356];
  v1 = v0[344];
  v2 = v0[319];
  v16 = v0[318];
  v17 = v0[321];
  v18 = v0[307];
  v14 = v0[303];
  v3 = v0[283];
  v12 = v0[276];
  v4 = v0[268];
  v10 = v0[294];
  v11 = v0[267];
  v5 = v0[249];
  v15 = v0[239];
  v6 = v0[238];
  v7 = v0[235];
  sub_100005508((v0 + 46), &qword_10097B208, &qword_1007FE5A8);
  sub_100005508((v0 + 13), &qword_10097B208, &qword_1007FE5A8);
  sub_100530400(v5, _s16ExchangeResponseVMa);
  v1(v10, v3);
  v13(v6, v7);
  (*(v4 + 8))(v12, v11);
  v1(v14, v3);
  (*(v2 + 8))(v17, v16);
  sub_100005508(v15, &qword_100976908, &unk_100801D60);
  sub_100530400(v18, _s15ExchangeRequestVMa);

  v8 = v0[1];

  return v8();
}

void sub_100529D78(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFPlatform();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  SFAirDropReceive.AskRequest.type.getter();
  if ((*(v10 + 88))(v15, v9) == enum case for SFAirDrop.TransferType.peerPayment(_:))
  {
    static SFPlatform.macOS.getter();
    v16 = static SFPlatform.isPlatform(_:)();
    (*(v6 + 8))(v8, v5);
    if (v16)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Verifying peerPayment support", v19, 2u);
      }

      v20 = [objc_opt_self() verifyReceiverEligibility];
      if (v20)
      {
        v21 = v20;
        v22 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        swift_allocError();
        v24 = v23;
        v25 = v21;
        CodableError.init(_:)();
        (*(*(v22 - 8) + 104))(v24, enum case for SFAirDropReceive.Failure.unexpected(_:), v22);
        swift_willThrow();
      }

      else
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Device supports peerPayment", v36, 2u);
        }
      }
    }
  }

  else
  {
    (*(v42 + 16))(v4, a1, v43);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = v28;
      v41 = swift_slowAlloc();
      v44 = v41;
      *v28 = 136315138;
      v40 = v27;
      SFAirDropReceive.AskRequest.type.getter();
      v38 = SFAirDrop.TransferType.description.getter();
      v30 = v29;
      v31 = *(v10 + 8);
      v31(v13, v9);
      (*(v42 + 8))(v4, v43);
      v32 = sub_10000C4E4(v38, v30, &v44);

      v33 = v39;
      *(v39 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v26, v40, "Transfer type %s is supported", v33, 0xCu);
      sub_10000C60C(v41);
    }

    else
    {

      (*(v42 + 8))(v4, v43);
      v31 = *(v10 + 8);
    }

    v31(v15, v9);
  }
}

uint64_t sub_10052A378(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10052A40C, 0, 0);
}

uint64_t sub_10052A40C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for SFAirDrop.ContactRequest();
  *v4 = v0;
  v4[1] = sub_10052A51C;
  v6 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_100808FC0, v2, sub_1003C43C0, v3, 0, 0, v5);
}

uint64_t sub_10052A51C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10052A664, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10052A664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052A6D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_10028088C(&qword_100982578, &unk_100808FB0);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = sub_10028088C(&qword_10097A698, &unk_1007FD7F0);
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[9] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052A840, v5, 0);
}

uint64_t sub_10052A840()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, *(v0[2] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_handlerContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10052A950;
  v5 = v0[3];

  return SFProgressTask.finalValue.getter(v0 + 12, v5);
}

uint64_t sub_10052A950()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10052ABB4;
  }

  else
  {
    v7 = sub_10052AAD8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10052AAD8()
{
  type metadata accessor for CancellationError();
  sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052ABB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052AC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v129 = a2;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v113 = &v96 - v3;
  v4 = sub_10028088C(&qword_10097D430, &unk_100808E50);
  __chkstk_darwin(v4 - 8);
  v111 = &v96 - v5;
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6 - 8);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v104 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10028088C(&qword_100974F18, &qword_1007F8330);
  v112 = *(v128 - 8);
  __chkstk_darwin(v128);
  v135 = &v96 - v12;
  v120 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v131 = *(v120 - 8);
  __chkstk_darwin(v120);
  v115 = (&v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = type metadata accessor for SFAirDrop.DeclineAction();
  v109 = *(v127 - 8);
  v14 = __chkstk_darwin(v127);
  v106 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v140 = &v96 - v16;
  v130 = type metadata accessor for SFAirDrop.TransferType();
  v17 = *(v130 - 8);
  __chkstk_darwin(v130);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SFAirDropReceive.AskRequest();
  v122 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SFAirDropReceive.Transfer();
  v118 = v24;
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10028088C(&qword_10097D438, &unk_100801D30);
  v28 = *(v139 - 8);
  v136 = *(v28 + 64);
  v29 = __chkstk_darwin(v139);
  v137 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v138 = &v96 - v31;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  v133 = *(v134 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v32 = *(v25 + 8);
  v134 = v25 + 8;
  v119 = v32;
  v32(v27, v24);
  v99 = v23;
  SFAirDropReceive.AskRequest.type.getter();
  v33 = *(v21 + 8);
  v132 = v21 + 8;
  v117 = v33;
  v33(v23, v20);
  v114 = v19;
  v34 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v35 = *(v17 + 8);
  v121 = v17 + 8;
  v116 = v35;
  v35(v19, v130);
  v36 = 1885693259;
  if ((v34 & 1) == 0)
  {
    v36 = 0x656E696C636544;
  }

  v37 = 0xE700000000000000;
  if (v34)
  {
    v37 = 0xE400000000000000;
  }

  v38 = v115;
  *v115 = v36;
  v38[1] = v37;
  LODWORD(v102) = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v39 = *(v131 + 104);
  v131 += 104;
  v103 = v39;
  v39(v38);
  v40 = v28 + 16;
  v124 = *(v28 + 16);
  v41 = v137;
  v42 = v139;
  v124(v137, v138, v139);
  v43 = *(v28 + 80);
  v44 = (v43 + 16) & ~v43;
  v45 = swift_allocObject();
  v107 = v28;
  v47 = *(v28 + 32);
  v46 = v28 + 32;
  v125 = v47;
  v48 = v41;
  v49 = v99;
  v47(v45 + v44, v48, v42);
  v50 = v38;
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v100 = v27;
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v119(v27, v118);
  v51 = v114;
  SFAirDropReceive.AskRequest.type.getter();
  v52 = v122;
  v117(v49, v122);
  LOBYTE(v42) = SFAirDrop.TransferType.isOnlyExchange.getter();
  v116(v51, v130);
  v53 = 0x6574656C6544;
  if ((v42 & 1) == 0)
  {
    v53 = 0x747065636341;
  }

  *v50 = v53;
  v50[1] = 0xE600000000000000;
  v103(v50, v102, v120);
  (*(v104 + 104))(v123, enum case for SFAirDropReceive.ItemDestination.default(_:), v126);
  v54 = v137;
  v55 = v139;
  v104 = v40;
  v124(v137, v138, v139);
  v131 = v43;
  v56 = swift_allocObject();
  v120 = v46;
  v125(v56 + v44, v54, v55);
  v57 = v52;
  v58 = v100;
  v59 = sub_100530ED4(&qword_10097D448, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v60 = sub_100530ED4(&qword_10097D450, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v61 = v114;
  v101 = sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v102 = v60;
  v103 = v59;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v62 = v118;
  v63 = v119;
  (v119)(v58);
  SFAirDropReceive.AskRequest.type.getter();
  v64 = v57;
  v65 = v117;
  v117(v49, v64);
  v66 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v67 = v130;
  v68 = v116;
  (v116)(v61);
  if (v66)
  {
    v123 = 0x800000010078E4C0;
    v115 = 0xD000000000000012;
  }

  else
  {
    v115 = SFAirDrop.ContactInfo.fullName.getter();
    v123 = v69;
  }

  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v63(v58, v62);
  SFAirDropReceive.AskRequest.type.getter();
  v65(v49, v122);
  v70 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v68(v61, v67);
  if (v70)
  {
    v141 = SFAirDrop.ContactInfo.fullName.getter();
    v142 = v71;
    v72._countAndFlagsBits = 10;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    v73 = v96;
    SFAirDrop.ContactInfo.handle.getter();
    sub_100530ED4(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
    v74 = v98;
    v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v75);

    (*(v97 + 8))(v73, v74);
    v133 = v142;
  }

  else
  {
    v133 = 0x800000010078E4E0;
  }

  v76 = v128;
  v134 = ~v131;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_100974EA8, &qword_1007F82E8);
  v77 = sub_10028088C(&qword_100974EB0, &qword_1007FE410);
  v78 = *(v77 - 8);
  v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1007F5670;
  v81 = v80 + v79;
  sub_10028088C(&qword_10097B140, &qword_1007FE418);
  v82 = v112;
  (*(v112 + 16))(v81, v135, v76);
  UUID.init()();
  (*(v78 + 104))(v81, enum case for SFAirDrop.AcceptAction.single<A>(_:), v77);
  v83 = v109;
  (*(v109 + 16))(v106, v140, v127);
  v84 = sub_10028088C(&qword_10097D440, &qword_100808E60);
  (*(*(v84 - 8) + 56))(v111, 1, 1, v84);
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v85 = type metadata accessor for TaskPriority();
  v86 = v113;
  (*(*(v85 - 8) + 56))(v113, 1, 1, v85);
  v87 = v137;
  v88 = v138;
  v89 = v139;
  v124(v137, v138, v139);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v90 = static AirDropActor.shared;
  v91 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v92 = (v131 + 32) & v134;
  v93 = swift_allocObject();
  *(v93 + 16) = v90;
  *(v93 + 24) = v91;
  v125(v93 + v92, v87, v89);

  v94 = sub_1002B282C(0, 0, v86, &unk_100808E70, v93);
  (*(v82 + 8))(v135, v128);
  (*(v83 + 8))(v140, v127);
  (*(v107 + 8))(v88, v89);
  result = sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v129 + *(result + 52)) = v94;
  return result;
}

uint64_t sub_10052BDD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a2;
  v85 = a1;
  v92 = a3;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v90 = v70 - v4;
  v5 = sub_10028088C(&qword_10097B258, &unk_100808E00);
  __chkstk_darwin(v5 - 8);
  v91 = v70 - v6;
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7 - 8);
  v87 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9 - 8);
  v86 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v82 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SFAirDrop.ContactRequest();
  v88 = *(v71 - 8);
  __chkstk_darwin(v71);
  v93 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10028088C(&qword_10097B260, &unk_1007FE620);
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v100 = v70 - v14;
  v15 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v83 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for SFAirDrop.DeclineAction();
  v99 = *(v80 - 8);
  v19 = __chkstk_darwin(v80);
  v78 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v103 = v70 - v21;
  v22 = sub_10028088C(&qword_10097B268, &unk_100808E10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v26 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = v70 - v27;
  v95 = v70 - v27;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  *v18 = 0x776F4E20746F4ELL;
  v18[1] = 0xE700000000000000;
  v29 = enum case for SFAirDrop.ButtonConfiguration.text(_:);
  v30 = *(v16 + 104);
  v81 = (v16 + 104);
  v84 = v30;
  v30(v18, enum case for SFAirDrop.ButtonConfiguration.text(_:), v15);
  v31 = *(v23 + 16);
  v97 = v23 + 16;
  v98 = v31;
  v31(v26, v28, v22);
  v32 = *(v23 + 80);
  v79 = ~v32;
  v33 = (v32 + 16) & ~v32;
  v34 = swift_allocObject();
  v89 = v23;
  v94 = v22;
  v35 = *(v23 + 32);
  v35(v34 + v33, v26, v22);
  SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();
  v70[1] = v18;
  *v18 = 0x6572616853;
  v18[1] = 0xE500000000000000;
  v84(v18, v29, v83);
  v36 = type metadata accessor for SFAirDrop.ContactInfo();
  v37 = v93;
  (*(*(v36 - 8) + 16))(v93, v96, v36);
  (*(v88 + 104))(v37, enum case for SFAirDrop.ContactRequest.contact(_:), v71);
  v75 = v26;
  v38 = v94;
  v98(v26, v95, v94);
  v88 = v24;
  v84 = v32;
  v39 = swift_allocObject();
  v83 = v23 + 32;
  v81 = v35;
  v35(v39 + v33, v26, v38);
  v74 = sub_100530ED4(&qword_10097B270, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v73 = sub_100530ED4(&qword_10097B278, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v72 = sub_100530ED4(&qword_10097B280, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
  v40 = v100;
  SFAirDrop.AcceptAction.Single.init(id:buttonConfiguration:prominent:hidden:defaultAnswer:operation:)();
  v104 = 0x6977206572616853;
  v105 = 0xEB00000000206874;
  v41._countAndFlagsBits = SFAirDrop.ContactInfo.fullName.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 63;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v93 = v104;
  v85 = v105;
  v104 = SFAirDrop.ContactInfo.fullName.getter();
  v105 = v43;
  v44._countAndFlagsBits = 10272;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45 = v76;
  SFAirDrop.ContactInfo.handle.getter();
  sub_100530ED4(&qword_10097B230, &type metadata accessor for SFAirDrop.ContactInfo.Handle, &protocol conformance descriptor for SFAirDrop.ContactInfo.Handle);
  v46 = v77;
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  (*(v82 + 8))(v45, v46);
  v48._countAndFlagsBits = 41;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v96 = v104;
  v82 = v105;
  UUID.init()();
  static Date.now.getter();
  sub_10028088C(&qword_10097B288, &unk_1007FE630);
  v49 = sub_10028088C(&qword_10097B290, &unk_100808E20);
  v50 = *(v49 - 8);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007F5670;
  v53 = v52 + v51;
  sub_10028088C(&qword_10097B298, &unk_1007FE640);
  (*(v101 + 16))(v53, v40, v102);
  v54 = v92;
  UUID.init()();
  v55 = v53;
  v56 = v90;
  v57 = v49;
  v58 = v80;
  (*(v50 + 104))(v55, enum case for SFAirDrop.AcceptAction.single<A>(_:), v57);
  (*(v99 + 16))(v78, v103, v58);
  v59 = sub_10028088C(&qword_10097B2A0, &qword_100808E30);
  (*(*(v59 - 8) + 56))(v91, 1, 1, v59);
  v60 = v95;
  v61 = v75;
  SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)();
  v62 = type metadata accessor for TaskPriority();
  (*(*(v62 - 8) + 56))(v56, 1, 1, v62);
  v63 = v94;
  (v98)(v61, v60);
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v64 = static AirDropActor.shared;
  v65 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v66 = (v84 + 32) & v79;
  v67 = swift_allocObject();
  *(v67 + 16) = v64;
  *(v67 + 24) = v65;
  v81(v67 + v66, v61, v63);

  v68 = sub_1002B2B00(0, 0, v56, &unk_100808E40, v67);
  (*(v101 + 8))(v100, v102);
  (*(v99 + 8))(v103, v58);
  (*(v89 + 8))(v60, v63);
  result = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  *(v54 + *(result + 52)) = v68;
  return result;
}

uint64_t sub_10052CB30(uint64_t a1, uint64_t (*a2)(void), unsigned int *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = a2(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v9 + 104))(&v13 - v10, *a3, v8);
  sub_10028088C(a4, a5);
  SFProgressContinuation.finish(with:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10052CC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10028088C(&qword_10097B2A8, &unk_1007FE660);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052CD4C, v6, 0);
}

uint64_t sub_10052CD4C()
{
  sub_10028088C(&qword_10097B268, &unk_100808E10);
  SFProgressContinuation.task.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003C1614;
  v2 = v0[4];
  v3 = v0[2];

  return SFProgressTask.finalValue.getter(v3, v2);
}

uint64_t sub_10052CE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982548, &qword_100808EC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10028088C(&qword_100982550, &qword_100808ED0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateContinuation;
  swift_beginAccess();
  sub_1005308A8(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_10052CF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.Transfer();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  sub_10028088C(&qword_100976908, &unk_100801D60);
  v5[36] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v5[37] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052D158, v9, 0);
}

uint64_t sub_10052D158()
{
  v1 = *(v0 + 192);
  v2 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v1 + v2, v0 + 56);
  sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100982558, &qword_100808ED8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    sub_1000121F8((v0 + 96), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v5);
    if ((*(v6 + 8))(v3, v4, v5, v6))
    {
      *(v0 + 304) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Ask open destination START", v9, 2u);
      }

      v10 = *(v0 + 176);

      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      sub_10002CDC0((v0 + 16), v11);
      (*(v12 + 16))(v10, v11, v12);
      v13 = *(v0 + 280);
      v14 = *(v0 + 288);
      v31 = *(v0 + 272);
      v32 = *(v0 + 264);
      v18 = *(v0 + 248);
      v17 = *(v0 + 256);
      v19 = *(v0 + 208);
      v20 = *(v0 + 184);
      v30 = *(v0 + 240);
      v21 = *(v0 + 168);
      v27 = *(v0 + 200);
      v28 = *(v0 + 176);
      v22 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v23 = v22[12];
      v24 = v22[16];
      v29 = v22[20];
      v25 = *(v19 + 16);
      *(v0 + 312) = v25;
      *(v0 + 320) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v25(v17, v20, v27);
      *(v17 + v23) = v21;
      *(v17 + v24) = v28;
      v26 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
      (*(*(v26 - 8) + 16))(v17 + v29, v14, v26);
      (*(v18 + 104))(v17, enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:), v30);

      sub_100687AF8(v17, v13);
      (*(v18 + 8))(v17, v30);
      (*(v31 + 8))(v13, v32);

      return _swift_task_switch(sub_10052D5D4, 0, 0);
    }

    sub_10000C60C((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100005508(v0 + 96, &qword_100982560, &qword_100808EE0);
  }

  (*(*(v0 + 208) + 16))(*(v0 + 160), *(v0 + 184), *(v0 + 200));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10052D5D4()
{
  v1 = v0[36];
  v2 = swift_task_alloc();
  v0[41] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[42] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_10052D6DC;
  v5 = v0[29];
  v6 = v0[25];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100808EE8, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_10052D6DC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_10052DA6C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 296);

    v3 = sub_10052D80C;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10052D80C()
{
  v23 = v0;
  (*(v0 + 312))(*(v0 + 224), *(v0 + 232), *(v0 + 200));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 312);
    v21 = *(v0 + 288);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v3(v5, v4, v7);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    (*(v6 + 8))(v4, v7);
    v13 = sub_10000C4E4(v10, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ask open destination END {destination: %s}", v8, 0xCu);
    sub_10000C60C(v9);

    v14 = v21;
  }

  else
  {
    v15 = *(v0 + 288);
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);

    (*(v18 + 8))(v16, v17);
    v14 = v15;
  }

  sub_100005508(v14, &qword_100976908, &unk_100801D60);
  (*(*(v0 + 208) + 32))(*(v0 + 160), *(v0 + 232), *(v0 + 200));
  sub_10000C60C((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10052DA6C()
{
  v1 = *(v0 + 296);

  return _swift_task_switch(sub_10052DAE0, v1, 0);
}

uint64_t sub_10052DAE0()
{
  sub_100005508(v0[36], &qword_100976908, &unk_100801D60);
  sub_10000C60C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10052DBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v8 = *(sub_10028088C(&qword_100976908, &unk_100801D60) - 8);
  v5[15] = v8;
  v5[16] = *(v8 + 64);
  v5[17] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[18] = swift_task_alloc();
  v5[19] = sub_10028088C(&qword_100982568, &qword_100808EF0);
  v5[20] = swift_task_alloc();
  sub_10028088C(&qword_100982520, &qword_10080E300);
  v5[21] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v5[24] = *(v10 + 64);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v5[28] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052DE6C, v11, 0);
}

uint64_t sub_10052DE6C()
{
  v1 = v0[21];
  v2 = *(v0[9] + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_exchangeContinuation;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100982520, &qword_10080E300);
  v4 = sub_10028088C(&unk_10097A6A0, &qword_10080E1A0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_100005508(v0[21], &qword_100982520, &qword_10080E300);

    return _swift_task_switch(sub_10052E55C, 0, 0);
  }

  else
  {
    v6 = v0[26];
    v7 = v0[27];
    v8 = v0[22];
    v9 = v0[23];
    v10 = v0[21];
    v11 = v0[17];
    v27 = v0[18];
    v35 = v0[24];
    v28 = v0[15];
    v29 = v7;
    v32 = v0[14];
    v33 = v0[25];
    v12 = v0[11];
    v31 = v0[10];
    v37 = v0[9];
    v30 = v0[8];
    v26 = v0[7];
    SFProgressContinuation.task.getter();
    (*(v5 + 8))(v10, v4);
    v34 = *(v9 + 32);
    v25 = v8;
    v34(v7, v6, v8);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v27, 1, 1, v13);
    sub_10000FF90(v26, v11, &qword_100976908, &unk_100801D60);
    v14 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v36 = swift_allocObject();
    v0[29] = v36;
    sub_10002C4E4(v11, v36 + v14, &qword_100976908, &unk_100801D60);
    (*(v9 + 16))(v33, v29, v8);
    (*(v12 + 16))(v32, v30, v31);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = (v35 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (*(v12 + 80) + v16 + 8) & ~*(v12 + 80);
    v18 = swift_allocObject();
    v0[30] = v18;
    v34(v18 + v15, v33, v25);
    *(v18 + v16) = v37;
    v19 = *(v12 + 32);
    v0[31] = v19;
    v0[32] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v18 + v17, v32, v31);

    v20 = swift_task_alloc();
    v0[33] = v20;
    *v20 = v0;
    v20[1] = sub_10052E2A0;
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];

    return concurrentRace<A>(priority:operation:against:)(v21, v23, &unk_100808F08, v36, &unk_100808F18, v18, v22);
  }
}

uint64_t sub_10052E2A0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 272) = v0;

  sub_100005508(v3, &qword_100976160, &qword_1007F8770);

  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_10052EA04;
  }

  else
  {
    v5 = sub_10052E438;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10052E438()
{
  v1 = v0[31];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  (*(v0[23] + 8))(v0[27], v0[22]);
  v7 = *(v3 + 48);
  v1(v6, v2, v4);
  sub_10002C4E4(v2 + v7, v5, &qword_100982508, &unk_100808D50);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10052E55C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[35] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[36] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_10052E664;
  v5 = v0[13];
  v6 = v0[10];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100808EF8, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_10052E664()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_10052E8BC;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 224);

    v3 = sub_10052E794;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10052E794()
{
  v1 = v0[6];
  (*(v0[11] + 32))(v0[5], v0[13], v0[10]);
  v2 = _s15ExchangeRequestVMa(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10052E8BC()
{
  v1 = *(v0 + 224);

  return _swift_task_switch(sub_10052E930, v1, 0);
}

uint64_t sub_10052E930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052EA04()
{
  (*(v0[23] + 8))(v0[27], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10052EAF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_10052EBF0, 0, 0);
}

uint64_t sub_10052EBF0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10052ECF8;
  v5 = v0[6];
  v6 = v0[4];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100808F20, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_10052ECF8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10052EF1C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 56);

    v3 = sub_10052EE28;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10052EE28()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(sub_10028088C(&qword_100982568, &qword_100808EF0) + 48);
  (*(v2 + 32))(v4, v1, v3);
  v6 = _s15ExchangeRequestVMa(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10052EF1C()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10052EF90, v1, 0);
}

uint64_t sub_10052EF90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = _s15ExchangeRequestVMa(0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[10] = v7;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[11] = static AirDropActor.shared;
  v8 = swift_task_alloc();
  v4[12] = v8;
  v9 = sub_10028088C(&qword_100982528, &unk_100808DB0);
  *v8 = v4;
  v8[1] = sub_10052F1B4;

  return SFProgressTask.finalValue.getter(v7, v9);
}

uint64_t sub_10052F1B4()
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10052F568;
  }

  else
  {
    v3 = sub_10052F2DC;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10052F2DC()
{
  v24 = v0;
  v22 = *(v0[6] + 16);
  v22(v0[7], v0[4], v0[5]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v7 = 136315138;
    sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10000C4E4(v8, v10, &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Got contact exchange request before user chose to open/move, picking default destination: %s", v7, 0xCu);
    sub_10000C60C(v21);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  v16 = v0[4];
  v15 = v0[5];
  v17 = v0[2];
  v18 = *(sub_10028088C(&qword_100982568, &qword_100808EF0) + 48);
  v22(v17, v16, v15);
  sub_1005304C4(v12, v17 + v18, _s15ExchangeRequestVMa);
  (*(v13 + 56))(v17 + v18, 0, 1, v14);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10052F568()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10052F5D8()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
}

uint64_t sub_10052F618()
{
  v0 = sub_100687998();
  v1 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent);

  v2 = *(v0 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);

  return swift_deallocClassInstance();
}

uint64_t sub_10052F744(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10052F764, 0, 0);
}

uint64_t sub_10052F764()
{
  v1 = v0[3];
  v2 = *(v1 + *(sub_10028088C(&qword_100976908, &unk_100801D60) + 52));
  v3 = swift_task_alloc();
  v0[4] = v3;
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v5 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
  *v3 = v0;
  v3[1] = sub_10052F858;
  v6 = v0[2];

  return Task.value.getter(v6, v2, v4, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_10052F858()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10052F94C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10052F96C, 0, 0);
}

uint64_t sub_10052F96C()
{
  v1 = v0[3];
  v2 = *(v1 + *(sub_10028088C(&qword_10097B200, &qword_1007FE578) + 52));
  v3 = swift_task_alloc();
  v0[4] = v3;
  v4 = type metadata accessor for SFAirDrop.ContactRequest();
  v5 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
  *v3 = v0;
  v3[1] = sub_100530FC8;
  v6 = v0[2];

  return Task.value.getter(v6, v2, v4, v5, &protocol self-conformance witness table for Error);
}

void sub_10052FA60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_100976908, &unk_100801D60);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100982810);
  sub_10000FF90(a1, v8, &qword_100976908, &unk_100801D60);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    SFAirDrop.PermissionRequest.id.getter();
    sub_100005508(v8, &qword_100976908, &unk_100801D60);
    sub_100530ED4(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_10000C4E4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropPermissionRequestTask[%s] was cancelled", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {
    sub_100005508(v8, &qword_100976908, &unk_100801D60);
  }

  type metadata accessor for SFAirDropReceive.ItemDestination();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  Task.cancel()();
}

void sub_10052FD98(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_10097B200, &qword_1007FE578);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100982810);
  sub_10000FF90(a1, v8, &qword_10097B200, &qword_1007FE578);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    SFAirDrop.PermissionRequest.id.getter();
    sub_100005508(v8, &qword_10097B200, &qword_1007FE578);
    sub_100530ED4(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_10000C4E4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropPermissionRequestTask[%s] was cancelled", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {
    sub_100005508(v8, &qword_10097B200, &qword_1007FE578);
  }

  type metadata accessor for SFAirDrop.ContactRequest();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  Task.cancel()();
}

void sub_1005300D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_10097B1F0, &qword_1007FE568);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100982810);
  sub_10000FF90(a1, v8, &qword_10097B1F0, &qword_1007FE568);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    sub_10028088C(&qword_10097B218, &unk_100809050);
    SFAirDrop.PermissionRequest.id.getter();
    sub_100005508(v8, &qword_10097B1F0, &qword_1007FE568);
    sub_100530ED4(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_10000C4E4(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "SDAirDropPermissionRequestTask[%s] was cancelled", v13, 0xCu);
    sub_10000C60C(v14);
  }

  else
  {
    sub_100005508(v8, &qword_10097B1F0, &qword_1007FE568);
  }

  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  Task.cancel()();
}

uint64_t sub_100530400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100530460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005304C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100530570(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B268, &unk_100808E10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10052CC44(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005307A4(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097D438, &unk_100801D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10041C2D0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005308A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982548, &qword_100808EC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100530918(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100976908, &unk_100801D60) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10052EAF0(a1, v1 + v5);
}

uint64_t sub_100530A00(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100982528, &unk_100808DB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SFAirDropReceive.ItemDestination() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C00;

  return sub_10052EFF4(a1, v1 + v6, v10, v1 + v9);
}

double sub_100530B64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100530B7C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(sub_10028088C(a1, a2) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = sub_10028088C(a3, a4);
  (*(*(v10 - 8) + 8))(v4 + v8, v10);

  return _swift_deallocObject(v4, v8 + v9);
}

uint64_t sub_100530C74(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C00;

  return sub_10052A378(a1, v1 + v5);
}

uint64_t sub_100530D5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_10052A6D0(a1, v1);
}

uint64_t sub_100530E20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100504674(a1, v4, v5, v6);
}

uint64_t sub_100530ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100530F44(uint64_t a1)
{
  result = type metadata accessor for SFAirDropReceive.AskResponse();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SFAirDropReceive.Transfer();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100530FCC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982650);
  v1 = sub_10000C4AC(v0, qword_100982650);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100531094()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1002DDC10();
  v12[1] = "";
  v12[2] = v7;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_10044EDD8(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = nw_path_monitor_create();
  *(v0 + 48) = v8;
  *(v0 + 56) = 2;
  nw_path_monitor_set_queue(v8, *(v0 + 40));
  v9 = *(v0 + 48);
  aBlock[4] = sub_100531B20;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100531428;
  aBlock[3] = &unk_1008E6308;
  v10 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_path_monitor_set_update_handler(v9, v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1005313A8(NSObject *a1, uint64_t a2)
{
  result = nw_path_get_status(a1);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 56);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      v8 = result;

      v4(v9);
      sub_1002F5A40(v4, v6);
      result = v8;
    }
  }

  *(a2 + 56) = result == 1;
  return result;
}

uint64_t sub_100531428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1005314A8(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100982650);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Network path monitor already started";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);
    }
  }

  else
  {
    nw_path_monitor_start(*(a1 + 48));
    *(a1 + 32) = 1;
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100982650);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Network path monitor started";
      goto LABEL_10;
    }
  }
}

uint64_t sub_100531664(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 40);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100014404(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

void sub_1005318F4(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    nw_path_monitor_cancel(*(a1 + 48));
    *(a1 + 32) = 0;
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100982650);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Network path monitor stopped";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
    }
  }

  else
  {
    if (qword_1009739C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100982650);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Network path monitor already stopped";
      goto LABEL_10;
    }
  }
}

uint64_t sub_100531A8C()
{
  sub_1002F5A40(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100531AF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return sub_1002F5A40(v4, v5);
}

uint64_t sub_100531B38(uint64_t a1)
{
  v32 = type metadata accessor for Logger();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-1] - v8;
  swift_beginAccess();
  v10 = *(v1 + 72);
  if (*(v10 + 16) && (v11 = sub_100570848(a1), (v12 & 1) != 0))
  {
    (*(v7 + 16))(v9, *(v10 + 56) + *(v7 + 72) * v11, v6);
    swift_endAccess();
    SFProgressTask.cancel(_:)();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    swift_endAccess();
    v14 = SFAirDrop.TransferIdentifier.stringValue.getter();
    sub_10054141C(8, v14, v15);

    v16 = static String._fromSubstring(_:)();
    v18 = v17;

    v31[0] = 0x2E706F7244726941;
    v31[1] = 0xE800000000000000;
    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    Logger.init(subsystem:category:)();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v22 = 136315138;
      type metadata accessor for SFAirDrop.TransferIdentifier();
      sub_100537040(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);

      v24 = Dictionary.Keys.description.getter();
      v26 = v25;

      v27 = sub_10000C4E4(v24, v26, v31);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "No send transfer to cancel. Current transfer IDs: %s", v22, 0xCu);
      sub_10000C60C(v23);
    }

    (*(v3 + 8))(v5, v32);
    v28 = type metadata accessor for SFAirDropSend.Failure();
    sub_100537040(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for SFAirDropSend.Failure.badRequest(_:), v28);
    return swift_willThrow();
  }
}

uint64_t sub_100531FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a5;
  v129 = a3;
  v130 = a4;
  v135 = a2;
  v118 = a1;
  v115 = a6;
  v6 = sub_10028088C(&qword_100976468, &qword_1007F9738);
  __chkstk_darwin(v6 - 8);
  v116 = v94 - v7;
  v8 = type metadata accessor for SFAirDrop.NetworkMetrics();
  __chkstk_darwin(v8 - 8);
  v111 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SFAirDropClient.Identifier();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  __chkstk_darwin(v11 - 8);
  v106 = v94 - v12;
  v101 = type metadata accessor for SFAirDrop.DisplayPriority();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v104 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for SFAirDropSend.Transfer.State();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v103 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  __chkstk_darwin(v15 - 8);
  v99 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SFAirDropSend.Transfer();
  v128 = *(v114 - 8);
  v17 = __chkstk_darwin(v114);
  v112 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v125 = v94 - v20;
  v110 = v21;
  __chkstk_darwin(v19);
  v127 = v94 - v22;
  v136 = type metadata accessor for SFAirDropSend.Request();
  v134 = *(v136 - 8);
  v23 = __chkstk_darwin(v136);
  v122 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v24;
  __chkstk_darwin(v23);
  v26 = v94 - v25;
  v27 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v133 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Logger();
  v124 = *(v126 - 8);
  v30 = __chkstk_darwin(v126);
  v121 = v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v31;
  __chkstk_darwin(v30);
  v33 = v94 - v32;
  SFAirDropSend.Request.id.getter();
  v34 = SFAirDrop.TransferIdentifier.stringValue.getter();
  sub_10054141C(8, v34, v35);

  v36 = static String._fromSubstring(_:)();
  v38 = v37;

  v137 = 0x2E706F7244726941;
  v138 = 0xE800000000000000;
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v40 = v27;
  v41 = v133;
  Logger.init(subsystem:category:)();
  v42 = *(v41 + 8);
  v132 = v29;
  v43 = v40;
  v117 = v42;
  v42(v29, v40);
  v44 = v26;
  v45 = v26;
  v46 = v118;
  v119 = *(v134 + 16);
  v120 = v134 + 16;
  v119(v45);

  v123 = v33;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v133 = v41 + 8;
  v96 = v40;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v137 = v95;
    *v50 = 136315394;
    v51 = v132;
    SFAirDropSend.Request.id.getter();
    v52 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v53 = v46;
    v55 = v54;
    v117(v51, v43);
    (*(v134 + 8))(v44, v136);
    v56 = sub_10000C4E4(v52, v55, &v137);
    v46 = v53;

    *(v50 + 4) = v56;
    *(v50 + 12) = 2080;
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);
    v57 = Set.description.getter();
    v59 = sub_10000C4E4(v57, v58, &v137);

    *(v50 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v47, v48, "Classroom Send StateMachine START %s {initialEndpoints: %s}", v50, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v134 + 8))(v44, v136);
  }

  v95 = sub_1005369A0(v46, v135);
  v94[1] = v60;
  v61 = v132;
  SFAirDropSend.Request.id.getter();
  v62 = v122;
  (v119)(v122, v46, v136);
  static Date.now.getter();
  (*(v97 + 104))(v103, enum case for SFAirDropSend.Transfer.State.created(_:), v98);
  (*(v100 + 104))(v104, enum case for SFAirDrop.DisplayPriority.normal(_:), v101);
  v63 = type metadata accessor for SFNWInterfaceType();
  (*(*(v63 - 8) + 56))(v106, 1, 1, v63);
  (*(v107 + 16))(v108, v113, v109);

  SFAirDrop.NetworkMetrics.init()();
  v64 = v127;
  v65 = v62;
  SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();
  v137 = 0;
  v138 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v137 = 0xD000000000000018;
  v138 = 0x8000000100794CF0;
  v66 = v118;
  SFAirDropSend.Request.id.getter();
  sub_100537040(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v67 = v96;
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v68);

  v117(v61, v67);
  v69._countAndFlagsBits = 93;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  v133 = v137;
  v117 = v138;
  v70 = v128;
  v71 = *(v128 + 16);
  v72 = v114;
  v71(v125, v64, v114);
  v73 = v112;
  v71(v112, v64, v72);
  (v119)(v65, v66, v136);
  v74 = v124;
  (*(v124 + 16))(v121, v123, v126);
  v75 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v76 = (v110 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = v134;
  v78 = (*(v134 + 80) + v76 + 8) & ~*(v134 + 80);
  v79 = (v105 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (*(v74 + 80) + v79 + 16) & ~*(v74 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v131;
  (*(v70 + 32))(v81 + v75, v73, v72);
  v82 = v136;
  *(v81 + v76) = v135;
  (*(v77 + 32))(v81 + v78, v122, v82);
  v83 = (v81 + v79);
  v84 = v130;
  *v83 = v129;
  v83[1] = v84;
  v85 = v124;
  v86 = v126;
  (*(v124 + 32))(v81 + v80, v121, v126);

  v87 = v115;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v88 = v132;
  v89 = v127;
  SFAirDropSend.Transfer.id.getter();
  v90 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v91 = *(v90 - 8);
  v92 = v116;
  (*(v91 + 16))(v116, v87, v90);
  (*(v91 + 56))(v92, 0, 1, v90);
  swift_beginAccess();
  sub_1002B0C84(v92, v88);
  swift_endAccess();
  (*(v128 + 8))(v89, v72);
  return (*(v85 + 8))(v123, v86);
}

uint64_t sub_100532E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[30] = a3;
  v8[31] = a4;
  v8[28] = a1;
  v8[29] = a2;
  type metadata accessor for SFAirDrop.NetworkMetrics();
  v8[36] = swift_task_alloc();
  type metadata accessor for SFAirDropClient.Identifier();
  v8[37] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v8[38] = swift_task_alloc();
  type metadata accessor for SFAirDrop.DisplayPriority();
  v8[39] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer.State();
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  type metadata accessor for Date();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  sub_10028088C(&qword_100976468, &qword_1007F9738);
  v8[45] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[53] = v12;
  v8[54] = *(v12 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropSend.Transfer();
  v8[57] = v13;
  v8[58] = *(v13 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropSend.Request();
  v8[63] = v14;
  v8[64] = *(v14 - 8);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  sub_10028088C(&qword_100982800, &qword_1008091A8);
  v8[73] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDrop.TransferType();
  v8[74] = v15;
  v8[75] = *(v15 - 8);
  v8[76] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v8[77] = static AirDropActor.shared;

  return _swift_task_switch(sub_100533364, v16, 0);
}

uint64_t sub_100533364(uint64_t a1)
{
  v136 = v1;
  v2 = *(v1 + 608);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  SFAirDropSend.Request.type.getter();
  v5 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v6 = *(v3 + 8);
  *(v1 + 624) = v6;
  *(v1 + 632) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  if (v5)
  {
LABEL_4:
    v104 = v6;
    v10 = *(v1 + 576);
    v11 = *(v1 + 504);
    v12 = *(v1 + 512);
    v13 = *(v1 + 496);
    v14 = *(v1 + 456);
    v15 = *(v1 + 464);
    v16 = *(v1 + 448);
    v17 = *(v1 + 424);
    v18 = *(v1 + 432);
    v19 = *(v1 + 264);
    v20 = *(v1 + 272);
    v22 = *(v1 + 248);
    v21 = *(v1 + 256);
    v23 = *(v12 + 16);
    *(v1 + 640) = v23;
    *(v1 + 648) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v129 = v23;
    v133 = v16;
    v23(v10, v19, v11);
    v99 = *(v15 + 16);
    v99(v13, v21, v14);
    v121 = *(v18 + 16);
    v121(v133, v20, v17);
    v106 = v22[7];
    *(v1 + 656) = v106;
    v102 = v22[8];
    *(v1 + 664) = v102;
    v24 = v22[5];
    v25 = v22[6];
    v98 = v22[3];
    v103 = v22[2];
    v26 = v22[4];
    *(v1 + 672) = v26;
    v27 = objc_allocWithZone(_s6RunnerCMa(0));
    v28 = &_swiftEmptySetSingleton;
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1002F4CDC(_swiftEmptyArrayStorage);
      }

      else
      {
        v28 = &_swiftEmptySetSingleton;
      }
    }

    v29 = *(v1 + 608);
    v94 = *(v1 + 592);
    v30 = *(v1 + 576);
    v113 = *(v1 + 568);
    v110 = *(v1 + 560);
    v134 = *(v1 + 512);
    v108 = *(v1 + 504);
    v32 = *(v1 + 488);
    v31 = *(v1 + 496);
    v95 = *(v1 + 480);
    v101 = *(v1 + 464);
    v126 = *(v1 + 456);
    v117 = *(v1 + 440);
    v119 = *(v1 + 448);
    v100 = *(v1 + 432);
    v115 = *(v1 + 424);
    v105 = *(v1 + 280);
    v96 = *(v1 + 232);
    v97 = *(v1 + 240);
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_sendConnections] = v28;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_selectedConnection] = 0;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_urls] = 0;
    v33 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner____lazy_storage___senderContact;
    v34 = sub_10028088C(&qword_10097B198, &qword_1007FE450);
    (*(*(v34 - 8) + 56))(&v27[v33], 1, 1, v34);
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_pseudonymService] = v24;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_nearbyAgent] = v25;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine6Runner_endpointService] = v26;

    v35 = v25;
    v107 = v26;
    static SFAirDrop.TransferType.transferType(for:shouldExchangeContacts:)();
    SFAirDropSend.Request.requestWithType(_:)();
    v104(v29, v94);
    v129(v110, v113, v108);
    v99(v32, v31, v126);
    v121(v117, v119, v115);
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_mediaConversionDestinations] = _swiftEmptyArrayStorage;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction] = 0;
    v36 = &v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion];
    *v36 = 0;
    v36[4] = 1;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask] = 0;
    *(v1 + 160) = &_swiftEmptySetSingleton;
    sub_10028088C(&qword_100980290, &qword_100809190);
    swift_allocObject();
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints] = CurrentValueSubject.init(_:)();
    *(v1 + 168) = &_swiftEmptySetSingleton;
    swift_allocObject();
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints] = CurrentValueSubject.init(_:)();
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus] = v98;
    v129(&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest], v110, v108);
    v99(&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer], v32, v126);
    v99(v95, v32, v126);
    sub_10028088C(&qword_1009827F8, &qword_100809198);
    swift_allocObject();
    v37 = v98;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject] = CurrentValueSubject.init(_:)();
    v38 = &v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
    *v38 = v96;
    *(v38 + 1) = v97;
    *&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue] = v103;
    v121(&v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log], v117, v115);
    v39 = &v27[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager];
    *v39 = v106;
    *(v39 + 1) = v102;
    v40 = _s10BaseRunnerCMa_0(0);
    *(v1 + 144) = v27;
    *(v1 + 152) = v40;

    v41 = v103;
    swift_unknownObjectRetain();
    v42 = objc_msgSendSuper2((v1 + 144), "init");
    *(v1 + 680) = v42;
    v43 = v42;
    sub_100336238(v32);

    v44 = *(v100 + 8);
    v44(v117, v115);
    v45 = *(v101 + 8);
    v45(v32, v126);
    v46 = *(v134 + 8);
    *(v1 + 688) = v46;
    *(v1 + 696) = (v134 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v110, v108);
    v46(v113, v108);
    v44(v119, v115);
    v45(v31, v126);
    v127 = v46;
    v46(v30, v108);
    sub_100318600(v105, v1 + 16);
    if (*(v1 + 40))
    {
      sub_10028088C(&qword_10097F358, &qword_1008050E8);
      type metadata accessor for SDAirDropDiscoveredPerson(0);
      if (swift_dynamicCast())
      {
        v47 = *(v1 + 216);
        v48 = &OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredPerson_connectableUUID;
        goto LABEL_12;
      }
    }

    else
    {
      sub_100005508(v1 + 16, &qword_100977DC8, &unk_1008091C0);
    }

    sub_100318600(*(v1 + 280), v1 + 56);
    if (!*(v1 + 80))
    {
      sub_100005508(v1 + 56, &qword_100977DC8, &unk_1008091C0);
      goto LABEL_14;
    }

    sub_10028088C(&qword_10097F358, &qword_1008050E8);
    type metadata accessor for SDAirDropDiscoveredDevice(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_14:
      v129(*(v1 + 552), *(v1 + 264), *(v1 + 504));
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v1 + 552);
      v55 = *(v1 + 504);
      if (v53)
      {
        v56 = *(v1 + 416);
        v57 = *(v1 + 400);
        v124 = *(v1 + 392);
        v58 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v135[0] = v130;
        *v58 = 136315138;
        SFAirDropSend.Request.id.getter();
        v59 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
        v61 = v60;
        (*(v57 + 8))(v56, v124);
        v127(v54, v55);
        v62 = sub_10000C4E4(v59, v61, v135);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v51, v52, "%s Starting to resolve endpoints", v58, 0xCu);
        sub_10000C60C(v130);
      }

      else
      {

        v46(v54, v55);
      }

      SFAirDropSend.Request.endpointID.getter();
      v63 = swift_task_alloc();
      *(v1 + 704) = v63;
      *v63 = v1;
      v63[1] = sub_100534460;
      v64 = *(v1 + 384);

      return sub_10048D4A0(v64);
    }

    v47 = *(v1 + 208);
    v48 = &OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropDiscoveredDevice_connectableUUID;
LABEL_12:
    v49 = *v48;
    v50 = v43;
    sub_10053667C(v50, v47 + v49, v107);

    goto LABEL_14;
  }

  v7 = *(*(v1 + 248) + 64);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v9(0, ObjectType, v7);
  if (SFAirDropSend.Request.urls.getter() || (v66 = *(v1 + 584), SFAirDropSend.Request.urlsPromise.getter(), v67 = sub_10028088C(&qword_100982808, &unk_1008091B0), v68 = (*(*(v67 - 8) + 48))(v66, 1, v67), sub_100005508(v66, &qword_100982800, &qword_1008091A8), v68 != 1) && SFAirDropSend.Request.urlsMetadata.getter())
  {

    goto LABEL_4;
  }

  v69 = SFAirDropSend.Request.customPayload.getter();
  if (v70 >> 60 != 15)
  {
    sub_10028BCC0(v69, v70);
    goto LABEL_4;
  }

  v71 = type metadata accessor for SFAirDropSend.Failure();
  sub_100537040(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v71 - 8) + 104))(v72, enum case for SFAirDropSend.Failure.badRequest(_:), v71);
  swift_willThrow();
  (*(*(v1 + 512) + 16))(*(v1 + 520), *(v1 + 264), *(v1 + 504));
  swift_errorRetain();
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v1 + 520);
  v77 = *(v1 + 512);
  v131 = *(v1 + 504);
  if (v75)
  {
    v111 = *(v1 + 520);
    v78 = *(v1 + 416);
    v116 = *(v1 + 400);
    v118 = *(v1 + 392);
    v114 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v135[0] = v128;
    *v114 = 136315394;
    v122 = v73;
    SFAirDropSend.Request.id.getter();
    v79 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v120 = v74;
    v81 = v80;
    (*(v116 + 8))(v78, v118);
    (*(v77 + 8))(v111, v131);
    v82 = sub_10000C4E4(v79, v81, v135);

    *(v114 + 4) = v82;
    *(v114 + 12) = 2112;
    swift_errorRetain();
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v114 + 14) = v83;
    *v125 = v83;
    _os_log_impl(&_mh_execute_header, v122, v120, "Send StateMachine FAILED %s {error: %@}", v114, 0x16u);
    sub_100005508(v125, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v128);
  }

  else
  {

    (*(v77 + 8))(v76, v131);
  }

  v84 = *(v1 + 624);
  v85 = *(v1 + 608);
  v86 = *(v1 + 592);
  SFAirDropSend.Request.type.getter();
  v87 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v84(v85, v86);
  if ((v87 & 1) == 0)
  {
    v88 = swift_getObjectType();
    v9(4, v88, v7);
  }

  v123 = *(v1 + 416);
  v132 = *(v1 + 360);
  v89 = *(v1 + 336);
  v90 = *(v1 + 328);
  v109 = *(v1 + 320);
  v112 = *(v1 + 304);
  SFAirDropSend.Transfer.id.getter();
  SFAirDropSend.Transfer.sendRequest.getter();
  SFAirDropSend.Transfer.receiverName.getter();
  SFAirDropSend.Transfer.startDate.getter();
  sub_10028088C(&unk_100986210, &unk_1008042C0);
  SFAirDropSend.Transfer.id.getter();
  SFAirDropSend.Transfer.startDate.getter();
  SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
  swift_errorRetain();
  SFAirDropSend.Failure.init(_:)();
  (*(v90 + 104))(v89, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v109);
  SFAirDropSend.Transfer.displayPriority.getter();
  SFAirDropSend.Transfer.bundleIdentifier.getter();
  v91 = type metadata accessor for SFNWInterfaceType();
  (*(*(v91 - 8) + 56))(v112, 1, 1, v91);
  SFAirDropSend.Transfer.presenter.getter();
  SFAirDrop.NetworkMetrics.init()();
  SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();

  SFAirDropSend.Transfer.id.getter();
  v92 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  (*(*(v92 - 8) + 56))(v132, 1, 1, v92);
  swift_beginAccess();
  sub_1002B0C84(v132, v123);
  swift_endAccess();

  v93 = *(v1 + 8);

  return v93();
}

uint64_t sub_100534460(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 616);
  v5 = *(*v2 + 384);
  v6 = *(*v2 + 376);
  v7 = *(*v2 + 368);
  *(v3 + 712) = a1;
  *(v3 + 720) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_1005345D8, v4, 0);
}

uint64_t sub_1005345D8()
{
  v92 = v0;
  sub_1003E6F1C(*(v0 + 264), *(v0 + 712), *(*(v0 + 672) + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser) != 0);
  if (static Task<>.isCancelled.getter())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Transfer cancelled at resolve step", v3, 2u);
    }

    v4 = *(v0 + 680);

    type metadata accessor for CancellationError();
    sub_100537040(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    goto LABEL_16;
  }

  (*(v0 + 640))(*(v0 + 544), *(v0 + 264), *(v0 + 504));

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v84 = *(v0 + 688);
    v7 = *(v0 + 544);
    v80 = *(v0 + 504);
    v8 = *(v0 + 416);
    v90 = v6;
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v11 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v11 = 136315394;
    SFAirDropSend.Request.id.getter();
    v12 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v84(v7, v80);
    v15 = sub_10000C4E4(v12, v14, v91);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);

    v16 = Set.description.getter();
    v18 = v17;

    v19 = sub_10000C4E4(v16, v18, v91);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v90, "%s Resolved endpoints to %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 688);
    v21 = *(v0 + 544);
    v22 = *(v0 + 504);

    v20(v21, v22);
  }

  (*(v0 + 640))(*(v0 + 536), *(v0 + 264), *(v0 + 504));

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v85 = *(v0 + 688);
    v25 = *(v0 + 536);
    v81 = *(v0 + 504);
    v26 = *(v0 + 416);
    v28 = *(v0 + 392);
    v27 = *(v0 + 400);
    v29 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v29 = 136315394;
    v87 = v24;
    SFAirDropSend.Request.id.getter();
    v30 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v32 = v31;
    (*(v27 + 8))(v26, v28);
    v85(v25, v81);
    v33 = sub_10000C4E4(v30, v32, v91);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);

    v34 = Set.description.getter();
    v36 = v35;

    v37 = sub_10000C4E4(v34, v36, v91);

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v23, v87, "%s Resolved backup endpoints to %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v38 = *(v0 + 688);
    v39 = *(v0 + 536);
    v40 = *(v0 + 504);

    v38(v39, v40);
  }

  v41 = *(v0 + 712);
  if (!*(v41 + 16))
  {
    v4 = *(v0 + 680);

    v48 = type metadata accessor for SFAirDropSend.Failure();
    sub_100537040(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    *v49 = 0;
    (*(*(v48 - 8) + 104))(v49, enum case for SFAirDropSend.Failure.resolveFailure(_:), v48);
LABEL_16:
    swift_willThrow();

    v50 = *(v0 + 664);
    (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 264), *(v0 + 504));
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 520);
    v55 = *(v0 + 504);
    v56 = *(v0 + 512);
    if (v53)
    {
      v86 = v52;
      v57 = *(v0 + 416);
      v58 = *(v0 + 400);
      v77 = *(v0 + 392);
      v88 = v50;
      v59 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v91[0] = v82;
      *v59 = 136315394;
      v78 = v51;
      SFAirDropSend.Request.id.getter();
      v60 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
      v62 = v61;
      (*(v58 + 8))(v57, v77);
      (*(v56 + 8))(v54, v55);
      v63 = sub_10000C4E4(v60, v62, v91);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2112;
      swift_errorRetain();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v64;
      *v79 = v64;
      _os_log_impl(&_mh_execute_header, v78, v86, "Send StateMachine FAILED %s {error: %@}", v59, 0x16u);
      sub_100005508(v79, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v82);

      v50 = v88;
    }

    else
    {

      (*(v56 + 8))(v54, v55);
    }

    v65 = *(v0 + 624);
    v66 = *(v0 + 608);
    v67 = *(v0 + 592);
    SFAirDropSend.Request.type.getter();
    v68 = SFAirDrop.TransferType.isOnlyExchange.getter();
    v65(v66, v67);
    if ((v68 & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      (*(v50 + 16))(4, ObjectType, v50);
    }

    v83 = *(v0 + 416);
    v89 = *(v0 + 360);
    v70 = *(v0 + 336);
    v71 = *(v0 + 328);
    v75 = *(v0 + 320);
    v76 = *(v0 + 304);
    SFAirDropSend.Transfer.id.getter();
    SFAirDropSend.Transfer.sendRequest.getter();
    SFAirDropSend.Transfer.receiverName.getter();
    SFAirDropSend.Transfer.startDate.getter();
    sub_10028088C(&unk_100986210, &unk_1008042C0);
    SFAirDropSend.Transfer.id.getter();
    SFAirDropSend.Transfer.startDate.getter();
    SFAirDropSend.Transfer.Metrics.init(id:startDate:)();
    swift_errorRetain();
    SFAirDropSend.Failure.init(_:)();
    (*(v71 + 104))(v70, enum case for SFAirDropSend.Transfer.State.transferFailed(_:), v75);
    SFAirDropSend.Transfer.displayPriority.getter();
    SFAirDropSend.Transfer.bundleIdentifier.getter();
    v72 = type metadata accessor for SFNWInterfaceType();
    (*(*(v72 - 8) + 56))(v76, 1, 1, v72);
    SFAirDropSend.Transfer.presenter.getter();
    SFAirDrop.NetworkMetrics.init()();
    SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)();

    SFAirDropSend.Transfer.id.getter();
    v73 = sub_10028088C(&qword_100976470, &qword_1007F9740);
    (*(*(v73 - 8) + 56))(v89, 1, 1, v73);
    swift_beginAccess();
    sub_1002B0C84(v89, v83);
    swift_endAccess();

    v74 = *(v0 + 8);

    return v74();
  }

  v42 = *(v0 + 720);

  CurrentValueSubject.value.getter();

  v43 = *(v0 + 176);

  *(v0 + 184) = sub_1006947E0(v41, v43);
  CurrentValueSubject.send(_:)();

  CurrentValueSubject.value.getter();

  v44 = *(v0 + 192);

  *(v0 + 200) = sub_1006947E0(v42, v44);
  CurrentValueSubject.send(_:)();

  v45 = swift_task_alloc();
  *(v0 + 728) = v45;
  *v45 = v0;
  v45[1] = sub_10053539C;
  v46 = *(v0 + 472);

  return sub_1003A0838(v46);
}

uint64_t sub_10053539C()
{
  v1 = *(*v0 + 616);

  return _swift_task_switch(sub_1005354AC, v1, 0);
}

uint64_t sub_1005354AC()
{
  v31 = v0;
  (*(v0 + 640))(*(v0 + 528), *(v0 + 264), *(v0 + 504));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 688);
  v5 = *(v0 + 528);
  v6 = *(v0 + 504);
  if (v3)
  {
    v7 = *(v0 + 416);
    v8 = *(v0 + 400);
    v27 = *(v0 + 392);
    v26 = *(v0 + 688);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v28 = v2;
    SFAirDropSend.Request.id.getter();
    v11 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v13 = v12;
    (*(v8 + 8))(v7, v27);
    v26(v5, v6);
    v14 = sub_10000C4E4(v11, v13, &v30);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v28, "Send StateMachine END %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {

    v4(v5, v6);
  }

  v15 = *(v0 + 680);
  v16 = *(v0 + 464);
  v17 = *(v0 + 472);
  v18 = *(v0 + 456);
  v19 = *(v0 + 416);
  v29 = *(v0 + 360);
  v20 = *(v0 + 224);
  *(v0 + 736) = 1;
  v21 = CurrentValueSubject.send(completion:)();
  sub_1003365C8(v21, v22);

  (*(v16 + 32))(v20, v17, v18);
  SFAirDropSend.Transfer.id.getter();
  v23 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  swift_beginAccess();
  sub_1002B0C84(v29, v19);
  swift_endAccess();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1005358C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v16;
  v8[18] = v17;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  sub_10028088C(&qword_100976468, &qword_1007F9738);
  v8[19] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropSend.Transfer();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropSend.Request();
  v8[33] = v12;
  v8[34] = *(v12 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v13 = static AirDropActor.shared;
  v8[38] = static AirDropActor.shared;

  return _swift_task_switch(sub_100535B68, v13, 0);
}

uint64_t sub_100535B68()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v39 = v3;
  v40 = *(v0 + 288);
  v45 = *(v0 + 256);
  v49 = *(v0 + 248);
  v34 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v44 = *(v0 + 208);
  v50 = *(v0 + 200);
  v51 = v4;
  v6 = *(v0 + 192);
  v41 = *(v0 + 184);
  v30 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 128);
  v46 = *(v0 + 120);
  v31 = *(v0 + 112);
  v47 = *(v0 + 104);
  v7 = *(v0 + 96);
  v36 = *(v0 + 80);
  v8 = v7[8];
  v37 = *(v0 + 88);
  v38 = v7[7];
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(0, ObjectType, v8);
  v32 = v7[3];
  v35 = v7[2];
  v43 = *(v2 + 16);
  *(v0 + 312) = v43;
  *(v0 + 320) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33 = v1;
  v43(v1, v46, v3);
  v42 = *(v5 + 16);
  v42(v45, v47, v4);
  v48 = *(v6 + 16);
  v48(v44, v28, v41);
  v10 = _s15ClassroomRunnerCMa_0(0);
  *(v0 + 328) = v10;
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendContinuation;
  v13 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_urls] = 0;
  v14 = [objc_allocWithZone(NSOperationQueue) init];
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_sendOperationQueue] = v14;
  [v14 setQualityOfService:25];
  v15 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine15ClassroomRunner_bundleIdentifier];
  *v15 = v29;
  *(v15 + 1) = v30;
  v43(v40, v1, v39);
  v42(v49, v45, v51);
  v48(v50, v44, v41);
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_mediaConversionDestinations] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_osTransaction] = 0;
  v16 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_powerAssertion];
  *v16 = 0;
  v16[4] = 1;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_displayPriorityReturnToNormalTask] = 0;
  *(v0 + 56) = v31;
  sub_10028088C(&qword_100980290, &qword_100809190);
  swift_allocObject();

  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_endpoints] = CurrentValueSubject.init(_:)();
  *(v0 + 64) = _swiftEmptySetSingleton;
  swift_allocObject();
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_backupEndpoints] = CurrentValueSubject.init(_:)();
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_deviceStatus] = v32;
  v43(&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_sendRequest], v40, v39);
  v42(&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_currentTransfer], v49, v51);
  v42(v34, v49, v51);
  sub_10028088C(&qword_1009827F8, &qword_100809198);
  swift_allocObject();
  v17 = v32;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_subject] = CurrentValueSubject.init(_:)();
  v18 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_yield];
  *v18 = v36;
  *(v18 + 1) = v37;
  *&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_queue] = v35;
  v48(&v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_log], v50, v41);
  v19 = &v11[OBJC_IVAR____TtCC16DaemoniOSLibrary25SDAirDropSendStateMachine10BaseRunner_hapticsManager];
  *v19 = v38;
  *(v19 + 1) = v8;
  v20 = _s10BaseRunnerCMa_0(0);
  *(v0 + 40) = v11;
  *(v0 + 48) = v20;

  v21 = v35;
  swift_unknownObjectRetain();
  *(v0 + 336) = objc_msgSendSuper2((v0 + 40), "init");
  sub_100336238(v49);
  v22 = *(v6 + 8);
  v22(v50, v41);
  v23 = *(v5 + 8);
  v23(v49, v51);
  v24 = *(v2 + 8);
  *(v0 + 344) = v24;
  *(v0 + 352) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v40, v39);
  v22(v44, v41);
  v23(v45, v51);
  v24(v33, v39);
  v25 = swift_task_alloc();
  *(v0 + 360) = v25;
  *v25 = v0;
  v25[1] = sub_100536198;
  v26 = *(v0 + 232);

  return sub_100627110(v26);
}

uint64_t sub_100536198()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_1005362A8, v1, 0);
}

uint64_t sub_1005362A8()
{
  v29 = v0;
  (*(v0 + 312))(*(v0 + 280), *(v0 + 120), *(v0 + 264));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  if (v3)
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v26 = *(v0 + 160);
    v25 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v27 = v2;
    SFAirDropSend.Request.id.getter();
    v11 = SFAirDrop.TransferIdentifier.shortIdentifier.getter();
    v13 = v12;
    (*(v7 + 8))(v8, v26);
    v25(v5, v6);
    v14 = sub_10000C4E4(v11, v13, &v28);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v27, "Send StateMachine END %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  else
  {

    v4(v5, v6);
  }

  v15 = *(v0 + 336);
  v16 = *(v0 + 232);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 72);
  sub_100337984();

  (*(v17 + 32))(v21, v16, v18);
  SFAirDropSend.Transfer.id.getter();
  v22 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  swift_beginAccess();
  sub_1002B0C84(v20, v19);
  swift_endAccess();

  v23 = *(v0 + 8);

  return v23();
}

id *sub_1005365D4()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100536624()
{
  sub_1005365D4();

  return swift_deallocClassInstance();
}

uint64_t sub_10053667C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
  swift_beginAccess();
  v11 = *(a3 + v10);

  v12 = sub_100569018(a2, v11);

  if (v12)
  {
    if (qword_1009738C0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097F240);
    (*(v7 + 16))(v9, a2, v6);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = a1;
      v18 = v17;
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v18 = 136315138;
      sub_100537040(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v7 + 8))(v9, v6);
      v22 = sub_10000C4E4(v19, v21, v30);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Adding delegate for connectable: %s", v18, 0xCu);
      sub_10000C60C(v27);

      a1 = v28;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v23 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_delegateByConnectableID;
    swift_beginAccess();
    v24 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a3 + v23);
    *(a3 + v23) = 0x8000000000000000;
    sub_100536E68(v24, a2, isUniquelyReferenced_nonNull_native, &v29);
    *(a3 + v23) = v29;
    return swift_endAccess();
  }

  return result;
}

id sub_1005369A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FB3B4(a2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &qword_1009763E0, &qword_1007F95D0);
    if (qword_1009736C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_1009A08A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      sub_100537040(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);
      v15 = Set.description.getter();
      v17 = sub_10000C4E4(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Could not find endpoint. Current endpoints: %s", v13, 0xCu);
      sub_10000C60C(v14);
    }

    return 0;
  }

  else
  {
    sub_10029418C(v5, v9);
    v19 = sub_10040BCAC();
    sub_100294130(v9);
    return v19;
  }
}

uint64_t sub_100536C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = *(type metadata accessor for SFAirDropSend.Transfer() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Logger();
  v13 = *(v3 + 16);
  v14 = *(v3 + v9);
  v15 = *(v3 + v12);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_100005C04;

  return sub_1005358C0(a1, a2, a3, v13, v3 + v8, v14, v3 + v11, v15);
}

uint64_t sub_100536E68(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v14 = sub_10000EBD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CF978();
      goto LABEL_7;
    }

    sub_100574160(v17, a3 & 1);
    v23 = sub_10000EBD4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *a4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100537088(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *a4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 16 * v14);
  *v21 = a1;
  v21[1] = &off_1008DE048;

  return swift_unknownObjectRelease();
}

uint64_t sub_100537040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100537088(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 16 * a1);
  *v11 = a3;
  v11[1] = &off_1008DE048;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_10053714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6[36] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v6[37] = v7;
  v8 = *(v7 - 8);
  v6[38] = v8;
  v6[39] = *(v8 + 64);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskResponse();
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = *(type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0) - 8);
  v6[49] = swift_task_alloc();
  v10 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v6[50] = v10;
  v11 = *(v10 - 8);
  v6[51] = v11;
  v6[52] = *(v11 + 64);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v12 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v6[56] = v12;
  v6[57] = *(v12 - 8);
  v6[58] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  v6[59] = v13;
  v6[60] = *(v13 - 8);
  v6[61] = swift_task_alloc();
  type metadata accessor for SFAirDrop.NetworkMetrics();
  v6[62] = swift_task_alloc();
  sub_10028088C(&unk_1009755F0, &unk_1007FE9A0);
  v6[63] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v6[64] = swift_task_alloc();
  sub_10028088C(&qword_10097AD68, &unk_1007FDFE0);
  v6[65] = swift_task_alloc();
  sub_10028088C(&qword_100982580, &qword_100808FD0);
  v6[66] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDropReceive.AskRequest();
  v6[67] = v14;
  v15 = *(v14 - 8);
  v6[68] = v15;
  v6[69] = *(v15 + 64);
  v6[70] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.DisplayPriority();
  v6[71] = v16;
  v6[72] = *(v16 - 8);
  v6[73] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v6[74] = v17;
  v6[75] = *(v17 - 8);
  v6[76] = swift_task_alloc();
  type metadata accessor for UUID();
  v6[77] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropReceive.Transfer();
  v6[78] = v18;
  v6[79] = *(v18 - 8);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v19 = type metadata accessor for SFPlatform();
  v6[84] = v19;
  v6[85] = *(v19 - 8);
  v6[86] = swift_task_alloc();
  v20 = type metadata accessor for SFAirDropClient.Identifier();
  v6[87] = v20;
  v6[88] = *(v20 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v21 = type metadata accessor for Date();
  v6[91] = v21;
  v6[92] = *(v21 - 8);
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6[95] = v22;
  v6[96] = *(v22 - 8);
  v6[97] = swift_task_alloc();
  v23 = type metadata accessor for Logger();
  v6[98] = v23;
  v6[99] = *(v23 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v24 = static AirDropActor.shared;
  v6[103] = static AirDropActor.shared;

  return _swift_task_switch(sub_100537990, v24, 0);
}