uint64_t sub_100537990(uint64_t a1)
{
  v2 = v1[97];
  v3 = v1[96];
  v4 = v1[95];
  SFAirDropReceive.AskRequest.id.getter();
  v5 = SFAirDrop.TransferIdentifier.stringValue.getter();
  sub_10054141C(8, v5, v6);

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  Logger.init(subsystem:category:)();
  (*(v3 + 8))(v2, v4);
  static Date.now.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ClassroomReceive StateMachine PreChecks START", v13, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v1[104] = Strong;
  if (Strong)
  {
    v52 = v1[94];
    v64 = v1[93];
    v15 = v1[92];
    v50 = v1[91];
    v47 = v1[90];
    v63 = v1[89];
    v16 = v1[88];
    v17 = v1[86];
    v18 = v1[85];
    v45 = v1[84];
    v46 = v1[87];
    v19 = v1[75];
    v48 = v1[76];
    v49 = v1[74];
    v20 = v1[72];
    v53 = v1[73];
    v54 = v1[71];
    v21 = v1[68];
    v56 = v1[70];
    v57 = v1[67];
    v59 = v1[66];
    v60 = v1[65];
    v61 = v1[64];
    v62 = v1[63];
    v55 = v1[43];
    v58 = v1[42];
    v22 = *(v1[35] + 56);
    v51 = v1[32];
    ObjectType = swift_getObjectType();
    (*(v22 + 16))(3, ObjectType, v22);
    static SFPlatform.iOS.getter();
    v24 = static SFPlatform.isPlatform(_:)();
    (*(v18 + 8))(v17, v45);
    v25 = &enum case for SFAirDropClient.Identifier.airdropUI(_:);
    if ((v24 & 1) == 0)
    {
      v25 = &enum case for SFAirDropClient.Identifier.daemon(_:);
    }

    (*(v16 + 104))(v47, *v25, v46);
    UUID.init()();
    (*(v15 + 16))(v64, v52, v50);
    (*(v19 + 104))(v48, enum case for SFAirDropReceive.Transfer.State.created(_:), v49);
    (*(v20 + 104))(v53, enum case for SFAirDrop.DisplayPriority.normal(_:), v54);
    v26 = *(v21 + 16);
    v1[105] = v26;
    v1[106] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v56, v51, v57);
    (*(v55 + 56))(v59, 1, 1, v58);
    v27 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    v28 = type metadata accessor for SFNWInterfaceType();
    (*(*(v28 - 8) + 56))(v61, 1, 1, v28);
    (*(v16 + 16))(v63, v47, v46);
    v29 = type metadata accessor for SFAirDropReceive.FileInfo();
    (*(*(v29 - 8) + 56))(v62, 1, 1, v29);
    SFAirDrop.NetworkMetrics.init()();
    SFAirDropReceive.Transfer.init(receiveID:startDate:state:displayPriority:askRequest:isPreviewSensitive:askResponse:didAutoAccept:cancelAction:activeInterfaceType:presenter:networkMetrics:fileInfo:)();
    type metadata accessor for SDAirDropContentHandlerFactory();
    v30 = swift_task_alloc();
    v1[107] = v30;
    *v30 = v1;
    v30[1] = sub_1005381E8;
    v31 = v1[83];

    return sub_100584D54((v1 + 7), v31);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ClassroomReceive StateMachine PreChecks FAILED. Delegate is nil - returning .error", v35, 2u);
    }

    v36 = v1[102];
    v37 = v1[99];
    v38 = v1[98];
    v39 = v1[94];
    v40 = v1[92];
    v41 = v1[91];
    v42 = v1[43];
    v65 = v1[42];
    v43 = v1[30];

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
    (*(v42 + 104))(v43, enum case for SFAirDropReceive.AskResponse.error(_:), v65);

    v44 = v1[1];

    return v44();
  }
}

uint64_t sub_1005381E8()
{
  v1 = *(*v0 + 824);

  return _swift_task_switch(sub_1005382F8, v1, 0);
}

uint64_t sub_1005382F8()
{
  if (*(v0 + 80))
  {
    v43 = *(v0 + 816);
    v62 = *(v0 + 800);
    v64 = *(v0 + 808);
    v1 = *(v0 + 792);
    v60 = *(v0 + 784);
    v2 = *(v0 + 664);
    v3 = *(v0 + 656);
    v66 = *(v0 + 648);
    v4 = *(v0 + 632);
    v5 = *(v0 + 624);
    v46 = *(v0 + 560);
    v47 = *(v0 + 544);
    v48 = *(v0 + 536);
    v49 = *(v0 + 640);
    v50 = *(v0 + 488);
    v51 = *(v0 + 480);
    v52 = *(v0 + 472);
    v6 = *(v0 + 280);
    v58 = *(v0 + 272);
    v44 = *(v0 + 264);
    v56 = *(v0 + 248);
    sub_1000121F8((v0 + 56), v0 + 16);
    v7 = *(v4 + 16);
    v53 = v3;
    v7(v3, v2, v5);
    sub_1002A9938(v0 + 16, v0 + 96);
    v45 = *(v6 + 32);
    v8 = *(v1 + 16);
    v8(v64, v43, v60);
    _s15ClassroomRunnerCMa(0);
    v9 = swift_allocObject();
    *(v0 + 864) = v9;
    *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_classroomHandler) = v56;
    v10 = (v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_recordID);
    *v10 = v44;
    v10[1] = v58;
    v7(v66, v3, v5);
    sub_1002A9938(v0 + 96, v0 + 136);
    v8(v62, v64, v60);
    v11 = v8;
    v12 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateContinuation;
    v13 = sub_10028088C(&qword_100982550, &qword_100808ED0);
    (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
    *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_osTransaction) = 0;
    v14 = v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_powerAssertion;
    *v14 = 0;
    *(v14 + 4) = 1;
    *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_displayPriorityReturnToNormalTask) = 0;
    v15 = v56;

    SFAirDropReceive.Transfer.askRequest.getter();
    v16 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_askRequest;
    v17 = *(v47 + 32);
    *(v0 + 872) = v17;
    *(v0 + 880) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v9 + v16, v46, v48);
    sub_1002A9938(v0 + 136, v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler);
    *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus) = v45;
    v11(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log, v62, v60);
    v7(v49, v66, v5);
    sub_10028088C(&qword_1009828E8, &qword_100809270);
    swift_allocObject();
    v18 = v45;
    *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject) = CurrentValueSubject.init(_:)();
    SFAirDropReceive.Transfer.startDate.getter();
    SFAirDropReceive.Transfer.Metrics.init(startDate:)();
    (*(v51 + 32))(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics, v50, v52);
    v19 = type metadata accessor for SDAirDropPlatformLockStateManagerSupported();
    v20 = swift_allocObject();
    v21 = (v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager);
    v21[3] = v19;
    v21[4] = &off_1008E50F8;
    *v21 = v20;
    sub_10068E7B8(v66);
    v22 = *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 24);
    v23 = *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 32);
    sub_10002CDC0((v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager), v22);
    v24 = _s10BaseRunnerCMa(0);
    *(v0 + 176) = v9;
    *(v0 + 200) = v24;
    v25 = *(v23 + 16);

    v25(v0 + 176, "lockStateChanged", v22, v23);
    v26 = *(v1 + 8);
    *(v0 + 888) = v26;
    *(v0 + 896) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v62, v60);
    sub_10000C60C((v0 + 136));
    v27 = *(v4 + 8);
    *(v0 + 904) = v27;
    *(v0 + 912) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v66, v5);
    v26(v64, v60);
    sub_10000C60C((v0 + 96));
    v27(v53, v5);
    sub_10000C60C((v0 + 176));
    *(v0 + 232) = *(v9 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
    sub_100541DE8();

    SFNoThrowAsyncSequence.init<A>(_:)();
    v28 = swift_task_alloc();
    *(v0 + 920) = v28;
    *v28 = v0;
    v28[1] = sub_100538C20;
    v29 = *(v0 + 664);
    v30 = *(v0 + 464);

    return sub_10039AB34(v29, v30);
  }

  else
  {
    sub_100005508(v0 + 56, &qword_1009828E0, &unk_100809260);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "ClassroomReceive StateMachine PreChecks FAILED. Mixed types - returning .mixedTypes", v34, 2u);
    }

    v35 = *(v0 + 792);
    v65 = *(v0 + 784);
    v67 = *(v0 + 816);
    v36 = *(v0 + 736);
    v57 = *(v0 + 728);
    v59 = *(v0 + 752);
    v55 = *(v0 + 720);
    v37 = *(v0 + 704);
    v54 = *(v0 + 696);
    v38 = *(v0 + 664);
    v39 = *(v0 + 632);
    v40 = *(v0 + 624);
    v41 = *(v0 + 344);
    v61 = *(v0 + 240);
    v63 = *(v0 + 336);

    swift_unknownObjectRelease();
    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v55, v54);
    (*(v36 + 8))(v59, v57);
    (*(v35 + 8))(v67, v65);
    (*(v41 + 104))(v61, enum case for SFAirDropReceive.AskResponse.mixedTypes(_:), v63);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_100538C20(char a1)
{
  v4 = *v2;
  *(v4 + 928) = v1;

  v5 = *(v4 + 824);
  if (v1)
  {
    v6 = sub_100539EF4;
  }

  else
  {
    *(v4 + 976) = a1 & 1;
    v6 = sub_100538D60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100538D60(uint64_t a1)
{
  v174 = v1;
  v2 = *(v1 + 976);
  v3 = Logger.logObject.getter();
  if (v2 != 1)
  {
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v3, v43, "ClassroomReceive StateMachine PreChecks FAILED. Delegate.shouldStart returned false - returning .decline", v44, 2u);
    }

    v138 = *(v1 + 904);
    v167 = *(v1 + 888);
    v158 = *(v1 + 784);
    v163 = *(v1 + 816);
    v146 = *(v1 + 752);
    v45 = *(v1 + 736);
    v143 = *(v1 + 728);
    v46 = *(v1 + 704);
    v131 = *(v1 + 696);
    v135 = *(v1 + 720);
    v124 = *(v1 + 624);
    v128 = *(v1 + 664);
    v47 = *(v1 + 456);
    v48 = *(v1 + 464);
    v49 = *(v1 + 448);
    v50 = *(v1 + 344);
    v150 = *(v1 + 240);
    v153 = *(v1 + 336);

    swift_unknownObjectRelease();

    (*(v47 + 8))(v48, v49);
    sub_10000C60C((v1 + 16));
    v138(v128, v124);
    (*(v46 + 8))(v135, v131);
    (*(v45 + 8))(v146, v143);
    v167(v163, v158);
    (*(v50 + 104))(v150, enum case for SFAirDropReceive.AskResponse.decline(_:), v153);
    goto LABEL_19;
  }

  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ClassroomReceive StateMachine PreChecks END", v5, 2u);
  }

  v6 = *(v1 + 248);

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_15;
  }

  v10 = *(v1 + 264);
  v9 = *(v1 + 272);

  v11 = sub_100012854(v10, v9);
  if ((v12 & 1) == 0)
  {

LABEL_15:
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Missing transfer continuation for classroom transfer", v53, 2u);
    }

    v139 = *(v1 + 904);
    v168 = *(v1 + 888);
    v159 = *(v1 + 784);
    v164 = *(v1 + 816);
    v147 = *(v1 + 752);
    v54 = *(v1 + 736);
    v144 = *(v1 + 728);
    v55 = *(v1 + 704);
    v132 = *(v1 + 696);
    v136 = *(v1 + 720);
    v125 = *(v1 + 624);
    v129 = *(v1 + 664);
    v56 = *(v1 + 456);
    v57 = *(v1 + 464);
    v58 = *(v1 + 448);
    v59 = *(v1 + 344);
    v151 = *(v1 + 240);
    v154 = *(v1 + 336);

    swift_unknownObjectRelease();

    (*(v56 + 8))(v57, v58);
    sub_10000C60C((v1 + 16));
    v139(v129, v125);
    (*(v55 + 8))(v136, v132);
    (*(v54 + 8))(v147, v144);
    v168(v164, v159);
    (*(v59 + 104))(v151, enum case for SFAirDropReceive.AskResponse.error(_:), v154);
    goto LABEL_19;
  }

  v14 = *(v1 + 432);
  v13 = *(v1 + 440);
  v15 = *(v1 + 400);
  v16 = *(v1 + 408);
  v17 = *(v1 + 392);
  sub_10054221C(*(v8 + 56) + *(*(v1 + 384) + 72) * v11, v17, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);

  v18 = *(v16 + 16);
  *(v1 + 936) = v18;
  *(v1 + 944) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v14, v17, v15);
  sub_100542284(v17, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
  v19 = *(v16 + 32);
  *(v1 + 952) = v19;
  *(v1 + 960) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v19(v13, v14, v15);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "ClassroomReceive StateMachine PreAccept START", v22, 2u);
  }

  if (SFAirDropReceive.AskRequest.canAutoAccept.getter())
  {
    v23 = *(v1 + 376);
    v24 = *(v1 + 336);
    v25 = *(v1 + 344);
    v26 = *(v1 + 296);
    v27 = *(v1 + 304);
    sub_10028088C(&qword_1009765E8, &qword_100808D60);
    (*(v27 + 104))(v23, enum case for SFAirDropReceive.ItemDestination.default(_:), v26);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v28 = enum case for SFAirDropReceive.AskResponse.accept(_:);
    (*(v25 + 104))(v23, enum case for SFAirDropReceive.AskResponse.accept(_:), v24);
    v29 = *(*(v1 + 344) + 16);
    v29(*(v1 + 368), *(v1 + 376), *(v1 + 336));
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v1 + 368);
    v35 = *(v1 + 336);
    v34 = *(v1 + 344);
    if (v32)
    {
      v162 = v28;
      v36 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v173[0] = v157;
      *v36 = 136315138;
      sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
      v37 = v29;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v171 = *(v34 + 8);
      v171(v33, v35);
      v41 = v38;
      v29 = v37;
      v42 = sub_10000C4E4(v41, v40, v173);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v30, v31, "ClassroomReceive StateMachine PreAccept END {response: %s", v36, 0xCu);
      sub_10000C60C(v157);

      v28 = v162;
    }

    else
    {

      v171 = *(v34 + 8);
      v171(v33, v35);
    }

    v64 = *(v1 + 360);
    v66 = *(v1 + 336);
    v65 = *(v1 + 344);
    v29(v64, *(v1 + 376), v66);
    v67 = (*(v65 + 88))(v64, v66);
    v68 = *(v1 + 360);
    v69 = *(v1 + 336);
    if (v67 == v28)
    {
      v70 = *(v1 + 320);
      v71 = *(v1 + 328);
      v72 = *(v1 + 296);
      v73 = *(v1 + 304);
      (*(*(v1 + 344) + 96))(*(v1 + 360), v69);
      v74 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
      v169 = *(v73 + 32);
      v169(v71, v68, v72);
      v75 = type metadata accessor for SFAirDropReceive.AcceptContext();
      (*(*(v75 - 8) + 8))(v68 + v74, v75);
      (*(v73 + 104))(v70, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v72);
      sub_100542734(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      LOBYTE(v71) = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = *(v73 + 8);
      v76(v70, v72);
      if ((v71 & 1) == 0)
      {
        v141 = *(v1 + 952);
        v114 = *(v1 + 936);
        v148 = *(v1 + 872);
        v155 = v76;
        v140 = *(v1 + 864);
        v118 = *(v1 + 840);
        v166 = *(v1 + 560);
        v126 = *(v1 + 544);
        v160 = *(v1 + 536);
        v109 = *(v1 + 440);
        v90 = *(v1 + 424);
        v112 = v90;
        v121 = *(v1 + 416);
        v116 = *(v1 + 408);
        v91 = *(v1 + 400);
        v92 = *(v1 + 320);
        v172 = *(v1 + 328);
        v93 = *(v1 + 304);
        v120 = *(v1 + 312);
        v95 = *(v1 + 288);
        v94 = *(v1 + 296);
        v110 = v94;
        v133 = v95;
        v111 = *(v1 + 256);
        v89 = type metadata accessor for TaskPriority();
        (*(*(v89 - 8) + 56))(v95, 1, 1, v89);
        v114(v90, v109, v91);
        (*(v93 + 16))(v92, v172, v94);
        v118(v166, v111, v160);
        v96 = (*(v116 + 80) + 24) & ~*(v116 + 80);
        v97 = (v121 + *(v93 + 80) + v96) & ~*(v93 + 80);
        v98 = (v120 + *(v126 + 80) + v97) & ~*(v126 + 80);
        v99 = swift_allocObject();
        *(v99 + 16) = v140;
        v141(v99 + v96, v112, v91);
        v169(v99 + v97, v92, v110);
        v148(v99 + v98, v166, v160);
        _s10BaseRunnerC11FinishTokenVMa(0);

        v165 = static Task<>.noThrow(priority:operation:)();

        sub_100005508(v133, &qword_100976160, &qword_1007F8770);
        v155(v172, v110);
LABEL_35:
        v137 = *(v1 + 904);
        v170 = *(v1 + 888);
        v100 = *(v1 + 824);
        v156 = *(v1 + 784);
        v161 = *(v1 + 816);
        v101 = *(v1 + 736);
        v149 = *(v1 + 728);
        v152 = *(v1 + 752);
        v102 = *(v1 + 704);
        v127 = *(v1 + 696);
        v130 = *(v1 + 720);
        v122 = *(v1 + 624);
        v123 = *(v1 + 664);
        v103 = *(v1 + 456);
        v117 = *(v1 + 448);
        v119 = *(v1 + 464);
        v104 = *(v1 + 408);
        v113 = *(v1 + 400);
        v115 = *(v1 + 440);
        v105 = *(v1 + 344);
        v142 = *(v1 + 336);
        v145 = *(v1 + 376);
        v106 = *(v1 + 288);
        v134 = *(v1 + 240);
        type metadata accessor for TaskPriority();
        (*(*(v89 - 8) + 56))(v106, 1, 1, v89);
        v107 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
        v108 = swift_allocObject();
        v108[2] = v100;
        v108[3] = v107;
        v108[4] = v165;

        sub_1002B3098(0, 0, v106, &unk_1008092E0, v108);

        swift_unknownObjectRelease();

        (*(v104 + 8))(v115, v113);
        (*(v103 + 8))(v119, v117);
        sub_10000C60C((v1 + 16));
        v137(v123, v122);
        (*(v102 + 8))(v130, v127);
        (*(v101 + 8))(v152, v149);
        v170(v161, v156);
        (*(v105 + 32))(v134, v145, v142);
LABEL_19:

        v60 = *(v1 + 8);

        return v60();
      }

      v76(*(v1 + 328), *(v1 + 296));
    }

    else
    {
      v171(*(v1 + 360), v69);
    }

    v29(*(v1 + 352), *(v1 + 376), *(v1 + 336));
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v1 + 352);
    v81 = *(v1 + 336);
    if (v79)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v173[0] = v83;
      *v82 = 136315138;
      sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v171(v80, v81);
      v87 = sub_10000C4E4(v84, v86, v173);

      *(v82 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "ClassroomReceive StateMachine PostAccept SKIPPED. {askResult.response: %s}", v82, 0xCu);
      sub_10000C60C(v83);
    }

    else
    {

      v171(v80, v81);
    }

    v88 = *(v1 + 288);
    v89 = type metadata accessor for TaskPriority();
    (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
    _s10BaseRunnerC11FinishTokenVMa(0);

    v165 = static Task<>.noThrow(priority:operation:)();

    sub_100005508(v88, &qword_100976160, &qword_1007F8770);
    goto LABEL_35;
  }

  v62 = swift_task_alloc();
  *(v1 + 968) = v62;
  *v62 = v1;
  v62[1] = sub_10053A2A4;
  v63 = *(v1 + 376);

  return sub_1002DDCCC(v63);
}

uint64_t sub_100539EF4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ClassroomReceive StateMachine PreCheck FAILED. Delegate.shouldStart threw and error - returning .error", v4, 2u);
  }

  v17 = v1[113];
  v24 = v1[111];
  v22 = v1[98];
  v23 = v1[102];
  v19 = v1[94];
  v5 = v1[92];
  v18 = v1[91];
  v6 = v1[88];
  v15 = v1[87];
  v16 = v1[90];
  v13 = v1[78];
  v14 = v1[83];
  v7 = v1[57];
  v8 = v1[58];
  v9 = v1[56];
  v10 = v1[43];
  v20 = v1[30];
  v21 = v1[42];

  swift_unknownObjectRelease();

  (*(v7 + 8))(v8, v9);
  sub_10000C60C(v1 + 2);
  v17(v14, v13);
  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v19, v18);
  v24(v23, v22);
  (*(v10 + 104))(v20, enum case for SFAirDropReceive.AskResponse.error(_:), v21);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10053A2A4()
{
  v1 = *(*v0 + 824);

  return _swift_task_switch(sub_10053A3B4, v1, 0);
}

uint64_t sub_10053A3B4()
{
  v100 = v0;
  v1 = *(v0[43] + 16);
  v1(v0[46], v0[47], v0[42]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[46];
  v6 = v0[42];
  v7 = v0[43];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v99[0] = v92;
    *v8 = 136315138;
    sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v97 = *(v7 + 8);
    v97(v5, v6);
    v12 = sub_10000C4E4(v9, v11, v99);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "ClassroomReceive StateMachine PreAccept END {response: %s", v8, 0xCu);
    sub_10000C60C(v92);
  }

  else
  {

    v97 = *(v7 + 8);
    v97(v5, v6);
  }

  v13 = v0[45];
  v14 = v0[42];
  v15 = v0[43];
  v1(v13, v0[47], v14);
  v16 = (*(v15 + 88))(v13, v14);
  v17 = v0[45];
  v18 = v0[42];
  if (v16 != enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v97(v0[45], v18);
    v1(v0[44], v0[47], v0[42]);
    goto LABEL_8;
  }

  v19 = v0[40];
  v20 = v0[41];
  v21 = v0[37];
  v22 = v0[38];
  (*(v0[43] + 96))(v0[45], v18);
  v23 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
  v95 = *(v22 + 32);
  v95(v20, v17, v21);
  v24 = type metadata accessor for SFAirDropReceive.AcceptContext();
  (*(*(v24 - 8) + 8))(v17 + v23, v24);
  (*(v22 + 104))(v19, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v21);
  sub_100542734(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v22 + 8);
  v25(v19, v21);
  if (v20)
  {
    v25(v0[41], v0[37]);
    v1(v0[44], v0[47], v0[42]);
LABEL_8:
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[44];
    v30 = v0[42];
    if (v28)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v99[0] = v32;
      *v31 = 136315138;
      sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v97(v29, v30);
      v36 = sub_10000C4E4(v33, v35, v99);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "ClassroomReceive StateMachine PostAccept SKIPPED. {askResult.response: %s}", v31, 0xCu);
      sub_10000C60C(v32);
    }

    else
    {

      v97(v29, v30);
    }

    v37 = v0[36];
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    _s10BaseRunnerC11FinishTokenVMa(0);

    v93 = static Task<>.noThrow(priority:operation:)();

    sub_100005508(v37, &qword_100976160, &qword_1007F8770);
    goto LABEL_13;
  }

  v82 = v0[119];
  v65 = v0[117];
  v85 = v0[109];
  v88 = v25;
  v81 = v0[108];
  v69 = v0[105];
  v94 = v0[70];
  v75 = v0[68];
  v90 = v0[67];
  v60 = v0[55];
  v39 = v0[53];
  v63 = v39;
  v72 = v0[52];
  v67 = v0[51];
  v40 = v0[50];
  v41 = v0[40];
  v98 = v0[41];
  v42 = v0[38];
  v71 = v0[39];
  v44 = v0[36];
  v43 = v0[37];
  v61 = v43;
  v78 = v44;
  v62 = v0[32];
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v44, 1, 1, v38);
  v65(v39, v60, v40);
  (*(v42 + 16))(v41, v98, v43);
  v69(v94, v62, v90);
  v45 = (*(v67 + 80) + 24) & ~*(v67 + 80);
  v46 = (v72 + *(v42 + 80) + v45) & ~*(v42 + 80);
  v47 = (v71 + *(v75 + 80) + v46) & ~*(v75 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v81;
  v82(v48 + v45, v63, v40);
  v95(v48 + v46, v41, v61);
  v85(v48 + v47, v94, v90);
  _s10BaseRunnerC11FinishTokenVMa(0);

  v93 = static Task<>.noThrow(priority:operation:)();

  sub_100005508(v78, &qword_100976160, &qword_1007F8770);
  v88(v98, v61);
LABEL_13:
  v80 = v0[113];
  v96 = v0[111];
  v49 = v0[103];
  v89 = v0[98];
  v91 = v0[102];
  v50 = v0[92];
  v86 = v0[91];
  v87 = v0[94];
  v51 = v0[88];
  v76 = v0[87];
  v77 = v0[90];
  v73 = v0[78];
  v74 = v0[83];
  v52 = v0[57];
  v68 = v0[56];
  v70 = v0[58];
  v53 = v0[51];
  v64 = v0[50];
  v66 = v0[55];
  v54 = v0[43];
  v83 = v0[42];
  v84 = v0[47];
  v55 = v0[36];
  v79 = v0[30];
  type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
  v56 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v57 = swift_allocObject();
  v57[2] = v49;
  v57[3] = v56;
  v57[4] = v93;

  sub_1002B3098(0, 0, v55, &unk_1008092E0, v57);

  swift_unknownObjectRelease();

  (*(v53 + 8))(v66, v64);
  (*(v52 + 8))(v70, v68);
  sub_10000C60C(v0 + 2);
  v80(v74, v73);
  (*(v51 + 8))(v77, v76);
  (*(v50 + 8))(v87, v86);
  v96(v91, v89);
  (*(v54 + 32))(v79, v84, v83);

  v58 = v0[1];

  return v58();
}

uint64_t sub_10053AF80(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10053AFB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100541368(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_100541304(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100026AC0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10053B100()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982810);
  v1 = sub_10000C4AC(v0, qword_100982810);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10053B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[39] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskResponse();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v7 = _s6RunnerC19PreAcceptRunResultsVMa(0);
  v4[47] = v7;
  v8 = *(v7 - 8);
  v4[48] = v8;
  v4[49] = *(v8 + 64);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v9 = sub_10028088C(&qword_10097AD00, &qword_1007FDF30);
  v4[55] = v9;
  v4[56] = *(v9 - 8);
  v4[57] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v4[58] = v10;
  v4[59] = *(v10 - 8);
  v4[60] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.DeclineAction();
  v4[61] = v11;
  v4[62] = *(v11 - 8);
  v4[63] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  v4[64] = v12;
  v4[65] = *(v12 - 8);
  v4[66] = swift_task_alloc();
  type metadata accessor for SFAirDrop.NetworkMetrics();
  v4[67] = swift_task_alloc();
  sub_10028088C(&unk_1009755F0, &unk_1007FE9A0);
  v4[68] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v4[69] = swift_task_alloc();
  sub_10028088C(&qword_10097AD68, &unk_1007FDFE0);
  v4[70] = swift_task_alloc();
  sub_10028088C(&qword_100982580, &qword_100808FD0);
  v4[71] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.AskRequest();
  v4[72] = v13;
  v4[73] = *(v13 - 8);
  v4[74] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.DisplayPriority();
  v4[75] = v14;
  v4[76] = *(v14 - 8);
  v4[77] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4[78] = v15;
  v4[79] = *(v15 - 8);
  v4[80] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v4[81] = v16;
  v4[82] = *(v16 - 8);
  v4[83] = swift_task_alloc();
  v17 = type metadata accessor for SFAirDropReceive.Transfer();
  v4[84] = v17;
  v4[85] = *(v17 - 8);
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropClient.Identifier();
  v4[90] = v18;
  v4[91] = *(v18 - 8);
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDrop.TransferType();
  v4[95] = v19;
  v4[96] = *(v19 - 8);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v20 = type metadata accessor for Date();
  v4[99] = v20;
  v4[100] = *(v20 - 8);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v21 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[103] = v21;
  v4[104] = *(v21 - 8);
  v4[105] = swift_task_alloc();
  v22 = type metadata accessor for Logger();
  v4[106] = v22;
  v23 = *(v22 - 8);
  v4[107] = v23;
  v4[108] = *(v23 + 64);
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v24 = static AirDropActor.shared;
  v4[112] = static AirDropActor.shared;

  return _swift_task_switch(sub_10053BAD8, v24, 0);
}

uint64_t sub_10053BAD8(uint64_t a1)
{
  v2 = v1[105];
  v3 = v1[104];
  v4 = v1[103];
  SFAirDropReceive.AskRequest.id.getter();
  v5 = SFAirDrop.TransferIdentifier.stringValue.getter();
  sub_10054141C(8, v5, v6);

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  Logger.init(subsystem:category:)();
  (*(v3 + 8))(v2, v4);
  static Date.now.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Receive StateMachine PreChecks START", v13, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v1[113] = Strong;
  if (Strong)
  {
    v15 = v1[98];
    v16 = v1[96];
    v17 = v1[95];
    SFAirDropReceive.AskRequest.type.getter();
    v18 = SFAirDrop.TransferType.isOnlyExchange.getter();
    v19 = *(v16 + 8);
    v1[114] = v19;
    v1[115] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    if ((v18 & 1) == 0)
    {
      v20 = *(v1[38] + 56);
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(3, ObjectType, v20);
    }

    v22 = swift_task_alloc();
    v1[116] = v22;
    *v22 = v1;
    v22[1] = sub_10053C0A4;
    v23 = v1[37];

    return sub_1005414B8(v23);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Receive StateMachine PreChecks FAILED. Delegate is nil - returning .error", v27, 2u);
    }

    v28 = v1[111];
    v29 = v1[107];
    v30 = v1[106];
    v31 = v1[102];
    v32 = v1[100];
    v33 = v1[99];
    v34 = v1[41];
    v37 = v1[40];
    v35 = v1[35];

    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v28, v30);
    (*(v34 + 104))(v35, enum case for SFAirDropReceive.AskResponse.error(_:), v37);

    v36 = v1[1];

    return v36();
  }
}

uint64_t sub_10053C0A4(char a1)
{
  v2 = *(*v1 + 896);
  *(*v1 + 1048) = a1;

  return _swift_task_switch(sub_10053C1BC, v2, 0);
}

uint64_t sub_10053C1BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[94];
  if (Strong)
  {
    v3 = v0[93];
    v4 = v0[91];
    v5 = v0[90];
    sub_10043A598(v3);
    swift_unknownObjectRelease();
    (*(v4 + 32))(v2, v3, v5);
  }

  else
  {
    (*(v0[91] + 104))(v0[94], enum case for SFAirDropClient.Identifier.daemon(_:), v0[90]);
  }

  v6 = v0[114];
  v7 = v0[98];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[95];
  SFAirDropReceive.AskRequest.type.getter();
  (*(v9 + 104))(v8, enum case for SFAirDrop.TransferType.peerPayment(_:), v10);
  v11 = static SFAirDrop.TransferType.== infix(_:_:)();
  v6(v8, v10);
  v6(v7, v10);
  if (v11)
  {
    v12 = v0[94];
    v13 = v0[91];
    v14 = v0[90];
    (*(v13 + 8))(v12, v14);
    (*(v13 + 104))(v12, enum case for SFAirDropClient.Identifier.wallet(_:), v14);
  }

  v15 = v0[101];
  v16 = v0[100];
  v30 = v0[99];
  v31 = v0[102];
  v45 = v0[94];
  v43 = v0[92];
  v41 = v0[91];
  v44 = v0[90];
  v17 = v0[80];
  v18 = v0[79];
  v29 = v0[78];
  v19 = v0[76];
  v33 = v0[77];
  v34 = v0[75];
  v20 = v0[73];
  v35 = v0[74];
  v36 = v0[72];
  v37 = v0[71];
  v39 = v0[70];
  v40 = v0[69];
  v42 = v0[68];
  v21 = v0[62];
  v38 = v0[61];
  v22 = v0[41];
  v32 = v0[40];
  v23 = v0[37];
  (*(v0[82] + 16))();
  (*(v16 + 16))(v15, v31, v30);
  (*(v18 + 104))(v17, enum case for SFAirDropReceive.Transfer.State.created(_:), v29);
  (*(v19 + 104))(v33, enum case for SFAirDrop.DisplayPriority.normal(_:), v34);
  (*(v20 + 16))(v35, v23, v36);
  (*(v22 + 56))(v37, 1, 1, v32);
  (*(v21 + 56))(v39, 1, 1, v38);
  v24 = type metadata accessor for SFNWInterfaceType();
  (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  (*(v41 + 16))(v43, v45, v44);
  v25 = type metadata accessor for SFAirDropReceive.FileInfo();
  (*(*(v25 - 8) + 56))(v42, 1, 1, v25);
  SFAirDrop.NetworkMetrics.init()();
  SFAirDropReceive.Transfer.init(receiveID:startDate:state:displayPriority:askRequest:isPreviewSensitive:askResponse:didAutoAccept:cancelAction:activeInterfaceType:presenter:networkMetrics:fileInfo:)();
  type metadata accessor for SDAirDropContentHandlerFactory();
  v26 = swift_task_alloc();
  v0[117] = v26;
  *v26 = v0;
  v26[1] = sub_10053C648;
  v27 = v0[89];

  return sub_100584D54((v0 + 7), v27);
}

uint64_t sub_10053C648()
{
  v1 = *(*v0 + 896);

  return _swift_task_switch(sub_10053C758, v1, 0);
}

uint64_t sub_10053C758()
{
  v1 = v0;
  if (v0[10])
  {
    v55 = v0[111];
    v2 = v0[110];
    v3 = v0[107];
    v83 = v0[109];
    v4 = v0[106];
    v5 = v0[89];
    v6 = v0[88];
    v79 = v6;
    v73 = v0[87];
    v61 = v0[86];
    v7 = v0[85];
    v65 = v7;
    v8 = v0[84];
    v81 = v8;
    v58 = v0[74];
    v59 = v0[73];
    v60 = v0[72];
    v62 = v0[66];
    v63 = v0[65];
    v64 = v0[64];
    v69 = v0[63];
    v70 = v0[62];
    v71 = v0[61];
    v66 = v0[60];
    v67 = v0[59];
    v68 = v0[58];
    v9 = v0[38];
    v75 = v1[36];
    sub_1000121F8((v1 + 7), (v1 + 2));
    v10 = *(v7 + 16);
    v10(v6, v5, v8);
    v56 = v10;
    sub_1002A9938((v1 + 2), (v1 + 12));
    v11 = *(v9 + 40);
    v57 = *(v9 + 32);
    v12 = *(v3 + 16);
    v1[118] = v12;
    v1[119] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v2, v55, v4);
    _s6RunnerCMa_0(0);
    v13 = swift_allocObject();
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_delegateCanAutoAccept) = 0;
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_nearbyAgent) = v11;
    v1[120] = v13;
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler) = v75;
    v10(v73, v79, v8);
    sub_1002A9938((v1 + 12), (v1 + 17));
    v14 = v4;
    v77 = v4;
    v12(v83, v2, v4);
    v15 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateContinuation;
    v16 = sub_10028088C(&qword_100982550, &qword_100808ED0);
    (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_osTransaction) = 0;
    v17 = v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_powerAssertion;
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_displayPriorityReturnToNormalTask) = 0;
    v18 = v11;
    v19 = v75;
    SFAirDropReceive.Transfer.askRequest.getter();
    (*(v59 + 32))(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_askRequest, v58, v60);
    sub_1002A9938((v1 + 17), v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler);
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus) = v57;
    v12(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log, v83, v14);
    v56(v61, v73, v8);
    sub_10028088C(&qword_1009828E8, &qword_100809270);
    swift_allocObject();
    v20 = v57;
    *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject) = CurrentValueSubject.init(_:)();
    SFAirDropReceive.Transfer.startDate.getter();
    SFAirDropReceive.Transfer.Metrics.init(startDate:)();
    (*(v63 + 32))(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics, v62, v64);
    v21 = type metadata accessor for SDAirDropPlatformLockStateManagerSupported();
    v22 = swift_allocObject();
    v23 = (v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager);
    v23[3] = v21;
    v23[4] = &off_1008E50F8;
    *v23 = v22;
    sub_10068E7B8(v73);
    v24 = *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 24);
    v25 = *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager + 32);
    sub_10002CDC0((v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_lockStateManager), v24);
    v26 = _s10BaseRunnerCMa(0);
    v1[27] = v13;
    v1[30] = v26;
    v27 = *(v25 + 16);

    v27(v1 + 27, "lockStateChanged", v24, v25);
    v28 = *(v3 + 8);
    v1[121] = v28;
    v1[122] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v83, v77);
    sub_10000C60C(v1 + 17);
    v29 = *(v65 + 8);
    v1[123] = v29;
    v1[124] = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v73, v81);
    sub_10000C60C(v1 + 27);
    *v66 = 0x662E657261757173;
    v66[1] = 0xEB000000006C6C69;
    (*(v67 + 104))(v66, enum case for SFAirDrop.ButtonConfiguration.symbol(_:), v68);
    swift_allocObject();
    swift_weakInit();

    SFAirDrop.DeclineAction.init(id:buttonConfiguration:hidden:operation:)();

    sub_100688010(v69);

    v29(v73, v81);
    (*(v70 + 8))(v69, v71);
    v28(v2, v77);
    sub_10000C60C(v1 + 12);
    v29(v79, v81);
    v30 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
    if (v31)
    {
      v32 = v31;
      v33 = v30;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_nearFieldService;
        v36 = Strong;
        swift_beginAccess();
        sub_1002A9938(v36 + v35, (v1 + 22));
        v37 = v1[25];
        v38 = v1[26];
        sub_10002CDC0(v1 + 22, v37);
        v39 = (*(v38 + 104))(v33, v32, v37, v38);

        swift_unknownObjectRelease();
        sub_10000C60C(v1 + 22);
      }

      else
      {

        v39 = 0;
      }

      *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_delegateCanAutoAccept) = v39 & 1;
    }

    v1[34] = *(v13 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
    sub_100541DE8();

    SFNoThrowAsyncSequence.init<A>(_:)();

    v52 = swift_task_alloc();
    v1[125] = v52;
    *v52 = v1;
    v52[1] = sub_10053D28C;
    v53 = v1[57];
    v54 = v1[89];

    return sub_10039AB34(v54, v53);
  }

  else
  {
    sub_100005508((v0 + 7), &qword_1009828E0, &unk_100809260);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Receive StateMachine PreChecks FAILED. Mixed types - returning .mixedTypes", v42, 2u);
    }

    v43 = v0[107];
    v84 = v0[106];
    v85 = v0[111];
    v44 = v0[100];
    v76 = v0[99];
    v78 = v0[102];
    v45 = v0[91];
    v72 = v0[90];
    v74 = v0[94];
    v46 = v0[89];
    v47 = v0[85];
    v48 = v0[84];
    v49 = v0[41];
    v80 = v0[35];
    v82 = v0[40];

    swift_unknownObjectRelease();
    (*(v47 + 8))(v46, v48);
    (*(v45 + 8))(v74, v72);
    (*(v44 + 8))(v78, v76);
    (*(v43 + 8))(v85, v84);
    (*(v49 + 104))(v80, enum case for SFAirDropReceive.AskResponse.mixedTypes(_:), v82);

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_10053D28C(char a1)
{
  v4 = *v2;
  *(v4 + 1008) = v1;

  v5 = *(v4 + 896);
  if (v1)
  {
    v6 = sub_10053D8F4;
  }

  else
  {
    *(v4 + 1049) = a1 & 1;
    v6 = sub_10053D3CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10053D3CC(uint64_t a1)
{
  v2 = *(v1 + 1049);
  v3 = Logger.logObject.getter();
  if (v2 == 1)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Receive StateMachine PreChecks END", v5, 2u);
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Receive StateMachine PreAccept START", v8, 2u);
    }

    v9 = swift_task_alloc();
    *(v1 + 1016) = v9;
    *v9 = v1;
    v9[1] = sub_10053DCC4;
    v10 = *(v1 + 432);

    return sub_100505550(v10);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, v12, "Receive StateMachine PreChecks FAILED. Delegate.shouldStart returned false - returning .decline", v13, 2u);
    }

    v25 = *(v1 + 984);
    v32 = *(v1 + 968);
    v30 = *(v1 + 848);
    v31 = *(v1 + 888);
    v14 = *(v1 + 800);
    v26 = *(v1 + 792);
    v27 = *(v1 + 816);
    v15 = *(v1 + 728);
    v23 = *(v1 + 720);
    v24 = *(v1 + 752);
    v21 = *(v1 + 672);
    v22 = *(v1 + 712);
    v16 = *(v1 + 448);
    v17 = *(v1 + 456);
    v18 = *(v1 + 440);
    v19 = *(v1 + 328);
    v28 = *(v1 + 280);
    v29 = *(v1 + 320);

    swift_unknownObjectRelease();

    (*(v16 + 8))(v17, v18);
    sub_10000C60C((v1 + 16));
    v25(v22, v21);
    (*(v15 + 8))(v24, v23);
    (*(v14 + 8))(v27, v26);
    v32(v31, v30);
    (*(v19 + 104))(v28, enum case for SFAirDropReceive.AskResponse.decline(_:), v29);

    v20 = *(v1 + 8);

    return v20();
  }
}

uint64_t sub_10053D8F4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receive StateMachine PreCheck FAILED. Delegate.shouldStart threw and error - returning .error", v4, 2u);
  }

  v17 = v1[123];
  v24 = v1[121];
  v22 = v1[106];
  v23 = v1[111];
  v5 = v1[100];
  v18 = v1[99];
  v19 = v1[102];
  v6 = v1[91];
  v15 = v1[90];
  v16 = v1[94];
  v13 = v1[84];
  v14 = v1[89];
  v7 = v1[56];
  v8 = v1[57];
  v9 = v1[55];
  v10 = v1[41];
  v20 = v1[35];
  v21 = v1[40];

  swift_unknownObjectRelease();

  (*(v7 + 8))(v8, v9);
  sub_10000C60C(v1 + 2);
  v17(v14, v13);
  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v19, v18);
  v24(v23, v22);
  (*(v10 + 104))(v20, enum case for SFAirDropReceive.AskResponse.error(_:), v21);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10053DCC4()
{
  v1 = *(*v0 + 896);

  return _swift_task_switch(sub_10053DDD4, v1, 0);
}

uint64_t sub_10053DDD4()
{
  v105 = v0;
  v1 = v0[54];
  v2 = v0[52];
  sub_10054221C(v1, v0[53], _s6RunnerC19PreAcceptRunResultsVMa);
  sub_10054221C(v1, v2, _s6RunnerC19PreAcceptRunResultsVMa);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[80];
    v6 = v0[79];
    v7 = v0[78];
    v100 = v4;
    v8 = v0[53];
    v99 = v0[52];
    v9 = swift_slowAlloc();
    v104[0] = swift_slowAlloc();
    *v9 = 136315394;
    sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100542284(v8, _s6RunnerC19PreAcceptRunResultsVMa);
    v13 = sub_10000C4E4(v10, v12, v104);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v6 + 8))(v5, v7);
    sub_100542284(v99, _s6RunnerC19PreAcceptRunResultsVMa);
    v17 = sub_10000C4E4(v14, v16, v104);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v100, "Receive StateMachine PreAccept END {response: %s, transfer.state: %s}", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[52];
    v18 = v0[53];

    sub_100542284(v19, _s6RunnerC19PreAcceptRunResultsVMa);
    sub_100542284(v18, _s6RunnerC19PreAcceptRunResultsVMa);
  }

  v20 = v0[54];
  v22 = v0[41];
  v21 = v0[42];
  v23 = v0[40];
  v24 = *(v22 + 16);
  v0[128] = v24;
  v0[129] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v21, v20, v23);
  if ((*(v22 + 88))(v21, v23) == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v25 = v0[45];
    v26 = v0[46];
    v27 = v0[43];
    v28 = v0[44];
    v29 = v0[42];
    (*(v0[41] + 96))(v29, v0[40]);
    v30 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    (*(v28 + 32))(v26, v29, v27);
    v31 = type metadata accessor for SFAirDropReceive.AcceptContext();
    (*(*(v31 - 8) + 8))(v29 + v30, v31);
    (*(v28 + 104))(v25, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v27);
    sub_100542734(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
    LOBYTE(v26) = dispatch thunk of static Equatable.== infix(_:_:)();
    v103 = *(v28 + 8);
    v103(v25, v27);
    if (v26 & 1) == 0 || (v32 = v0[114], v33 = v0[98], v34 = v0[95], v35 = v0[74], v36 = v0[73], v37 = v0[72], SFAirDropReceive.Transfer.askRequest.getter(), SFAirDropReceive.AskRequest.type.getter(), (*(v36 + 8))(v35, v37), v38 = SFAirDrop.TransferType.isOnlyExchange.getter(), v32(v33, v34), (v38))
    {
      v94 = v0[120];
      v39 = v0[118];
      v40 = v0[111];
      v41 = v0[110];
      v84 = v41;
      v42 = v0[107];
      v43 = v0[106];
      v44 = v0[54];
      v45 = v0[51];
      v87 = v0[108];
      v89 = v0[49];
      v85 = v0[48];
      v96 = v0[46];
      v101 = v0[43];
      v46 = v0[39];
      v91 = v0[36];
      v98 = type metadata accessor for TaskPriority();
      v97 = *(*(v98 - 8) + 56);
      v97(v46, 1, 1, v98);
      v47 = v41;
      v48 = v43;
      v39(v47, v40, v43);
      sub_10054221C(v44, v45, _s6RunnerC19PreAcceptRunResultsVMa);
      v49 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v50 = (v87 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = (*(v85 + 80) + v50 + 8) & ~*(v85 + 80);
      v52 = swift_allocObject();
      (*(v42 + 32))(v52 + v49, v84, v48);
      *(v52 + v50) = v94;
      sub_100541F9C(v45, v52 + v51);
      *(v52 + ((v89 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = v91;
      _s10BaseRunnerC11FinishTokenVMa(0);
      v53 = v91;

      v54 = static Task<>.noThrow(priority:operation:)();

      sub_100005508(v46, &qword_100976160, &qword_1007F8770);
      v103(v96, v101);
      v102 = v0[128];
      v83 = v0[123];
      v95 = v0[121];
      v55 = v0[112];
      v92 = v0[106];
      v93 = v0[111];
      v56 = v0[100];
      v86 = v0[99];
      v57 = v0[91];
      v80 = v0[90];
      v81 = v0[94];
      v78 = v0[84];
      v79 = v0[89];
      v58 = v0[56];
      v59 = v0[54];
      v76 = v0[55];
      v77 = v0[57];
      v60 = v0[39];
      v88 = v0[40];
      v90 = v0[102];
      v82 = v0[35];
      v97(v60, 1, 1, v98);
      v61 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v62 = swift_allocObject();
      v62[2] = v55;
      v62[3] = v61;
      v62[4] = v54;

      sub_1002B3098(0, 0, v60, &unk_100809290, v62);

      swift_unknownObjectRelease();

      (*(v58 + 8))(v77, v76);
      sub_10000C60C(v0 + 2);
      v83(v79, v78);
      (*(v57 + 8))(v81, v80);
      (*(v56 + 8))(v90, v86);
      v95(v93, v92);
      v102(v82, v59, v88);
      sub_100542284(v59, _s6RunnerC19PreAcceptRunResultsVMa);

      v63 = v0[1];

      return v63();
    }

    v103(v0[46], v0[43]);
  }

  else
  {
    (*(v0[41] + 8))(v0[42], v0[40]);
  }

  sub_10054221C(v0[54], v0[50], _s6RunnerC19PreAcceptRunResultsVMa);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v0[50];
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v104[0] = v70;
    *v69 = 136315138;
    sub_100542734(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    sub_100542284(v68, _s6RunnerC19PreAcceptRunResultsVMa);
    v74 = sub_10000C4E4(v71, v73, v104);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v65, v66, "Receive StateMachine PostAccept SKIPPED. {preResults.response: %s}", v69, 0xCu);
    sub_10000C60C(v70);
  }

  else
  {

    sub_100542284(v68, _s6RunnerC19PreAcceptRunResultsVMa);
  }

  v75 = swift_task_alloc();
  v0[130] = v75;
  *v75 = v0;
  v75[1] = sub_10053EA90;

  return sub_10068D33C();
}

uint64_t sub_10053EA90()
{
  v1 = *(*v0 + 896);

  return _swift_task_switch(sub_10053EBA0, v1, 0);
}

uint64_t sub_10053EBA0()
{
  v1 = v0[39];
  v2 = type metadata accessor for TaskPriority();
  v3 = *(*(v2 - 8) + 56);
  v3(v1, 1, 1, v2);
  _s10BaseRunnerC11FinishTokenVMa(0);

  v4 = static Task<>.noThrow(priority:operation:)();

  sub_100005508(v1, &qword_100976160, &qword_1007F8770);
  v29 = v0[128];
  v21 = v0[123];
  v28 = v0[121];
  v5 = v0[112];
  v26 = v0[106];
  v27 = v0[111];
  v25 = v0[102];
  v6 = v0[100];
  v7 = v0[91];
  v18 = v0[90];
  v19 = v0[94];
  v16 = v0[84];
  v17 = v0[89];
  v8 = v0[56];
  v14 = v0[55];
  v15 = v0[57];
  v22 = v0[99];
  v23 = v0[54];
  v9 = v0[39];
  v24 = v0[40];
  v20 = v0[35];
  v3(v9, 1, 1, v2);
  v10 = sub_100542734(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v10;
  v11[4] = v4;

  sub_1002B3098(0, 0, v9, &unk_100809290, v11);

  swift_unknownObjectRelease();

  (*(v8 + 8))(v15, v14);
  sub_10000C60C(v0 + 2);
  v21(v17, v16);
  (*(v7 + 8))(v19, v18);
  (*(v6 + 8))(v25, v22);
  v28(v27, v26);
  v29(v20, v23, v24);
  sub_100542284(v23, _s6RunnerC19PreAcceptRunResultsVMa);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10053F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for SFAirDropReceive.Failure();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v8 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer();
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v5[26] = static AirDropActor.shared;

  return _swift_task_switch(sub_10053F348, v11, 0);
}

uint64_t sub_10053F348(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receive StateMachine PostAccept START", v4, 2u);
  }

  v6 = v1[18];
  v5 = v1[19];
  v7 = v1[17];
  v8 = v1[6];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v7);
  SFProgressContinuation.task.getter();
  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v1[27] = v9;
  *v9 = v1;
  v9[1] = sub_10053F4C4;
  v10 = v1[25];
  v11 = v1[5];

  return sub_10050CB1C(v10, v11);
}

uint64_t sub_10053F4C4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10053F630, v1, 0);
}

uint64_t sub_10053F630(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  SFAirDropReceive.Transfer.state.getter();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v1[11] + 96))(v1[13], v1[10]);
    v1[28] = sub_10028088C(&unk_10097E9B0, &unk_100808D90);

    v6 = swift_task_alloc();
    v1[29] = v6;
    *v6 = v1;
    v6[1] = sub_10053F960;
    v7 = 0;
  }

  else if (v5 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v8 = v1[13];
    v10 = v1[8];
    v9 = v1[9];
    v11 = v1[7];
    (*(v1[11] + 96))(v8, v1[10]);
    v12 = sub_10028088C(&qword_10097A670, &unk_100804290);
    (*(v10 + 32))(v9, v8 + *(v12 + 48), v11);
    sub_100542734(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v13 = swift_allocError();
    v1[30] = v13;
    (*(v10 + 16))(v14, v9, v11);
    v15 = swift_task_alloc();
    v1[31] = v15;
    *v15 = v1;
    v15[1] = sub_10053FD40;
    v7 = v13;
  }

  else
  {
    type metadata accessor for CancellationError();
    sub_100542734(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    v16 = swift_allocError();
    v1[32] = v16;
    CancellationError.init()();
    v17 = swift_task_alloc();
    v1[33] = v17;
    *v17 = v1;
    v17[1] = sub_100540148;
    v7 = v16;
  }

  return sub_100641284(v7);
}

uint64_t sub_10053F960()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_10053FA70, v1, 0);
}

uint64_t sub_10053FA70()
{
  v26 = v0;
  (*(v0[21] + 16))(v0[24], v0[25], v0[20]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  if (v3)
  {
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v10 = 136315138;
    v23 = v5;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v2;
    v13 = v12;
    (*(v7 + 8))(v8, v9);
    v14 = *(v6 + 8);
    v14(v4, v23);
    v15 = sub_10000C4E4(v11, v13, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v1, v22, "Receive StateMachine PostAccept END {transfer.state: %s}", v10, 0xCu);
    sub_10000C60C(v24);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v4, v5);
  }

  v16 = v0[13];
  v17 = *(v0[28] + 48);
  v18 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v18 - 8) + 8))(v16 + v17, v18);
  v19 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v19 - 8) + 8))(v16, v19);
  v0[34] = v14;
  v20 = swift_task_alloc();
  v0[35] = v20;
  *v20 = v0;
  v20[1] = sub_1005404FC;

  return sub_10068D33C();
}

uint64_t sub_10053FD40()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_10053FE6C, v1, 0);
}

uint64_t sub_10053FE6C()
{
  v30 = v0;
  (*(v0[21] + 16))(v0[23], v0[25], v0[20]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  if (v3)
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v26 = v0[8];
    v27 = v0[7];
    v28 = v0[9];
    v23 = v0[20];
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v10 = 136315138;
    v24 = v2;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = *(v6 + 8);
    v14(v4, v23);
    v15 = sub_10000C4E4(v11, v13, &v29);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v1, v24, "Receive StateMachine PostAccept FAILED {transfer.state: %s}", v10, 0xCu);
    sub_10000C60C(v25);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    v14 = *(v6 + 8);
    v14(v4, v5);
    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[13];
  v20 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v20 - 8) + 8))(v19, v20);
  v0[34] = v14;
  v21 = swift_task_alloc();
  v0[35] = v21;
  *v21 = v0;
  v21[1] = sub_1005404FC;

  return sub_10068D33C();
}

uint64_t sub_100540148()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_100540274, v1, 0);
}

uint64_t sub_100540274()
{
  v24 = v0;
  (*(v0[21] + 16))(v0[22], v0[25], v0[20]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  if (v3)
  {
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];
    v20 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v20 = 136315138;
    v21 = v2;
    SFAirDropReceive.Transfer.state.getter();
    sub_100542734(&unk_1009892B0, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v19 = v1;
    v13 = *(v7 + 8);
    v13(v8, v9);
    v14 = *(v5 + 8);
    v14(v4, v6);
    v15 = sub_10000C4E4(v10, v12, &v23);

    *(v20 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v19, v21, "Receive StateMachine PostAccept INCOMPLETE {transfer.state: %s}", v20, 0xCu);
    sub_10000C60C(v22);
  }

  else
  {
    v16 = v0[11];

    v14 = *(v5 + 8);
    v14(v4, v6);
    v13 = *(v16 + 8);
  }

  v13(v0[13], v0[10]);
  v0[34] = v14;
  v17 = swift_task_alloc();
  v0[35] = v17;
  *v17 = v0;
  v17[1] = sub_1005404FC;

  return sub_10068D33C();
}

uint64_t sub_1005404FC()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_10054060C, v1, 0);
}

uint64_t sub_10054060C()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = v0[20];
  sub_10068F04C(v0[2]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100540718(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_100542780, v3, 0);
}

uint64_t sub_1005407B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s10BaseRunnerC11FinishTokenVMa(0);
  v7 = swift_task_alloc();
  v4[2] = v7;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[3] = static AirDropActor.shared;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1005408D8;

  return Task<>.value.getter(v7, a4, v6);
}

uint64_t sub_1005408D8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10054277C, v1, 0);
}

uint64_t sub_1005409E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_100540A90, v6, 0);
}

uint64_t sub_100540A90(uint64_t a1)
{
  SFAirDropReceive.AskRequest.canAutoAccept.getter();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_100540B44;
  v4 = v1[4];
  v3 = v1[5];

  return sub_1002E1ADC(v4, v3);
}

uint64_t sub_100540B44()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_100540C84;

  return sub_10068D33C();
}

uint64_t sub_100540C84()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100542780, v1, 0);
}

uint64_t sub_100540D94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[4] = static AirDropActor.shared;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100540E68;

  return sub_10068D33C();
}

uint64_t sub_100540E68()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100540F78, v1, 0);
}

uint64_t sub_100540F78()
{
  sub_10068F04C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100540FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s10BaseRunnerC11FinishTokenVMa(0);
  v7 = swift_task_alloc();
  v4[2] = v7;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[3] = static AirDropActor.shared;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1005410FC;

  return Task<>.value.getter(v7, a4, v6);
}

uint64_t sub_1005410FC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10054120C, v1, 0);
}

uint64_t sub_10054120C()
{
  v1 = *(v0 + 16);
  sub_10068FE90();
  sub_100542284(v1, _s10BaseRunnerC11FinishTokenVMa);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100541290()
{
  sub_10004C60C(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100541304(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100541368(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10054141C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_1005414B8(uint64_t a1)
{
  *(v1 + 48) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 56) = static AirDropActor.shared;

  return _swift_task_switch(sub_100541558, v2, 0);
}

uint64_t sub_100541558()
{
  v33 = v0;
  v1 = SFAirDropReceive.AskRequest.previewImage.getter();
  v0[8] = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  if (SFAirDropReceive.AskRequest.senderIsMe.getter())
  {

LABEL_4:
    if (qword_1009739D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100982810);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Receive StateMachine PreChecks isPreviewSensitive SKIP. No previewImage or senderIsMe", v6, 2u);
    }

    goto LABEL_8;
  }

  v10 = sub_10049F1E0();
  v12 = v11;
  if (!v9)
  {
    if (qword_1009739D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100982810);

    v4 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v10, v12, 0);
    if (!os_log_type_enabled(v4, v23))
    {

      sub_1003C3F0C(v10, v12, 0);
      goto LABEL_9;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136315138;
    v26 = sub_100498E20(v10, v12, 0);
    v28 = v27;
    sub_1003C3F0C(v10, v12, 0);
    v29 = sub_10000C4E4(v26, v28, &v32);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v4, v23, "Receive StateMachine PreChecks isPreviewSensitive SKIP {userSafetyMode: %s}", v24, 0xCu);
    sub_10000C60C(v25);

LABEL_8:
LABEL_9:
    v7 = v0[1];

    return v7(0);
  }

  v13 = v9;
  if (qword_1009739D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v0[9] = sub_10000C4AC(v14, qword_100982810);
  sub_100530B64(v10, v12, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_1003C3F0C(v10, v12, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v17 = 136315138;
    v18 = sub_100498E20(v10, v12, v13);
    v20 = v19;
    sub_1003C3F0C(v10, v12, v13);
    v21 = sub_10000C4E4(v18, v20, &v32);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Receive StateMachine PreChecks isPreviewSensitive START {userSafetyMode: %s}", v17, 0xCu);
    sub_10000C60C(v31);
  }

  else
  {

    sub_1003C3F0C(v10, v12, v13);
  }

  v30 = swift_task_alloc();
  v0[10] = v30;
  *v30 = v0;
  v30[1] = sub_100541A1C;

  return sub_10049F8B4(v2);
}

uint64_t sub_100541A1C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_100541C58;
  }

  else
  {
    v6 = sub_100541B54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100541B54(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 96);
    v5 = *(v1 + 64);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receive StateMachine PreChecks isPreviewSensitive END {isPreviewSensitive: %{BOOL}d}", v6, 8u);
  }

  else
  {
    v7 = *(v1 + 64);

    v2 = v7;
  }

  v8 = *(v1 + 96);
  v9 = *(v1 + 8);

  return v9(v8);
}

uint64_t sub_100541C58()
{
  v11 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_10000C4E4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Receive StateMachine PreChecks FAILED. Error analyzing preview - returning .error {error: %s}", v3, 0xCu);
    sub_10000C60C(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

unint64_t sub_100541DE8()
{
  result = qword_1009828F0[0];
  if (!qword_1009828F0[0])
  {
    sub_100280938(&qword_1009828E8, &qword_100809270);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1009828F0);
  }

  return result;
}

uint64_t sub_100541E4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C00;

  return sub_100540718(a1, v1);
}

uint64_t sub_100541EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005407B4(a1, v4, v5, v6);
}

uint64_t sub_100541F9C(uint64_t a1, uint64_t a2)
{
  v4 = _s6RunnerC19PreAcceptRunResultsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100542000(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(_s6RunnerC19PreAcceptRunResultsVMa(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100005C00;

  return sub_10053F08C(a1, v1 + v6, v10, v1 + v9, v11);
}

void *sub_100542188(void *a1, void *a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = a1;
  v3[5] = a2;
  type metadata accessor for SDAirDropiOSHapticsManager();
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  v3[6] = v6;
  v3[7] = &off_1008DA630;
  v7 = a1;
  v8 = a2;

  sub_1002DD168();

  return v3;
}

uint64_t sub_10054221C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100542284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005422E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C04;

  return sub_100540D94(a1, v1);
}

uint64_t sub_100542380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_100540FD8(a1, v4, v5, v6);
}

uint64_t sub_100542434(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_1009764E8, &qword_1007F9790) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFAirDropReceive.ItemDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for SFAirDropReceive.AskRequest() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005C00;

  return sub_1005409E8(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1005425F0(uint64_t a1)
{
  result = type metadata accessor for SFAirDrop.PermissionRequest();
  if (v2 <= 0x3F)
  {
    sub_100280938(&unk_10097A930, &unk_1007F9050);
    result = type metadata accessor for Task();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100542734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100542784()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982978);
  v1 = sub_10000C4AC(v0, qword_100982978);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10054284C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005429FC, v6, 0);
}

uint64_t sub_1005429FC(uint64_t a1)
{
  v48 = v1;
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v3)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v4 = SFAirDropReceive.AskRequest.files.getter();
      v5 = v4;
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v1[11];
        v45 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        while (v7 < *(v5 + 16))
        {
          v9 = v1[12];
          v10 = v1[10];
          (*(v8 + 16))(v9, v45 + *(v8 + 72) * v7, v10);
          SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
          v11 = String._bridgeToObjectiveC()();

          SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
          (*(v8 + 8))(v9, v10);
          v12 = String._bridgeToObjectiveC()();

          v13 = [v12 pathExtension];

          if (!v13)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = String._bridgeToObjectiveC()();
          }

          v14 = SFIsContact();

          if ((v14 & 1) == 0)
          {

            goto LABEL_3;
          }

          if (v6 == ++v7)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        swift_once();
        v18 = v1[8];
        v17 = v1[9];
        v19 = v1[7];
        v20 = v1[2];
        v21 = type metadata accessor for Logger();
        sub_10000C4AC(v21, qword_100982978);
        (*(v18 + 16))(v17, v20, v19);
        swift_errorRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        v24 = os_log_type_enabled(v22, v23);
        v25 = v1[8];
        v26 = v1[9];
        v27 = v1[7];
        if (v24)
        {
          v29 = v1[5];
          v28 = v1[6];
          v30 = v1[4];
          v44 = v23;
          v31 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = v46;
          *v31 = 136315394;
          v42 = v22;
          SFAirDropReceive.AskRequest.id.getter();
          sub_1002891F4();
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v27;
          v34 = v33;
          (*(v29 + 8))(v28, v30);
          (*(v25 + 8))(v26, v32);
          v35 = sub_10000C4E4(v41, v34, &v47);

          *(v31 + 4) = v35;
          *(v31 + 12) = 2112;
          swift_errorRetain();
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v31 + 14) = v36;
          *v43 = v36;
          _os_log_impl(&_mh_execute_header, v42, v44, "Failed to get Contacts app for ask request %s: %@", v31, 0x16u);
          sub_100005508(v43, &qword_100975400, &qword_1007F65D0);

          sub_10000C60C(v46);
        }

        else
        {

          (*(v25 + 8))(v26, v27);
        }
      }

      else
      {
LABEL_11:

        v15 = objc_allocWithZone(LSApplicationRecord);
        v16 = sub_10066F3F8(0xD00000000000001BLL, 0x8000000100794DD0, 1);
        v37 = v1[3];
        v38 = *(v37 + 16);
        *(v37 + 16) = v16;
      }

      v2 = *(v1[3] + 16) != 0;
    }
  }

  v39 = v1[1];

  return v39(v2);
}

uint64_t sub_100542EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100543324@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerContacts();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10054335C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_10054284C(a1);
}

void sub_10054341C(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x544341544E4F43;
  v5 = inited + 32;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005435A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_10028088C(&qword_100982800, &qword_1008091A8);
  v3[6] = swift_task_alloc();
  v4 = sub_10028088C(&qword_100982808, &unk_1008091B0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferType();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100543704, 0, 0);
}

uint64_t sub_100543704(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  SFAirDropSend.Request.type.getter();
  v5 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_6:

    v11 = v1[1];

    return v11(v6);
  }

  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[6];
  SFAirDropSend.Request.urlsPromise.getter();
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100543C40(v1[6]);
    v10 = SFAirDropSend.Request.urls.getter();
    if (v10)
    {
      v6 = v10;
      goto LABEL_6;
    }

    v18 = type metadata accessor for SFAirDropSend.Failure();
    sub_100543CA8();
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for SFAirDropSend.Failure.badRequest(_:), v18);
    swift_willThrow();

    v20 = v1[1];

    return v20();
  }

  else
  {
    v13 = v1[3];
    v14 = v1[4];
    (*(v1[8] + 32))(v1[9], v1[6], v1[7]);
    sub_10028088C(&qword_100982A68, &qword_1008093D8);
    v15 = swift_allocObject();
    v1[13] = v15;
    *(v15 + 16) = xmmword_1007F5670;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_1002A9924(v13, v14);
    v16 = swift_task_alloc();
    v1[14] = v16;
    *v16 = v1;
    v16[1] = sub_1005439CC;
    v17 = v1[7];

    return SFXPCBlock.dynamicallyCall(withArguments:)(v1 + 2, v15, v17);
  }
}

uint64_t sub_1005439CC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100543BA4;
  }

  else
  {
    v2 = sub_100543B00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100543B00()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100543BA4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100543C40(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100982800, &qword_1008091A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100543CA8()
{
  result = qword_1009755A0;
  if (!qword_1009755A0)
  {
    type metadata accessor for SFAirDropSend.Failure();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009755A0);
  }

  return result;
}

uint64_t sub_100543D00()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982A70);
  v1 = sub_10000C4AC(v0, qword_100982A70);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100543DC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100543F78, v6, 0);
}

uint64_t sub_100543F78(uint64_t a1)
{
  v44 = v1;
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2)
  {
    v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v4 = v1[11];
      v42 = v1;
      v5 = SFAirDropReceive.AskRequest.files.getter();
      v6 = 0;
      v7 = *(v5 + 16);
      v1 = (v4 + 16);
      while (1)
      {
        if (v7 == v6)
        {

          v11 = objc_allocWithZone(LSApplicationRecord);
          v12 = sub_10066F3F8(0xD000000000000013, 0x8000000100794ED0, 1);
          v1 = v42;
          v34 = v42[3];
          v35 = *(v34 + 16);
          *(v34 + 16) = v12;

          goto LABEL_13;
        }

        if (v6 >= *(v5 + 16))
        {
          break;
        }

        v8 = v42[12];
        v9 = v42[10];
        (*(v4 + 16))(v8, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v6++, v9);
        SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        (*(v4 + 8))(v8, v9);
        v10 = String._bridgeToObjectiveC()();

        LOBYTE(v9) = SFIsCalendarEvent();

        if ((v9 & 1) == 0)
        {

          v2 = 0;
          v1 = v42;
          goto LABEL_14;
        }
      }

      __break(1u);
      swift_once();
      v14 = *(v4 + 80);
      v13 = v1[9];
      v15 = v1[7];
      v16 = v1[2];
      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_100982A70);
      (*(v14 + 16))(v13, v16, v15);
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      v20 = os_log_type_enabled(v18, v19);
      v21 = v1[8];
      v22 = v1[9];
      v23 = v1[7];
      if (v20)
      {
        v25 = v1[5];
        v24 = v1[6];
        v26 = v42[4];
        v40 = v19;
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v43 = v41;
        *v27 = 136315394;
        v38 = v18;
        SFAirDropReceive.AskRequest.id.getter();
        sub_100545DA0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v31 = v26;
        v1 = v42;
        (*(v25 + 8))(v24, v31);
        (*(v21 + 8))(v22, v23);
        v32 = sub_10000C4E4(v28, v30, &v43);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2112;
        swift_errorRetain();
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v33;
        *v39 = v33;
        _os_log_impl(&_mh_execute_header, v38, v40, "Failed to get Calendar app for ask request %s: %@", v27, 0x16u);
        sub_100005508(v39, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v41);
      }

      else
      {

        (*(v21 + 8))(v22, v23);
      }

LABEL_13:
      v2 = *(v1[3] + 16) != 0;
    }
  }

LABEL_14:

  v36 = v1[1];

  return v36(v2);
}

uint64_t sub_100544410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_10028088C(&qword_10097B310, &qword_1007FE6C8);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for CodableError();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005446CC, v8, 0);
}

uint64_t sub_1005446CC()
{
  v117 = v0;
  v1 = v0[30];
  v2 = v0[23];
  v106 = v0[22];
  v3 = v0[16];
  v4 = v0[17];
  v5 = *(v0[11] + 16);
  v6 = [objc_allocWithZone(EKEventStore) init];
  v98 = *(v4 + 56);
  v98(v1, 1, 1, v3);
  v7 = 0;
  v107 = (v4 + 16);
  v104 = (v2 + 48);
  v105 = (v2 + 56);
  v8 = (v4 + 32);
  v113 = (v4 + 8);
  v100 = v4;
  v103 = (v4 + 48);
  v9 = (v5 + 1);
  v101 = v6;
  v102 = v5;
  v99 = (v4 + 32);
  v10 = v5 == 0;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  v11 = 1;
  for (i = v5; ; i = v7 + 1)
  {
    v18 = v0[25];
    v19 = v0[26];
    v20 = v0[22];
    (*v105)(v18, v11, 1, v20);
    sub_10002C4E4(v18, v19, &qword_10097A3B8, &qword_1007FE9C0);
    if ((*v104)(v19, 1, v20) == 1)
    {
      break;
    }

    v111 = i;
    v21 = v0[26];
    v22 = *v21;
    (*v8)(v0[20], &v21[*(v106 + 48)], v0[16]);
    v23 = Data.init(contentsOf:options:)();
    v109 = v24;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v26 = [v6 defaultCalendarForNewEvents];
    v27 = [v6 importICSData:isa intoCalendar:v26 options:0];

    if (v27)
    {
      v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v114 = 0;
    }

    v110 = v22;
    if (qword_1009739E0 != -1)
    {
      swift_once();
    }

    v28 = v0[19];
    v29 = v0[20];
    v30 = v0[16];
    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100982A70);
    (*v107)(v28, v29, v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[19];
    v36 = v0[16];
    if (v34)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v116[0] = v38;
      *v37 = 136315138;
      sub_100545DA0(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v108 = *v113;
      (*v113)(v35, v36);
      v42 = sub_10000C4E4(v39, v41, v116);
      v6 = v101;

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "Calendar Events data was imported from %s", v37, 0xCu);
      sub_10000C60C(v38);
      v8 = v99;
    }

    else
    {

      v108 = *v113;
      (*v113)(v35, v36);
    }

    v5 = v102;
    v43 = v0[28];
    v44 = v0[16];
    sub_100333278(v0[30], v43);
    v45 = (*v103)(v43, 1, v44);
    v46 = v0[28];
    v7 = v111;
    if (v45 != 1)
    {
      sub_100026AC0(v23, v109);

      sub_100005508(v46, &unk_100974E00, &qword_1007F8940);
      goto LABEL_26;
    }

    sub_100005508(v0[28], &unk_100974E00, &qword_1007F8940);
    if (!v114)
    {
LABEL_22:
      sub_100026AC0(v23, v109);
      goto LABEL_26;
    }

    if (*(v114 + 16))
    {
      sub_10000C5B0(v114 + 32, (v0 + 2));

      sub_100545D54();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v47 = v0[7];
      v48 = [v47 externalURL];
      v49 = v0[30];
      if (v48)
      {
        v50 = v48;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100026AC0(v23, v109);

        sub_100005508(v49, &unk_100974E00, &qword_1007F8940);
        v51 = 0;
      }

      else
      {
        sub_100005508(v0[30], &unk_100974E00, &qword_1007F8940);
        sub_100026AC0(v23, v109);

        v51 = 1;
      }

      v52 = v0[30];
      v53 = v0[27];
      v98(v53, v51, 1, v0[16]);
      sub_10002C4E4(v53, v52, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      sub_100026AC0(v23, v109);
    }

LABEL_26:
    if (__OFADD__(v110, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      swift_once();
      v60 = v0[20];
      v61 = v0[18];
      v62 = v0[16];
      v63 = type metadata accessor for Logger();
      sub_10000C4AC(v63, qword_100982A70);
      (*v107)(v61, v60, v62);
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v0[18];
      v68 = v0[16];
      if (v66)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v116[0] = v112;
        *v69 = 136315394;
        sub_100545DA0(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v115 = *v113;
        (*v113)(v67, v68);
        v74 = sub_10000C4E4(v71, v73, v116);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2112;
        swift_errorRetain();
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 14) = v75;
        *v70 = v75;
        _os_log_impl(&_mh_execute_header, v64, v65, "processCalendarEvents failed to load data for file: %s with error: %@", v69, 0x16u);
        sub_100005508(v70, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v112);
      }

      else
      {

        v115 = *v113;
        (*v113)(v67, v68);
      }

      v83 = v0[14];
      v0[6] = v7;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v84 = swift_dynamicCast();
      v85 = *(v83 + 56);
      if (v84)
      {
        v87 = v0[14];
        v86 = v0[15];
        v88 = v0[12];
        v89 = v0[13];
        v85(v88, 0, 1, v89);
        (*(v87 + 32))(v86, v88, v89);
        v90 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100545DA0(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        swift_allocError();
        v92 = v91;
        (*(v87 + 16))(v91, v86, v89);
        (*(*(v90 - 8) + 104))(v92, enum case for SFAirDropReceive.Failure.unexpected(_:), v90);
        swift_willThrow();

        (*(v87 + 8))(v86, v89);
      }

      else
      {
        v93 = v0[12];
        v85(v93, 1, 1, v0[13]);
        sub_100005508(v93, &qword_10097B310, &qword_1007FE6C8);
        v94 = type metadata accessor for SFAirDropReceive.Failure();
        sub_100545DA0(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        swift_allocError();
        (*(*(v94 - 8) + 104))(v95, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v94);
        swift_willThrow();
      }

      v96 = v0[30];
      v115(v0[20], v0[16]);
      sub_100005508(v96, &unk_100974E00, &qword_1007F8940);

      v82 = v0[1];
      goto LABEL_40;
    }

    v54 = v0[20];
    v55 = v0[16];
    v56 = v0[9];
    *v116 = (v110 + 1) / v9;
    v56(v116);
    v108(v54, v55);
    v10 = v111 >= v102;
    if (v111 == v102)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v10)
    {
      goto LABEL_44;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_45;
    }

    v13 = v0[24];
    v14 = v0[25];
    v15 = v0[16];
    v16 = v0[11] + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v7;
    v17 = *(v106 + 48);
    *v13 = v7;
    (*(v100 + 16))(&v13[v17], v16, v15);
    sub_10002C4E4(v13, v14, &qword_10097A3B0, &unk_1007FD5B0);
    v11 = 0;
  }

  v57 = v0[29];
  v58 = v0[16];
  sub_100333278(v0[30], v57);
  if ((*v103)(v57, 1, v58) == 1)
  {
    sub_100005508(v0[29], &unk_100974E00, &qword_1007F8940);
    v59 = _swiftEmptyArrayStorage;
  }

  else
  {
    v76 = v0[21];
    v77 = v0[16];
    v78 = *(v100 + 32);
    v78(v76, v0[29], v77);
    sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
    v79 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v59 = swift_allocObject();
    *(v59 + 1) = xmmword_1007F5670;
    v78(v59 + v79, v76, v77);
  }

  v80 = v0[30];
  v81 = v0[8];

  sub_100005508(v80, &unk_100974E00, &qword_1007F8940);
  *v81 = v59;

  v82 = v0[1];
LABEL_40:

  return v82();
}

uint64_t sub_1005454D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100545940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerCalendarEvents();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100545978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100543DC8(a1);
}

uint64_t sub_100545A14(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_100545B18(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x5241444E454C4143;
  v5 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100545C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return sub_100544410(a1, a2, a3, v8);
}

unint64_t sub_100545D54()
{
  result = qword_100982B70;
  if (!qword_100982B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982B70);
  }

  return result;
}

uint64_t sub_100545DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12ErrorRequestVMa(uint64_t a1)
{
  result = qword_100982BD0;
  if (!qword_100982BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100545E5C(uint64_t a1)
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CodableError();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100545EE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F727245;
  }

  else
  {
    v3 = 0x726566736E617254;
  }

  if (v2)
  {
    v4 = 0xEA00000000004449;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F727245;
  }

  else
  {
    v5 = 0x726566736E617254;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000004449;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100545F88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054600C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10054607C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005460FC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7C10, *a1);

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

void sub_10054615C(uint64_t *a1@<X8>)
{
  v2 = 0x726566736E617254;
  if (*v1)
  {
    v2 = 0x726F727245;
  }

  v3 = 0xEA00000000004449;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10054619C()
{
  if (*v0)
  {
    return 0x726F727245;
  }

  else
  {
    return 0x726566736E617254;
  }
}

uint64_t sub_1005461D8@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008D7C10, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10054623C(uint64_t a1)
{
  v2 = sub_100546BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100546278(uint64_t a1)
{
  v2 = sub_100546BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005462B4()
{
  _StringGuts.grow(_:)(23);

  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100546CBC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 2108704;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  _s12ErrorRequestVMa(0);
  type metadata accessor for CodableError();
  sub_100546CBC(&qword_100982C08, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000010;
}

uint64_t sub_100546408(void *a1)
{
  v3 = sub_10028088C(&qword_100982C28, &qword_100809500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002CDC0(a1, a1[3]);
  sub_100546BA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100546CBC(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s12ErrorRequestVMa(0);
    v8[14] = 1;
    type metadata accessor for CodableError();
    sub_100546CBC(&qword_100982C30, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100546608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for CodableError();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v23 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10028088C(&qword_100982C10, &qword_1008094F8);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v19 - v7;
  v9 = _s12ErrorRequestVMa(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CDC0(a1, a1[3]);
  sub_100546BA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_100546CBC(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v15 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_100546CBC(&qword_100982C20, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_100546BFC(v17, v22);
  sub_10000C60C(a1);
  return sub_100546C60(v17);
}

unint64_t sub_100546A58()
{
  _StringGuts.grow(_:)(23);

  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100546CBC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 2108704;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  type metadata accessor for CodableError();
  sub_100546CBC(&qword_100982C08, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000010;
}

unint64_t sub_100546BA8()
{
  result = qword_100982C18;
  if (!qword_100982C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C18);
  }

  return result;
}

uint64_t sub_100546BFC(uint64_t a1, uint64_t a2)
{
  v4 = _s12ErrorRequestVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100546C60(uint64_t a1)
{
  v2 = _s12ErrorRequestVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100546CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100546D18()
{
  result = qword_100982C38;
  if (!qword_100982C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C38);
  }

  return result;
}

unint64_t sub_100546D70()
{
  result = qword_100982C40;
  if (!qword_100982C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C40);
  }

  return result;
}

unint64_t sub_100546DC8()
{
  result = qword_100982C48;
  if (!qword_100982C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982C48);
  }

  return result;
}

uint64_t sub_100546E1C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982C50);
  v1 = sub_10000C4AC(v0, qword_100982C50);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100546EE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007F8A70;
  if (qword_1009739F0 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v4 + 64) = &off_10097BE18;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.MarkCurrentRegistrationIDAsInvalid;
  *(v4 + 104) = &off_10097BBC0;
  *a2 = v4;
  v5 = _s12RegistrationV18InitialLockContextVMa(0);
  *(a2 + v5[6]) = 0;
  *(a2 + v5[7]) = 3;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100982C50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start authentication Lock registration", v9, 2u);
  }

  return sub_100549318(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

id sub_10054710C(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 24);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10054718C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007FA7E0;
  if (qword_1009739F0 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  *(v4 + 56) = &type metadata for SDAuthentication.Operation.MarkCurrentRegistrationIDAsInvalid;
  *(v4 + 64) = &off_10097BBC0;
  *(v4 + 96) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v4 + 104) = &off_10097BD58;
  *(v4 + 136) = &type metadata for SDAuthentication.Operation.IncludeAKSTokenInRegistrationResponseMessage;
  *(v4 + 144) = &off_10097BBA8;
  *(v4 + 176) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v4 + 184) = &off_10097BE18;
  *a2 = v4;
  v5 = _s12RegistrationV17InitialKeyContextVMa(0);
  *(a2 + v5[6]) = 0;
  *(a2 + v5[7]) = 4;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100982C50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Start authentication Key registration", v9, 2u);
  }

  return sub_100549318(a1, a2 + v5[5], type metadata accessor for SDAuthenticationSessionMetrics);
}

uint64_t sub_1005473BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepRegisterResponseToken;
  *(v6 + 64) = &off_10097C060;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *a3 = v6;
  v7 = _s12RegistrationV28HandlePairingResponseContextVMa(0);
  *(a3 + v7[7]) = 0;
  *(a3 + v7[8]) = 6;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100982C50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling authentication registration pairing response: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    a2 = v12;
  }

  v16 = [v9 token];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = (a3 + v7[6]);
    *v21 = v18;
    v21[1] = v20;
    v22 = _s12RegistrationV18InitialLockContextVMa(0);
    sub_100549380(a2 + *(v22 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005493E8(a2, _s12RegistrationV18InitialLockContextVMa);
  }

  else
  {
    v24 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV18InitialLockContextVMa);
  }
}

id sub_100547738(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005477B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepRegistrationCreateSecret;
  *(v6 + 64) = &off_10097C048;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *a3 = v6;
  SecretContextVMa = _s12RegistrationV32HandlePairingCreateSecretContextVMa(0);
  *(a3 + *(SecretContextVMa + 28)) = 0;
  v35 = SecretContextVMa;
  *(a3 + *(SecretContextVMa + 32)) = 5;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100982C50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100789F30;
      v16 = 0xD000000000000015;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication registration create secret: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s12RegistrationV17InitialKeyContextVMa(0);
    sub_100549380(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005493E8(a2, _s12RegistrationV17InitialKeyContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV17InitialKeyContextVMa);
  }
}

uint64_t sub_100547BE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.FinalizeRegistration;
  *(v6 + 64) = &off_10097C030;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.NotifyRegistrationSucceeded;
  *(v6 + 144) = &off_10097C018;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.RecordLastRegistration;
  *(v6 + 184) = &off_10097C000;
  *a3 = v6;
  RecordContextVMa = _s12RegistrationV32HandlePairingCreateRecordContextVMa(0);
  *(a3 + *(RecordContextVMa + 28)) = 0;
  v35 = RecordContextVMa;
  *(a3 + *(RecordContextVMa + 32)) = 2;
  if (qword_1009739E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100982C50);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0xD000000000000015;
      v18 = 0x8000000100789F30;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication registration create record: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s12RegistrationV28HandlePairingResponseContextVMa(0);
    sub_100549380(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005493E8(a2, _s12RegistrationV28HandlePairingResponseContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0xD000000000000058, 0x8000000100794F50);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV28HandlePairingResponseContextVMa);
  }
}

uint64_t sub_100548068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a5(a3, a4);
  v6 = [v5 data];

  if (v6)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  else
  {
    v9 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v11 = v10;
    sub_1000115C8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    return swift_willThrow();
  }
}

uint64_t sub_100548144@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_1009739F0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.NotifyRegistrationSucceeded;
  *(v6 + 104) = &off_10097C018;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordLastRegistration;
  *(v6 + 144) = &off_10097C000;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s12RegistrationV32HandlePairingCreateSecretContextVMa(0) + 20);
    v8 = _s12RegistrationV25HandleConfirmationContextVMa(0);
    sub_100549380(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1005493E8(a2, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1005493E8(a2, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
  }

  return result;
}

void sub_100548334(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v116 = a2;
  v111 = a3;
  v95 = _s12RegistrationV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v95);
  v99 = (&v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100982E80, &qword_1008097B0);
  __chkstk_darwin(v5 - 8);
  v104 = &v95 - v6;
  RecordContextVMa = _s12RegistrationV32HandlePairingCreateRecordContextVMa(0);
  __chkstk_darwin(RecordContextVMa);
  v103 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_100982E88, &qword_1008097B8);
  __chkstk_darwin(v8 - 8);
  v110 = &v95 - v9;
  SecretContextVMa = _s12RegistrationV32HandlePairingCreateSecretContextVMa(0);
  v102 = *(SecretContextVMa - 8);
  v10 = __chkstk_darwin(SecretContextVMa);
  v97 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v95 - v13;
  __chkstk_darwin(v12);
  v109 = (&v95 - v14);
  v15 = sub_10028088C(&qword_100982E90, &qword_1008097C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v18 = _s12RegistrationV17InitialKeyContextVMa(0);
  v113 = *(v18 - 8);
  v114 = v18;
  v19 = __chkstk_darwin(v18);
  v107 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v95 - v21;
  v112 = _s12RegistrationV28HandlePairingResponseContextVMa(0);
  v106 = *(v112 - 8);
  v22 = __chkstk_darwin(v112);
  v100 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v101 = &v95 - v25;
  __chkstk_darwin(v24);
  v27 = (&v95 - v26);
  v28 = sub_10028088C(&qword_100982E98, &qword_1008097C8);
  __chkstk_darwin(v28 - 8);
  v30 = &v95 - v29;
  v31 = _s12RegistrationV18InitialLockContextVMa(0);
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v95 - v36;
  sub_1002A9938(a1, v117);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_100979D78, off_1008C8D30);
  if (swift_dynamicCast())
  {
    v38 = v118;
    sub_1002A9938(v116, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v39 = swift_dynamicCast();
    v40 = *(v32 + 56);
    if (v39)
    {
      v40(v30, 0, 1, v31);
      sub_100549318(v30, v37, _s12RegistrationV18InitialLockContextVMa);
      sub_100549380(v37, v35, _s12RegistrationV18InitialLockContextVMa);
      v41 = v38;
      v42 = v115;
      sub_1005473BC(v41, v35, v27);
      if (v42)
      {
        v43 = _s12RegistrationV18InitialLockContextVMa;
        v44 = v37;
LABEL_21:
        sub_1005493E8(v44, v43);

        return;
      }

      v80 = v111;
      v111[3] = v112;
      v80[4] = &off_1008E6A08;
      v81 = sub_10002F604(v80);
      sub_100549318(v27, v81, _s12RegistrationV28HandlePairingResponseContextVMa);

      v82 = _s12RegistrationV18InitialLockContextVMa;
      v83 = v37;
      goto LABEL_30;
    }

    v40(v30, 1, 1, v31);
    sub_100005508(v30, &qword_100982E98, &qword_1008097C8);
    v54 = "sult, message may be replayed";
    v55 = 0xD000000000000047;
LABEL_10:
    v56 = sub_100010F88(10, v55, v54 | 0x8000000000000000);
    v58 = v57;
    sub_1000115C8();
    swift_allocError();
    *v59 = v56;
    *(v59 + 8) = v58;
    swift_willThrow();

    return;
  }

  v45 = v116;
  sub_1002A9938(a1, v117);
  sub_1000276B4(0, &qword_100979D80, off_1008C8D18);
  if (swift_dynamicCast())
  {
    v46 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v47 = v114;
    v48 = swift_dynamicCast();
    v49 = *(v113 + 56);
    if (!v48)
    {
      v49(v17, 1, 1, v47);
      sub_100005508(v17, &qword_100982E90, &qword_1008097C0);
      v69 = sub_100010F88(10, 0xD000000000000050, 0x800000010078CD30);
      v71 = v70;
      sub_1000115C8();
      swift_allocError();
      *v72 = v69;
      *(v72 + 8) = v71;
      swift_willThrow();

      return;
    }

    v49(v17, 0, 1, v47);
    v50 = v108;
    sub_100549318(v17, v108, _s12RegistrationV17InitialKeyContextVMa);
    v51 = v107;
    sub_100549380(v50, v107, _s12RegistrationV17InitialKeyContextVMa);
    v41 = v46;
    v52 = v109;
    v53 = v115;
    sub_1005477B8(v41, v51, v109);
    if (v53)
    {
      v43 = _s12RegistrationV17InitialKeyContextVMa;
      v44 = v50;
      goto LABEL_21;
    }

    v88 = v111;
    v111[3] = SecretContextVMa;
    v88[4] = &off_1008E6A20;
    v89 = sub_10002F604(v88);
    sub_100549318(v52, v89, _s12RegistrationV32HandlePairingCreateSecretContextVMa);

    v82 = _s12RegistrationV17InitialKeyContextVMa;
    v83 = v50;
    goto LABEL_30;
  }

  sub_1002A9938(a1, v117);
  sub_1000276B4(0, &qword_100979D88, off_1008C8D10);
  if (swift_dynamicCast())
  {
    v38 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v60 = v110;
    v61 = v112;
    v62 = swift_dynamicCast();
    v63 = *(v106 + 56);
    if (!v62)
    {
      v63(v60, 1, 1, v61);
      sub_100005508(v60, &qword_100982E88, &qword_1008097B8);
      v54 = "ssage may be replayed";
      v55 = 0xD000000000000051;
      goto LABEL_10;
    }

    v63(v60, 0, 1, v61);
    v64 = v101;
    sub_100549318(v60, v101, _s12RegistrationV28HandlePairingResponseContextVMa);
    v65 = v100;
    sub_100549380(v64, v100, _s12RegistrationV28HandlePairingResponseContextVMa);
    v41 = v38;
    v66 = v103;
    v67 = v115;
    sub_100547BE4(v41, v65, v103);
    if (v67)
    {
      v68 = _s12RegistrationV28HandlePairingResponseContextVMa;
LABEL_20:
      v43 = v68;
      v44 = v64;
      goto LABEL_21;
    }

    v90 = v111;
    v111[3] = RecordContextVMa;
    v90[4] = &off_1008E6A38;
    v91 = sub_10002F604(v90);
    sub_100549318(v66, v91, _s12RegistrationV32HandlePairingCreateRecordContextVMa);

    v92 = _s12RegistrationV28HandlePairingResponseContextVMa;
  }

  else
  {
    sub_1002A9938(a1, v117);
    sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
    if (!swift_dynamicCast())
    {
      v84 = sub_100010F88(10, 0xD000000000000030, 0x8000000100794F10);
      v86 = v85;
      sub_1000115C8();
      swift_allocError();
      *v87 = v84;
      *(v87 + 8) = v86;
      swift_willThrow();
      return;
    }

    v38 = v118;
    sub_1002A9938(v45, v117);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v74 = v104;
    v73 = SecretContextVMa;
    v75 = swift_dynamicCast();
    v76 = *(v102 + 56);
    if (!v75)
    {
      v76(v74, 1, 1, v73);
      sub_100005508(v74, &qword_100982E80, &qword_1008097B0);
      v54 = "for VisionUnlockiOSPairing";
      v55 = 0xD000000000000055;
      goto LABEL_10;
    }

    v76(v74, 0, 1, v73);
    v64 = v98;
    sub_100549318(v74, v98, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
    v77 = v97;
    sub_100549380(v64, v97, _s12RegistrationV32HandlePairingCreateSecretContextVMa);
    v41 = v38;
    v78 = v99;
    v79 = v115;
    sub_100548144(v41, v77, v99);
    if (v79)
    {
      v68 = _s12RegistrationV32HandlePairingCreateSecretContextVMa;
      goto LABEL_20;
    }

    v93 = v111;
    v111[3] = v95;
    v93[4] = &off_1008E6A50;
    v94 = sub_10002F604(v93);
    sub_100549318(v78, v94, _s12RegistrationV25HandleConfirmationContextVMa);

    v92 = _s12RegistrationV32HandlePairingCreateSecretContextVMa;
  }

  v82 = v92;
  v83 = v64;
LABEL_30:
  sub_1005493E8(v83, v82);
}

void sub_1005491D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_1002A6B2C(319);
  if (v9 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v10 <= 0x3F)
    {
      sub_1002A6C94(319, a4, a5, a6);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100549318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100549380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005493E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100549548()
{
  [v0 airdropHash1];
  sub_100549D50();
  v1 = FixedWidthInteger.bigEndianBytes.getter();
  [v0 airdropHash2];
  v2 = FixedWidthInteger.bigEndianBytes.getter();
  sub_10040367C(v2);
  [v0 airdropHash3];
  v3 = FixedWidthInteger.bigEndianBytes.getter();
  sub_10040367C(v3);
  [v0 airdropHash4];
  v4 = FixedWidthInteger.bigEndianBytes.getter();
  sub_10040367C(v4);
  v5 = sub_10057EA7C(v1);

  return v5;
}

uint64_t sub_100549664(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100549548();
  v8 = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  LODWORD(a1) = [a1 contactsContainsShortHashes:isa];

  if (a1)
  {
    if (qword_1009739F8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100983168);
    sub_100294008(v6, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_100026AC0(v6, v8);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v58 = v14;
      *v13 = 136380675;
      sub_100467BE4(v6, v8);
      sub_10028088C(&unk_100976C20, &unk_1007F9D80);
      sub_1003117AC();
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      v18 = sub_10000C4E4(v15, v17, &v58);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Device hashes %{private}s recognized", v13, 0xCu);
      sub_10000C60C(v14);

      sub_100026AC0(v6, v8);

      return 1;
    }

    v49 = v6;
    v50 = v8;
LABEL_16:
    sub_100026AC0(v49, v50);
    return 1;
  }

  if (qword_1009739F8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C4AC(v20, qword_100983168);
  sub_100294008(v6, v8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100026AC0(v6, v8);
  v57 = v8;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v58 = v24;
    *v23 = 136380675;
    sub_100467BE4(v6, v8);
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_1003117AC();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    v28 = sub_10000C4E4(v25, v27, &v58);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Device hashes %{private}s unrecognized", v23, 0xCu);
    sub_10000C60C(v24);
  }

  v29 = [v3 airdropTempAuthTagData];
  if (v29)
  {
    v30 = v29;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = [v3 btAddressData];
    if (v34)
    {
      v35 = v34;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = Data._bridgeToObjectiveC()().super.isa;
      v40 = Data._bridgeToObjectiveC()().super.isa;
      v41 = [a2 isTempAuthTagKnown:v39 bluetoothAddressData:v40];

      if (v41)
      {
        sub_100294008(v31, v33);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        sub_100026AC0(v31, v33);
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v58 = v56;
          *v44 = 136315138;
          log = v42;
          sub_100467BE4(v31, v33);
          sub_10028088C(&unk_100976C20, &unk_1007F9D80);
          sub_1003117AC();
          v45 = BidirectionalCollection<>.joined(separator:)();
          v47 = v46;

          v48 = sub_10000C4E4(v45, v47, &v58);

          *(v44 + 4) = v48;
          _os_log_impl(&_mh_execute_header, log, v43, "Device temp auth tag %s recognized", v44, 0xCu);
          sub_10000C60C(v56);

          sub_100026AC0(v6, v57);
          sub_100026AC0(v31, v33);
          sub_100026AC0(v36, v38);

          return 1;
        }

        sub_100026AC0(v6, v57);
        sub_100026AC0(v36, v38);

        v49 = v31;
        v50 = v33;
        goto LABEL_16;
      }

      sub_100026AC0(v6, v57);
      v53 = v36;
      v54 = v38;
    }

    else
    {
      v53 = v6;
      v54 = v57;
    }

    sub_100026AC0(v53, v54);
    v51 = v31;
    v52 = v33;
  }

  else
  {
    v51 = v6;
    v52 = v57;
  }

  sub_100026AC0(v51, v52);
  return 0;
}

uint64_t sub_100549C88()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983168);
  v1 = sub_10000C4AC(v0, qword_100983168);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100549D50()
{
  result = qword_100983180;
  if (!qword_100983180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100983180);
  }

  return result;
}

void *sub_100549DA4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v25 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v40 = _swiftEmptyArrayStorage;
    v26 = a2 >> 62;
    sub_10028FEB0(0, v4 & ~(v4 >> 63), 0);
    v9 = v26;
    v8 = a1;
    if (v26)
    {
      if (v26 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v40;
    while (1)
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v12 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = BYTE6(a2);
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
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
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v9 == 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v10 - v15;
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_59;
        }

LABEL_39:
        v19 = *(v14 + v16);
        v9 = v26;
        v8 = a1;
        if (v11 == 0x10000)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v10 >= BYTE6(a2))
      {
        goto LABEL_56;
      }

      v28 = v8;
      v29 = BYTE2(v8);
      v30 = BYTE3(v8);
      v31 = v25;
      v32 = BYTE5(v8);
      v33 = BYTE6(v8);
      v34 = HIBYTE(v8);
      v35 = a2;
      v36 = BYTE2(a2);
      v37 = BYTE3(a2);
      v38 = BYTE4(a2);
      v39 = BYTE5(a2);
      v19 = *(&v28 + v10);
      if (v11 == 0x10000)
      {
        goto LABEL_51;
      }

LABEL_43:
      v20 = v19 << (v11 & 8);
      if (v11 <= 0xF)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v40 = v7;
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FEB0((v22 > 1), v23 + 1, 1);
        v9 = v26;
        v8 = a1;
        v7 = v40;
      }

      v7[2] = v23 + 1;
      *(v7 + v23 + 16) = v21;
      ++v10;
      v11 += 8;
      if (!--v4)
      {
        return v7;
      }
    }

    if (v10 < *(v8 + 16))
    {
      goto LABEL_55;
    }

    if (v10 >= *(v8 + 24))
    {
      goto LABEL_58;
    }

    v17 = __DataStorage._bytes.getter();
    if (!v17)
    {
      goto LABEL_64;
    }

    v14 = v17;
    v18 = __DataStorage._offset.getter();
    v16 = v10 - v18;
    if (__OFSUB__(v10, v18))
    {
      goto LABEL_60;
    }

    goto LABEL_39;
  }

  return v7;
}

void *sub_10054A0F8(int64_t *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  while (1)
  {
    v7 = v4 >= v6;
    if (v5 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
      break;
    }

    v8 = __OFADD__(v6, v5);
    v6 += v5;
    if (v8)
    {
      v6 = (v6 >> 63) ^ 0x8000000000000000;
    }

    v8 = __OFADD__(v2++, 1);
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v78 = _swiftEmptyArrayStorage;
  sub_10028FFB4(0, v2, 0);
  v74 = a1[3];
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v13 = v3;
LABEL_58:
    v42 = v4 >= v13;
    if (v5 > 0)
    {
      v42 = v13 >= v4;
    }

    if (v42)
    {
      return result;
    }

    while (1)
    {
      v43 = result;
      if (__OFADD__(v13, v5))
      {
        v44 = ((v13 + v5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v44 = v13 + v5;
      }

      v77 = v13;
      result = v74(&v75, &v77);
      v45 = v75;
      v46 = v76;
      v47 = v76 >> 62;
      if ((v76 >> 62) > 1)
      {
        if (v47 != 2)
        {
          goto LABEL_119;
        }

        v50 = *(v75 + 16);
        v49 = *(v75 + 24);
        v8 = __OFSUB__(v49, v50);
        v48 = v49 - v50;
        if (v8)
        {
          goto LABEL_114;
        }
      }

      else if (v47)
      {
        LODWORD(v48) = HIDWORD(v75) - v75;
        if (__OFSUB__(HIDWORD(v75), v75))
        {
          goto LABEL_115;
        }

        v48 = v48;
      }

      else
      {
        v48 = BYTE6(v76);
      }

      if (v48 != 2)
      {
        goto LABEL_119;
      }

      if (v47 == 2)
      {
        v53 = *(v75 + 16);
        v52 = *(v75 + 24);
        v8 = __OFSUB__(v52, v53);
        v51 = v52 - v53;
        if (v8)
        {
          goto LABEL_116;
        }
      }

      else if (v47 == 1)
      {
        LODWORD(v51) = HIDWORD(v75) - v75;
        if (__OFSUB__(HIDWORD(v75), v75))
        {
          goto LABEL_117;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v76);
      }

      if ((v51 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_109;
      }

      if ((v51 & 0x1FFFFFFFFFFFFFFFLL) != 2)
      {
        sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
        sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0, &unk_1007FA4F8);
        swift_allocError();
        swift_willThrow();
        sub_100026AC0(v45, v46);
      }

      v54 = sub_100549DA4(v75, v76);
      v55 = v54[1].u64[0];
      if (v55)
      {
        break;
      }

      v57 = 0;
LABEL_99:

      sub_100026AC0(v45, v46);
      result = v43;
      v78 = v43;
      v71 = v43[2];
      v72 = result[3];
      if (v71 >= v72 >> 1)
      {
        sub_10028FFB4((v72 > 1), v71 + 1, 1);
        result = v78;
      }

      result[2] = v71 + 1;
      *(result + v71 + 16) = v57;
      v73 = v4 >= v44;
      if (v5 > 0)
      {
        v73 = v44 >= v4;
      }

      v13 = v44;
      if (v73)
      {
        return result;
      }
    }

    if (v55 < 4)
    {
      v56 = 0;
      v57 = 0;
LABEL_97:
      v68 = v55 - v56;
      v69 = &v54[2].i16[v56];
      do
      {
        v70 = *v69++;
        v57 |= v70;
        --v68;
      }

      while (v68);
      goto LABEL_99;
    }

    if (v55 >= 0x10)
    {
      v56 = v55 & 0x7FFFFFFFFFFFFFF0;
      v58 = v54 + 3;
      v59 = 0uLL;
      v60 = v55 & 0x7FFFFFFFFFFFFFF0;
      v61 = 0uLL;
      do
      {
        v59 = vorrq_s8(v58[-1], v59);
        v61 = vorrq_s8(*v58, v61);
        v58 += 2;
        v60 -= 16;
      }

      while (v60);
      v62 = vorrq_s8(v61, v59);
      *v62.i8 = vorr_s8(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
      v57 = v62.i16[0] | v62.i16[2] | ((v62.i32[0] | v62.i32[1]) >> 16);
      if (v55 == v56)
      {
        goto LABEL_99;
      }

      if ((v55 & 0xC) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v57 = 0;
      v56 = 0;
    }

    v63 = v56;
    v56 = v55 & 0x7FFFFFFFFFFFFFFCLL;
    v64 = v57;
    v65 = (&v54[2] + 2 * v63);
    v66 = v63 - (v55 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v67 = *v65++;
      v64 = vorr_s8(v67, v64);
      v66 += 4;
    }

    while (v66);
    v57 = v64.i16[0] | v64.i16[2] | ((v64.i32[0] | v64.i32[1]) >> 16);
    if (v55 == v56)
    {
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v10 = 0;
  while (1)
  {
    v11 = v4 >= v3;
    if (v5 > 0)
    {
      v11 = v3 >= v4;
    }

    if (v11)
    {
      break;
    }

    v12 = result;
    if (__OFADD__(v3, v5))
    {
      v13 = ((v3 + v5) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v13 = v3 + v5;
    }

    v77 = v3;
    result = v74(&v75, &v77);
    v14 = v75;
    v15 = v76;
    v16 = v76 >> 62;
    if ((v76 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_118;
      }

      v19 = *(v75 + 16);
      v18 = *(v75 + 24);
      v8 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (v8)
      {
        goto LABEL_110;
      }
    }

    else if (v16)
    {
      LODWORD(v17) = HIDWORD(v75) - v75;
      if (__OFSUB__(HIDWORD(v75), v75))
      {
        goto LABEL_111;
      }

      v17 = v17;
    }

    else
    {
      v17 = BYTE6(v76);
    }

    if (v17 != 2)
    {
      goto LABEL_118;
    }

    if (v16 == 2)
    {
      v22 = *(v75 + 16);
      v21 = *(v75 + 24);
      v8 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v8)
      {
        goto LABEL_113;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v20) = HIDWORD(v75) - v75;
      if (__OFSUB__(HIDWORD(v75), v75))
      {
        goto LABEL_112;
      }

      v20 = v20;
    }

    else
    {
      v20 = BYTE6(v76);
    }

    if ((v20 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      break;
    }

    if ((v20 & 0x1FFFFFFFFFFFFFFFLL) != 2)
    {
      sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
      sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0, &unk_1007FA4F8);
      swift_allocError();
      swift_willThrow();

      return sub_100026AC0(v14, v15);
    }

    v23 = sub_100549DA4(v75, v76);
    v24 = v23[1].u64[0];
    if (v24)
    {
      if (v24 < 4)
      {
        v25 = 0;
        v26 = 0;
LABEL_51:
        v37 = v24 - v25;
        v38 = &v23[2].i16[v25];
        do
        {
          v39 = *v38++;
          v26 |= v39;
          --v37;
        }

        while (v37);
        goto LABEL_53;
      }

      if (v24 >= 0x10)
      {
        v25 = v24 & 0x7FFFFFFFFFFFFFF0;
        v27 = v23 + 3;
        v28 = 0uLL;
        v29 = v24 & 0x7FFFFFFFFFFFFFF0;
        v30 = 0uLL;
        do
        {
          v28 = vorrq_s8(v27[-1], v28);
          v30 = vorrq_s8(*v27, v30);
          v27 += 2;
          v29 -= 16;
        }

        while (v29);
        v31 = vorrq_s8(v30, v28);
        *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
        v26 = v31.i16[0] | v31.i16[2] | ((v31.i32[0] | v31.i32[1]) >> 16);
        if (v24 == v25)
        {
          goto LABEL_53;
        }

        if ((v24 & 0xC) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v32 = v25;
      v25 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      v33 = v26;
      v34 = (&v23[2] + 2 * v32);
      v35 = v32 - (v24 & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v36 = *v34++;
        v33 = vorr_s8(v36, v33);
        v35 += 4;
      }

      while (v35);
      v26 = v33.i16[0] | v33.i16[2] | ((v33.i32[0] | v33.i32[1]) >> 16);
      if (v24 == v25)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v26 = 0;
LABEL_53:

    sub_100026AC0(v14, v15);
    result = v12;
    v78 = v12;
    v40 = v12[2];
    v41 = result[3];
    if (v40 >= v41 >> 1)
    {
      sub_10028FFB4((v41 > 1), v40 + 1, 1);
      result = v78;
    }

    ++v10;
    result[2] = v40 + 1;
    *(result + v40 + 16) = v26;
    v3 = v13;
    if (v2 == v10)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

void *sub_10054A7D0(uint64_t a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_35:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_34;
        }

        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (_swiftEmptyArrayStorage >> 62)
      {
        break;
      }

      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        goto LABEL_19;
      }

LABEL_13:
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_26;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= a1)
    {
      goto LABEL_13;
    }

LABEL_19:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10028EBE8(0, v7[2] + 1, 1, v7);
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10028EBE8((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v7[v10 + 4] = _swiftEmptyArrayStorage;
  }

  while (v6 != v5);
LABEL_26:
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }

LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10028EBE8(0, v7[2] + 1, 1, v7);
    }

    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v7 = sub_10028EBE8((v11 > 1), v12 + 1, 1, v7);
    }

    v7[2] = v12 + 1;
    v7[v12 + 4] = _swiftEmptyArrayStorage;
  }

  else
  {
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_37:
  }

  return v7;
}

uint64_t sub_10054AA7C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v7 | (v6 << 6))) == (result & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_10054AB18(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4, uint64_t a5)
{
  v8 = (a5 + 56);
  v9 = *(a5 + 16) + 1;
  do
  {
    if (!--v9)
    {
      break;
    }

    v10 = v8 + 4;
    v12 = *(v8 - 1);
    v11 = *v8;
    v14 = *(v8 - 3);
    v13 = *(v8 - 2);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v12);
    Hasher._combine(_:)(v11);
    v15 = Hasher._finalize()();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(a3);
    Hasher._combine(_:)(a4);
    v16 = Hasher._finalize()();
    v8 = v10;
  }

  while (v15 != v16);
  return v9 != 0;
}

uint64_t sub_10054AC2C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100983190);
  v1 = sub_10000C4AC(v0, qword_100983190);
  if (qword_100973728 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10054ACF4()
{
  v0 = [objc_allocWithZone(type metadata accessor for SDAirDropContactHashManager()) init];
  sub_10054AD34();
  qword_1009831A8 = v0;
}

void sub_10054AD34()
{
  v1 = v0;
  v2 = type metadata accessor for SFPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100983190);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "HashManager: activate called", v9, 2u);
  }

  static SFPlatform.watchOS.getter();
  v10 = static SFPlatform.isPlatform(_:)();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "AirDrop hashes not needed for watchOS", v13, 2u);
    }
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor];
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    v29 = sub_10055A0AC;
    v30 = v15;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100011678;
    v28 = &unk_1008E6B08;
    v16 = _Block_copy(&aBlock);
    v17 = v1;

    [v14 setFirstUnlockHandler:v16];
    _Block_release(v16);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v29 = sub_10055A0D0;
    v30 = v18;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100011678;
    v28 = &unk_1008E6B58;
    v19 = _Block_copy(&aBlock);
    v20 = v17;

    [v14 setPowerUnlimitedChangedHandler:v19];
    _Block_release(v19);
    v29 = sub_10054C1C0;
    v30 = 0;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100011678;
    v28 = &unk_1008E6B80;
    v21 = _Block_copy(&aBlock);
    [v14 setMeDeviceChangedHandler:v21];
    _Block_release(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v29 = sub_10055A0D8;
    v30 = v22;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100011678;
    v28 = &unk_1008E6BD0;
    v23 = _Block_copy(&aBlock);
    v24 = v20;

    [v14 activateWithCompletion:v23];
    _Block_release(v23);
    sub_100558E88();
    sub_100559198();
  }
}

char *sub_10054B1AC(uint64_t *a1)
{
  v2 = v1;
  v31 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v3 - 8);
  *&v30 = v3;
  __chkstk_darwin(v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactUpdateCoalescer;
  *&v1[v8] = [objc_allocWithZone(CUCoalescer) init];
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardUpdateCoalescer;
  *&v1[v9] = [objc_allocWithZone(CUCoalescer) init];
  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ;
  v27[1] = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  v10 = v31;
  *&v1[v28] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_bucket;
  v12 = [objc_allocWithZone(SFTokenBucket) initWithBucketSize:100 tokenDurationSec:1.0];
  v13 = [objc_allocWithZone(SFTokenBucketWithDups) initWithBucket:v12 dupHistoryLength:100];

  *&v2[v11] = v13;
  v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated] = 0;
  v14 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo];
  *v14 = 0;
  v14[1] = 0;
  v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully] = 1;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactChangeBatchSize] = 1000;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction] = 0;
  v15 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osStateHandler];
  *v15 = 0;
  v15[8] = 1;
  sub_1002A9938(v10 + 8, &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore]);
  v30 = *(v10 + 48);
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB] = v30;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor] = *v10;
  v16 = *(v10 + 64);
  v17 = *(v10 + 72);
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter] = v16;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_distributedNotificationCenter] = v17;
  sub_10055A4EC(v10, &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context]);
  v18 = qword_100973A00;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_100983190);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "HashManager: init.", v24, 2u);
  }

  v33.receiver = v2;
  v33.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v33, "init");
  [*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) setDispatchQueue:*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ)];
  sub_10055A548(v10);
  return v25;
}

void sub_10054B738()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v6)
  {
    v26 = v9;
    v27 = v10;
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100983190);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "HashManager: internal activate called", v14, 2u);
    v2 = v25;
  }

  if ([*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) firstUnlocked])
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated;
    if ((*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) & 1) == 0)
    {
      sub_10054D0D8();
      v16 = v26;
      *v5 = v26;
      v8(v5, v7, v2);
      v17 = v16;
      LOBYTE(v16) = _dispatchPreconditionTest(_:)();
      v27(v5, v2);
      if (v16)
      {
        if ((*(v1 + v15) & 1) == 0)
        {
          sub_10054D3E8(&OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactUpdateCoalescer, &unk_1008E6CA8, sub_10055A120, &unk_1008E6CC0);
          sub_10054D3E8(&OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardUpdateCoalescer, &unk_1008E6C58, sub_10055A0FC, &unk_1008E6C70);
        }

        sub_10054BC44(0);
        sub_10054D60C();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "HashManager: activated", v20, 2u);
        }

        *(v1 + v15) = 1;
        sub_10054CA3C();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device has not been unlocked. Don't activate hash manager.", v23, 2u);
    }
  }
}

id sub_10054BB40(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) powerUnlimited];
  if (result)
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100983190);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Power handler called", v5, 2u);
    }

    return sub_10054BC44(0);
  }

  return result;
}

BOOL sub_10054BC44(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100983190);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Hash update requested.", v13, 2u);
  }

  if (a1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Force rebuild requested", v16, 2u);
    }
  }

  v17 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo];
  if (v17)
  {
    v18 = [v17 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v26 = 0;
  v27 = 0;
  v25 = 0;
  sub_10055208C();
  v22 = sub_10055079C(v2, a1 & 1, &v25, &v27, &v26, v19, v21);

  v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully] = 1;
  sub_100552198();
  return v22;
}

void sub_10054C1E0(uint64_t a1, const char *a2)
{
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100983190);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  sub_10054B738();
}

void sub_10054C2CC()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v14 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v14];

  v5 = v14;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100983190);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to delete url %@", v11, 0xCu);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }
}

void sub_10054C524(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100983190);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Posting contacts hashes changed notification - updates occurred %{BOOL}d", v13, 8u);
  }

  v14 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter);
  v15 = String._bridgeToObjectiveC()();
  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  v18[1] = 0xD000000000000037;
  v18[2] = 0x800000010078D8C0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = a1 & 1;
  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009832B0, &unk_1007F64D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 postNotificationName:v15 object:0 userInfo:isa];
}

void sub_10054C82C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100983190);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting meCard changed notification", v11, 2u);
  }

  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter);
  v13 = String._bridgeToObjectiveC()();
  [v12 postNotificationName:v13 object:0];
}

void sub_10054CA3C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  v7 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    sub_10054C524(1);
    sub_10054C82C();
    v8 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osStateHandler];
    if (v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osStateHandler + 8] == 1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      aBlock[4] = sub_100025EDC;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100025E8C;
      aBlock[3] = &unk_1008E6C20;
      v10 = _Block_copy(aBlock);
      v11 = v0;

      v12 = os_state_add_handler();
      _Block_release(v10);
      *v8 = v12;
      v8[8] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10054CC24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100983190);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Contact update coalescer fired", v11, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    v12 = sub_10054BC44(0);
    sub_10054C524(v12);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "HashManager: not activated yet.", v15, 2u);
    }
  }
}

void sub_10054CE84()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100983190);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MeCard update coalescer fired", v11, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) == 1)
  {
    sub_10054C82C();
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "HashManager: not activated yet.", v14, 2u);
    }
  }
}

void sub_10054D0D8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated))
  {
    return;
  }

  v2 = objc_opt_self();
  v1 = &selRef_shareUserDefaultsActivity;
  v8 = [v2 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v5 = [v8 integerForKey:v9];

  if (v5 == 3)
  {
    return;
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100983190);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v5;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 3;
    _os_log_impl(&_mh_execute_header, v11, v12, "Database version mismatch: %ld!=%ld. Clearing history token to rebuild database", v13, 0x16u);
  }

  v14 = [v2 v1[146]];
  v15 = String._bridgeToObjectiveC()();
  [v14 setObject:0 forKey:v15];

  v16 = [v2 v1[146]];
  v17 = String._bridgeToObjectiveC()();
  [v16 setInteger:3 forKey:v17];
}

void sub_10054D3E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    if ((v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated] & 1) == 0)
    {
      v15 = *&v4[*a1];
      [v15 setDispatchQueue:v13];
      v16 = &v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context];
      [v15 setMinDelay:*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context + 80]];
      [v15 setMaxDelay:v16[11]];
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      aBlock[4] = a3;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = a4;
      v18 = _Block_copy(aBlock);
      v19 = v4;

      [v15 setActionHandler:v18];
      _Block_release(v18);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10054D60C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if ((*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_activated) & 1) == 0)
    {
      v7 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_notificationCenter);
      v8 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore);
      [v7 addObserver:v0 selector:"contactStoreDidChange" name:*(*sub_10002CDC0((v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore) object:{*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore + 24)) + 16), 0}];
      [v7 addObserver:v0 selector:"meCardDidChange" name:*(*sub_10002CDC0(v8 object:{v8[3]) + 24), 0}];
      v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_distributedNotificationCenter);
      v10 = String._bridgeToObjectiveC()();
      [v9 addObserver:v0 selector:"cmfSyncAgentBlockListDidChange" name:v10 object:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10054D8F4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v11 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100983190);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v13;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, v24, v17, 2u);
    v13 = v23;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  aBlock[4] = a3;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a4;
  v19 = _Block_copy(aBlock);
  v20 = v7;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100558BE8(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v10, v8);
  (*(v11 + 8))(v13, v25);
}

uint64_t sub_10054DD24(int a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v4 - 8);
  v6 = &v44[-v5];
  v7 = type metadata accessor for Date();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v47 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v45 = a1;
    if (qword_100973A00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = v7;
  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100983190);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Persist requested.", v20, 2u);
  }

  v21 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 56);
  swift_unknownObjectRetain();
  v24 = v50;
  v23(ObjectType, v21);
  result = swift_unknownObjectRelease();
  if (!v24)
  {
    v26 = v47;
    Date.init()();
    v27 = v46;
    v28 = *(v46 + 16);
    v28(v6, v26, v16);
    v29 = *(v27 + 56);
    v29(v6, 0, 1, v16);
    sub_100559C28(v6);
    if (v45)
    {
      v28(v6, v47, v16);
      v29(v6, 0, 1, v16);
      sub_100559DC8(v6);
    }

    v30 = [*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_systemMonitor) meDeviceIDSDeviceID];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v48 = v32;
      v49 = v34;
      sub_10001229C();
      v35 = StringProtocol.hash.getter();

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "Persist completed for deviceID hash %ld", v38, 0xCu);
      }

      v39 = [objc_opt_self() standardUserDefaults];
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v41 = String._bridgeToObjectiveC()();
      [v39 setObject:isa forKey:v41];
    }

    else
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Missing deviceID hash", v43, 2u);
      }
    }

    return (*(v46 + 8))(v47, v16);
  }

  return result;
}

void sub_10054E2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = [a1 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (a4)
  {
    if (v16 == a3 && v18 == a4)
    {

      goto LABEL_13;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
LABEL_13:
      if (qword_100973A00 == -1)
      {
LABEL_14:
        v25 = type metadata accessor for Logger();
        sub_10000C4AC(v25, qword_100983190);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Skip meCard change", v28, 2u);
        }

        return;
      }

LABEL_19:
      swift_once();
      goto LABEL_14;
    }
  }

  else
  {
  }

  v21 = [a1 identifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_10054E864(v22, v24, a2, a3, a4);

  if (!v4)
  {
    sub_10054E588(a1, a2, a3, a4);
  }
}

void sub_10054E588(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = [a1 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (a4)
  {
    if (v16 == a3 && v18 == a4)
    {

      goto LABEL_13;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
LABEL_13:
      if (qword_100973A00 == -1)
      {
LABEL_14:
        v26 = type metadata accessor for Logger();
        sub_10000C4AC(v26, qword_100983190);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Skip meCard change", v29, 2u);
        }

        return;
      }

LABEL_19:
      swift_once();
      goto LABEL_14;
    }
  }

  else
  {
  }

  sub_10054EAF4(a1);
  if (!v4)
  {
    v22 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
    v23 = v21;
    ObjectType = swift_getObjectType();
    v25 = *(v22 + 24);
    swift_unknownObjectRetain();
    v25(v23, ObjectType, v22);

    swift_unknownObjectRelease();
  }
}

void sub_10054E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  _s16DaemoniOSLibrary21SDXPCHelperImageCacheC5evict17contactIdentifierySS_tFZ_0(a1, a2);
  if (!a5 || (a1 != a4 || a2 != a5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v20 = *(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 32);
    swift_unknownObjectRetain();
    v22(a1, a2, ObjectType, v20);
    swift_unknownObjectRelease();
    return;
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100983190);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Skip meCard change", v19, 2u);
  }
}

void sub_10054EAF4(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *&v186 = v3;
  *(&v186 + 1) = v5;
  v184 = 44;
  v185 = 0xE100000000000000;
  v182 = sub_10001229C();
  LOBYTE(v2) = StringProtocol.contains<A>(_:)();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v174 = a1;
    v7 = [a1 emailAddresses];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v8;
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v38 = v6;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  v6 = v38;
LABEL_4:
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v6;
    *&v186 = _swiftEmptyArrayStorage;
    sub_10028FBDC(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v12 = 0;
    v13 = v186;
    v14 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v14 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = String.init(_:)([v15 value]);

      *&v186 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_10028FBDC((v18 > 1), v19 + 1, 1);
        v13 = v186;
      }

      ++v12;
      v13[2] = v19 + 1;
      *&v13[2 * v19 + 4] = v17;
      v14 = v11;
    }

    while (v9 != v12);

    v10 = _swiftEmptyArrayStorage;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v20 = [v174 instantMessageAddresses];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_29:

    v24 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_17:
  v184 = _swiftEmptyArrayStorage;
  sub_10028FBDC(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    goto LABEL_115;
  }

  v23 = 0;
  v24 = v184;
  v25 = v21;
  v168 = v21 & 0xC000000000000001;
  v175 = v21;
  do
  {
    if (v168)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v25 + 8 * v23 + 32);
    }

    v10 = v26;
    v27 = [v26 value];
    v28 = [v27 username];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *&v186 = v29;
    *(&v186 + 1) = v31;
    v32 = String.init<A>(_:)();
    v34 = v33;

    v184 = v24;
    v36 = v24[2];
    v35 = v24[3];
    if (v36 >= v35 >> 1)
    {
      v10 = &v184;
      sub_10028FBDC((v35 > 1), v36 + 1, 1);
      v24 = v184;
    }

    ++v23;
    v24[2] = v36 + 1;
    v37 = &v24[2 * v36];
    v37[4] = v32;
    v37[5] = v34;
    v25 = v175;
  }

  while (v22 != v23);

LABEL_30:
  v39 = v24[2];
  if (!v39)
  {
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v40 = 0;
  v41 = v24 + 5;
  v176 = v24[2];
  v159 = v39 - 1;
  v169 = _swiftEmptyArrayStorage;
  while (2)
  {
    v42 = &v41[2 * v40];
    v43 = v40;
    while (1)
    {
      if (v43 >= v24[2])
      {
        __break(1u);
        goto LABEL_84;
      }

      v45 = *(v42 - 1);
      v44 = *v42;
      v40 = v43 + 1;
      *&v186 = v45;
      *(&v186 + 1) = v44;
      v184 = 64;
      v185 = 0xE100000000000000;

      v10 = &v186;
      if (StringProtocol.contains<A>(_:)())
      {
        break;
      }

      v42 += 2;
      ++v43;
      if (v176 == v40)
      {
        goto LABEL_44;
      }
    }

    v10 = v169;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = v169;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10028FBDC(0, v169[2] + 1, 1);
      v10 = v190;
    }

    v48 = *(v10 + 16);
    v47 = *(v10 + 24);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      sub_10028FBDC((v47 > 1), v48 + 1, 1);
      v49 = v48 + 1;
      v10 = v190;
    }

    *(v10 + 16) = v49;
    v169 = v10;
    v50 = v10 + 16 * v48;
    *(v50 + 32) = v45;
    *(v50 + 40) = v44;
    v41 = v24 + 5;
    if (v159 != v43)
    {
      continue;
    }

    break;
  }

LABEL_44:

  *&v186 = v13;
  sub_100403A1C(v169);
  v51 = v186;
  v52 = *(v186 + 16);
  if (!v52)
  {

    v69 = _swiftEmptyArrayStorage;
LABEL_62:
    v76 = v69[2];
    v77 = v174;
    if (v76)
    {
      v171 = v76 - 1;
      v182 = _swiftEmptyArrayStorage;
      v78 = 4;
      for (i = v69; ; v69 = i)
      {
        v79 = *&v69[v78];
        v80 = *&v69[v78 + 2];
        v81 = *&v69[v78 + 4];
        v189 = v69[v78 + 6];
        v187 = v80;
        v188 = v81;
        v186 = v79;
        sub_10000FF90(&v186, &v184, &qword_100975050, &qword_1007F83F0);
        v82 = [v77 identifier];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v86 = v186;
        v161 = v188;
        v165 = v187;
        v87 = BYTE2(v189);
        v88 = v189;
        LOBYTE(v190) = HIBYTE(v189);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_10028EFE0(0, *(v182 + 2) + 1, 1, v182);
        }

        v90 = *(v182 + 2);
        v89 = *(v182 + 3);
        if (v90 >= v89 >> 1)
        {
          v182 = sub_10028EFE0((v89 > 1), v90 + 1, 1, v182);
        }

        *(v182 + 2) = v90 + 1;
        v91 = &v182[72 * v90];
        *(v91 + 4) = v83;
        *(v91 + 5) = v85;
        *(v91 + 3) = v86;
        *(v91 + 4) = v165;
        *(v91 + 5) = v161;
        v91[98] = (v88 | (v87 << 16)) >> 16;
        *(v91 + 48) = v88;
        v91[99] = v190;
        if (!v171)
        {
          break;
        }

        --v171;
        v78 += 7;
        v77 = v174;
      }

      v77 = v174;
    }

    else
    {

      v182 = _swiftEmptyArrayStorage;
    }

    v92 = [v77 phoneNumbers];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v10 >> 62))
    {
      v93 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v93)
      {
LABEL_74:
        v184 = _swiftEmptyArrayStorage;
        sub_10028FBDC(0, v93 & ~(v93 >> 63), 0);
        if (v93 < 0)
        {
          goto LABEL_116;
        }

        v94 = 0;
        v95 = v184;
        v96 = v10;
        v179 = v10 & 0xC000000000000001;
        v97 = v10;
        do
        {
          if (v179)
          {
            v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v98 = *(v96 + 8 * v94 + 32);
          }

          v99 = v98;
          v100 = [v98 value];
          v101 = [v100 stringValue];

          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          *&v186 = v102;
          *(&v186 + 1) = v104;
          v105 = String.init<A>(_:)();
          v107 = v106;

          v184 = v95;
          v109 = v95[2];
          v108 = v95[3];
          if (v109 >= v108 >> 1)
          {
            sub_10028FBDC((v108 > 1), v109 + 1, 1);
            v95 = v184;
          }

          ++v94;
          v95[2] = v109 + 1;
          v110 = &v95[2 * v109];
          v110[4] = v105;
          v110[5] = v107;
          v96 = v97;
        }

        while (v93 != v94);

        goto LABEL_86;
      }

LABEL_85:

      v95 = _swiftEmptyArrayStorage;
LABEL_86:
      sub_1002A9938(v157 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore, &v186);
      sub_10002CDC0(&v186, *(&v187 + 1));
      DynamicType = swift_getDynamicType();
      v112 = v188;
      sub_10000C60C(&v186);
      v113 = 0;
      v114 = v95[2];
      v115 = v95 + 5;
      v162 = _swiftEmptyArrayStorage;
LABEL_87:
      v116 = &v115[2 * v113];
      while (v114 != v113)
      {
        if (v113 >= v95[2])
        {
          __break(1u);
          goto LABEL_114;
        }

        ++v113;
        v117 = v116 + 2;
        v118 = *(v116 - 1);
        v119 = *v116;
        v120 = *(v112 + 40);

        v121 = v120(v118, v119, DynamicType, v112);
        v123 = v122;

        v116 = v117;
        if (v123)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v124 = v162;
          }

          else
          {
            v124 = sub_10028E1C8(0, *(v162 + 2) + 1, 1, v162);
          }

          v126 = *(v124 + 2);
          v125 = *(v124 + 3);
          if (v126 >= v125 >> 1)
          {
            v124 = sub_10028E1C8((v125 > 1), v126 + 1, 1, v124);
          }

          *(v124 + 2) = v126 + 1;
          v162 = v124;
          v127 = &v124[16 * v126];
          *(v127 + 4) = v121;
          *(v127 + 5) = v123;
          v115 = v95 + 5;
          goto LABEL_87;
        }
      }

      v128 = *(v162 + 2);
      if (v128)
      {
        v184 = _swiftEmptyArrayStorage;
        sub_10028FF14(0, v128, 0);
        v129 = v184;
        v130 = (v162 + 40);
        do
        {
          v131 = *(v130 - 1);
          v132 = *v130;

          sub_100465D18(v131, v132, &v186);
          v133 = *(&v186 + 1);
          v166 = v186;
          v172 = v188;
          v180 = v187;
          v134 = BYTE2(v189);
          v135 = v189;
          v136 = HIBYTE(v189);

          LOBYTE(v186) = v136;
          v184 = v129;
          v138 = v129[2];
          v137 = v129[3];
          if (v138 >= v137 >> 1)
          {
            sub_10028FF14((v137 > 1), v138 + 1, 1);
            v129 = v184;
          }

          v129[2] = v138 + 1;
          v139 = &v129[7 * v138];
          v139[4] = v166;
          v139[5] = v133;
          *(v139 + 3) = v180;
          *(v139 + 4) = v172;
          *(v139 + 82) = (v135 | (v134 << 16)) >> 16;
          *(v139 + 40) = v135;
          *(v139 + 83) = v136;
          v130 += 2;
          --v128;
        }

        while (v128);
      }

      else
      {

        v129 = _swiftEmptyArrayStorage;
      }

      v140 = v129[2];
      v141 = v174;
      if (v140)
      {
        v181 = v140 - 1;
        v142 = 32;
        while (1)
        {
          v143 = *(v129 + v142);
          v144 = *(v129 + v142 + 16);
          v145 = *(v129 + v142 + 32);
          v189 = *(v129 + v142 + 48);
          v187 = v144;
          v188 = v145;
          v186 = v143;
          sub_10000FF90(&v186, &v184, &qword_100975050, &qword_1007F83F0);
          v146 = [v141 identifier];
          v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v148 = v147;

          v149 = v186;
          v163 = v188;
          v167 = v187;
          v150 = BYTE2(v189);
          v151 = v189;
          LOBYTE(v190) = HIBYTE(v189);
          v152 = v142;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_10028EFE0(0, *(v182 + 2) + 1, 1, v182);
          }

          v154 = *(v182 + 2);
          v153 = *(v182 + 3);
          if (v154 >= v153 >> 1)
          {
            v182 = sub_10028EFE0((v153 > 1), v154 + 1, 1, v182);
          }

          *(v182 + 2) = v154 + 1;
          v155 = &v182[72 * v154];
          *(v155 + 4) = v173;
          *(v155 + 5) = v148;
          *(v155 + 3) = v149;
          *(v155 + 4) = v167;
          *(v155 + 5) = v163;
          v155[98] = (v151 | (v150 << 16)) >> 16;
          *(v155 + 48) = v151;
          v155[99] = v190;
          if (!v181)
          {
            break;
          }

          --v181;
          v142 = v152 + 56;
          v141 = v174;
        }
      }

      return;
    }

LABEL_84:
    v93 = _CocoaArrayWrapper.endIndex.getter();
    if (v93)
    {
      goto LABEL_74;
    }

    goto LABEL_85;
  }

  v184 = _swiftEmptyArrayStorage;
  sub_10028FF14(0, v52, 0);
  v177 = v184;
  v156 = v51;

  v53 = String._bridgeToObjectiveC()();
  v54 = sub_1001F25F8(v53, 0);

  if (v54)
  {
    v55 = v156 + 56;
    do
    {
      v183 = v52;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = String._bridgeToObjectiveC()();
      v60 = sub_1001F25F8(v59, 1);

      if (!v60)
      {
        goto LABEL_118;
      }

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      sub_100465D18(v56, v58, &v186);
      v65 = *(&v186 + 1);
      v64 = v186;
      v164 = v188;
      v170 = v187;
      v160 = v189 | (BYTE2(v189) << 16);
      v66 = HIBYTE(v189);
      if (v56 == v61 && v58 == v63)
      {
        v158 = v55;
        v67 = *(&v186 + 1);
        v68 = v186;
        v69 = v177;
        v70 = v189 | (BYTE2(v189) << 16);
      }

      else
      {
        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v71)
        {
          v69 = v177;
          v70 = v160;
          goto LABEL_55;
        }

        v158 = v55;
        v67 = v65;
        v68 = v64;
        sub_100465D18(v61, v63, &v186);
        v70 = v189 | (BYTE2(v189) << 16);
        v66 = HIBYTE(v189);
        v69 = v177;
      }

      v64 = v68;
      v65 = v67;
      v55 = v158;
LABEL_55:

      LOBYTE(v190) = v66;
      v184 = v69;
      v73 = v69[2];
      v72 = v69[3];
      if (v73 >= v72 >> 1)
      {
        sub_10028FF14((v72 > 1), v73 + 1, 1);
        v69 = v184;
      }

      v69[2] = v73 + 1;
      v74 = &v69[7 * v73];
      v74[4] = v64;
      v74[5] = v65;
      *(v74 + 3) = v170;
      *(v74 + 4) = v164;
      *(v74 + 82) = BYTE2(v70);
      *(v74 + 40) = v70;
      *(v74 + 83) = v66;
      v52 = v183 - 1;
      if (v183 == 1)
      {

        goto LABEL_62;
      }

      v177 = v69;

      v75 = String._bridgeToObjectiveC()();
      v54 = sub_1001F25F8(v75, 0);

      v55 += 16;
    }

    while (v54);
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
}

uint64_t sub_10054F9C0(uint64_t a1)
{
  v73 = type metadata accessor for Calendar.Component();
  v4 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = __chkstk_darwin(v8 - 8);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v66 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v65 = &v62 - v18;
  v19 = __chkstk_darwin(v17);
  v68 = &v62 - v20;
  v21 = __chkstk_darwin(v19);
  v67 = &v62 - v22;
  __chkstk_darwin(v21);
  v74 = &v62 - v23;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v27 = v28;
  (*(v25 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v24);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v31 = *(v25 + 8);
  v30 = (v25 + 8);
  v31(v27, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  sub_10002693C(v12);
  v32 = v14[6];
  if (v32(v12, 1, v13) == 1)
  {
LABEL_5:
    sub_100005508(v12, &qword_10097A7F0, &unk_1007FB600);
    v38 = 0;
    return v38 & 1;
  }

  v64 = v14;
  v63 = v14[4];
  v63(v74, v12, v13);
  v33 = v7;
  static Calendar.current.getter();
  v34 = v69;
  v35 = v73;
  (*(v4 + 104))(v69, enum case for Calendar.Component.day(_:), v73);
  v36 = v71;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v37 = v35;
  v12 = v36;
  (*(v4 + 8))(v34, v37);
  (*(v70 + 8))(v33, v72);
  if (v32(v36, 1, v13) == 1)
  {
    (v64[1])(v74, v13);
    goto LABEL_5;
  }

  v14 = v64;
  v30 = v67;
  v63(v67, v12, v13);
  Date.init()();
  sub_100558BE8(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LODWORD(v73) = dispatch thunk of static Comparable.< infix(_:_:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = v39;
  Date.timeIntervalSinceReferenceDate.getter();
  v2 = v40;
  if (qword_100973A00 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v41 = type metadata accessor for Logger();
  sub_10000C4AC(v41, qword_100983190);
  v42 = v14[2];
  v43 = v65;
  v42(v65, v30, v13);
  v44 = v66;
  v45 = v74;
  v42(v66, v74, v13);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v46, v47))
  {

    v61 = v14[1];
    v61(v44, v13);
    v61(v43, v13);
    v61(v68, v13);
    v61(v30, v13);
    v61(v45, v13);
    goto LABEL_13;
  }

  LODWORD(v71) = v47;
  v48 = v1 - v2;
  v49 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v75 = v70;
  *v49 = 136315650;
  sub_100558BE8(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v52 = v51;
  v53 = v14[1];
  v53(v43, v13);
  v54 = sub_10000C4E4(v50, v52, &v75);

  *(v49 + 4) = v54;
  *(v49 + 12) = 2080;
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  v57 = v56;
  v72 = v13;
  v53(v44, v13);
  v58 = sub_10000C4E4(v55, v57, &v75);

  *(v49 + 14) = v58;
  *(v49 + 22) = 2048;
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v48 < 9.22337204e18)
  {
    *(v49 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v46, v71, "Next hash store rebuild: %s, last: %s, secs to next rebuild: %ld", v49, 0x20u);
    swift_arrayDestroy();

    v60 = v72;
    v53(v68, v72);
    v53(v67, v60);
    v53(v74, v60);
LABEL_13:
    v38 = v73 ^ 1;
    return v38 & 1;
  }

LABEL_19:
  __break(1u);
  return result;
}

BOOL sub_10055028C(uint64_t a1)
{
  v2 = sub_100559F68();
  if ((v3 & 1) != 0 || (v4 = v2, (v5 = [*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_context) meDeviceIDSDeviceID]) == 0))
  {
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100983190);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Last deviceID hash not populated", v16, 2u);
    }

    return 0;
  }

  else
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001229C();
    v7 = StringProtocol.hash.getter();

    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100983190);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v4;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "Comparing deviceID hashes %ld - %ld", v11, 0x16u);
    }

    return v4 == v7;
  }
}

uint64_t sub_1005504C0(int a1, _BYTE *a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  LODWORD(v9) = sub_10054F9C0(a2);
  v12 = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v12) = v14(ObjectType, v12);
  swift_unknownObjectRelease();
  if (v12)
  {
    v2 = 1;
    v3 = 1;
  }

  else
  {
    v3 = !sub_10055028C(a2);
    v2 = 1;
    if (((a1 | v9) & 1) == 0 && !v3)
    {
      v3 = 0;
      v2 = a2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully] ^ 1;
    }
  }

  if (qword_100973A00 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100983190);
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67110144;
    *(v19 + 4) = v2 & 1;
    *(v19 + 8) = 1024;
    *(v19 + 10) = a1 & 1;
    *(v19 + 14) = 1024;
    *(v19 + 16) = v9 & 1;
    *(v19 + 20) = 1024;
    *(v19 + 22) = v3;
    *(v19 + 26) = 1024;
    *(v19 + 28) = (*(&v16->isa + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) & 1) == 0;

    _os_log_impl(&_mh_execute_header, v17, v18, "Should regenerate database: %{BOOL}d (forceRebuild: %{BOOL}d rebuild due: %{BOOL}d storeRebuildRequired: %{BOOL}d hashesFailedToUpdate: %{BOOL}d", v19, 0x20u);
  }

  else
  {

    v17 = v16;
  }

  return v2 & 1;
}

BOOL sub_10055079C(char *a1, char a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v151 = a7;
  v150 = a6;
  v149 = a3;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ];
  v15->isa = v16;
  v17 = *(v13 + 104);
  v156 = enum case for DispatchPredicate.onQueue(_:);
  v155 = v13 + 104;
  v154 = v17;
  v17(v15);
  v153 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  v19 = *(v13 + 8);
  v157 = v15;
  v159 = v12;
  v158 = v13 + 8;
  v152 = v19;
  v19(v15, v12);
  if (v18)
  {
    v146 = a5;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v20 = qword_100973A00;
    v163 = a1;
    if (v20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  v22 = sub_10000C4AC(v21, qword_100983190);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Start updating hashes.", v25, 2u);
  }

  v26 = v163;
  v161 = sub_1005504C0(a2 & 1, v163);
  if (v161)
  {
    v27 = 0;
    v28 = 0xF000000000000000;
LABEL_8:
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "History token is nil. Will regenerate hash database", v32, 2u);
      v26 = v163;
    }

    goto LABEL_11;
  }

  v27 = sub_100559B00();
  v28 = v29;
  if (v29 >> 60 == 15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v147 = a4;
  v160 = v22;
  sub_10002CDC0(&v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore], *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_contactStore + 24]);
  v33 = sub_1005A0840(v27, v28);
  if (v7)
  {

    sub_10028BCC0(v27, v28);

    return v36;
  }

  v38 = v33;
  v39 = v35;
  v145 = v34;
  v40 = sub_10054A7D0(1000, v33);
  v41 = v40[2];
  v42 = v41 != 0;
  if (!v41)
  {

    sub_100551E0C(v26);
    v135 = v42;

    v48 = objc_opt_self();
    v49 = v145;
    sub_100294008(v145, v39);
    v50 = [v48 standardUserDefaults];
    sub_100294008(v49, v39);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v49, v39);
    v52 = String._bridgeToObjectiveC()();
    [v50 setObject:isa forKey:v52];

    sub_100026AC0(v49, v39);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "No hash updates needed.", v55, 2u);
    }

    goto LABEL_22;
  }

  v132 = v40[2];
  if (v161)
  {
    v139 = v40;
    v136 = v38;
    v144 = v39;
    v135 = v41 != 0;
    v134 = v27;
    v43 = &v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
    v44 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8];
    v45 = v26;
    ObjectType = swift_getObjectType();
    v47 = *(v44 + 64);
    swift_unknownObjectRetain();
    v47(ObjectType, v44);
    swift_unknownObjectRelease();
    type metadata accessor for SDAirDropHashStoreCDB();
    v56 = swift_allocObject();
    sub_1000276B4(0, &qword_100973C78, NSData_ptr);
    v57 = objc_allocWithZone(CUKeyValueStoreReader);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v56 + 16) = [v57 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
    *(v56 + 24) = 0;
    *(v56 + 32) = _swiftEmptyArrayStorage;
    *(v56 + 40) = &_swiftEmptySetSingleton;
    *(v56 + 48) = 0;
    *v43 = v56;
    v43[1] = &protocol witness table for SDAirDropHashStoreCDB;
    swift_unknownObjectRelease();
    sub_100559A08(&static os_log_type_t.debug.getter, "HashManager: database set.");

    v138 = 0;
    v18 = 0;
    v27 = v134;
    v42 = v135;
    v26 = v45;
    v39 = v144;
    v38 = v136;
    v59 = v139;
  }

  else
  {
    v138 = sub_100558E6C;
    v59 = v40;
  }

  sub_100551E0C(v26);
  v139 = v59;
  v136 = v38;
  v144 = v39;
  v135 = v42;

  v60 = &v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
  v62 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB];
  v61 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8];
  v63 = swift_getObjectType();
  v64 = *(v61 + 40);
  swift_unknownObjectRetain();
  v64(v63, v61);
  v65 = 0;
  v126 = v60;
  swift_unknownObjectRelease();
  v66 = 0;
  v67 = v139;
  v128 = v139 + 4;
  *&v68 = 136315138;
  v137 = v68;
  v69 = v149;
  v70 = v163;
  v127 = v28;
  v134 = v27;
  do
  {
    if (v66 >= v67[2])
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v129 = v66;
    v71 = v128[v66];

    v72 = objc_autoreleasePoolPush();
    v73 = v71;
    v131 = v72;
    if (v71 >> 62)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
      v73 = v71;
      if (!v74)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v74 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v74)
      {
        goto LABEL_71;
      }
    }

    v142 = v73 & 0xC000000000000001;
    v140 = v74;
    v61 = v73;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v75 = v61;
    v76 = 0;
    v133 = v61 & 0xFFFFFFFFFFFFFF8;
    v130 = v138;
    v77 = v18;
    v141 = v61;
    do
    {
      v143 = v77;
LABEL_29:
      v27 = v76;
      while (1)
      {
        if (v142)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v61 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v27 >= *(v133 + 16))
          {
            goto LABEL_92;
          }

          v18 = *(v75 + 8 * v27 + 32);

          v61 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }
        }

        type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
        v78 = swift_dynamicCastClass();
        v148 = v61;
        if (v78)
        {
          break;
        }

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = v65;
          v83 = swift_slowAlloc();
          v162[0] = v83;
          *v81 = v137;
          v84 = _typeName(_:qualified:)();
          v28 = sub_10000C4E4(v84, v85, v162);
          v69 = v149;

          *(v81 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v79, v80, "Processing event: %s", v81, 0xCu);
          sub_10000C60C(v83);
          v65 = v82;
        }

        v70 = v163;
        if (v161)
        {
          type metadata accessor for SDContactChangeHistoryAddEvent();
          if (!swift_dynamicCastClass())
          {

            v61 = Logger.logObject.getter();
            LOBYTE(v62) = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v61, v62))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v162[0] = v100;
              *v99 = v137;
              v101 = _typeName(_:qualified:)();
              v103 = sub_10000C4E4(v101, v102, v162);

              *(v99 + 4) = v103;
              _os_log_impl(&_mh_execute_header, v61, v62, "Unexpected change event %s when regenerating database", v99, 0xCu);
              sub_10000C60C(v100);
              v69 = v149;

              v70 = v163;
            }

            else
            {
            }

            v161 = 1;
            v76 = v148;
            v75 = v141;
            v18 = v143;
            if (v148 == v140)
            {
LABEL_70:
              v138 = v130;
              v28 = v127;
              v27 = v134;
              goto LABEL_71;
            }

            goto LABEL_29;
          }
        }

        v28 = v157;
        v86 = v153;
        v157->isa = v153;
        v62 = v159;
        v154(v28, v156, v159);
        v87 = v86;
        v61 = _dispatchPreconditionTest(_:)();
        v152(v28, v62);
        if ((v61 & 1) == 0)
        {
          goto LABEL_90;
        }

        type metadata accessor for SDContactChangeHistoryUpdateEvent();
        v88 = swift_dynamicCastClass();
        if (v88)
        {
          v61 = *(v88 + 16);
          sub_10054E2A8(v61, v70, v150, v151);

          if (__OFADD__(*v69, 1))
          {
            goto LABEL_91;
          }

          ++*v69;
        }

        else
        {
          type metadata accessor for SDContactChangeHistoryAddEvent();
          v89 = swift_dynamicCastClass();
          if (v89)
          {
            v61 = *(v89 + 16);
            sub_10054E588(v61, v70, v150, v151);

            v90 = v147;
            v91 = *v147 + 1;
            if (__OFADD__(*v147, 1))
            {
              goto LABEL_93;
            }
          }

          else
          {
            type metadata accessor for SDContactChangeHistoryDeleteEvent();
            v92 = swift_dynamicCastClass();
            if (!v92)
            {

              v28 = Logger.logObject.getter();
              LOBYTE(v62) = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v28, v62))
              {
                v94 = swift_slowAlloc();
                v61 = swift_slowAlloc();
                v162[0] = v61;
                *v94 = v137;
                v95 = _typeName(_:qualified:)();
                v97 = v65;
                v98 = sub_10000C4E4(v95, v96, v162);
                v69 = v149;

                *(v94 + 4) = v98;
                v65 = v97;
                _os_log_impl(&_mh_execute_header, v28, v62, "Unexpected event: %s", v94, 0xCu);
                sub_10000C60C(v61);

                v70 = v163;
              }

              else
              {
              }

              goto LABEL_31;
            }

            v93 = *(v92 + 16);
            v61 = *(v92 + 24);

            sub_10054E864(v93, v61, v70, v150, v151);

            v90 = v146;
            v91 = *v146 + 1;
            if (__OFADD__(*v146, 1))
            {
              goto LABEL_95;
            }
          }

          *v90 = v91;
        }

LABEL_31:
        v75 = v141;
        v18 = v143;
        ++v27;
        if (v148 == v140)
        {
          goto LABEL_70;
        }
      }

      v61 = Logger.logObject.getter();
      LOBYTE(v62) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Change event is DropEverything. Request regenerate entire db.", v104, 2u);
        v70 = v163;
      }

      v28 = v127;
      v27 = v134;
      v105 = v130;
      if (v130)
      {
        v62 = v143;
        v130();
        v61 = v141;

        sub_100015D04(v105, v62);
        v75 = v61;
      }

      else
      {

        v75 = v141;
      }

      v130 = 0;
      v77 = 0;
      v138 = 0;
      v18 = 0;
      v161 = 1;
      v76 = v148;
    }

    while (v148 != v140);
LABEL_71:

    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Persisting change event batch", v108, 2u);
      v70 = v163;
    }

    LOBYTE(v62) = v70;
    sub_10054DD24(v161 & 1);
    v61 = v129 + 1;
    objc_autoreleasePoolPop(v131);
    v66 = v61;
    v67 = v139;
  }

  while (v61 != v132);
  v70 = 0;

  v109 = v136;

  v61 = Logger.logObject.getter();
  LOBYTE(v62) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v65 = swift_slowAlloc();
    *v65 = 134218752;
    if (!(v109 >> 62))
    {
      v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_80;
    }

LABEL_96:
    v111 = _CocoaArrayWrapper.endIndex.getter();
LABEL_80:

    *(v65 + 4) = v111;

    *(v65 + 12) = 2048;
    v112 = v147;
    swift_beginAccess();
    *(v65 + 14) = *v112;
    *(v65 + 22) = 2048;
    v113 = v146;
    swift_beginAccess();
    *(v65 + 24) = *v113;
    *(v65 + 32) = 2048;
    v114 = v149;
    swift_beginAccess();
    *(v65 + 34) = *v114;
    _os_log_impl(&_mh_execute_header, v61, v62, "Processed %ld contact change events (add=%ld,delete=%ld,update=%ld)", v65, 0x2Au);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v115 = *(v126 + 1);
  v116 = swift_getObjectType();
  v117 = *(v115 + 48);
  swift_unknownObjectRetain();
  v117(v116, v115);
  if (v70)
  {
    sub_100015D04(v138, v18);
    swift_unknownObjectRelease();
    sub_100026AC0(v145, v144);
    sub_10028BCC0(v27, v28);
    return v36;
  }

  swift_unknownObjectRelease();
  v118 = objc_opt_self();
  v119 = v145;
  v39 = v144;
  sub_100294008(v145, v144);
  v120 = [v118 standardUserDefaults];
  sub_100294008(v119, v39);
  v121 = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v119, v39);
  v122 = String._bridgeToObjectiveC()();
  [v120 setObject:v121 forKey:v122];

  sub_100026AC0(v119, v39);
  v53 = Logger.logObject.getter();
  v123 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&_mh_execute_header, v53, v123, "Updating hashes completed.", v124, 2u);
  }

  sub_100015D04(v138, v18);
LABEL_22:
  sub_100026AC0(v145, v39);
  sub_10028BCC0(v27, v28);

  return v135;
}

double sub_100551E0C(uint64_t a1)
{
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Load hash db from disk", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);
  swift_unknownObjectRetain();
  v8(ObjectType, v6);
  swift_unknownObjectRelease();
  return result;
}

void sub_100551F48(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
  v3 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 64);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if (!v1)
  {
    type metadata accessor for SDAirDropHashStoreCDB();
    v6 = swift_allocObject();
    sub_1000276B4(0, &qword_100973C78, NSData_ptr);
    v7 = objc_allocWithZone(CUKeyValueStoreReader);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v6 + 16) = [v7 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
    *(v6 + 24) = 0;
    *(v6 + 32) = _swiftEmptyArrayStorage;
    *(v6 + 40) = &_swiftEmptySetSingleton;
    *(v6 + 48) = 0;
    *v2 = v6;
    v2[1] = &protocol witness table for SDAirDropHashStoreCDB;
    swift_unknownObjectRelease();
    sub_100559A08(&static os_log_type_t.debug.getter, "HashManager: database set.");
  }
}

double sub_10055208C()
{
  v1 = v0;
  if (qword_100973A00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100983190);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin AirDropContactHashManager OSTransaction", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction) = os_transaction_create();

  swift_unknownObjectRelease();
  return result;
}

double sub_100552198()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_osTransaction))
  {
    v2 = v0;
    if (qword_100973A00 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100983190);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing AirDropContactHashManager OSTransaction", v6, 2u);
    }

    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005522B8(char *a1, void *a2)
{
  v108 = a2;
  v106 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashManagerQ);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  (v9)(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_100;
  }

  *v6 = v10;
  (v9)(v6, v8, v3);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v3);
  if ((v13 & 1) == 0)
  {
    goto LABEL_101;
  }

  if (*(v104 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashesUpdatedSuccessfully) == 1)
  {
    *&v110 = v106;
    *(&v110 + 1) = v108;
    v109[0] = 44;
    v109[1] = 0xE100000000000000;
    sub_10001229C();
    v14 = StringProtocol.components<A>(separatedBy:)();
    v15 = 0;
    v16 = *(v14 + 16);
    v11 = v14 + 40;
    v10 = _swiftEmptyArrayStorage;
    v106 = _swiftEmptyArrayStorage;
    while (1)
    {
      v17 = v11 + 16 * v15;
      do
      {
        if (v16 == v15)
        {
          v3 = *(v106 + 2);
          v25 = *(v14 + 16);

          v11 = v107;
          if (v3 != v25)
          {
            if (qword_100973A00 == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_102;
          }

          goto LABEL_20;
        }

        if (v15 >= *(v14 + 16))
        {
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            while (1)
            {
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
              swift_once();
LABEL_17:
              v26 = type metadata accessor for Logger();
              sub_10000C4AC(v26, qword_100983190);
              v27 = Logger.logObject.getter();
              v28 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                *v29 = 0;
                _os_log_impl(&_mh_execute_header, v27, v28, "Decoded base64 count test failed", v29, 2u);
              }

LABEL_20:
              if (v3)
              {
                break;
              }

              v31 = _swiftEmptyArrayStorage;
LABEL_45:
              v47 = *(v104 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo);
              v108 = v31;
              if (!v47)
              {
                goto LABEL_64;
              }

              v107 = v11;
              v3 = *(v104 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_meCardInfo + 8);

              v48 = *(v3 + 16);
              if (!v48)
              {
                v50 = _swiftEmptyArrayStorage;
LABEL_60:

                if (v50[2])
                {

                  if (v50[2])
                  {
                    v63 = *(v50 + 3);
                    v64 = *(v50 + 5);
                    v112 = *(v50 + 4);
                    v113 = v64;
                    v114 = *(v50 + 24);
                    v110 = *(v50 + 2);
                    v111 = v63;
                    sub_10055A394(&v110, v109);

                    return v110;
                  }

                  __break(1u);
LABEL_104:
                  swift_once();
LABEL_82:
                  v98 = type metadata accessor for Logger();
                  sub_10000C4AC(v98, qword_100983190);
                  v99 = Logger.logObject.getter();
                  v100 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v99, v100))
                  {
                    v101 = swift_slowAlloc();
                    *v101 = 134217984;
                    *(v101 + 4) = v48;
                    _os_log_impl(&_mh_execute_header, v99, v100, "%ld contacts match this set of hashes", v101, 0xCu);
                  }

                  v97 = v103;
                }

                else
                {

                  v11 = v107;
                  v31 = v108;
LABEL_64:
                  v65 = 0;
                  v105 = v31[2];
                  v104 = (v104 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAirDropContactHashManager_hashDB);
                  v66 = v31 + 7;
                  v103 = _swiftEmptyArrayStorage;
                  v102 = v31 + 7;
LABEL_65:
                  v67 = &v66[4 * v65];
                  while (v105 != v65)
                  {
                    if (v65 >= v108[2])
                    {
                      goto LABEL_97;
                    }

                    v68 = *v67;
                    v106 = *(v67 - 1);
                    v107 = v68;
                    v70 = *(v67 - 3);
                    v69 = *(v67 - 2);
                    v10 = *v104;
                    v71 = v104[1];
                    ObjectType = swift_getObjectType();
                    v73 = *(v71 + 80);
                    swift_unknownObjectRetain();
                    v74 = v69;
                    v9 = v10;
                    v75 = v73(v70, v74, v106, v107, ObjectType, v71);
                    if (v11)
                    {

                      swift_unknownObjectRelease();
                      return v9;
                    }

                    v3 = v75;
                    v79 = v76;
                    v80 = v77;
                    v81 = v78;
                    ++v65;
                    v67 += 4;
                    swift_unknownObjectRelease();
                    if (v79)
                    {
                      v82 = v65;
                      v83 = v103;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v83 = sub_10028F104(0, *(v83 + 2) + 1, 1, v83);
                      }

                      v85 = *(v83 + 2);
                      v84 = *(v83 + 3);
                      v10 = v85 + 1;
                      if (v85 >= v84 >> 1)
                      {
                        v83 = sub_10028F104((v84 > 1), v85 + 1, 1, v83);
                      }

                      *(v83 + 2) = v10;
                      v103 = v83;
                      v86 = &v83[32 * v85];
                      *(v86 + 4) = v3;
                      *(v86 + 5) = v79;
                      *(v86 + 6) = v80;
                      *(v86 + 7) = v81;
                      v65 = v82;
                      v66 = v102;
                      goto LABEL_65;
                    }
                  }

                  v87 = v103;
                  v88 = *(v103 + 2);
                  v89 = _swiftEmptyArrayStorage;
                  if (v88)
                  {
                    *&v110 = _swiftEmptyArrayStorage;
                    sub_10028FBDC(0, v88, 0);
                    v89 = v110;
                    v90 = (v87 + 40);
                    do
                    {
                      v91 = *(v90 - 1);
                      v92 = *v90;
                      *&v110 = v89;
                      v94 = v89[2];
                      v93 = v89[3];

                      if (v94 >= v93 >> 1)
                      {
                        sub_10028FBDC((v93 > 1), v94 + 1, 1);
                        v89 = v110;
                      }

                      v89[2] = v94 + 1;
                      v95 = &v89[2 * v94];
                      v95[4] = v91;
                      v95[5] = v92;
                      v90 += 4;
                      --v88;
                    }

                    while (v88);
                  }

                  v96 = sub_100292D28(v89);

                  v48 = *(v96 + 16);

                  v97 = v103;
                  if (v48 > 1)
                  {
                    if (qword_100973A00 != -1)
                    {
                      goto LABEL_104;
                    }

                    goto LABEL_82;
                  }
                }

                if (*(v97 + 2))
                {
                  v9 = *(v97 + 4);
                }

                else
                {

                  return 0;
                }

                return v9;
              }

              v49 = 0;
              v10 = v48 - 1;
              v50 = _swiftEmptyArrayStorage;
LABEL_48:
              v51 = v3 + 32 + 72 * v49;
              v11 = v49;
              while (v11 < *(v3 + 16))
              {
                v52 = *(v51 + 64);
                v53 = *(v51 + 48);
                v54 = *(v51 + 16);
                v112 = *(v51 + 32);
                v113 = v53;
                v55 = *v51;
                v114 = v52;
                v110 = v55;
                v111 = v54;
                v49 = v11 + 1;
                if (sub_10054AB18(v112, *(&v112 + 1), v113, *(&v113 + 1), v108))
                {
                  sub_10055A394(&v110, v109);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v115 = v50;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_10028FF34(0, v50[2] + 1, 1);
                    v50 = v115;
                  }

                  v58 = v50[2];
                  v57 = v50[3];
                  if (v58 >= v57 >> 1)
                  {
                    sub_10028FF34((v57 > 1), v58 + 1, 1);
                    v50 = v115;
                  }

                  v50[2] = v58 + 1;
                  v59 = &v50[9 * v58];
                  *(v59 + 2) = v110;
                  v60 = v111;
                  v61 = v112;
                  v62 = v113;
                  *(v59 + 24) = v114;
                  *(v59 + 4) = v61;
                  *(v59 + 5) = v62;
                  *(v59 + 3) = v60;
                  if (v10 != v11)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_60;
                }

                v51 += 72;
                ++v11;
                if (v48 == v49)
                {
                  goto LABEL_60;
                }
              }
            }

            *&v110 = v10;
            result = sub_10028FF54(0, v3, 0);
            v11 = 0;
            v31 = v110;
            v32 = (v106 + 40);
            v105 = v3;
LABEL_22:
            if (v11 >= *(v106 + 2))
            {
              continue;
            }

            break;
          }

          v108 = v31;
          v9 = *(v32 - 1);
          v33 = *v32;
          v34 = *v32 >> 62;
          if (v34 > 1)
          {
            if (v34 != 2)
            {
              goto LABEL_105;
            }

            v37 = *(v9 + 16);
            v36 = *(v9 + 24);
            v35 = v36 - v37;
            if (__OFSUB__(v36, v37))
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (!v34)
            {
              v35 = BYTE6(v33);
LABEL_33:
              if (v35 != 32)
              {
LABEL_105:
                __break(1u);
                return result;
              }

              v38 = v107;
              v39 = sub_1004657B8(v9, v33, 8);
              v107 = v38;
              if (v38)
              {
                sub_100026AC0(v9, v33);

                sub_100026AC0(v9, v33);

                return v9;
              }

              v10 = v39;
              sub_100026AC0(v9, v33);
              v40 = *(v10 + 16);
              if (!v40)
              {
                goto LABEL_92;
              }

              if (v40 == 1)
              {
                goto LABEL_93;
              }

              if (v40 < 3)
              {
                goto LABEL_94;
              }

              if (v40 == 3)
              {
                goto LABEL_95;
              }

              v41 = *(v10 + 32);
              v42 = *(v10 + 40);
              v44 = *(v10 + 48);
              v43 = *(v10 + 56);
              sub_100026AC0(v9, v33);

              v31 = v108;
              *&v110 = v108;
              v10 = v108[2];
              v45 = v108[3];
              if (v10 >= v45 >> 1)
              {
                result = sub_10028FF54((v45 > 1), v10 + 1, 1);
                v31 = v110;
              }

              ++v11;
              v31[2] = v10 + 1;
              v46 = &v31[4 * v10];
              v46[4] = v41;
              v46[5] = v42;
              v46[6] = v44;
              v46[7] = v43;
              v32 += 2;
              v3 = v105;
              if (v105 == v11)
              {

                v11 = v107;
                goto LABEL_45;
              }

              goto LABEL_22;
            }

            if (__OFSUB__(HIDWORD(v9), v9))
            {
              goto LABEL_99;
            }

            v35 = HIDWORD(v9) - v9;
          }

          sub_100294008(*(v32 - 1), *v32);
          result = sub_100294008(v9, v33);
          goto LABEL_33;
        }

        ++v15;
        v3 = v17 + 16;

        v18 = Data.init(base64Encoded:options:)();
        v20 = v19;

        v17 = v3;
      }

      while (v20 >> 60 == 15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_10028EEAC(0, *(v106 + 2) + 1, 1, v106);
      }

      v3 = *(v106 + 2);
      v21 = *(v106 + 3);
      if (v3 >= v21 >> 1)
      {
        v106 = sub_10028EEAC((v21 > 1), v3 + 1, 1, v106);
      }

      v22 = v106;
      *(v106 + 2) = v3 + 1;
      v23 = &v22[16 * v3];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
    }
  }

  sub_10055A164();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();
  return v9;
}