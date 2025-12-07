void sub_1003099D8()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007934();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v0;
  v22[4] = sub_100316F44;
  v22[5] = v7;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v22[2] = v8;
  v22[3] = &unk_100626950;
  _Block_copy(v22);
  sub_10000B934();

  v9 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v10, v11, &protocol conformance descriptor for DispatchWorkItemFlags);
  v12 = sub_10001E3B8();
  sub_10026D814(v12, v13);
  sub_100008434();
  sub_100317520(v14, v15, v16, v17);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v4);
  v18 = sub_100015A08();
  v19(v18);
  v20 = sub_100007C7C();
  v21(v20);

  sub_100005EDC();
}

void sub_100309BE8(uint64_t a1, unint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002741C(a1, a2, v36);
    _os_log_impl(&_mh_execute_header, v8, v9, "settingCustomReply: %s", v10, 0xCu);
    sub_100009B7C(v11);
  }

  v37 = ObjectType;
  v38 = &off_100626418;
  v36[0] = a3;
  v12 = &a3[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
  swift_beginAccess();
  v13 = *(v12 + 3);
  v14 = *(v12 + 4);
  sub_10001BDB8(v12, v13);
  v15 = *(v14 + 32);
  v16 = a3;
  v15(v36, v13, v14);
  swift_endAccess();
  v17 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if ([Strong receptionistState] == 4)
    {
      if ([v19 isKnownCaller] && (*(*&v16[v17] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasFinishedAnnouncement) & 1) == 0)
      {

        v32 = (*&v16[v17] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage);
        *v32 = a1;
        v32[1] = a2;
      }

      else
      {
        sub_100009B14(v12, *(v12 + 3));
        v20 = v19;
        sub_10043D55C(a1, a2, 0xD00000000000001ELL, 0x800000010056A5B0, v19, v21, v22, v23, v33, v34, v35, v36[0], v36[1], v36[2], v37, v38, v39, v40, v41, v42);
      }
    }

    else
    {
      v24 = v19;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36[0] = v28;
        *v27 = 136315138;
        [v24 receptionistState];
        type metadata accessor for TUCallReceptionistState(0);
        v29 = String.init<A>(reflecting:)();
        v31 = sub_10002741C(v29, v30, v36);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "setCustomReply call not in waitingForUserResponse %s, ignoring", v27, 0xCu);
        sub_100009B7C(v28);
      }

      else
      {
      }
    }
  }
}

void sub_10030A004()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v19[4] = sub_100316F3C;
  v19[5] = v3;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v19[2] = v4;
  v19[3] = &unk_100626900;
  v5 = _Block_copy(v19);
  v6 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v7, v8, &protocol conformance descriptor for DispatchWorkItemFlags);
  v9 = sub_10001E3B8();
  sub_10026D814(v9, v10);
  sub_100008434();
  sub_100317520(v11, v12, v13, v14);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v5);
  v15 = sub_100015A08();
  v16(v15);
  v17 = sub_100007C7C();
  v18(v17);

  sub_100005EDC();
}

void sub_10030A208(uint64_t a1)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "startReceptionistReply", v4, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (([Strong isKnownCaller]& 1) != 0 && [v18 receptionistState]== 1 || ([v18 isKnownCaller]& 1) == 0 && [v18 receptionistState]== 3)
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, ".ringing|.initialResponse -> .waitingForUserResponse", v8, 2u);
      }

      [v18 setReceptionistState:4];
    }

    else
    {
      v18 = v18;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 67109378;
        *(v13 + 4) = [v18 isKnownCaller];

        *(v13 + 8) = 2080;
        [v18 receptionistState];
        type metadata accessor for TUCallReceptionistState(0);
        v15 = String.init<A>(reflecting:)();
        v17 = sub_10002741C(v15, v16, &v19);

        *(v13 + 10) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "startReceptionistReply call in invalid state isKnown=%{BOOL}d receptionistState=%s, ignoring", v13, 0x12u);
        sub_100009B7C(v14);

        return;
      }
    }
  }

  else
  {
    v18 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v18, v9, "no call for receptionist", v10, 2u);
    }
  }
}

uint64_t sub_10030A5E0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v3 = *(v0 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  v4 = type metadata accessor for AnsweringMachineState(0);
  v5 = sub_1000076B4(v4);

  sub_10003A308();
  *(v1 + v2) = v5;

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v7 = *(v1 + v2);
  sub_100005298(v3 + 80, v14);
  v8 = *(v3 + 80);
  swift_beginAccess();
  *(v7 + 80) = v8;

  sub_10031755C(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  sub_10031755C(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances);

  v9 = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration + 8);
  v10 = *(v1 + v2) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
  *v10 = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration);
  *(v10 + 8) = v9;
  sub_10003FB38(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);

  sub_10003FB38(OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);

  v11 = *(v1 + v2);
  *(v11 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio);
  v12 = *(v3 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);

  *(v11 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs) = v12;
}

uint64_t sub_10030A7E0(uint64_t a1)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop timeout block running", v5, 2u);
  }

  type metadata accessor for AnsweringMachineState(0);
  v6 = swift_allocObject();
  sub_10003A308();
  *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) = v6;
}

void sub_10030A8F8(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v4 - 8);
  v84 = &v78 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000AF9C(v46, qword_1006BA5F8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_20;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Requesting captions provider with stream streamToken == 0. Will not create client.", v49, 2u);
    goto LABEL_19;
  }

  v16 = [objc_allocWithZone(AVCCaptionsClient) initWithDelegate:v2 streamToken:a1];
  if (!v16)
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000AF9C(v50, qword_1006BA5F8);
    v47 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v47, v51))
    {
      goto LABEL_20;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v86[0] = v53;
    *v52 = 136315138;
    v87 = a1;
    v54 = String.init<A>(reflecting:)();
    v56 = sub_10002741C(v54, v55, v86);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v47, v51, "Failed to create AVCCaptionsClient with stream token %s.", v52, 0xCu);
    sub_100009B7C(v53);

LABEL_19:

LABEL_20:

    return;
  }

  v10 = v16;
  v80 = v7;
  if (qword_1006A0B28 != -1)
  {
LABEL_28:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000AF9C(v17, qword_1006BA5F8);
  v81 = v10;
  v19 = v10;
  v82 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v83 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v79 = v2;
    v24 = v23;
    v86[0] = swift_slowAlloc();
    *v24 = 136315394;
    v87 = a1;
    v25 = String.init<A>(reflecting:)();
    v27 = sub_10002741C(v25, v26, v86);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v87 = v19;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v28 = v19;
    v2 = v79;
    v29 = String.init<A>(reflecting:)();
    v31 = sub_10002741C(v29, v30, v86);

    *(v24 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Captions client created for token %s: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  v32 = &v2[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
  swift_beginAccess();
  sub_100009B14(v32, *(v32 + 3));
  LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v34 = v33;

  Locale.identifier.getter();

  v35 = sub_10030B2E8(v34);
  if ((v35 & 0x100) != 0)
  {
    v57 = v2;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v87 = v61;
      *v60 = 136315138;
      sub_100009B14(v32, *(v32 + 3));
      LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
      v63 = v62;

      Locale.identifier.getter();

      v85 = v63;
      type metadata accessor for TUTranscriptionAvailability(0);
      v64 = String.init<A>(reflecting:)();
      v66 = sub_10002741C(v64, v65, &v87);

      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to create AVCCaptionsClient taskHint from availability %s.", v60, 0xCu);
      sub_100009B7C(v61);
    }
  }

  else
  {
    v36 = v35;
    v37 = [objc_allocWithZone(AVCCaptionsConfig) init];
    sub_100009B14(v32, *(v32 + 3));
    LanguageManager.mappedASRAssetIdentifier(for:useCase:)();

    Locale.identifier.getter();
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v80 + 8))(v9, v6);
    [v37 setLocale:isa];

    [v37 setTaskHint:v36];
    [v37 setUsage:2];
    [v37 setExplicitLanguageFilterEnabled:TUIsProfanityAllowedForUseCase() ^ 1];
    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v42 = 136315394;
      v43 = [v39 locale];
      if (v43)
      {
        v44 = v43;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      v67 = v84;
      sub_10000AF74(v84, v45, 1, v6);
      v68 = sub_100291258(v67);
      v70 = v69;
      sub_100009A04(v67, &qword_1006A5360, &qword_10057CB80);
      v71 = sub_10002741C(v68, v70, &v87);

      *(v42 + 4) = v71;
      *(v42 + 12) = 2080;
      LOBYTE(v85) = v36;
      type metadata accessor for AVCCaptionsTaskHint(0);
      v72 = String.init<A>(reflecting:)();
      v74 = sub_10002741C(v72, v73, &v87);

      *(v42 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v40, v41, "Captions client configure with locale: %s and taskHint: %s.", v42, 0x16u);
      swift_arrayDestroy();
    }

    v75 = v83;
    [v83 configureCaptions:v39];
    [v75 enableCaptions:1];

    v76 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
    v77 = *(v76 + 56);
    *(v76 + 56) = v81;
  }
}

uint64_t sub_10030B2E8(unint64_t a1)
{
  v1 = 1u >> (a1 & 7);
  v2 = a1;
  if (a1 > 2)
  {
    v1 = 1;
    v2 = 0;
  }

  return v2 | (v1 << 8);
}

void sub_10030B314(uint64_t a1, uint64_t a2)
{
  sub_100015A18(a1);
  sub_10000D420();
  sub_100440AF8();
}

void sub_10030B500(uint64_t a1)
{
  sub_100015A18(a1);
  sub_10000D420();
  sub_1004413BC();
}

void sub_10030B628(uint64_t a1)
{
  sub_100015A18(a1);
  sub_10000D420();
  sub_10044193C();
}

void sub_10030B92C(uint64_t a1)
{
  sub_100015A18(a1);
  sub_10000D420();
  sub_100442294();
}

uint64_t sub_10030B96C(uint64_t a1, uint64_t a2)
{
  sub_100015A18(a1);
  sub_10000D420();
  return sub_100440624(a1, a2) & 1;
}

void sub_10030BA24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v27 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v1[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v29 = v16;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v17 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  if ([Strong receptionistState] != 2 || !objc_msgSend(*&v1[OBJC_IVAR___CSDAnsweringMachineController_featureFlags], "receptionistEnabled") || (sub_10030BF40() & 1) == 0)
  {

    return;
  }

  v28 = *&v1[v17];
  aBlock[0] = 0;
  v27[1] = sub_10031699C(&qword_1006A52B8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  dispatch thunk of OptionSet.init(rawValue:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1003169E4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006264C8;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v21 = v1;
  v15 = v19;
  v22 = DispatchWorkItem.init(flags:block:)();

  v11 = &unk_1006BA000;
  *(v28 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock) = v22;

  static DispatchTime.now()();
  if (qword_1006A0A20 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  *v4 = qword_1006A4C48;
  v24 = v30;
  v23 = v31;
  (*(v30 + 104))(v4, enum case for DispatchTimeInterval.milliseconds(_:), v31);
  + infix(_:_:)();
  (*(v24 + 8))(v4, v23);
  v25 = v33;
  v26 = *(v32 + 8);
  v26(v8, v33);
  if (*(*&v1[v17] + v11[108]))
  {

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v26(v10, v25);
  }

  else
  {
    __break(1u);
  }
}

id sub_10030BF40()
{
  if ([v0 callStatus] == 1)
  {
    return [v0 isScreening];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030BF84(uint64_t a1, void *a2)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "callerPauseInfoTimeoutBlock", v7, 2u);
  }

  *(*(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock) = 0;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "waitingForCallerInfo -> ringing", v10, 2u);
  }

  [a2 setShouldSuppressRingtone:0];
  [a2 setReceptionistState:3];
  sub_1000399FC();

  return swift_unknownObjectWeakAssign();
}

void sub_10030C284()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v60 = v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v65 = v9;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v63 = v12 - v11;
  sub_10000D414();
  v64 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v62 = v13;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v61 = v16 - v15;
  sub_10000D414();
  v17 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10000E598();
  v21 = *&v2[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v1 = v21;
  v22 = sub_100006B90();
  v23(v22);
  v21;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v1, v17);
  if (v24)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008018();
  swift_once();
LABEL_3:
  v25 = type metadata accessor for Logger();
  sub_1000075F0(v25, qword_1006BA5F8);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v59 = v8;
    v29 = v2;
    v30 = sub_100007630();
    v66[0] = v30;
    *v28 = 136315394;
    v31 = String.init<A>(reflecting:)();
    v33 = sub_10002741C(v31, v32, v66);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_1002910C8(v4);
    v36 = sub_10002741C(v34, v35, v66);

    *(v28 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Answering machine didStart=%s error=%s", v28, 0x16u);
    swift_arrayDestroy();
    v37 = v30;
    v2 = v29;
    v8 = v59;
    sub_100005F40(v37);
    sub_100005F40(v28);
  }

  if (v6)
  {
    sub_100007C2C();
    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = v60;
    v66[4] = sub_100316F34;
    v66[5] = v38;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v66[2] = v39;
    v66[3] = &unk_1006268B0;
    v40 = _Block_copy(v66);
    v41 = v2;
    v42 = v60;
    static DispatchQoS.unspecified.getter();
    sub_10000841C();
    sub_10031699C(v43, v44, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10000528C();
    sub_10001000C(v45, v46, v47, v48);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);
    (*(v65 + 8))(v63, v8);
    (*(v62 + 8))(v61, v64);
  }

  else
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (sub_10000689C(v50))
    {
      v51 = sub_100006DC4();
      *v51 = 0;
      sub_10000C1F8();
      _os_log_impl(v52, v53, v54, v55, v51, 2u);
      sub_100005F40(v51);
    }

    v56 = [objc_opt_self() sharedInstance];
    [v56 disconnectAllCalls];

    v57 = type metadata accessor for AnsweringMachineState(0);
    v58 = sub_1000076B4(v57);
    sub_10003A308();
    *&v2[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] = v58;
  }

  sub_100005EDC();
}

void sub_10030C860(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), char *a4)
{
  v438 = a3;
  v7 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v7);
  sub_100006688();
  __chkstk_darwin(v8);
  sub_100317544();
  v427 = v9;
  v10 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v10);
  sub_100006688();
  __chkstk_darwin(v11);
  sub_100317544();
  v413 = v12;
  sub_10000D414();
  v13 = type metadata accessor for Date();
  sub_100007FEC();
  v408 = v14;
  __chkstk_darwin(v15);
  sub_10000F4E8();
  v406 = v16;
  sub_100006838();
  __chkstk_darwin(v17);
  sub_10000C1C4();
  v407 = v18;
  sub_10000D414();
  type metadata accessor for URL.DirectoryHint();
  sub_100007FEC();
  v425 = v20;
  v426 = v19;
  __chkstk_darwin(v19);
  sub_100007FDC();
  v424 = v22 - v21;
  sub_10000D414();
  type metadata accessor for URL();
  sub_100007FEC();
  v440 = v24;
  v441 = v23;
  __chkstk_darwin(v23);
  sub_10000F4E8();
  v415 = v25;
  sub_100006838();
  __chkstk_darwin(v26);
  sub_100005F58();
  v410 = v27;
  sub_100006838();
  __chkstk_darwin(v28);
  sub_100005F58();
  v409 = v29;
  sub_100006838();
  __chkstk_darwin(v30);
  sub_100005F58();
  v428 = v31;
  sub_100006838();
  __chkstk_darwin(v32);
  sub_100005F58();
  v417 = v33;
  sub_100006838();
  __chkstk_darwin(v34);
  sub_100005F58();
  v429 = v35;
  sub_100006838();
  __chkstk_darwin(v36);
  sub_10000C1C4();
  v433 = v37;
  sub_10000D414();
  type metadata accessor for Utterance();
  sub_100007FEC();
  v435 = v38;
  v436 = v39;
  __chkstk_darwin(v38);
  sub_100007FDC();
  v434 = v41 - v40;
  v432 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100008070();
  __chkstk_darwin(v42);
  sub_10000F4E8();
  v418 = v43;
  sub_100006838();
  __chkstk_darwin(v44);
  sub_100005F58();
  v414 = v45;
  sub_100006838();
  __chkstk_darwin(v46);
  sub_100005F58();
  v412 = v47;
  sub_100006838();
  __chkstk_darwin(v48);
  sub_100005F58();
  v416 = v49;
  sub_100006838();
  __chkstk_darwin(v50);
  sub_100005F58();
  v420 = v51;
  sub_100006838();
  __chkstk_darwin(v52);
  sub_100005F58();
  v422 = v53;
  sub_100006838();
  __chkstk_darwin(v54);
  sub_100005F58();
  v421 = v55;
  sub_100006838();
  __chkstk_darwin(v56);
  sub_100005F58();
  v423 = v57;
  sub_100006838();
  __chkstk_darwin(v58);
  sub_100005F58();
  v431 = v59;
  sub_100006838();
  __chkstk_darwin(v60);
  sub_100005F58();
  v430 = v61;
  sub_100006838();
  __chkstk_darwin(v62);
  v64 = &v403 - v63;
  v65 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v67 = v66;
  __chkstk_darwin(v68);
  sub_100007FDC();
  v71 = v70 - v69;
  v437 = inited;
  v72 = *&inited[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *(v70 - v69) = v72;
  (*(v67 + 104))(v70 - v69, enum case for DispatchPredicate.onQueue(_:), v65);
  v73 = v72;
  LOBYTE(v72) = _dispatchPreconditionTest(_:)();
  (*(v67 + 8))(v71, v65);
  if ((v72 & 1) == 0)
  {
    goto LABEL_121;
  }

  v411 = v13;
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_122;
  }

  while (1)
  {
    v74 = type metadata accessor for Logger();
    sub_1000075F0(v74, qword_1006BA5F8);
    sub_10003A220(v438, v64, &unk_1006A52C0, &unk_10057D930);
    swift_errorRetain();
    v439 = inited;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = sub_100007630();
      v447[0] = v78;
      *v77 = 67109634;
      *(v77 + 4) = a2 & 1;
      *(v77 + 8) = 2080;
      v79 = sub_10029142C(v64);
      v81 = v80;
      sub_100009A04(v64, &unk_1006A52C0, &unk_10057D930);
      v82 = sub_10002741C(v79, v81, v447);

      *(v77 + 10) = v82;
      *(v77 + 18) = 2080;
      v83 = sub_1002910C8(a4);
      a2 = v84;
      v85 = sub_10002741C(v83, v84, v447);

      *(v77 + 20) = v85;
      _os_log_impl(&_mh_execute_header, v75, v76, "Answering machine didStop=%{BOOL}d messageRecordingURL=%s error=%s", v77, 0x1Cu);
      swift_arrayDestroy();
      sub_100005F40(v78);
      sub_10000E668();

      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {

      sub_100009A04(v64, &unk_1006A52C0, &unk_10057D930);
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    swift_errorRetain();
    v86 = _convertErrorToNSError(_:)();
    v87 = [v86 code];

    if (v87 == 32028)
    {
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      if (sub_10000689C(v89))
      {
        v90 = sub_100006DC4();
        sub_100017D04(v90);
        sub_10000A154();
        _os_log_impl(v91, v92, v93, v94, v95, 2u);
        sub_100008AE8();
      }

      return;
    }

LABEL_12:
    v96 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
    a4 = v437;
    v97 = *&v437[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v118 = type metadata accessor for AnsweringMachineState(0);
      v119 = sub_1000076B4(v118);
      sub_10003A308();
      *&a4[v96] = v119;
      goto LABEL_90;
    }

    v99 = Strong;
    if (*(v97 + 72))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v100 = *&a4[v96];
    v101 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions;
    v102 = *(v100 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
    v419 = v96;
    if (v102)
    {
      a2 = v102;
      v103 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_10000F96C())
      {
        v104 = sub_100005274();
        v105 = v99;
        v106 = swift_slowAlloc();
        *v104 = 138412290;
        *(v104 + 4) = a2;
        *v106 = v102;
        v107 = a2;
        sub_10000C1F8();
        _os_log_impl(v108, v109, v110, v111, v104, 0xCu);
        sub_100009A04(v106, &unk_1006A2630, &qword_10057CB40);
        v112 = v106;
        v99 = v105;
        v96 = v419;
        sub_100005F40(v112);
        sub_100006868();
      }

      v113 = *&a4[v96];

      v114 = v434;
      sub_10030E9A4(a2, v434);
      sub_100008D34(v113 + 80, v447);
      sub_100461A8C();
      v115 = *(*(v113 + 80) + 16);
      sub_100461B90(v115);
      v116 = *(v113 + 80);
      *(v116 + 16) = v115 + 1;
      (*(v436 + 32))(v116 + ((*(v436 + 80) + 32) & ~*(v436 + 80)) + *(v436 + 72) * v115, v114, v435);
      *(v113 + 80) = v116;
      swift_endAccess();

      v100 = *&a4[v96];
      v101 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions;
      v117 = *(v100 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
    }

    else
    {
      v117 = 0;
    }

    *(v100 + v101) = 0;

    v432 = swift_allocBox();
    v405 = v120;
    sub_100007928();
    v121 = v441;
    sub_10000AF74(v122, v123, v124, v441);
    if (![*&a4[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] receptionistEnabled])
    {
      goto LABEL_29;
    }

    v125 = v99;
    if (![v125 receptionistState])
    {
      break;
    }

    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    if (sub_10000689C(v127))
    {
      v128 = sub_100006DC4();
      sub_100017D04(v128);
      sub_10000A154();
      _os_log_impl(v129, v130, v131, v132, v133, 2u);
      sub_100008AE8();
    }

    v134 = v420;
    sub_10003A220(v438, v420, &unk_1006A52C0, &unk_10057D930);
    sub_10000A7C0(v134);
    v404 = v99;
    if (v184)
    {
      sub_100009A04(v134, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      v430 = v125;
      v232 = v440;
      (*(v440 + 32))(v428, v134, v121);
      v233 = v429;
      static URL.temporaryDirectory.getter();
      URL.lastPathComponent.getter();
      v234 = v431;
      URL.appendingPathComponent(_:)();

      v438 = *(v232 + 8);
      v438(v233, v121);
      sub_100007C20();
      sub_10000AF74(v235, v236, v237, v121);
      v238 = v405;
      sub_1000432B0(v234, v405, &unk_1006A52C0, &unk_10057D930);

      v239 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100317538();

      if (sub_10000F96C())
      {
        v241 = sub_100005274();
        v433 = sub_100005E84();
        v447[0] = v433;
        *v241 = 136315138;
        sub_100005298(v405, &v442);
        sub_10003A220(v405, v234, &unk_1006A52C0, &unk_10057D930);
        v242 = sub_10029142C(v234);
        v244 = v243;
        v121 = v441;
        sub_100009A04(v234, &unk_1006A52C0, &unk_10057D930);
        v245 = v242;
        v96 = v419;
        v246 = sub_10002741C(v245, v244, v447);

        *(v241 + 4) = v246;
        sub_10000A154();
        _os_log_impl(v247, v248, v249, v250, v251, 0xCu);
        v252 = v433;
        sub_100009B7C(v433);
        v238 = v405;
        sub_100005F40(v252);
        sub_100008AE8();
      }

      v253 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v254);
      a2 = v255;
      swift_beginAccess();
      v256 = v416;
      sub_10003A220(v238, v416, &unk_1006A52C0, &unk_10057D930);
      sub_10000A7C0(v256);
      v258 = v438;
      if (v184)
      {
        goto LABEL_124;
      }

      v259 = v256;
      URL._bridgeToObjectiveC()(v257);
      v260 = sub_10000C614();
      v258(v260, v121);
      v447[0] = 0;
      v261 = [v253 copyItemAtURL:a2 toURL:v256 error:v447];

      if (v261)
      {
        v262 = v447[0];
        v258(v428, v121);
        a4 = v437;
        v125 = v430;
      }

      else
      {
        v263 = v447[0];
        a2 = _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v264 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_100317538();

        if (sub_10000F96C())
        {
          v265 = sub_100005274();
          v266 = sub_100005E84();
          v447[0] = v266;
          *v265 = 136315138;
          v446[0] = a2;
          swift_errorRetain();
          sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
          v267 = String.init<A>(reflecting:)();
          sub_10002741C(v267, v268, v447);
          sub_10000B934();
          v121 = v441;

          *(v265 + 4) = v96;
          v96 = v419;
          sub_10000C1F8();
          _os_log_impl(v269, v270, v271, v272, v265, 0xCu);
          sub_100009B7C(v266);
          sub_100005F40(v266);
          sub_100006868();

          v438(v428, v121);
        }

        else
        {

          v258(v428, v121);
        }

        v125 = v430;
        v273 = v431;
        sub_100007928();
        sub_10000AF74(v274, v275, v276, v121);
        sub_1000432B0(v273, v238, &unk_1006A52C0, &unk_10057D930);
        a4 = v437;
      }
    }

    v277 = [v125 receptionistState];

    if (v277 == 3 && [v125 status] != 6)
    {
      v312 = [v125 isScreening];

      if (v312)
      {

        v430 = v125;
        v313 = *&a4[v96];
        sub_100005298(v313 + 80, v447);
        v314 = *(v313 + 80);
        v315 = *(v314 + 16);
        v316 = _swiftEmptyArrayStorage;
        if (v315)
        {
          v446[0] = _swiftEmptyArrayStorage;

          sub_10039A2E0(0, v315, 0);
          v316 = v446[0];
          v438 = *(v436 + 16);
          v317 = *(v436 + 80);
          v429 = v314;
          v318 = v314 + ((v317 + 32) & ~v317);
          v433 = *(v436 + 72);
          v436 += 16;
          v319 = (v436 - 8);
          do
          {
            v320 = v434;
            v321 = v435;
            v322 = sub_10000BB1C();
            (v438)(v322);
            Utterance.text.getter();
            sub_100317550();
            (*v319)(v320, v321);
            v446[0] = v316;
            v324 = v316[2];
            v323 = v316[3];
            if (v324 >= v323 >> 1)
            {
              sub_10039A2E0(v323 > 1, v324 + 1, 1);
              v316 = v446[0];
            }

            v316[2] = v324 + 1;
            v325 = &v316[2 * v324];
            v325[4] = v121;
            v325[5] = v96;
            v318 += v433;
            --v315;
          }

          while (v315);

          a4 = v437;
          v96 = v419;
        }

        v446[0] = v316;
        sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910, &protocol conformance descriptor for [A]);
        BidirectionalCollection<>.joined(separator:)();

        v326 = sub_10000BA34();
        v328 = sub_10030ED74(v326, v327);
        v330 = v329;

        v331 = objc_allocWithZone(TUReceptionistSession);
        sub_100005EC4();

        v332 = sub_10031689C(0, 0, v328, v330);

        v333 = Logger.logObject.getter();
        static os_log_type_t.default.getter();

        v334 = sub_1000066DC();
        v437 = v328;
        v438 = v332;
        if (v334)
        {
          v335 = sub_100005274();
          v446[0] = sub_100005E84();
          *v335 = 136315138;
          v336 = sub_10001E478(v328, v330);
          v338 = sub_10002741C(v336, v337, v446);

          *(v335 + 4) = v338;
          sub_10000FBFC();
          _os_log_impl(v339, v340, v341, v342, v335, 0xCu);
          v343 = sub_1000444B0();
          v96 = v419;
          sub_100005F40(v343);
          v344 = v335;
          v332 = v438;
          sub_100005F40(v344);
        }

        v345 = v411;
        v346 = v413;
        v347 = v430;
        [v430 setReceptionistSession:v332];
        if (v330)
        {

          String._bridgeToObjectiveC()();
          sub_100005EC4();
        }

        else
        {
          v333 = 0;
        }

        [v347 updatePredictedNameFromReceptionist:v333];

        v348 = *&a4[v96];
        sub_100005298(v348 + 80, v446);
        *(v348 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances) = *(v348 + 80);

        v349 = *&a4[v96];
        v350 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime;
        sub_100005298(v349 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime, v445);
        sub_10003A220(v349 + v350, v346, &qword_1006A3C70, &unk_10057EA80);
        if (sub_100015468(v346, 1, v345) == 1)
        {
          sub_100009A04(v346, &qword_1006A3C70, &unk_10057EA80);
        }

        else
        {
          v352 = v407;
          v351 = v408;
          (*(v408 + 32))(v407, v346, v345);

          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v354 = v353;
          v355 = *(v351 + 8);
          v356 = sub_10000BB1C();
          v355(v356);
          Date.timeIntervalSinceReferenceDate.getter();
          v358 = v357;
          (v355)(v352, v345);
          v359 = v349 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
          *v359 = v354 - v358;
          *(v359 + 8) = 0;
        }

        v361 = v440;
        v360 = v441;
        v362 = v412;
        v363 = v405;
        sub_100005298(v405, v444);
        sub_10003A220(v363, v362, &unk_1006A52C0, &unk_10057D930);
        sub_10000A7C0(v362);
        if (v184)
        {
          sub_100009A04(v362, &unk_1006A52C0, &unk_10057D930);
          v367 = v419;
        }

        else
        {
          v364 = v409;
          v365 = sub_1000276B4();
          v366(v365);
          v367 = v419;
          v368 = *&a4[v419];
          v369 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs;

          sub_100461A74();
          v370 = *(*(v368 + v369) + 16);
          sub_100461B78(v370);
          v371 = *(v368 + v369);
          sub_100017CE8(v370 + 1);
          v360 = v441;
          sub_10000F33C();
          v372();
          *(v368 + v369) = v371;
          (*(v361 + 8))(v364, v360);
        }

        v373 = v430;
        sub_10030A5E0();
        v374 = *&a4[v367];
        swift_beginAccess();
        *(v374 + 80) = _swiftEmptyArrayStorage;

        if (v330)
        {

          v375 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          if (sub_1000066DC())
          {
            v376 = sub_100005274();
            v443[0] = sub_100005E84();
            *v376 = 136315138;
            v377 = v437;
            *(v376 + 4) = sub_10002741C(v437, v330, v443);
            sub_10000FBFC();
            _os_log_impl(v378, v379, v380, v381, v376, 0xCu);
            v382 = sub_1000444B0();
            sub_100005F40(v382);
            sub_100005F40(v376);
          }

          else
          {

            v377 = v437;
          }

          v384 = v438;
          v398 = &a4[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
          sub_100022CBC(v383, v443);
          sub_100009B14(v398, *(v398 + 3));
          v399 = v430;
          sub_10043D55C(v377, v330, 0xD00000000000001CLL, 0x800000010056A5D0, v404, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414);

          return;
        }

        v385 = Logger.logObject.getter();
        v386 = static os_log_type_t.default.getter();
        if (sub_10000BB44(v386))
        {
          v387 = sub_100006DC4();
          *v387 = 0;
          sub_1000079AC();
          _os_log_impl(v388, v389, v390, v391, v392, 2u);
          v393 = v387;
          v373 = v430;
          sub_100005F40(v393);
        }

        v394 = v431;
        sub_100007928();
        sub_10000AF74(v395, v396, v397, v360);
        sub_1003087A4();

        sub_100009A04(v394, &unk_1006A52C0, &unk_10057D930);
        goto LABEL_90;
      }
    }

    else
    {
    }

    v278 = [v125 receptionistState];

    if (v278 == 7)
    {
      v279 = [v125 isScreening];

      if (v279)
      {
        v281 = v405;
        sub_100022CBC(v280, v447);
        v282 = v281;
        v283 = v414;
        sub_10003A220(v282, v414, &unk_1006A52C0, &unk_10057D930);
        sub_10000A7C0(v283);
        if (v184)
        {
          goto LABEL_71;
        }

        v96 = v440;
        v439 = 0;
        v284 = sub_1000276B4();
        v285(v284);

        sub_100461A74();
        sub_100049FE0();
        sub_100017CE8(a2 + 1);
        sub_10000F33C();
        v286();
        v287 = sub_10003EA7C();
        goto LABEL_72;
      }
    }

    else
    {
    }

    v289 = v405;
    sub_100022CBC(v280, v447);
    v290 = v289;
    v283 = v418;
    sub_10003A220(v290, v418, &unk_1006A52C0, &unk_10057D930);
    sub_10000A7C0(v283);
    if (v184)
    {
LABEL_71:
      sub_100009A04(v283, &unk_1006A52C0, &unk_10057D930);
      goto LABEL_73;
    }

    v96 = v440;
    v291 = sub_1000276B4();
    v292(v291);

    sub_100461A74();
    sub_100049FE0();
    sub_100017CE8(a2 + 1);
    sub_10000F33C();
    v293();
    v287 = sub_10003EA7C();
LABEL_72:
    v288(v287, v121);

LABEL_73:
    sub_10026D814(&unk_1006A5318, &qword_100580060);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_10057D6A0;
    v294 = *&a4[v96];
    *(inited + 4) = *(v294 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);
    *(inited + 5) = *(v294 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs);

    v295 = _swiftEmptyArrayStorage;
    for (i = 32; ; i += 8)
    {
      if (i == 48)
      {
        swift_setDeallocating();
        sub_1002F5CB4();
        type metadata accessor for TaskPriority();
        sub_100007928();
        sub_10000AF74(v305, v306, v307, v308);
        v309 = swift_allocObject();
        v309[2] = 0;
        v309[3] = 0;
        v309[4] = a4;
        v309[5] = v295;
        v310 = v404;
        v309[6] = v432;
        v309[7] = v310;

        v311 = a4;
        sub_1002762F0();

        goto LABEL_90;
      }

      v64 = *&inited[i];
      a2 = *(v64 + 2);
      v297 = v295[2];
      v298 = v297 + a2;
      if (__OFADD__(v297, a2))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v298 > v295[3] >> 1)
      {
        if (v297 <= v298)
        {
          v300 = v297 + a2;
        }

        else
        {
          v300 = v297;
        }

        sub_1004701CC(isUniquelyReferenced_nonNull_native, v300, 1, v295);
        v295 = v301;
      }

      if (*(v64 + 2))
      {
        if ((v295[3] >> 1) - v295[2] < a2)
        {
          goto LABEL_119;
        }

        swift_arrayInitWithCopy();

        if (a2)
        {
          v302 = v295[2];
          v303 = __OFADD__(v302, a2);
          v304 = v302 + a2;
          if (v303)
          {
            goto LABEL_120;
          }

          v295[2] = v304;
        }
      }

      else
      {

        if (a2)
        {
          goto LABEL_118;
        }
      }
    }

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
    sub_100008018();
    swift_once();
  }

LABEL_29:
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (sub_10000689C(v136))
  {
    v137 = sub_100006DC4();
    sub_100017D04(v137);
    sub_10000A154();
    _os_log_impl(v138, v139, v140, v141, v142, 2u);
    sub_100008AE8();
  }

  v143 = v438;
  v144 = v430;
  sub_10003A220(v438, v430, &unk_1006A52C0, &unk_10057D930);
  sub_10000A7C0(v144);
  if (v184)
  {
    sub_10000528C();
    sub_100009A04(v145, v146, v147);
    v148 = v422;
    sub_10003A220(v143, v422, &unk_1006A52C0, &unk_10057D930);
    v149 = a4;
    v150 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_1000066DC())
    {
      v151 = swift_slowAlloc();
      v447[0] = sub_100007630();
      *v151 = 136315394;
      v152 = v99;
      v153 = sub_10029142C(v148);
      v154 = v148;
      v156 = v155;
      sub_100009A04(v154, &unk_1006A52C0, &unk_10057D930);
      v157 = sub_10002741C(v153, v156, v447);

      *(v151 + 4) = v157;
      *(v151 + 12) = 2080;
      v158 = swift_unknownObjectWeakLoadStrong();
      sub_100291454(v158);
      sub_100317550();

      v159 = sub_10002741C(v156, v96, v447);
      v96 = v419;

      *(v151 + 14) = v159;
      v99 = v152;
      sub_10000FBFC();
      _os_log_impl(v160, v161, v162, v163, v151, 0x16u);
      swift_arrayDestroy();
      sub_10000E668();
      sub_100008AE8();
    }

    else
    {

      sub_100009A04(v148, &unk_1006A52C0, &unk_10057D930);
    }

    if ([v99 screeningAnnouncementHasFinished])
    {
      v185 = 2;
    }

    else
    {
      v185 = 5;
    }

    [v99 setLiveVoicemailStatus:v185];
    v186 = type metadata accessor for AnsweringMachineState(0);
    v187 = sub_1000076B4(v186);
    sub_10003A308();

    *&a4[v96] = v187;
    goto LABEL_51;
  }

  v404 = v99;
  v164 = v440;
  v165 = sub_10000BA34();
  v435 = v167;
  v436 = v166;
  v167(v165);
  v168 = v429;
  static URL.temporaryDirectory.getter();
  v447[0] = URL.lastPathComponent.getter();
  v447[1] = v169;
  v171 = v424;
  v170 = v425;
  v172 = v121;
  v173 = v426;
  (*(v425 + 104))(v424, enum case for URL.DirectoryHint.inferFromPath(_:), v426);
  sub_10001E364();
  v174 = v431;
  URL.appending<A>(component:directoryHint:)();
  v175 = v173;
  v176 = v172;
  (*(v170 + 8))(v171, v175);

  v177 = v164 + 8;
  v178 = *(v164 + 8);
  v178(v168, v172);
  sub_100007C20();
  sub_10000AF74(v179, v180, v181, v172);
  v182 = v405;
  sub_1000432B0(v174, v405, &unk_1006A52C0, &unk_10057D930);
  v183 = v423;
  sub_10003A220(v182, v423, &unk_1006A52C0, &unk_10057D930);
  sub_10000A7C0(v183);
  v438 = v178;
  if (v184)
  {
    sub_100009A04(v183, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v188 = v417;
    v435(v417, v183, v176);
    v189 = *&v437[v419];
    v190 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs;

    sub_100461A74();
    sub_100049FE0();
    v191 = *(v189 + v190);
    *(v191 + 16) = v164 + 1;
    (*(v440 + 16))(v191 + ((*(v440 + 80) + 32) & ~*(v440 + 80)) + *(v440 + 72) * v164, v188, v176);
    *(v189 + v190) = v191;
    v178(v188, v176);
  }

  v192 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100317538();

  if (sub_10000F96C())
  {
    v193 = sub_100005274();
    v194 = sub_100005E84();
    v447[0] = v194;
    *v193 = 136315138;
    sub_100005298(v182, v446);
    v436 = v177;
    v195 = v182;
    v196 = v431;
    sub_10003A220(v195, v431, &unk_1006A52C0, &unk_10057D930);
    v197 = sub_10029142C(v196);
    v199 = v198;
    v200 = v196;
    v182 = v405;
    v176 = v441;
    sub_100009A04(v200, &unk_1006A52C0, &unk_10057D930);
    v201 = sub_10002741C(v197, v199, v447);

    *(v193 + 4) = v201;
    sub_10000A154();
    _os_log_impl(v202, v203, v204, v205, v206, 0xCu);
    sub_100009B7C(v194);
    sub_100006868();
    sub_100008AE8();
  }

  v96 = v419;
  v207 = v421;
  v208 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v209);
  v211 = v210;
  sub_100005298(v182, v447);
  sub_10003A220(v182, v207, &unk_1006A52C0, &unk_10057D930);
  sub_10000A7C0(v207);
  if (!v184)
  {
    v213 = v207;
    URL._bridgeToObjectiveC()(v212);
    v214 = sub_10000C614();
    v215 = v438;
    v438(v214, v176);
    v445[0] = 0;
    v216 = [v208 copyItemAtURL:v211 toURL:v207 error:v445];

    if (v216)
    {
      v217 = v445[0];
      v215(v433, v176);
      a4 = v437;
      goto LABEL_73;
    }

    v218 = v445[0];
    v219 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v220 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100317538();

    if (sub_10000F96C())
    {
      v221 = sub_100005274();
      v222 = sub_100005E84();
      v445[0] = v222;
      *v221 = 136315138;
      v444[0] = v219;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v223 = String.init<A>(reflecting:)();
      sub_10002741C(v223, v224, v445);
      sub_10000B934();
      v176 = v441;

      *(v221 + 4) = v96;
      v96 = v419;
      sub_10000C1F8();
      _os_log_impl(v225, v226, v227, v228, v221, 0xCu);
      sub_100009B7C(v222);
      sub_100005F40(v222);
      sub_100006868();
    }

    v229 = v404;
    v230 = type metadata accessor for AnsweringMachineState(0);
    v231 = sub_1000076B4(v230);
    sub_10003A308();

    v215(v433, v176);
    *&v437[v96] = v231;
LABEL_51:

LABEL_90:

    return;
  }

  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_10030E9A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10026D814(&qword_1006A52E8, &unk_100580050);
  sub_100007BF0(v5);
  sub_100006688();
  __chkstk_darwin(v6);
  v39 = type metadata accessor for Caption();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = *(v2 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *(v18 - v17) = v20;
  (*(v15 + 104))(v18 - v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v19, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_100316A04(a1);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = result;
  v24 = sub_10000B6F4(result);
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  result = sub_10039A340(0, v24 & ~(v24 >> 63), 0);
  if (v25 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v37 = a2;
  v26 = 0;
  v38 = v23 & 0xC000000000000001;
  v27 = v23;
  do
  {
    if (v38)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v23 + 8 * v26 + 32);
    }

    v29 = v28;
    [v28 confidence];
    [v29 range];
    CaptionRange.init(_:)();
    type metadata accessor for CaptionRange();
    sub_100007C20();
    sub_10000AF74(v30, v31, v32, v33);
    Caption.init(confidence:range:)();

    v35 = _swiftEmptyArrayStorage[2];
    v34 = _swiftEmptyArrayStorage[3];
    if (v35 >= v34 >> 1)
    {
      sub_10039A340((v34 > 1), v35 + 1, 1);
    }

    ++v26;
    _swiftEmptyArrayStorage[2] = v35 + 1;
    (*(v8 + 32))(_swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35, v12, v39);
    v23 = v27;
  }

  while (v25 != v26);
LABEL_12:

  result = sub_100316A74(a1);
  if (v36)
  {
    [a1 utteranceNumber];
    [a1 utteranceStartTimestamp];
    [a1 utteranceDuration];
    return Utterance.init(text:captions:utteranceNumber:utteranceStartTimestamp:utteranceDuration:)();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10030ED74(uint64_t a1, uint64_t a2)
{
  sub_100006AF0(0, &qword_1006A5328, NLTagger_ptr);
  sub_10026D814(&qword_1006A5330, &qword_100580080);
  sub_100007934();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 32) = NLTagSchemeNameType;
  v5 = NLTagSchemeNameType;
  v6 = sub_1003141D4();
  sub_100316D0C(a1, a2, v6);
  sub_10026D814(&qword_1006A5338, &qword_100580088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = NLTagPersonalName;
  v8 = NLTagPersonalName;
  NLTagger.enumerateTags(in:unit:scheme:options:using:)();

  v9 = 0;
  if (_swiftEmptyArrayStorage[2] == 1)
  {
    v9 = _swiftEmptyArrayStorage[4];
  }

  return v9;
}

uint64_t sub_10030EF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[20] = v10;
  v11 = *(v10 - 8);
  v7[21] = v11;
  v7[22] = *(v11 + 64);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_10030F0CC, 0, 0);
}

uint64_t sub_10030F0CC()
{
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[26] = sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v4))
  {
    v5 = sub_100006DC4();
    sub_100008944(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending audio files to be concatenated", v0, 2u);
    sub_10000E668();
  }

  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_10030F208;
  v7 = v1[24];
  v8 = v1[11];

  return sub_1002DEAC0(v7, v8);
}

uint64_t sub_10030F208()
{
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100007BC8();
  *v5 = v4;
  *(v6 + 224) = v0;

  if (v0)
  {
    v7 = sub_10030F624;
  }

  else
  {
    v7 = sub_10030F314;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10030F314()
{
  v28 = v0[25];
  v2 = v0[22];
  v1 = v0[23];
  v22 = v1;
  v3 = v0[20];
  v4 = v0[21];
  v24 = v0[19];
  v30 = v0[18];
  v31 = v0[17];
  v29 = v0[15];
  v26 = v0[16];
  v27 = v0[14];
  v5 = v0[12];
  v23 = v0[13];
  v6 = v0[10];
  v7 = *(v4 + 32);
  v7(v28, v0[24], v3);
  v25 = v3;
  v8 = v1;
  v9 = v3;
  (*(v4 + 16))(v8, v28, v3);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v7(v12 + v10, v22, v9);
  *(v12 + v11) = v23;
  v0[6] = sub_100316DB4;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004CEC;
  v0[5] = &unk_100626838;
  v13 = _Block_copy(v0 + 2);
  v14 = v6;

  v15 = v23;
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_10000841C();
  sub_10031699C(v16, v17, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v18, &unk_1006A2960, &unk_10057D6E0, v19);
  sub_10000BA34();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v29 + 8))(v26, v27);
  (*(v30 + 8))(v24, v31);
  (*(v4 + 8))(v28, v25);

  sub_100015448();

  sub_100009EF4();

  return v20();
}

uint64_t sub_10030F624()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = sub_100005274();
    v5 = sub_100005E84();
    v14 = v5;
    *v4 = 136446210;
    v0[8] = v3;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to export concatenated audio file %{public}s", v4, 0xCu);
    sub_100009B7C(v5);
    sub_100006868();
    sub_10000E668();
  }

  v9 = v0[10];
  v10 = type metadata accessor for AnsweringMachineState(0);
  v11 = sub_1000076B4(v10);
  sub_10003A308();

  *(v9 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) = v11;

  sub_100015448();

  sub_100009EF4();

  return v12();
}

uint64_t sub_10030F7CC(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v136 = a3;
  v138 = a1;
  v5 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v5 - 8);
  v125 = v111 - v6;
  v7 = sub_10026D814(&qword_1006A5340, &qword_100580090);
  __chkstk_darwin(v7 - 8);
  v124 = v111 - v8;
  v122 = type metadata accessor for MessageQuality();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v123 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A5348, &qword_100580098);
  __chkstk_darwin(v10 - 8);
  v120 = v111 - v11;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v117 = v111 - v16;
  v131 = type metadata accessor for UUID();
  v133 = *(v131 - 8);
  v17 = __chkstk_darwin(v131);
  v130 = v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v129 = v111 - v20;
  v21 = __chkstk_darwin(v19);
  v134 = v111 - v22;
  v23 = __chkstk_darwin(v21);
  v132 = v111 - v24;
  __chkstk_darwin(v23);
  v137 = v111 - v25;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v119 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v29;
  __chkstk_darwin(v28);
  v31 = v111 - v30;
  v32 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v33 = __chkstk_darwin(v32 - 8);
  v128 = v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = v111 - v35;
  v37 = swift_projectBox();
  swift_beginAccess();
  sub_10003A220(v37, v36, &unk_1006A52C0, &unk_10057D930);
  v38 = v26;
  LODWORD(v37) = sub_100015468(v36, 1, v26);
  sub_100009A04(v36, &unk_1006A52C0, &unk_10057D930);
  if (v37 == 1)
  {
    v39 = *&v138[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
    if (*(v39 + 8))
    {
      v40 = 0.0;
    }

    else
    {
      v40 = *v39;
    }
  }

  else
  {
    sub_1003106F8();
    v40 = v41;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v126 = sub_10000AF9C(v42, qword_1006BA5F8);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v135 = v31;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v139[0] = v47;
    *v46 = 136315138;
    v140 = v40;
    v48 = String.init<A>(reflecting:)();
    v50 = v27;
    v51 = sub_10002741C(v48, v49, v139);

    *(v46 + 4) = v51;
    v27 = v50;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v43, v44, "receptionist creatingMessage duration: %s", v46, 0xCu);
    sub_100009B7C(v47);
    v31 = v135;
  }

  v127 = *(v27 + 16);
  v127(v31, v136, v38);
  v116 = sub_100310AD0(a4);
  if (v116 & 1) != 0 || (v52 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState, (*(*&v138[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio)) || sub_100310BE4(v31))
  {
    sub_100310FB0(a4);
    if (v53)
    {
      v54 = v31;
      *&v55 = COERCE_DOUBLE(a4);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v27;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v139[0] = v60;
        *v59 = 136315138;
        v140 = *&v55;
        sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
        v61 = v55;
        v62 = String.init<A>(reflecting:)();
        v64 = sub_10002741C(v62, v63, v139);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v56, v57, "Call has an unsupported provider. Call: %s", v59, 0xCu);
        sub_100009B7C(v60);

        (*(v58 + 8))(v54, v38);
      }

      else
      {

        (*(v27 + 8))(v54, v38);
      }

      type metadata accessor for AnsweringMachineState(0);
      v67 = swift_allocObject();
      sub_10003A308();
      *&v138[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] = v67;
    }

    else
    {
      [a4 setLiveVoicemailStatus:1];
      v65 = [a4 handle];
      if (v65)
      {
        v115 = sub_1004450C8(v65);
        v114 = v66;
      }

      else
      {
        v115 = 0;
        v114 = 0;
      }

      v68 = v131;
      v126 = v27;
      v69 = [a4 conversationID];
      if (v69)
      {
        v70 = v69;
        v71 = v132;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = *(v133 + 32);
        v73 = v117;
        v72(v117, v71, v68);
        sub_10000AF74(v73, 0, 1, v68);
        v72(v137, v73, v68);
      }

      else
      {
        v74 = v117;
        sub_10000AF74(v117, 1, 1, v68);
        UUID.init()();
        if (sub_100015468(v74, 1, v68) != 1)
        {
          sub_100009A04(v74, &unk_1006A3DD0, &unk_10057C9D0);
        }
      }

      v117 = a4;
      v75 = [a4 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      if (sub_100015468(v15, 1, v68) == 1)
      {
        v76 = v133;
        (*(v133 + 16))(v134, v137, v68);
        v77 = &off_1006A5000;
        if (sub_100015468(v15, 1, v68) != 1)
        {
          sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
        }
      }

      else
      {
        v76 = v133;
        (*(v133 + 32))(v134, v15, v68);
        v77 = &off_1006A5000;
      }

      v113 = type metadata accessor for Message();
      UUID.init()();
      v78 = *(v76 + 16);
      v78(v129, v134, v68);
      v78(v130, v137, v68);
      v79 = v119;
      v112 = v38;
      v127(v119, v135, v38);
      sub_10000AF74(v128, 1, 1, v38);
      v111[2] = MessageStoreProvider.identifierString.getter();
      v111[1] = v80;
      v81 = v77[66];
      v82 = v138;
      v83 = *&v81[v138];
      v111[0] = *(v83 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);
      v84 = *(v83 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances);
      swift_beginAccess();
      v140 = v84;

      sub_100413E38(v85);
      v86 = v120;
      Transcript.init(utterances:)();
      v87 = type metadata accessor for Transcript();
      sub_10000AF74(v86, 0, 1, v87);
      (*(v121 + 104))(v123, enum case for MessageQuality.raw(_:), v122);
      v88 = type metadata accessor for Summary();
      sub_10000AF74(v124, 1, 1, v88);

      LOBYTE(v140) = 1;
      v89 = Message.__allocating_init(recordUUID:callUUID:conversationID:messageFile:messageThumbnail:messageType:from:provider:isSensitive:duration:recipient:transcript:isRTT:simID:quality:voicemailID:summary:)();
      v90 = type metadata accessor for TaskPriority();
      sub_10000AF74(v125, 1, 1, v90);
      v91 = v112;
      v127(v79, v136, v112);
      v92 = v126;
      v93 = (*(v126 + 80) + 56) & ~*(v126 + 80);
      v94 = swift_allocObject();
      *(v94 + 2) = 0;
      *(v94 + 3) = 0;
      v95 = v117;
      *(v94 + 4) = v82;
      *(v94 + 5) = v95;
      *(v94 + 6) = v89;
      (*(v92 + 32))(&v94[v93], v79, v91);
      v96 = v82;
      v97 = v95;
      v98 = v89;
      sub_1002762F0();

      v99 = *(v133 + 8);
      v100 = v131;
      v99(v134, v131);
      v99(v137, v100);
      (*(v92 + 8))(v135, v91);
      type metadata accessor for AnsweringMachineState(0);
      v101 = swift_allocObject();
      sub_10003A308();
      *&v81[v82] = v101;
    }
  }

  else
  {
    v102 = a4;
    v103 = v27;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "Answering machine stopped, we got no audio and it wasn't an RTT call not saving voicemail", v106, 2u);
    }

    v107 = v138;
    if (*(*&v138[v52] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio))
    {
      v108 = 3;
    }

    else
    {
      v108 = 4;
    }

    [v102 setLiveVoicemailStatus:v108];
    (*(v103 + 8))(v31, v38);
    type metadata accessor for AnsweringMachineState(0);
    v109 = swift_allocObject();
    sub_10003A308();
    *&v107[v52] = v109;
  }
}

void sub_1003106F8()
{
  v1 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v1);
  sub_100006688();
  __chkstk_darwin(v2);
  sub_10000B8BC();
  v3 = type metadata accessor for Date();
  sub_100007FEC();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v41[-v10 - 8];
  v12 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = *&v0[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *(v17 - v16) = v19;
  (*(v14 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    sub_100008018();
    swift_once();
    goto LABEL_4;
  }

  v21 = *&v0[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState];
  v22 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime;
  sub_100005298(v21 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime, v41);
  sub_10003A220(v21 + v22, v0, &qword_1006A3C70, &unk_10057EA80);
  if (sub_100015468(v0, 1, v3) != 1)
  {
    sub_10000528C();
    v38();
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v39 = *(v5 + 8);
    v39(v9, v3);
    Date.timeIntervalSinceReferenceDate.getter();
    v39(v11, v3);
    return;
  }

  sub_100009A04(v0, &qword_1006A3C70, &unk_10057EA80);
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v23 = type metadata accessor for Logger();
  sub_1000075F0(v23, qword_1006BA5F8);
  v24 = v0;
  v25 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10000F96C())
  {
    v26 = sub_100005274();
    v27 = sub_100005E84();
    v40 = v27;
    *v26 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v29 = sub_100291454(Strong);
    v31 = v30;

    v32 = sub_10002741C(v29, v31, &v40);

    *(v26 + 4) = v32;
    sub_10000A154();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_100009B7C(v27);
    sub_100006868();
    sub_100008AE8();
  }
}

uint64_t sub_100310AD0(void *a1)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E598();
  v5 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v2 = v5;
  v6 = sub_100006B90();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_100033364();
  result = v10(v9);
  if (v5)
  {
    if ([a1 isRTT])
    {
      return 1;
    }

    else
    {
      return [a1 isTTY];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100310BE4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_24;
  }

  URL._bridgeToObjectiveC()(v9);
  a1 = v10;
  if (qword_1006A0A00 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v11 = sub_1000FCB74(a1, qword_1006A4C28);

    if (!v11)
    {
      return 0;
    }

    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA5F8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = a1;
      v30 = v16;
      *v15 = 136315138;

      sub_10026D814(&qword_1006A5358, &qword_1005800B8);
      v17 = String.init<A>(reflecting:)();
      v19 = sub_10002741C(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "powerLevels=%s", v15, 0xCu);
      sub_100009B7C(v16);
    }

    v20 = sub_10000B6F4(a1);
    v21 = 0;
    while (1)
    {
      v22 = v20 != v21;
      if (v20 == v21)
      {
LABEL_19:

        return v22;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v23 = *(a1 + 8 * v21 + 32);
      }

      v24 = v23;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      Float.init(truncating:)();
      v26 = v25;
      if (qword_1006A09F8 != -1)
      {
        swift_once();
      }

      v27 = *&dword_1006A4C20;

      ++v21;
      if (v27 < v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }
}

uint64_t sub_100310FB0(void *a1)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E598();
  v5 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v2 = v5;
  v6 = sub_100006B90();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_100033364();
  result = v10(v9);
  if (v5)
  {
    v12 = [a1 provider];
    v13 = [v12 isTelephonyProvider];

    if (v13)
    {
      return 1;
    }

    else
    {
      v14 = [a1 provider];
      v15 = [v14 isFaceTimeProvider];

      if (v15)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100311114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for URL();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100311210, 0, 0);
}

uint64_t sub_100311210()
{
  v1 = *(v0 + 40);
  sub_100311F40(*(v0 + 48));
  if (*(v1 + OBJC_IVAR___CSDAnsweringMachineController_messageStoreController))
  {
    v2 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_messageStoreController);
  }

  else
  {
    v2 = type metadata accessor for MessageStoreController();
    static MessageStoreController.shared.getter();
    sub_10000691C();
  }

  *(v0 + 104) = v2;

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_100311318;
  v4 = *(v0 + 56);

  return MessageStoreController.saveMessage(_:)(v4);
}

uint64_t sub_100311318()
{
  sub_100007BC8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  if (v0)
  {
    v5 = sub_1003119CC;
  }

  else
  {
    v5 = sub_100311454;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100311454()
{
  v64 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v1 = v0[15];
  v58 = type metadata accessor for Logger();
  sub_1000075F0(v58, qword_1006BA5F8);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v4 = sub_1000066DC();
  v5 = v0[15];
  if (v4)
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v63[0] = v7;
    *v6 = 136315138;
    v0[4] = v5;
    type metadata accessor for Message();
    v8 = v5;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, v63);

    *(v6 + 4) = v11;
    sub_10000FBFC();
    _os_log_impl(v12, v13, v14, v15, v6, 0xCu);
    sub_100009B7C(v7);
    sub_100005F40(v7);
    sub_100005F40(v6);
  }

  else
  {
  }

  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[8];
  v62 = *(*(v0[5] + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  sub_100413E0C(v19);
  sub_10026D814(&qword_1006A4818, &qword_1005800B0);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v54 = *(v17 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057D690;
  v22 = *(v17 + 16);
  (v22)(v21 + v20, v18, v16);
  sub_100413E0C(v21);
  v23 = *(v62 + 16);
  if (v23)
  {
    v24 = v62 + v20;
    v60 = (v0[10] + 8);
    v61 = objc_opt_self();
    v25 = v54;
    v57 = v22;
    do
    {
      (v22)(v0[12], v24, v0[9]);
      v26 = [v61 defaultManager];
      URL._bridgeToObjectiveC()(v27);
      v29 = v28;
      v0[2] = 0;
      v30 = [v26 removeItemAtURL:v28 error:v0 + 2];

      v31 = v0[2];
      if (v30)
      {
        v32 = v0[12];
        v33 = v0[9];
        v34 = *v60;
        v35 = v31;
        v34(v32, v33);
      }

      else
      {
        v36 = v31;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1006A0B28 != -1)
        {
          sub_100008018();
          swift_once();
        }

        sub_10000AF9C(v58, qword_1006BA5F8);
        sub_10000528C();
        v22();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        v39 = os_log_type_enabled(v37, v38);
        v59 = v0[12];
        v40 = v0[9];
        if (v39)
        {
          v56 = v38;
          v41 = sub_100005274();
          v63[0] = sub_100005E84();
          *v41 = 136315138;
          sub_100011374();
          sub_10031699C(&qword_1006A3BD0, v42, &protocol conformance descriptor for URL);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          v55 = *v60;
          v46 = sub_10000BA34();
          v47(v46);
          v48 = sub_10002741C(v43, v45, v63);
          v25 = v54;

          *(v41 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v37, v56, "Failed to remove audio file at URL %s", v41, 0xCu);
          v49 = sub_1000444B0();
          sub_100005F40(v49);
          sub_100005F40(v41);

          v55(v59, v40);
        }

        else
        {

          v50 = *v60;
          v51 = sub_10000BA34();
          v50(v51);
          (v50)(v59, v40);
        }

        v22 = v57;
      }

      v24 += v25;
      --v23;
    }

    while (v23);
  }

  sub_100009EF4();

  return v52();
}

uint64_t sub_1003119CC()
{
  v60 = v0;

  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_1000075F0(v53, qword_1006BA5F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v3 = sub_1000066DC();
  v4 = v0[16];
  if (v3)
  {
    v5 = sub_100005274();
    v6 = sub_100005E84();
    v59[0] = v6;
    *v5 = 136315138;
    v0[3] = v4;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v7 = String.init<A>(reflecting:)();
    sub_10002741C(v7, v8, v59);
    sub_10000B934();

    *(v5 + 4) = v1;
    sub_10000FBFC();
    _os_log_impl(v9, v10, v11, v12, v5, 0xCu);
    sub_100009B7C(v6);
    sub_100005F40(v6);
    sub_100005F40(v5);
  }

  else
  {
  }

  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  v58 = *(*(v0[5] + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs);

  sub_100413E0C(v16);
  sub_10026D814(&qword_1006A4818, &qword_1005800B0);
  v17 = *(v14 + 72);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D690;
  v57 = *(v14 + 16);
  (v57)(v19 + v18, v15, v13);
  sub_100413E0C(v19);
  v20 = *(v58 + 16);
  if (v20)
  {
    v21 = v58 + v18;
    v55 = (v0[10] + 8);
    v56 = objc_opt_self();
    v52 = v17;
    do
    {
      (v57)(v0[12], v21, v0[9]);
      v22 = [v56 defaultManager];
      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      v0[2] = 0;
      v26 = [v22 removeItemAtURL:v24 error:v0 + 2];

      v27 = v0[2];
      if (v26)
      {
        v28 = v0[12];
        v29 = v0[9];
        v30 = *v55;
        v31 = v27;
        v30(v28, v29);
      }

      else
      {
        v32 = v27;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1006A0B28 != -1)
        {
          sub_100008018();
          swift_once();
        }

        sub_10000AF9C(v53, qword_1006BA5F8);
        sub_10000528C();
        v57();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        v35 = os_log_type_enabled(v33, v34);
        v54 = v0[12];
        v36 = v0[9];
        if (v35)
        {
          log = v33;
          v37 = sub_100005274();
          v50 = sub_100005E84();
          v59[0] = v50;
          *v37 = 136315138;
          sub_100011374();
          sub_10031699C(&qword_1006A3BD0, v38, &protocol conformance descriptor for URL);
          v39 = dispatch thunk of CustomStringConvertible.description.getter();
          v41 = v40;
          v49 = *v55;
          v42 = sub_10000BA34();
          v43(v42);
          v44 = sub_10002741C(v39, v41, v59);

          *(v37 + 4) = v44;
          _os_log_impl(&_mh_execute_header, log, v34, "Failed to remove audio file at URL %s", v37, 0xCu);
          sub_100009B7C(v50);
          sub_100005F40(v50);
          sub_100005F40(v37);

          v49(v54, v36);
        }

        else
        {

          v45 = *v55;
          v46 = sub_10000BA34();
          v45(v46);
          (v45)(v54, v36);
        }

        v17 = v52;
      }

      v21 += v17;
      --v20;
    }

    while (v20);
  }

  sub_100009EF4();

  return v47();
}

void sub_100311F40(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_callHistoryManager);
  v4 = [a1 callHistoryIdentifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [v3 updateMessageStatusFor:v4 with:isa];

  v6 = [a1 callHistoryIdentifier];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v3 updateAutoAnsweredReasonFor:v6 with:1];

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
  }
}

void sub_100312234()
{
  sub_100005EF4();
  v233 = v2;
  v4 = v3;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v5);
  sub_100006688();
  __chkstk_darwin(v6);
  sub_100317544();
  v222 = v7;
  sub_10000D414();
  v8 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v228 = (v13 - v12);
  sub_10000D414();
  v14 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v230 = v15;
  __chkstk_darwin(v16);
  sub_10000F4E8();
  v224 = v17;
  sub_100006838();
  __chkstk_darwin(v18);
  sub_100005F58();
  v219 = v19;
  sub_100006838();
  __chkstk_darwin(v20);
  sub_100005F58();
  v229 = v21;
  sub_100006838();
  __chkstk_darwin(v22);
  sub_10000C1C4();
  v223 = v23;
  sub_10000D414();
  v24 = type metadata accessor for DispatchWorkItemFlags();
  sub_100008070();
  __chkstk_darwin(v25);
  sub_100007FDC();
  v221 = v27 - v26;
  v28 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v28);
  sub_100006688();
  __chkstk_darwin(v29);
  sub_100317544();
  v231 = v30;
  sub_10000D414();
  v31 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_10000E598();
  v236 = v0;
  v35 = *&v0[OBJC_IVAR___CSDAnsweringMachineController_queue];
  *v1 = v35;
  v36 = sub_100006B90();
  v37(v36);
  v227 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v1, v31);
  if (v35)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008018();
  swift_once();
LABEL_3:
  v38 = type metadata accessor for Logger();
  v39 = sub_10000AF9C(v38, qword_1006BA5F8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v225 = v10;
  v226 = v8;
  v220 = v24;
  if (sub_10000BB44(v41))
  {
    v42 = sub_100005274();
    v238 = sub_100005E84();
    *v42 = 136315138;
    v43 = v4;
    LOBYTE(v237) = v4 & 1;
    v44 = String.init<A>(reflecting:)();
    v46 = sub_10002741C(v44, v45, &v238);

    *(v42 + 4) = v46;
    v47 = v14;
    sub_10000FBFC();
    _os_log_impl(v48, v49, v50, v51, v42, 0xCu);
    v52 = sub_1000444B0();
    sub_100005F40(v52);
    sub_100008AE8();
  }

  else
  {

    v43 = v4;
    v47 = v14;
  }

  if ((v43 & 1) == 0)
  {
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v41 = sub_100005274();
      v55 = v39;
      v56 = sub_100005E84();
      v238 = v56;
      *v41 = 136315138;
      v57 = sub_1002910C8(v233);
      v59 = sub_10002741C(v57, v58, &v238);

      *(v41 + 4) = v59;
      sub_1000079AC();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      sub_100009B7C(v56);
      v65 = v56;
      v39 = v55;
      sub_100005F40(v65);
      sub_100006868();
    }
  }

  v66 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  sub_10001864C();
  *(v67 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasFinishedAnnouncement) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    [Strong setScreeningAnnouncementHasFinished:1];
  }

  v70 = *&v236[v66];

  static Date.now.getter();
  type metadata accessor for Date();
  sub_100007C20();
  sub_10000AF74(v71, v72, v73, v74);
  v75 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime;
  sub_100008D34(v70 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime, &v238);
  sub_1000432B0(v231, v70 + v75, &qword_1006A3C70, &unk_10057EA80);
  swift_endAccess();

  if ([*&v236[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] receptionistEnabled] && ((sub_10001864C(), (v76 = swift_unknownObjectWeakLoadStrong()) == 0) || (v77 = v76, v78 = objc_msgSend(v76, "receptionistState"), v77, v78)))
  {
    v79 = v236;
    v80 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_10000F96C())
    {
      v234 = v39;
      v81 = v79;
      v82 = sub_100005274();
      v83 = sub_100005E84();
      v238 = v83;
      *v82 = 136315138;
      sub_10001864C();
      v84 = swift_unknownObjectWeakLoadStrong();
      if (v84)
      {
        v85 = v84;
        v86 = [v84 receptionistState];

        v237 = v86;
        type metadata accessor for TUCallReceptionistState(0);
        v87 = String.init<A>(reflecting:)();
        v89 = v88;
      }

      else
      {
        v89 = 0xE300000000000000;
        v87 = 7104878;
      }

      v95 = sub_10002741C(v87, v89, &v238);

      *(v82 + 4) = v95;
      sub_10000C1F8();
      _os_log_impl(v96, v97, v98, v99, v82, 0xCu);
      sub_100009B7C(v83);
      sub_100005F40(v83);
      sub_100005F40(v82);

      v79 = v81;
      v39 = v234;
    }

    else
    {
    }

    sub_10001864C();
    v101 = *(v100 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage + 8);
    if (v101)
    {
      v102 = *(v100 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage);

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (sub_10000BB44(v104))
      {
        v105 = sub_100006DC4();
        *v105 = 0;
        sub_10000FBFC();
        _os_log_impl(v106, v107, v108, v109, v105, 2u);
        sub_100005F40(v105);
      }

      v110 = OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource;
      sub_100005298(&v79[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource], &v237);
      sub_100009AB0(&v79[v110], &v238);
      sub_100009B14(&v238, v241);
      sub_10001864C();
      v111 = swift_unknownObjectWeakLoadStrong();
      sub_10043D55C(v102, v101, 0xD00000000000001ELL, 0x800000010056A5B0, v111, v112, v113, v114, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229);

      sub_100009B7C(&v238);
    }

    else
    {
      v115 = swift_unknownObjectWeakLoadStrong();
      if (v115)
      {
        v41 = v115;
        switch([v41 receptionistState])
        {
          case 1u:
            if ([v41 isKnownCaller])
            {

              v160 = Logger.logObject.getter();
              v161 = static os_log_type_t.default.getter();
              if (sub_10000A648(v161))
              {
                v162 = sub_100006DC4();
                sub_100008944(v162);
                sub_10001628C();
                _os_log_impl(v163, v164, v165, v166, v167, 2u);
                sub_10000E668();
              }

              v168 = objc_allocWithZone(type metadata accessor for HoldMusicAnsweringMachine(0));
              v169 = sub_10000C614();
              v170 = sub_10042EB08(v169);
              v171 = *&v79[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine];
              *&v79[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine] = v170;

              break;
            }

            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.default.getter();
            if (sub_10000689C(v186))
            {
              v187 = sub_100006DC4();
              sub_100017D04(v187);
              sub_10000A154();
              _os_log_impl(v188, v189, v190, v191, v192, 2u);
              sub_100008AE8();
            }

            [v41 setReceptionistState:2];
            v193 = *&v236[v66];
            v238 = 0;
            sub_10000841C();
            sub_10031699C(v194, v195, &protocol conformance descriptor for DispatchWorkItemFlags);

            dispatch thunk of OptionSet.init(rawValue:)();
            sub_100007C2C();
            v196 = swift_allocObject();
            *(v196 + 16) = v79;
            *(v196 + 24) = v41;
            v242 = sub_100316B5C;
            v243 = v196;
            v238 = _NSConcreteStackBlock;
            v239 = 1107296256;
            v240 = sub_100004CEC;
            v241 = &unk_1006267C0;
            _Block_copy(&v238);
            sub_10000691C();
            v197 = type metadata accessor for DispatchWorkItem();
            sub_1000076B4(v197);
            v198 = v79;
            v199 = v41;
            v200 = DispatchWorkItem.init(flags:block:)();

            *(v193 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock) = v200;

            static DispatchTime.now()();
            if (qword_1006A0A28 != -1)
            {
              swift_once();
            }

            *v228 = qword_1006A4C50;
            (*(v225 + 104))(v228, enum case for DispatchTimeInterval.seconds(_:), v226);
            sub_10000BB1C();
            + infix(_:_:)();
            (*(v225 + 8))(v228, v226);
            v92 = *(v230 + 8);
            v201 = sub_10001E3B8();
            v92(v201);
            sub_10001864C();
            if (*(v202 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock))
            {

              sub_10031757C(v223);

              v94 = v223;
              goto LABEL_20;
            }

            goto LABEL_69;
          case 3u:
            v235 = v39;
            v172 = v47;

            v173 = *&v236[v66];
            v238 = 0;
            sub_10000841C();
            sub_10031699C(v174, v175, &protocol conformance descriptor for DispatchWorkItemFlags);

            dispatch thunk of OptionSet.init(rawValue:)();
            sub_100007C2C();
            v176 = swift_allocObject();
            *(v176 + 16) = v79;
            *(v176 + 24) = v41;
            v242 = sub_100316B54;
            v243 = v176;
            v238 = _NSConcreteStackBlock;
            v239 = 1107296256;
            v240 = sub_100004CEC;
            v241 = &unk_100626770;
            _Block_copy(&v238);
            sub_10000691C();
            v177 = type metadata accessor for DispatchWorkItem();
            sub_1000076B4(v177);
            v178 = v79;
            v232 = v41;
            v179 = DispatchWorkItem.init(flags:block:)();

            *(v173 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock) = v179;

            static DispatchTime.now()();
            if (qword_1006A0A30 != -1)
            {
              swift_once();
            }

            *v228 = qword_1006A4C58;
            (*(v225 + 104))(v228, enum case for DispatchTimeInterval.seconds(_:), v226);
            + infix(_:_:)();
            (*(v225 + 8))(v228, v226);
            v180 = *(v230 + 8);
            v181 = sub_10000BB1C();
            v180(v181);
            sub_10001864C();
            if (*(v182 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock))
            {

              sub_10031757C(v219);

              (v180)(v219, v172);
              v183 = OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine;
              if (*&v178[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine])
              {
                v184 = v232;
              }

              else
              {
                v214 = Logger.logObject.getter();
                v215 = static os_log_type_t.default.getter();
                if (sub_10000A648(v215))
                {
                  v216 = sub_100006DC4();
                  sub_100017D04(v216);
                  _os_log_impl(&_mh_execute_header, v214, v235, "waiting for user response: playing ringback", v180, 2u);
                  sub_100008AE8();
                }

                objc_allocWithZone(type metadata accessor for HoldMusicAnsweringMachine(0));
                v217 = sub_10042EB08(v232);
                v184 = *&v178[v183];
                *&v178[v183] = v217;
              }

              goto LABEL_65;
            }

            __break(1u);
LABEL_69:
            __break(1u);
            return;
          case 4u:

            v147 = OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine;
            if (*&v79[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine])
            {
            }

            else
            {
              v203 = Logger.logObject.getter();
              v204 = static os_log_type_t.default.getter();
              if (sub_10000A648(v204))
              {
                v205 = sub_100006DC4();
                sub_100008944(v205);
                sub_10001628C();
                _os_log_impl(v206, v207, v208, v209, v210, 2u);
                sub_10000E668();
              }

              v211 = objc_allocWithZone(type metadata accessor for HoldMusicAnsweringMachine(0));
              v212 = sub_10000C614();
              v213 = sub_10042EB08(v212);
              v184 = *&v79[v147];
              *&v79[v147] = v213;
LABEL_65:
            }

            break;
          case 5u:
          case 6u:
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.default.getter();
            if (sub_10000A648(v117))
            {
              v118 = sub_100006DC4();
              sub_100008944(v118);
              sub_10001628C();
              _os_log_impl(v119, v120, v121, v122, v123, 2u);
              sub_10000E668();
            }

            [v41 setReceptionistState:7];
            sub_10030A5E0();
            v124 = Logger.logObject.getter();
            v125 = static os_log_type_t.default.getter();
            if (sub_10000A648(v125))
            {
              v126 = sub_100006DC4();
              sub_100008944(v126);
              sub_10001628C();
              _os_log_impl(v127, v128, v129, v130, v131, 2u);
              sub_10000E668();
            }

            URL.init(fileURLWithPath:)();
            type metadata accessor for URL();
            sub_100007C20();
            sub_10000AF74(v132, v133, v134, v135);
            sub_1003087A4();

            sub_100009A04(v222, &unk_1006A52C0, &unk_10057D930);
            break;
          case 7u:

            v136 = Logger.logObject.getter();
            v137 = static os_log_type_t.default.getter();
            if (sub_10000689C(v137))
            {
              v138 = sub_100006DC4();
              sub_100017D04(v138);
              sub_10000A154();
              _os_log_impl(v139, v140, v141, v142, v143, 2u);
              sub_100008AE8();
            }

            static DispatchTime.now()();
            *v228 = sub_100308434();
            v144 = sub_100006B90();
            v145(v144);
            sub_100016ECC();
            v92 = (v225 + 8);
            (*(v225 + 8))(v228, v226);
            v146 = sub_100051608();
            ((v225 + 8))(v146);
            sub_10001864C();

            sub_10031757C(v41);

            goto LABEL_19;
          default:
            v148 = Logger.logObject.getter();
            v149 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v148, v149))
            {
              v150 = sub_100005274();
              v151 = sub_100005E84();
              v238 = v151;
              *v150 = 136315138;
              v237 = [v41 receptionistState];
              type metadata accessor for TUCallReceptionistState(0);
              v152 = String.init<A>(reflecting:)();
              v154 = sub_10002741C(v152, v153, &v238);

              *(v150 + 4) = v154;
              sub_10001628C();
              _os_log_impl(v155, v156, v157, v158, v159, 0xCu);
              sub_100009B7C(v151);
              sub_100008AE8();
              sub_10000E668();
            }

            else
            {
            }

            break;
        }
      }
    }
  }

  else
  {
    static DispatchTime.now()();
    *v228 = sub_100308434();
    v90 = sub_100006B90();
    v91(v90);
    sub_100016ECC();
    v92 = (v225 + 8);
    (*(v225 + 8))(v228, v226);
    v93 = sub_100051608();
    ((v225 + 8))(v93);

    sub_10031757C(v41);
LABEL_19:

    v94 = v41;
LABEL_20:
    (v92)(v94, v47);
  }

  sub_100005EDC();
}

uint64_t sub_1003133F8(uint64_t a1, void *a2)
{
  v77 = a2;
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v3 - 8);
  v75 = v72 - v4;
  v83 = type metadata accessor for Utterance();
  v5 = *(v83 - 8);
  v6 = __chkstk_darwin(v83);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v72 - v9;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000AF9C(v11, qword_1006BA5F8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "callerInfoTimeoutBlock", v15, 2u);
  }

  v16 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  *(*(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock) = 0;

  v78 = v16;
  v17 = *(a1 + v16);
  swift_beginAccess();
  v18 = *(v17 + 80);
  v19 = *(v18 + 16);
  v20 = _swiftEmptyArrayStorage;
  v79 = v12;
  v76 = v5;
  if (v19)
  {
    v73 = v8;
    v74 = a1;
    v85 = _swiftEmptyArrayStorage;

    sub_10039A2E0(0, v19, 0);
    v20 = v85;
    v21 = (v5 + 16);
    v22 = *(v5 + 16);
    v23 = *(v5 + 80);
    v72[1] = v18;
    v24 = v18 + ((v23 + 32) & ~v23);
    v80 = v21[7];
    v81 = v22;
    v82 = v21;
    v25 = (v21 - 1);
    do
    {
      v26 = v83;
      v81(v10, v24, v83);
      v27 = Utterance.text.getter();
      v29 = v28;
      (*v25)(v10, v26);
      v85 = v20;
      v31 = v20[2];
      v30 = v20[3];
      if (v31 >= v30 >> 1)
      {
        sub_10039A2E0(v30 > 1, v31 + 1, 1);
        v20 = v85;
      }

      v20[2] = v31 + 1;
      v32 = &v20[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
      v24 += v80;
      --v19;
    }

    while (v19);

    v8 = v73;
    a1 = v74;
  }

  v85 = v20;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_10001000C(&qword_1006A2C20, &unk_1006A3C60, &unk_10057D910, &protocol conformance descriptor for [A]);
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;

  if (v33 || v35 != 0xE000000000000000)
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {

    v36 = 1;
  }

  v37 = v76;
  v38 = *(*(a1 + v78) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
  v82 = v38;
  if (!v38)
  {
    goto LABEL_19;
  }

  sub_10030E9A4(v38, v8);
  v39 = Utterance.text.getter();
  v41 = v40;
  (*(v37 + 8))(v8, v83);
  if (!v39 && v41 == 0xE000000000000000)
  {

LABEL_19:
    v42 = 1;
    goto LABEL_21;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

LABEL_21:
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v85 = v46;
    *v45 = 136315138;
    v84 = v36 & 1;
    v47 = String.init<A>(reflecting:)();
    v49 = sub_10002741C(v47, v48, &v85);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "areUtterancesEmpty: %s", v45, 0xCu);
    sub_100009B7C(v46);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v85 = v53;
    *v52 = 136315138;
    v84 = v42 & 1;
    v54 = String.init<A>(reflecting:)();
    v56 = sub_10002741C(v54, v55, &v85);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "isLastCaptionsNilOrEmpty: %s", v52, 0xCu);
    sub_100009B7C(v53);
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  v59 = os_log_type_enabled(v57, v58);
  if (v36 & v42)
  {
    v60 = v77;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "waitingForCallerInfo -> voicemail", v61, 2u);
    }

    [v60 setReceptionistState:6];
    v62 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine);
    if (v62)
    {
      v63 = v62;
      sub_10042F01C();
    }

    sub_10030A5E0();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "creating answering machine becase caller info timed out with empty utterance", v66, 2u);
    }

    v67 = type metadata accessor for URL();
    v68 = v75;
    sub_10000AF74(v75, 1, 1, v67);
    sub_1003087A4();

    return sub_100009A04(v68, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v70 = v77;
    if (v59)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "waitingForCallerInfo -> ringing", v71, 2u);
    }

    [v70 setShouldSuppressRingtone:0];
    [v70 setReceptionistState:3];
    sub_1000399FC();

    return swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_100313C60(uint64_t a1, void *a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ringingTimeoutBlock", v10, 2u);
  }

  *(*(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock) = 0;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "ringing -> voicemail", v13, 2u);
  }

  [a2 setReceptionistState:6];
  v14 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine);
  if (v14)
  {
    v15 = v14;
    sub_10042F01C();
  }

  sub_10030A5E0();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "creating answering machine because ringing timed out", v18, 2u);
  }

  v19 = type metadata accessor for URL();
  sub_10000AF74(v6, 1, 1, v19);
  sub_1003087A4();
  return sub_100009A04(v6, &unk_1006A52C0, &unk_10057D930);
}

uint64_t sub_100313FA0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *(v7 - v6) = v9;
  (*(v4 + 104))(v7 - v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100008018();
  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_1000075F0(v11, qword_1006BA5F8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (sub_10000689C(v13))
  {
    v14 = sub_100006DC4();
    sub_100017D04(v14);
    sub_10000A154();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    sub_100008AE8();
  }

  v20 = [objc_opt_self() sharedInstance];
  [v20 disconnectAllCalls];

  v21 = type metadata accessor for AnsweringMachineState(0);
  v22 = sub_1000076B4(v21);
  sub_10003A308();
  *(v1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState) = v22;
}

id sub_1003141D4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithTagSchemes:isa];

  return v2;
}

uint64_t sub_10031424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v8 = __chkstk_darwin(a1);
    if (sub_10045E360())
    {
      String.subscript.getter();
      v9 = static String._fromSubstring(_:)();
      v11 = v10;

      sub_100461A44();
      v12 = *(*a5 + 16);
      sub_100461B48(v12);

      v13 = *a5;
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    else
    {
    }
  }

  return 1;
}

void sub_100314378()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  *(v9 + 32) = v2;
  *(v9 + 40) = v0;
  v22[4] = sub_100316B44;
  v22[5] = v9;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v22[2] = v10;
  v22[3] = &unk_100626720;
  v11 = _Block_copy(v22);
  v12 = v6;
  swift_errorRetain();
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v14, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v16, &unk_1006A2960, &unk_10057D6E0, v17);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v18 = sub_100015A08();
  v19(v18);
  v20 = sub_100007C7C();
  v21(v20);

  sub_100005EDC();
}

uint64_t sub_1003145A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);
  v8 = a1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v11 = 136315650;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v12 = v8;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, v24);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    v19 = sub_1002910C8(a3);
    v21 = sub_10002741C(v19, v20, v24);

    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Captions didEnableCaptions: client: %s enabled: %s error: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v22 = *(a4 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  swift_beginAccess();
  *(v22 + 80) = _swiftEmptyArrayStorage;
}

void sub_100314874()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007934();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v3;
  *(v8 + 32) = v1;
  v24[4] = sub_100316B34;
  v24[5] = v8;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v24[2] = v9;
  v24[3] = &unk_1006266D0;
  v10 = _Block_copy(v24);
  v11 = v5;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v12, v13, &protocol conformance descriptor for DispatchWorkItemFlags);
  v14 = sub_10001E3B8();
  sub_10026D814(v14, v15);
  sub_100008434();
  sub_100317520(v16, v17, v18, v19);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  v20 = sub_100015A08();
  v21(v20);
  v22 = sub_100007C7C();
  v23(v22);

  sub_100005EDC();
}

void sub_100314A90(void *a1, char a2, uint64_t a3)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5F8);
  v6 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315650;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v20);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    v16 = sub_1002910C8(a3);
    v18 = sub_10002741C(v16, v17, &v20);

    *(v8 + 24) = v18;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Captions didDisableCaptions: client: %s enabled: %s error: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100314DE4()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v9);
  sub_10000E598();
  v23 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000E4F4();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v6;
  v24[4] = v4;
  v24[5] = v13;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v24[2] = v14;
  v24[3] = v2;
  v15 = _Block_copy(v24);
  v16 = v8;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v17, v18, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v19, &unk_1006A2960, &unk_10057D6E0, v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  v21 = sub_100022DFC();
  v22(v21);
  (*(v11 + 8))(v0, v23);

  sub_100005EDC();
}

void sub_100315010(void *a1, char a2, const char *a3)
{
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5F8);
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v17 = sub_100007630();
    *v8 = 136315394;
    sub_100006AF0(0, &unk_1006A5300, AVCCaptionsClient_ptr);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10002741C(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for AVCCaptionsReason(0);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v7, a3, v8, 0x16u);
    swift_arrayDestroy();
    sub_100006868();
    sub_100005F40(v8);
  }

  else
  {
  }
}

void sub_100315280()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007C2C();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
  v21[4] = sub_100316AD8;
  v21[5] = v5;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v21[2] = v6;
  v21[3] = &unk_1006265E0;
  v7 = _Block_copy(v21);
  v8 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v9, v10, &protocol conformance descriptor for DispatchWorkItemFlags);
  v11 = sub_10001E3B8();
  sub_10026D814(v11, v12);
  sub_100008434();
  sub_100317520(v13, v14, v15, v16);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  v17 = sub_100015A08();
  v18(v17);
  v19 = sub_100007C7C();
  v20(v19);

  sub_100005EDC();
}

uint64_t sub_100315488(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_10022AD98(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  *(v5 + 56) = &type metadata for Bool;
  *(v5 + 64) = &protocol witness table for Bool;
  *(v5 + 32) = v3;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Captions didDetectGibberish: isGibberish: %d", v8);

  v7 = *(a2 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  *(v7 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isProcessingGibberish) = v3;
  *(v7 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = 1;
  return result;
}

void sub_1003155D4()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  sub_100007934();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = v2;
  *(v7 + 32) = v4;
  v24[4] = sub_1003169F4;
  v24[5] = v7;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v24[2] = v8;
  v24[3] = &unk_100626590;
  v9 = _Block_copy(v24);
  v10 = v0;
  v11 = v4;
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v12, v13, &protocol conformance descriptor for DispatchWorkItemFlags);
  v14 = sub_10001E3B8();
  sub_10026D814(v14, v15);
  sub_100008434();
  sub_100317520(v16, v17, v18, v19);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v20 = sub_100015A08();
  v21(v20);
  v22 = sub_100007C7C();
  v23(v22);

  sub_100005EDC();
}

void sub_1003157E8(char *a1, int a2, void *a3)
{
  v6 = type metadata accessor for Utterance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  *(*&a1[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = 1;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000AF9C(v10, qword_1006BA5F8);
  v12 = a3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v71 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v70 = v6;
    v73[0] = v17;
    *v16 = 136315394;
    LODWORD(v72) = a2;
    type metadata accessor for AVCCaptionsSource(0);
    v18 = String.init<A>(reflecting:)();
    v20 = sub_10002741C(v18, v19, v73);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v72 = v12;
    sub_100006AF0(0, &qword_1006A52E0, AVCCaptionsResult_ptr);
    v21 = v12;
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, v73);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Captions updated: source: %s captions: %s", v16, 0x16u);
    swift_arrayDestroy();
    v6 = v70;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "sendCaptionsMessageToClient", v27, 2u);
  }

  v28 = *&a1[v9];
  v29 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock;
  if (*(v28 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock))
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    v28 = *&a1[v9];
    v29 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock;
  }

  *(v28 + v29) = 0;

  if ((*(*&a1[v9] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isProcessingGibberish) & 1) == 0)
  {
    if ([*&a1[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] LVMEverywhere])
    {
      v30 = a1;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v68 = v7;
        v35 = v34;
        v73[0] = v34;
        *v33 = 136315138;
        v70 = v6;
        v36 = v12;
        v72 = *&v30[OBJC_IVAR___CSDAnsweringMachineController_callStateController];
        v37 = v72;
        sub_100006AF0(0, &qword_1006A52D8, off_1006165F0);
        v38 = v37;
        v39 = String.init<A>(reflecting:)();
        v41 = sub_10002741C(v39, v40, v73);

        *(v33 + 4) = v41;
        v12 = v36;
        v6 = v70;
        _os_log_impl(&_mh_execute_header, v31, v32, "self.callStateController %s", v33, 0xCu);
        sub_100009B7C(v35);
        v7 = v68;
      }

      v42 = *&v30[OBJC_IVAR___CSDAnsweringMachineController_callStateController];
      Strong = swift_unknownObjectWeakLoadStrong();
      [v42 sendCaptionsMessageToClientForCall:Strong withCaptions:v12];
    }

    v44 = *(*&a1[v9] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
    if (v44)
    {
      v45 = v44;
      v46 = [v45 utteranceNumber];
      if (v46 != [v12 utteranceNumber])
      {
        v70 = v6;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "updating transcript with lastCaptions", v49, 2u);
        }

        v50 = *&a1[v9];

        v51 = v69;
        sub_10030E9A4(v12, v69);
        swift_beginAccess();
        sub_100461A8C();
        v52 = v12;
        v53 = *(*(v50 + 80) + 16);
        sub_100461B90(v53);
        v54 = *(v50 + 80);
        *(v54 + 16) = v53 + 1;
        v55 = v54 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v53;
        v12 = v52;
        v56 = v51;
        v6 = v70;
        (*(v7 + 32))(v55, v56, v70);
        *(v50 + 80) = v54;
        swift_endAccess();
      }
    }

    v57 = v6;
    v58 = [v12 utteranceComplete];
    v59 = *&a1[v9];
    if (v58)
    {

      v60 = v12;
      v61 = v69;
      sub_10030E9A4(v60, v69);
      swift_beginAccess();
      sub_100461A8C();
      v62 = *(*(v59 + 80) + 16);
      sub_100461B90(v62);
      v63 = *(v59 + 80);
      *(v63 + 16) = v62 + 1;
      (*(v7 + 32))(v63 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v62, v61, v57);
      *(v59 + 80) = v63;
      swift_endAccess();

      v64 = *&a1[v9];
      v65 = *(v64 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
      *(v64 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions) = 0;

      sub_10030BA24();
    }

    else
    {
      v66 = *(v59 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions);
      *(v59 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions) = v12;
      v67 = v12;
    }
  }
}

void sub_100315F8C()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v0);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDAnsweringMachineController_queue);
  v16[4] = sub_10031616C;
  v16[5] = 0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v16[2] = v2;
  v16[3] = &unk_100626540;
  v3 = _Block_copy(v16);
  static DispatchQoS.unspecified.getter();
  sub_10000841C();
  sub_10031699C(v4, v5, &protocol conformance descriptor for DispatchWorkItemFlags);
  v6 = sub_10001E3B8();
  sub_10026D814(v6, v7);
  sub_100008434();
  sub_100317520(v8, v9, v10, v11);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v3);
  v12 = sub_100015A08();
  v13(v12);
  v14 = sub_100007C7C();
  v15(v14);
  sub_100005EDC();
}

void sub_10031616C()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Captions server did die", v2, 2u);
  }
}

void sub_100316348(uint64_t a1)
{
  sub_100316450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100316450(uint64_t a1)
{
  if (!qword_1006A9D10)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A9D10);
    }
  }
}

void sub_1003164DC()
{
  sub_100005EF4();
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v32 = v4;
  __chkstk_darwin(v5);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v30 = v7;
  v31 = v6;
  __chkstk_darwin(v6);
  sub_10000E4F4();
  v8 = type metadata accessor for Utterance();
  sub_100007FEC();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v29[1] = *&v0[OBJC_IVAR___CSDAnsweringMachineController_queue];
  (*(v10 + 16))(v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  (*(v10 + 32))(v15 + v14, v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v34[4] = sub_10031693C;
  v34[5] = v15;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v34[2] = v16;
  v34[3] = &unk_100626478;
  v17 = _Block_copy(v34);
  v18 = v0;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000841C();
  sub_10031699C(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  v21 = sub_10001E3B8();
  sub_10026D814(v21, v22);
  sub_100008434();
  sub_100317520(v23, v24, v25, v26);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v27 = sub_100022DFC();
  v28(v27);
  (*(v30 + 8))(v1, v31);

  sub_100005EDC();
}

void sub_1003167A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  swift_beginAccess();

  sub_100461A8C();
  v4 = *(*(v3 + 80) + 16);
  sub_100461B90(v4);
  v5 = *(v3 + 80);
  *(v5 + 16) = v4 + 1;
  v6 = type metadata accessor for Utterance();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(v3 + 80) = v5;
  swift_endAccess();

  sub_10030BA24();
}

id sub_10031689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithSummary:v6 predictedName:v7];

  return v8;
}

void sub_10031693C()
{
  v1 = type metadata accessor for Utterance();
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1003167A4(v3, v4);
}

uint64_t sub_10031699C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100316A04(void *a1)
{
  v1 = [a1 tokens];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &unk_1006A52F0, AVCCaptionsToken_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100316A74(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100316B64()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100316C20;
  v4 = sub_10000C408();

  return sub_10030EF30(v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_100316C20()
{
  v1 = *v0;
  sub_100007BC8();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

void sub_100316D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setString:v4];
}

uint64_t sub_100316DB4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10030F7CC(v3, v4, v0 + v2, v5);
}

uint64_t sub_100316E44()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1003174D4;
  v3 = sub_10000C408();

  return sub_100311114(v3, v4, v5, v6, v7, v8, v9);
}

char *sub_100316F50(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7)
{
  ObjectType = swift_getObjectType();
  v15 = type metadata accessor for GreetingsDataSource(0);
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_messageStoreController] = 0;
  v49[3] = v15;
  v49[4] = &off_1006305D8;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_lockStateObserver] = 0;
  v49[0] = a3;
  v16 = OBJC_IVAR___CSDAnsweringMachineController_audioFileManager;
  if (qword_1006A07C0 != -1)
  {
    swift_once();
  }

  *&a7[v16] = qword_1006BA1D8;
  v17 = OBJC_IVAR___CSDAnsweringMachineController_serverBag;
  v18 = objc_allocWithZone(type metadata accessor for SharedConversationServerBag());

  *&a7[v17] = [v18 init];
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine] = 0;
  v19 = &a7[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineCreationBlock];
  *v19 = sub_1003085D8;
  *(v19 + 1) = 0;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_callCenterObserver] = a1;
  v42 = a1;
  v20 = [a2 queue];
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_queue] = v20;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA5F8);
  v22 = a2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "callStateController=%@", v25, 0xCu);
    sub_100009A04(v26, &unk_1006A2630, &qword_10057CB40);
  }

  *&a7[OBJC_IVAR___CSDAnsweringMachineController_callStateController] = v22;
  sub_100009AB0(v49, &a7[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource]);
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState] = a4;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_callHistoryManager] = a5;
  *&a7[OBJC_IVAR___CSDAnsweringMachineController_featureFlags] = a6;
  v48.receiver = a7;
  v48.super_class = ObjectType;
  v28 = v22;

  v29 = a5;
  v30 = a6;
  v44 = ObjectType;
  v45 = &off_100626418;
  aBlock[0] = objc_msgSendSuper2(&v48, "init");
  v31 = aBlock[0] + OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource;
  swift_beginAccess();
  v32 = *(v31 + 3);
  v33 = *(v31 + 4);
  sub_10001BDB8(v31, v32);
  v34 = *(v33 + 32);
  v35 = aBlock[0];
  v34(aBlock, v32, v33);
  swift_endAccess();
  v36 = OBJC_IVAR___CSDAnsweringMachineController_callCenterObserver;
  result = *&v35[OBJC_IVAR___CSDAnsweringMachineController_callCenterObserver];
  if (result)
  {
    result = [result setTriggers:67108901];
    v38 = *&v35[v36];
    if (v38)
    {
      swift_unknownObjectRetain();

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100009AB0(v49, v47);
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      sub_10002F0C8(v47, v40 + 24);
      v45 = sub_10002F128;
      v46 = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100028100;
      v44 = &unk_1006269C8;
      v41 = _Block_copy(aBlock);

      [v38 setCallChanged:v41];
      _Block_release(v41);

      swift_unknownObjectRelease();
      sub_100009B7C(v49);
      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100317424(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_100317520(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10001000C(a1, v4, v5, a4);
}

uint64_t sub_10031755C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = *(v1 + a1);
}

uint64_t sub_10031757C(uint64_t a1)
{

  return OS_dispatch_queue.asyncAfter(deadline:execute:)();
}

uint64_t sub_10031763C()
{
  v1 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  sub_1000115CC(v1, *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged + 8));
  return v1;
}

uint64_t sub_100317724(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  v4 = *(v2 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  v5 = *(v2 + OBJC_IVAR___CSDDirtyCallManager_callChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

id sub_100317744(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___CSDDirtyCallManager_callChanged];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___CSDDirtyCallManager_dirtyCallsArray] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___CSDDirtyCallManager_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_1003178A0(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v43 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v38 = _swiftEmptyArrayStorage;
    v40 = sub_10001E578();
    v41 = v3;
    v42 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v40;
        v8 = v42;
        v37 = v41;
        v9 = v1;
        sub_1002E944C(v40, v41, v42, v1);
        v11 = v10;
        v12 = [v11 handle];
        v13 = [v12 value];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v38;
        v43 = v38;
        v19 = v38[2];
        v18 = v38[3];
        if (v19 >= v18 >> 1)
        {
          sub_10039A2E0(v18 > 1, v19 + 1, 1);
          v17 = v43;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v38 = v17;
        if (v36)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v25 = v35;
          sub_10026D814(&unk_1006A3C40, &unk_100580340);
          v26 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v26(v39, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v21 = 1 << *(v9 + 32);
          if (v7 >= v21)
          {
            goto LABEL_32;
          }

          v22 = v7 >> 6;
          v23 = *(v34 + 8 * (v7 >> 6));
          if (((v23 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v37)
          {
            goto LABEL_34;
          }

          v24 = v23 & (-2 << (v7 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v25 = v35;
          }

          else
          {
            v27 = v22 << 6;
            v28 = v22 + 1;
            v29 = (v33 + 8 * v22);
            v25 = v35;
            while (v28 < (v21 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_100010000(v7, v37, 0);
                v21 = __clz(__rbit64(v30)) + v27;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v37, 0);
          }

LABEL_27:
          v32 = *(v9 + 36);
          v40 = v21;
          v41 = v32;
          v42 = 0;
        }

        if (v5 == v25)
        {
          sub_100010000(v40, v41, v42);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_100317C84(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100317D6C(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100317DB4()
{
  type metadata accessor for MemoryPendingMembershipTrackerStorage();
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  type metadata accessor for SharedPendingMembershipBag();
  v1 = swift_allocObject();
  sub_10031E494(v0, v1);
  sub_100005F0C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v0;
}

void sub_100317E54()
{
  sub_100005EF4();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA80;
  *(inited + 32) = v6;
  if (sub_10000B6F4(inited))
  {
    v15 = v6;
    sub_10039B3B8(inited);
  }

  else
  {
    swift_setDeallocating();
    v16 = v6;
    sub_1002F5CC8();
  }

  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000844C();
  sub_1002F93D0(v17, &qword_1006A3DE0, TUConversationMember_ptr, v18);
  sub_10000790C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v4 removePendingMembers:isa triggeredLocally:v2 & 1];

  sub_100006DDC((v22 + OBJC_IVAR___CSDPendingMembershipTracker_storage), *(v22 + OBJC_IVAR___CSDPendingMembershipTracker_storage + 24));
  v20 = [v4 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [v6 handle];
  sub_10031D478(v13, v21);

  (*(v9 + 8))(v13, v7);
  sub_100005EDC();
}

uint64_t sub_1003180F4(void *a1)
{
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
  sub_100006DDC(v9, v10);
  v11 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10031D7A0(v8);
  return (*(v4 + 8))(v8, v2);
}

void sub_100318250()
{
  sub_100005EF4();
  v0 = type metadata accessor for PendingMembershipInfo(0);
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  v7 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
  sub_100009B14(v7, v8);
  v9 = sub_10031CC20();
  v10 = v9[2];
  if (v10)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_10031DF4C(v11, v6);
      *(v6 + *(v0 + 24));
      sub_10031E2FC(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  sub_1002F1D1C(_swiftEmptyArrayStorage);
  sub_100005EDC();
}

void sub_100318524()
{
  sub_100005EF4();
  v0 = type metadata accessor for PendingMembershipInfo(0);
  sub_100007FEC();
  v42 = v1;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v5 = v4 - v3;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007BAC();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_10000C1C4();
  v45 = v14;
  v15 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
  sub_100009B14(v15, v16);
  sub_10031CCAC();
  v18 = v17;
  sub_10026D814(&qword_1006A5678, &qword_100580358);
  static _DictionaryStorage.copy(original:)();
  v19 = 0;
  v38 = v18 + 64;
  sub_100007990();
  v22 = v21 & v20;
  v37 = (v23 + 63) >> 6;
  v46 = v8;
  v43 = v24 + 8;
  v44 = v24;
  v40 = v12;
  v41 = v6;
  v39 = v18;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v47 = (v22 - 1) & v22;
LABEL_8:
      v29 = v25 | (v19 << 6);
      v49 = *(v46 + 72) * v29;
      (*(v46 + 16))(v45, *(v18 + 48) + v49, v6);
      v30 = *(*(v18 + 56) + 8 * v29);
      v48 = *(v46 + 32);
      v48(v12, v45, v6);
      v31 = *(v30 + 16);
      if (v31)
      {

        specialized ContiguousArray.reserveCapacity(_:)();
        v32 = v30 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v33 = *(v42 + 72);
        do
        {
          sub_10031DF4C(v32, v5);
          *(v5 + *(v0 + 24));
          sub_10031E2FC(v5);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v32 += v33;
          --v31;
        }

        while (v31);

        v12 = v40;
        v6 = v41;
        v18 = v39;
      }

      *(v43 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v48(v44[6] + v49, v12, v6);
      *(v44[7] + 8 * v29) = _swiftEmptyArrayStorage;
      v34 = v44[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v44[2] = v36;
      v22 = v47;
      if (!v47)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v37)
      {

        sub_100005EDC();
        return;
      }

      ++v26;
      if (*(v38 + 8 * v19))
      {
        sub_100007C8C();
        v47 = v28 & v27;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100318950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v23;
  a20 = v24;
  v240 = v20;
  v226 = v25;
  v228 = v26;
  v242 = v27;
  v233 = v28;
  v232 = v29;
  v234 = v30;
  v236 = type metadata accessor for PendingMembershipInfo(0);
  sub_100008070();
  __chkstk_darwin(v31);
  sub_100007BAC();
  v235 = v32 - v33;
  __chkstk_darwin(v34);
  sub_10000C1C4();
  v239 = v35;
  v36 = type metadata accessor for Date();
  sub_100007FEC();
  isUniquelyReferenced_nonNull_native = v37;
  __chkstk_darwin(v39);
  sub_100007FDC();
  v248 = v41 - v40;
  v237 = 0;
  v42 = type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v43);
  sub_100007BAC();
  v45 = __chkstk_darwin(v44);
  v47 = &v220 - v46;
  v48 = __chkstk_darwin(v45);
  v52 = &v220 - v51;
  if (qword_1006A0A88 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    if (byte_1006A53C0)
    {
      *&v252 = sub_100004778(v48);
      v53 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Attempting to track pending member, disabled -- ignoring", 56, 2, &_mh_execute_header, v252, v53, _swiftEmptyArrayStorage, v220);
      goto LABEL_4;
    }

    v223 = v50;
    v241 = v52;
    v224 = v49;
    v231 = v42;
    if (!v242)
    {
      v82 = v228;
      v83 = sub_100369594(v228);
      if (v83)
      {
        v84 = v83;
        v227 = isUniquelyReferenced_nonNull_native;
        v85 = [v82 groupUUID];
        if (v85)
        {
          v86 = v85;
          v225 = v36;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v87 = v224;
          v88 = v84;
          v89 = *(v224 + 16);
          v90 = v241;
          v91 = v231;
          v92 = v89(v241, v47, v231);
          v93 = sub_100004778(v92);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_10057D6A0;
          v89(v223, v90, v91);
          v95 = String.init<A>(reflecting:)();
          v97 = v96;
          *(v94 + 56) = &type metadata for String;
          v98 = sub_100009D88();
          *(v94 + 64) = v98;
          *(v94 + 32) = v95;
          *(v94 + 40) = v97;
          v99 = v88;
          v261[0] = v88;

          sub_10026D814(&qword_1006A2BD8, &unk_10057D970);
          sub_10000D648();
          v100 = String.init<A>(reflecting:)();
          *(v94 + 96) = &type metadata for String;
          *(v94 + 104) = v98;
          *(v94 + 72) = v100;
          *(v94 + 80) = v101;
          v102 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Setting groupUUID: %@ handlesToSendTo: %@", 41, 2, &_mh_execute_header, v93, v102, v94);

          (*(v87 + 8))(v47, v91);
          goto LABEL_81;
        }
      }

      *&v252 = sub_100004778(v83);
      v196 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Neither a conversation nor a link with handles was specified -- ignoring", 72, 2, &_mh_execute_header, v252, v196, _swiftEmptyArrayStorage, v220);
LABEL_4:
      sub_100005EDC();

      return;
    }

    v227 = isUniquelyReferenced_nonNull_native;
    v225 = v36;
    v222 = v242;
    v56 = [v222 activeRemoteParticipants];
    isUniquelyReferenced_nonNull_native = off_100616608;
    sub_100006AF0(0, &qword_1006A4530, off_100616608);
    sub_10000844C();
    sub_1002F93D0(v57, &qword_1006A4530, off_100616608, v58);
    sub_10000790C();
    v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = sub_10001E550();
    if (v59)
    {
      break;
    }

    v81 = _swiftEmptyArrayStorage;
LABEL_39:
    v238 = sub_1002F1FE8(v81);
    v47 = [v222 memberHandlesEligibleForLinkApproval];
    v103 = sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000844C();
    sub_1002F93D0(v104, &qword_1006A2640, TUHandle_ptr, v105);
    sub_10031E894();
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v255 = &_swiftEmptySetSingleton;
    v42 = &type metadata for String;
    v220 = v21;
    v230 = TUHandle_ptr;
    if ((v21 & 0xC000000000000001) != 0)
    {
      if (v21 < 0)
      {
        v47 = v21;
      }

      else
      {
        v47 = (v21 & 0xFFFFFFFFFFFFFF8);
      }

      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v21 = v256;
      v106 = v257;
      v107 = v258;
      v36 = v259;
      isUniquelyReferenced_nonNull_native = v260;
    }

    else
    {
      v108 = -1 << *(v21 + 32);
      v106 = v21 + 56;
      v107 = ~v108;
      v109 = -v108;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      else
      {
        v110 = -1;
      }

      isUniquelyReferenced_nonNull_native = v110 & *(v21 + 56);

      v36 = 0;
    }

    v111 = (v107 + 64) >> 6;
    v247 = v238 & 0xC000000000000001;
    v112 = v238 & 0xFFFFFFFFFFFFFF8;
    if (v238 < 0)
    {
      v112 = v238;
    }

    v229 = v112;
    v221 = v238 + 56;
    v251 = v103;
    v244 = v21;
    v243 = (v107 + 64) >> 6;
    v246 = v106;
    v245 = v107;
    if (v21 < 0)
    {
      goto LABEL_57;
    }

LABEL_51:
    v113 = v36;
    v52 = isUniquelyReferenced_nonNull_native;
    v22 = v36;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_55:
      sub_100007C8C();
      v250 = v115 & v114;
      v117 = *(*(v21 + 48) + ((v22 << 9) | (8 * v116)));
      if (!v117)
      {
LABEL_80:
        v132 = sub_100022DDC(v21);
        v133 = sub_100004778(v132);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        sub_10000E6DC();
        v134 = swift_allocObject();
        v252 = xmmword_10057D690;
        *(v134 + 16) = xmmword_10057D690;
        v135 = v255;
        v254 = v255;

        sub_10026D814(&qword_1006A2BD8, &unk_10057D970);
        v136 = String.init<A>(reflecting:)();
        v138 = v137;
        *(v134 + 56) = &type metadata for String;
        v139 = sub_100009D88();
        *(v134 + 64) = v139;
        *(v134 + 32) = v136;
        *(v134 + 40) = v138;
        static os_log_type_t.default.getter();
        sub_10000FA1C();
        os_log(_:dso:log:type:_:)(v140);

        v142 = sub_100004778(v141);
        sub_10000E6DC();
        v143 = swift_allocObject();
        *(v143 + 16) = v252;
        v144 = sub_10000D33C(v262);
        *(v143 + 56) = &type metadata for String;
        *(v143 + 64) = v139;
        *(v143 + 32) = v144;
        *(v143 + 40) = v145;
        static os_log_type_t.default.getter();
        sub_10000FA1C();
        os_log(_:dso:log:type:_:)(v146);

        v148 = sub_100004778(v147);
        sub_10000E6DC();
        v149 = swift_allocObject();
        *(v149 + 16) = v252;
        v150 = sub_10000D33C(&v252);
        *(v149 + 56) = &type metadata for String;
        *(v149 + 64) = v139;
        v99 = v135;
        *(v149 + 32) = v150;
        *(v149 + 40) = v151;
        static os_log_type_t.default.getter();
        sub_10000FA1C();
        os_log(_:dso:log:type:_:)(v152);

        v153 = v222;
        v154 = [v222 groupUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_81:

        *&v252 = v99;
        v155 = v248;
        Date.init()();
        v156 = v239;
        UUID.init()();
        v157 = v236;
        (*(v227 + 16))(v156 + *(v236 + 28), v155, v225);
        v158 = (v156 + *(v157 + 20));
        v159 = v232;
        *v158 = v99;
        v158[1] = v159;
        v160 = v233;
        v158[2] = v233;
        v161 = v234;
        *(v156 + *(v157 + 24)) = v234;
        sub_100290AC4(v159, v160);
        v162 = v161;
        v163 = sub_100004778(v162);
        v251 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v164 = swift_allocObject();
        *(v164 + 16) = xmmword_10057E830;
        sub_10031DF4C(v156, v235);
        v165 = String.init<A>(reflecting:)();
        v167 = v166;
        *(v164 + 56) = &type metadata for String;
        v168 = sub_100009D88();
        *(v164 + 64) = v168;
        *(v164 + 32) = v165;
        *(v164 + 40) = v167;
        v169 = v224;
        (*(v224 + 16))(v223, v241, v231);
        v170 = String.init<A>(reflecting:)();
        *(v164 + 96) = &type metadata for String;
        *(v164 + 104) = v168;
        *(v164 + 72) = v170;
        *(v164 + 80) = v171;
        v255 = [v162 handle];
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        v172 = String.init<A>(reflecting:)();
        *(v164 + 136) = &type metadata for String;
        *(v164 + 144) = v168;
        *(v164 + 112) = v172;
        *(v164 + 120) = v173;
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)(v174);

        v175 = sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_storage);
        sub_100006DDC(v175, v175[3]);
        v176 = [v162 handle];
        v177 = sub_10001E3F8();
        v178 = v237;
        sub_10031D224(v177, v179, v176);
        if (v178)
        {

          v181 = sub_100004778(v180);
          sub_10000E6DC();
          v182 = swift_allocObject();
          *(v182 + 16) = xmmword_10057D690;
          v255 = v178;
          swift_errorRetain();
          sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
          v183 = String.init<A>(reflecting:)();
          *(v182 + 56) = &type metadata for String;
          *(v182 + 64) = v168;
          *(v182 + 32) = v183;
          *(v182 + 40) = v184;
          static os_log_type_t.default.getter();
          sub_10000A7F4();
          os_log(_:dso:log:type:_:)(v185);

          sub_10031E2FC(v156);
          (*(v227 + 8))(v248, v225);
          (*(v169 + 8))(v241, v231);
LABEL_99:
          sub_100005EDC();
          return;
        }

        v22 = v227;

        isa = Date._bridgeToObjectiveC()().super.isa;
        [v162 setDateReceivedLetMeIn:isa];

        v187 = Date._bridgeToObjectiveC()().super.isa;
        [v162 setDateInitiatedLetMeIn:v187];

        v21 = v162;
        if (v242)
        {
          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057CA80;
          *(inited + 32) = v162;
          v189 = sub_10000B6F4(inited);
          v36 = v239;
          if (v189)
          {
            v190 = v242;
            v191 = v242;
            v192 = v162;
            sub_10039B3B8(inited);
          }

          else
          {
            swift_setDeallocating();
            v190 = v242;
            v197 = v242;
            v198 = v162;
            sub_1002F5CC8();
          }

          sub_100015A3C();
          sub_100006AF0(v199, v200, v201);
          sub_10000844C();
          sub_100015A3C();
          sub_1002F93D0(v202, v203, v204, v205);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100010160();
          [v190 addPendingMembers:&qword_1006A3DE0 triggeredLocally:1];
        }

        else
        {
          sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_delegate);
          Strong = swift_unknownObjectWeakLoadStrong();
          v36 = v239;
          if (Strong)
          {
            v194 = Strong;
            v195 = UUID._bridgeToObjectiveC()().super.isa;
            [v194 pendingMembershipTracker:v240 didTrack:v162 forGroupUUID:v195];

            swift_unknownObjectRelease();
          }
        }

        if (qword_1006A0A90 == -1)
        {
LABEL_93:
          if (byte_1006A53C1)
          {

            v207 = sub_100004778(v206);
            static os_log_type_t.default.getter();
            sub_10000A7F4();
            os_log(_:dso:log:type:_:)(v208);
          }

          else
          {
            v209 = swift_unknownObjectWeakLoadStrong();
            if (v209)
            {
              v210 = v209;
              sub_10000844C();
              sub_1002F93D0(v211, v212, v213, v214);
              v215 = Set._bridgeToObjectiveC()().super.isa;

              v216 = UUID._bridgeToObjectiveC()().super.isa;
              [v210 sendDelegationMessageTo:v215 conversation:v242 link:v228 transactionUUID:v216 forMember:v21];
              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          sub_10031E2FC(v36);
          (*(v22 + 8))(v248, v225);
          (*(v224 + 8))(v241, v231);
          goto LABEL_99;
        }

LABEL_108:
        sub_1000151A4(&qword_1006A0A90);
        goto LABEL_93;
      }

LABEL_59:
      *&v252 = v117;
      if (v247)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v119 = v261[0];
        v120 = v261[1];
        v121 = v262[0];
        v122 = v262[1];
        v36 = v262[2];
      }

      else
      {
        v119 = v238;
        v123 = -1 << *(v238 + 32);
        v121 = ~v123;
        v124 = -v123;
        if (v124 < 64)
        {
          v125 = ~(-1 << v124);
        }

        else
        {
          v125 = -1;
        }

        v36 = v125 & *(v238 + 56);

        v122 = 0;
        v120 = v221;
      }

      v249 = v121;
      v42 = (v121 + 64) >> 6;
      while (1)
      {
        v21 = v36;
        isUniquelyReferenced_nonNull_native = v122;
        if (v119 < 0)
        {
          v47 = (v119 & 0x7FFFFFFFFFFFFFFFLL);
          v130 = __CocoaSet.Iterator.next()();
          if (!v130)
          {
            goto LABEL_77;
          }

          v253 = v130;
          swift_dynamicCast();
          v47 = v254;
          if (!v254)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v126 = v122;
          v52 = v36;
          if (!v36)
          {
            while (1)
            {
              v122 = v126 + 1;
              if (__OFADD__(v126, 1))
              {
                break;
              }

              if (v122 >= v42)
              {
                goto LABEL_77;
              }

              v52 = *(v120 + 8 * v122);
              ++v126;
              if (v52)
              {
                goto LABEL_71;
              }
            }

            __break(1u);
            goto LABEL_101;
          }

LABEL_71:
          sub_100007C8C();
          v36 = v128 & v127;
          v47 = *(*(v119 + 48) + ((v122 << 9) | (8 * v129)));
          if (!v47)
          {
LABEL_77:
            sub_100022CD8();

            v36 = v22;
            isUniquelyReferenced_nonNull_native = v250;
            v42 = &type metadata for String;
LABEL_78:
            v106 = v246;
            v21 = v244;
            v111 = v243;
            if ((v244 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

LABEL_57:
            v47 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
            v118 = __CocoaSet.Iterator.next()();
            if (!v118)
            {
              goto LABEL_80;
            }

            v253 = v118;
            swift_dynamicCast();
            v117 = v254;
            v22 = v36;
            v250 = isUniquelyReferenced_nonNull_native;
            if (!v254)
            {
              goto LABEL_80;
            }

            goto LABEL_59;
          }
        }

        v131 = [v47 isEquivalentToHandle:{v252, v220}];

        if (v131)
        {
          sub_100022CD8();
          v47 = &v255;
          sub_100396370(&v254, v252);

          v36 = v22;
          isUniquelyReferenced_nonNull_native = v250;
          v42 = &type metadata for String;
          goto LABEL_78;
        }
      }
    }

    while (1)
    {
      v22 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        break;
      }

      if (v22 >= v111)
      {
        goto LABEL_80;
      }

      v52 = *(v106 + 8 * v22);
      ++v113;
      if (v52)
      {
        goto LABEL_55;
      }
    }

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
    v217 = v50;
    v218 = v52;
    v219 = v49;
    v48 = swift_once();
    v50 = v217;
    v52 = v218;
    v49 = v219;
  }

  v36 = v59;
  v255 = _swiftEmptyArrayStorage;
  v47 = &v255;
  specialized ContiguousArray.reserveCapacity(_:)();
  v256 = sub_10001E578();
  v257 = v60;
  LOBYTE(v258) = v61 & 1;
  if (v36 < 0)
  {
    __break(1u);
    goto LABEL_108;
  }

  v62 = 0;
  v63 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 < 0)
  {
    v63 = v42;
  }

  *&v252 = v63;
  v251 = v42 + 56;
  v52 = &a17;
  v250 = v42 + 64;
  while (2)
  {
    if (__OFADD__(v62++, 1))
    {
      goto LABEL_102;
    }

    isUniquelyReferenced_nonNull_native = v256;
    v21 = v257;
    v22 = v258;
    v65 = sub_10000C204();
    sub_1002E966C(v65, v66, v22, v42);
    v68 = v67;
    [v67 handle];

    v47 = &v255;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if ((v42 & 0xC000000000000001) == 0)
    {
      if (v22)
      {
        goto LABEL_110;
      }

      if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      v52 = 1;
      v47 = (1 << *(v42 + 32));
      if (isUniquelyReferenced_nonNull_native >= v47)
      {
        goto LABEL_103;
      }

      v69 = isUniquelyReferenced_nonNull_native >> 6;
      v70 = *(v251 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
      v52 = v70 >> isUniquelyReferenced_nonNull_native;
      if (((v70 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
      {
        goto LABEL_104;
      }

      v52 = *(v42 + 36);
      if (v52 != v21)
      {
        goto LABEL_105;
      }

      v71 = v70 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
      if (v71)
      {
        v52 = isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
        v47 = (__clz(__rbit64(v71)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v72 = v69 << 6;
        v73 = v69 + 1;
        v74 = (v250 + 8 * v69);
        while (v73 < (v47 + 63) >> 6)
        {
          v75 = *v74++;
          v22 = v75;
          v72 += 64;
          ++v73;
          if (v75)
          {
            v76 = sub_10000C204();
            sub_100010000(v76, v77, 0);
            v47 = (__clz(__rbit64(v22)) + v72);
            goto LABEL_32;
          }
        }

        v78 = sub_10000C204();
        sub_100010000(v78, v79, 0);
      }

LABEL_32:
      v80 = *(v42 + 36);
      v256 = v47;
      v257 = v80;
      LOBYTE(v258) = 0;
LABEL_33:
      if (v62 == v36)
      {

        sub_100010000(v256, v257, v258);
        v81 = v255;
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  if (v22)
  {
    sub_10000C204();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    }

    else
    {
      isUniquelyReferenced_nonNull_native = 1;
    }

    sub_10026D814(&qword_1006A5670, &qword_100580350);
    sub_10000D648();
    v47 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    (v47)(v261, 0);
    goto LABEL_33;
  }

  __break(1u);
LABEL_110:
  __break(1u);
}

void sub_100319F0C()
{
  sub_100005EF4();
  v79 = v1;
  v80 = v0;
  v3 = v2;
  v5 = v4;
  v78 = v6;
  v8 = v7;
  v9 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v9);
  sub_100006688();
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for PendingMembershipInfo(0);
  sub_100008070();
  __chkstk_darwin(v14);
  sub_100007BAC();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  type metadata accessor for Date();
  sub_100007FEC();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100007FDC();
  v27 = v26 - v25;
  if (qword_1006A0A88 != -1)
  {
    v72 = v24;
    sub_10000A7E0();
    swift_once();
    v24 = v72;
  }

  if ((byte_1006A53C0 & 1) == 0)
  {
    if (qword_1006A0A90 != -1)
    {
      v73 = v24;
      sub_1000151A4(&qword_1006A0A90);
      v24 = v73;
    }

    if ((byte_1006A53C1 & 1) == 0)
    {
      v31 = v24;
      Date.init()();
      type metadata accessor for UUID();
      sub_100008070();
      (*(v32 + 16))(v20, v3);
      v33 = v13[7];
      v76 = v31;
      v77 = v22;
      v34 = *(v22 + 16);
      v75 = v27;
      v34(&v20[v33], v27, v31);
      v35 = &v20[v13[5]];
      *v35 = v5;
      *(v35 + 8) = xmmword_1005800E0;
      *&v20[v13[6]] = v8;
      v36 = &v80[OBJC_IVAR___CSDPendingMembershipTracker_storage];
      sub_100009B14(&v80[OBJC_IVAR___CSDPendingMembershipTracker_storage], *&v80[OBJC_IVAR___CSDPendingMembershipTracker_storage + 24]);
      v37 = v5;
      v38 = v8;
      v39 = [v38 handle];
      v40 = v79;
      sub_10031CB04(v12);

      if (sub_100015468(v12, 1, v13) == 1)
      {
        sub_100009A04(v12, &qword_1006A5640, &qword_100580310);
      }

      else
      {
        sub_1002F6F18(v12, v17);
        v41 = *(v17 + v13[5] + 16);
        sub_100015A3C();
        sub_10031E020(v42, v43, v44);
        sub_10031E2FC(v17);
        sub_100015A3C();
        sub_10031E2A8(v45, v46, v47);
        if ((v41 & 0x2000000000000000) == 0)
        {
          sub_10031E2FC(v20);
          (*(v77 + 8))(v75, v76);
LABEL_15:
          sub_100005EDC();
          return;
        }
      }

      sub_100006DDC(v36, *(v36 + 3));
      v48 = v38;
      v49 = [v38 handle];
      sub_10031D224(v20, v40, v49);
      v50 = v75;

      isa = Date._bridgeToObjectiveC()().super.isa;
      [v48 setDateReceivedLetMeIn:isa];

      v52 = v78;
      if (v78)
      {
        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057CA80;
        *(inited + 32) = v48;
        v54 = sub_10000B6F4(inited);
        v55 = v77;
        if (v54)
        {
          v56 = v48;
          v57 = v52;
          sub_10039B3B8(inited);
        }

        else
        {
          swift_setDeallocating();
          v63 = v48;
          v64 = v52;
          sub_1002F5CC8();
        }

        sub_100015A3C();
        sub_100006AF0(v65, v66, v67);
        sub_10000844C();
        sub_100015A3C();
        sub_1002F93D0(v68, v69, v70, v71);
        sub_10000790C();
        Set._bridgeToObjectiveC()();
        sub_100010160();
        [v52 addPendingMembers:&qword_1006A3DE0 triggeredLocally:0];

        sub_10031E2FC(v20);
        (*(v55 + 8))(v50, v76);
      }

      else
      {
        v58 = v80;
        Strong = swift_unknownObjectWeakLoadStrong();
        v60 = v77;
        if (Strong)
        {
          v61 = Strong;
          v62 = UUID._bridgeToObjectiveC()().super.isa;
          [v61 pendingMembershipTracker:v58 didTrack:v48 forGroupUUID:v62];
          swift_unknownObjectRelease();
        }

        sub_10031E2FC(v20);
        (*(v60 + 8))(v50, v76);
      }

      goto LABEL_15;
    }
  }

  v80 = sub_100004778(v24);
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Attempting to track delegated pending member, disabled -- ignoring", 66, 2, &_mh_execute_header, v80, v28, _swiftEmptyArrayStorage);
  sub_100005EDC();
}

void sub_10031A75C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for UUID();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v7;
  v18 = v5;
  v19 = v3;
  v20 = v9;
  v1(v17, v18, v19, v16);

  (*(v12 + 8))(v16, v10);
  sub_100005EDC();
}

void sub_10031A98C()
{
  sub_100005EF4();
  v223 = v0;
  v224 = v2;
  v221 = v3;
  v225 = v4;
  v6 = v5;
  v222 = v7;
  v8 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v8);
  sub_100006688();
  __chkstk_darwin(v9);
  v11 = v207 - v10;
  v12 = type metadata accessor for PendingMembershipInfo(0);
  sub_100008070();
  __chkstk_darwin(v13);
  sub_100007BAC();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_10000C1C4();
  v19 = v18;
  v20 = type metadata accessor for UUID();
  sub_100007FEC();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100007BAC();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_100005FEC();
  v29 = __chkstk_darwin(v28);
  v31 = v207 - v30;
  if (qword_1006A0A88 != -1)
  {
    sub_10000A7E0();
    v29 = swift_once();
  }

  if ((byte_1006A53C0 & 1) == 0)
  {
    if (qword_1006A0A90 != -1)
    {
      v29 = sub_1000151A4(&qword_1006A0A90);
    }

    if ((byte_1006A53C1 & 1) == 0)
    {
      v219 = v20;
      v220 = v22;
      v35 = [v225 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = *(v223 + OBJC_IVAR___CSDPendingMembershipTracker_storage + 24);
      v217 = (v223 + OBJC_IVAR___CSDPendingMembershipTracker_storage);
      sub_100006DDC((v223 + OBJC_IVAR___CSDPendingMembershipTracker_storage), v36);
      v37 = v31;
      v38 = [v6 handle];
      sub_10031CB04(v11);

      if (sub_100015468(v11, 1, v12) == 1)
      {
        v39 = sub_100009A04(v11, &qword_1006A5640, &qword_100580310);
        v40 = sub_100004778(v39);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10057D6A0;
        v43 = v219;
        v42 = v220;
        v44 = sub_10001E3F8();
        v45(v44);
        v46 = String.init<A>(reflecting:)();
        v48 = v47;
        *(v41 + 56) = &type metadata for String;
        v49 = sub_100009D88();
        *(v41 + 64) = v49;
        *(v41 + 32) = v46;
        *(v41 + 40) = v48;
        v227[0] = [v6 handle];
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        v50 = String.init<A>(reflecting:)();
        *(v41 + 96) = &type metadata for String;
        *(v41 + 104) = v49;
        *(v41 + 72) = v50;
        *(v41 + 80) = v51;
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)(v52);

        (*(v42 + 8))(v37, v43);
LABEL_30:
        sub_100005EDC();
        return;
      }

      v214 = v37;
      v218 = v19;
      v53 = sub_1002F6F18(v11, v19);
      v216 = sub_100004778(v53);
      v211 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1005800F0;
      sub_10031DF4C(v19, v16);
      v55 = String.init<A>(reflecting:)();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      v58 = sub_100009D88();
      *(v54 + 64) = v58;
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      LOBYTE(v227[0]) = v222 & 1;
      v59 = String.init<A>(reflecting:)();
      *(v54 + 96) = &type metadata for String;
      *(v54 + 104) = v58;
      *(v54 + 72) = v59;
      *(v54 + 80) = v60;
      v227[0] = v6;
      v61 = sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      v208 = v6;
      v210 = v61;
      v62 = String.init<A>(reflecting:)();
      *(v54 + 136) = &type metadata for String;
      *(v54 + 144) = v58;
      *(v54 + 112) = v62;
      *(v54 + 120) = v63;
      v64 = v221;
      v227[0] = v221;
      v65 = sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v215 = v64;
      sub_1000052F4();
      *(v66 - 256) = v65;
      v67 = String.init<A>(reflecting:)();
      *(v54 + 176) = &type metadata for String;
      *(v54 + 184) = v58;
      *(v54 + 152) = v67;
      *(v54 + 160) = v68;
      v69 = v219;
      v70 = v220;
      v71 = v220 + 16;
      v72 = *(v220 + 16);
      v72(v1, v224, v219);
      v73 = String.init<A>(reflecting:)();
      *(v54 + 216) = &type metadata for String;
      *(v54 + 224) = v58;
      *(v54 + 192) = v73;
      *(v54 + 200) = v74;
      v75 = [v225 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v213 = v71;
      v212 = v72;
      v72(v26, v1, v69);
      v76 = v70;
      v77 = v58;
      v78 = String.init<A>(reflecting:)();
      v80 = v79;
      v82 = *(v76 + 8);
      v81 = v76 + 8;
      v221 = v82;
      v82(v1, v69);
      *(v54 + 256) = &type metadata for String;
      *(v54 + 264) = v58;
      *(v54 + 232) = v78;
      *(v54 + 240) = v80;
      v83 = v218;
      v84 = static os_log_type_t.default.getter();
      v85 = v216;
      os_log(_:dso:log:type:_:)("Processing remote user action for pending member {info: %@, action: %@, member: %@, from: %@, transactionUUID: %@, conversation.groupUUID: %@}", 142, 2, &_mh_execute_header, v216, v84, v54);

      v86 = v83 + *(v12 + 20);
      v87 = *v86;
      v88 = *(v86 + 8);
      v89 = *(v86 + 16);
      if ((v89 & 0x2000000000000000) != 0)
      {
        v216 = *(v86 + 8);
        sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
        v209 = v87;
        v125 = v87;
        v126 = v215;
        v127 = static NSObject.== infix(_:_:)();
        if (v127 & 1) != 0 && (v127 = static UUID.== infix(_:_:)(), (v127))
        {
          v128 = v83;
          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057CA80;
          v130 = v208;
          *(inited + 32) = v208;
          if (sub_10000B6F4(inited))
          {
            v131 = v130;
            sub_10039B3B8(inited);
          }

          else
          {
            swift_setDeallocating();
            v176 = v130;
            sub_1002F5CC8();
          }

          v177 = v214;
          v178 = v216;
          v179 = v225;
          sub_10000844C();
          sub_1002F93D0(v180, v181, v182, v183);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100010160();
          [v179 removePendingMembers:v130 triggeredLocally:1];

          v184 = [v179 delegate];
          if (v184)
          {
            [v184 conversationChanged:v179];
            swift_unknownObjectRelease();
          }

          sub_100009B14(v217, v217[3]);
          sub_10031D478(v177, v126);
          sub_10031E2A8(v209, v178, v89);
          sub_10031E2FC(v128);
          v169 = v177;
          v170 = v219;
        }

        else
        {
          v151 = sub_100004778(v127);
          v152 = sub_100015D30();
          *(v152 + 16) = xmmword_10057CA70;
          v227[0] = v125;
          v153 = v125;
          sub_1000052F4();
          v154 = String.init<A>(reflecting:)();
          *(v152 + 56) = &type metadata for String;
          *(v152 + 64) = v77;
          *(v152 + 32) = v154;
          *(v152 + 40) = v155;
          v227[0] = v126;
          v156 = v126;
          v157 = String.init<A>(reflecting:)();
          *(v152 + 96) = &type metadata for String;
          *(v152 + 104) = v77;
          *(v152 + 72) = v157;
          *(v152 + 80) = v158;
          v159 = sub_100008B74();
          v160 = v219;
          v161 = v89;
          v162 = v212;
          v212(v159);
          sub_100008B74();
          v163 = String.init<A>(reflecting:)();
          *(v152 + 136) = &type metadata for String;
          *(v152 + 144) = v77;
          v165 = sub_10001ABE4(v163, v164);
          v162(v165);
          sub_100008B74();
          v166 = String.init<A>(reflecting:)();
          *(v152 + 176) = &type metadata for String;
          *(v152 + 184) = v77;
          *(v152 + 152) = v166;
          *(v152 + 160) = v167;
          static os_log_type_t.default.getter();
          sub_100008378();
          os_log(_:dso:log:type:_:)(v168);

          sub_10031E2A8(v209, v216, v161);
          sub_10031E2FC(v218);
          v169 = sub_10000FC08();
          v170 = v160;
        }

        v221(v169, v170);
        goto LABEL_30;
      }

      sub_100290AC4(v88, v89);
      v90 = v215;
      sub_100422818();
      v220 = v81;
      if ((v91 & 1) == 0 || (v91 = static UUID.== infix(_:_:)(), (v91 & 1) == 0))
      {
        v225 = sub_100004778(v91);
        v132 = sub_100015D30();
        *(v132 + 16) = xmmword_10057CA70;
        v227[0] = v87;
        sub_10026D814(&qword_1006A2BD8, &unk_10057D970);
        v133 = String.init<A>(reflecting:)();
        *(v132 + 56) = &type metadata for String;
        *(v132 + 64) = v77;
        *(v132 + 32) = v133;
        *(v132 + 40) = v134;
        v227[0] = v90;
        v135 = v90;
        sub_1000052F4();
        v136 = String.init<A>(reflecting:)();
        *(v132 + 96) = &type metadata for String;
        *(v132 + 104) = v77;
        *(v132 + 72) = v136;
        *(v132 + 80) = v137;
        v138 = sub_100008B74();
        v139 = v83;
        v140 = v219;
        v141 = v89;
        v142 = v212;
        v212(v138);
        sub_100008B74();
        v143 = String.init<A>(reflecting:)();
        *(v132 + 136) = &type metadata for String;
        *(v132 + 144) = v77;
        v145 = sub_10001ABE4(v143, v144);
        v142(v145);
        sub_100008B74();
        v146 = String.init<A>(reflecting:)();
        *(v132 + 176) = &type metadata for String;
        *(v132 + 184) = v77;
        *(v132 + 152) = v146;
        *(v132 + 160) = v147;
        v148 = static os_log_type_t.default.getter();
        v149 = v225;
        os_log(_:dso:log:type:_:)("Hosted remote action does not match what we expect -- ignoring {expectedDestinations: %@, from: %@, info.transactionUUID: %@, transactionUUID: %@}", 146, 2, &_mh_execute_header, v225, v148, v132);
        sub_100049B14(v88, v141);

        sub_10031E2FC(v139);
        v150 = sub_10000FC08();
        v221(v150, v140);
        goto LABEL_30;
      }

      v209 = v87;
      v216 = v88;
      v207[1] = v89;
      v92 = [v225 kickedMembers];
      sub_10000844C();
      sub_1002F93D0(v93, v94, v95, v96);
      sub_10000790C();
      v97 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003178A0(v97);
      v99 = v98;

      v100 = [v90 value];
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v227[0] = v101;
      v227[1] = v103;
      __chkstk_darwin(v104);
      v207[-2] = v227;
      LOBYTE(v100) = sub_100013094();

      if (v100)
      {

        v106 = sub_100004778(v105);
        v107 = sub_100015D30();
        *(v107 + 16) = xmmword_10057CA70;
        v227[0] = v99;
        sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        v108 = String.init<A>(reflecting:)();
        *(v107 + 56) = &type metadata for String;
        *(v107 + 64) = v77;
        *(v107 + 32) = v108;
        *(v107 + 40) = v109;
        v227[0] = v90;
        v110 = v90;
        sub_1000052F4();
        v111 = String.init<A>(reflecting:)();
        *(v107 + 96) = &type metadata for String;
        *(v107 + 104) = v77;
        *(v107 + 72) = v111;
        *(v107 + 80) = v112;
        v113 = v218;
        v114 = v219;
        v115 = v212;
        (v212)(v1, v218, v219);
        sub_10001E3F8();
        v116 = String.init<A>(reflecting:)();
        *(v107 + 136) = &type metadata for String;
        *(v107 + 144) = v77;
        v118 = sub_10001ABE4(v116, v117);
        v115(v118);
        sub_10001E3F8();
        v119 = String.init<A>(reflecting:)();
        *(v107 + 176) = &type metadata for String;
        *(v107 + 184) = v77;
        *(v107 + 152) = v119;
        *(v107 + 160) = v120;
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)(v121);
        sub_100027E9C();
        sub_100049B14(v122, v123);

        sub_10031E2FC(v113);
        v124 = sub_10000FC08();
        v221(v124, v114);
        goto LABEL_30;
      }

      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v171 = swift_initStackObject();
      *(v171 + 16) = xmmword_10057CA80;
      v172 = v208;
      *(v171 + 32) = v208;
      v173 = sub_10000B6F4(v171);
      v174 = v221;
      if (v173)
      {
        v175 = v172;
        sub_10039B3B8(v171);
      }

      else
      {
        swift_setDeallocating();
        v185 = v172;
        sub_1002F5CC8();
      }

      v186 = v225;
      sub_100018F70();
      Set._bridgeToObjectiveC()();
      sub_10031E894();

      [v186 removePendingMembers:v101 triggeredLocally:1];

      v227[0] = v209;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (v222)
      {
        if (!Strong)
        {
LABEL_46:
          v197 = swift_unknownObjectWeakLoadStrong();
          if (v197)
          {
            v198 = v197;
            sub_10000844C();
            sub_1002F93D0(v199, v200, v201, v202);
            sub_10000790C();
            Set._bridgeToObjectiveC()();
            sub_10031E894();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            [v198 sendDelegationResponseMessageTo:v101 conversation:v186 transactionUUID:isa forMember:v172 withResponse:v222 & 1];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          sub_100009B14(v217, v217[3]);
          v204 = v214;
          sub_10031D478(v214, v90);
          sub_100027E9C();
          sub_100049B14(v205, v206);
          sub_10031E2FC(v218);
          v174(v204, v219);
          goto LABEL_30;
        }

        sub_100027E9C();
        v101 = Data._bridgeToObjectiveC()().super.isa;
        sub_100035DEC(v101, "pendingMembershipTracker:willAdd:to:using:");
      }

      else
      {
        if (Strong)
        {
          sub_100027E9C();
          v188 = Data._bridgeToObjectiveC()().super.isa;
          sub_100035DEC(v188, "pendingMembershipTracker:willNotAdd:to:using:");

          swift_unknownObjectRelease();
        }

        v101 = [v186 rejectedMembers];
        sub_100018F70();
        v189 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v189 & 0xC000000000000001) != 0)
        {
          if (v189 >= 0)
          {
            v189 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v190 = v172;
          v191 = __CocoaSet.count.getter();
          if (__OFADD__(v191, 1))
          {
            __break(1u);
            return;
          }

          sub_100396A04(v189, v191 + 1);
          v226 = v192;
          v193 = v190;
          isUniquelyReferenced_nonNull_native = 1;
        }

        else
        {
          v195 = v172;
          sub_10031E894();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v226 = v189;
          v193 = v101;
        }

        sub_100018F70();
        Set._bridgeToObjectiveC()();
        sub_10031E894();

        [v186 setRejectedMembers:v101];

        v196 = [v186 delegate];
        if (!v196)
        {
          goto LABEL_46;
        }

        [v196 conversationChanged:v186];
      }

      swift_unknownObjectRelease();
      goto LABEL_46;
    }
  }

  v225 = sub_100004778(v29);
  v32 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Remote user action for pending member attempted, disabled -- ignoring", 69, 2, &_mh_execute_header, v225, v32, _swiftEmptyArrayStorage);
  sub_100005EDC();
}

void sub_10031BA74()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v183 = v6;
  v7 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v7);
  sub_100006688();
  __chkstk_darwin(v8);
  v10 = &v175 - v9;
  v184 = type metadata accessor for PendingMembershipInfo(0);
  sub_100008070();
  __chkstk_darwin(v11);
  sub_100007BAC();
  sub_100005FEC();
  __chkstk_darwin(v12);
  v14 = &v175 - v13;
  v15 = type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v16);
  sub_100007BAC();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v175 - v22;
  v24 = __chkstk_darwin(v21);
  v27 = &v175 - v26;
  if (qword_1006A0A88 != -1)
  {
    sub_10000A7E0();
    v185 = v174;
    v24 = swift_once();
    v25 = v185;
  }

  if ((byte_1006A53C0 & 1) == 0)
  {
    v185 = v25;
    v182 = v14;
    v180 = v3;
    v31 = [v3 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v178 = v0;
    v177 = sub_10002F744(OBJC_IVAR___CSDPendingMembershipTracker_storage);
    sub_100006DDC(v177, v32);
    v33 = v5;
    v34 = v27;
    v35 = [v5 handle];
    sub_10031CB04(v10);

    v36 = sub_1000079BC();
    v38 = sub_100015468(v36, v37, v184);
    v179 = v15;
    v181 = v34;
    if (v38 == 1)
    {
      v39 = sub_100009A04(v10, &qword_1006A5640, &qword_100580310);
      v40 = sub_100004778(v39);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10057E830;
      sub_10001006C();
      v42 = sub_10000C204();
      v43(v42);
      v44 = String.init<A>(reflecting:)();
      v46 = v45;
      *(v41 + 56) = &type metadata for String;
      v47 = sub_100009D88();
      *(v41 + 64) = v47;
      *(v41 + 32) = v44;
      *(v41 + 40) = v46;
      v186 = [v5 handle];
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v48 = String.init<A>(reflecting:)();
      *(v41 + 96) = &type metadata for String;
      *(v41 + 104) = v47;
      *(v41 + 72) = v48;
      *(v41 + 80) = v49;
      v186 = v5;
      v50 = sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      v51 = v5;
      v52 = String.init<A>(reflecting:)();
      *(v41 + 136) = &type metadata for String;
      *(v41 + 144) = v47;
      *(v41 + 112) = v52;
      *(v41 + 120) = v53;
      v54 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("No info matching local user action {uuid: %@, handle: %@}, remove pending member: %@", 84, 2, &_mh_execute_header, v40, v54, v41);

      v55 = v180;
      if ([v180 shouldRespondToLetMeInRequestForMember:v51])
      {
        sub_10000E6DC();
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_10057D690;
        v57 = [v51 handle];
        sub_100016F80();
        if (v59)
        {
          v186 = v58;
          v60 = String.init<A>(reflecting:)();
          *(v56 + 56) = &type metadata for String;
          *(v56 + 64) = v47;
          *(v56 + 32) = v60;
          *(v56 + 40) = v61;
          sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
          v62 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          sub_10000A7F4();
          os_log(_:dso:log:type:_:)(v63);

          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057CA80;
          *(inited + 32) = v51;
          if (sub_10000B6F4(inited))
          {
            v65 = v51;
            sub_10039B3B8(inited);
          }

          else
          {
            swift_setDeallocating();
            v137 = v51;
            sub_1002F5CC8();
          }

          sub_10000844C();
          sub_1002F93D0(v138, v139, v140, v141);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100005F0C();

          if (sub_10000B6F4(_swiftEmptyArrayStorage))
          {
            sub_10039B7D4(_swiftEmptyArrayStorage);
          }

          sub_10000844C();
          sub_1002F93D0(v159, v160, v161, v162);
          sub_10000790C();
          Set._bridgeToObjectiveC()();
          sub_100010160();
          [v55 addRemoteMembers:v62 otherInvitedHandles:v50 triggeredLocally:1];
        }

        else
        {
          v186 = v58;
          v114 = String.init<A>(reflecting:)();
          *(v56 + 56) = &type metadata for String;
          *(v56 + 64) = v47;
          *(v56 + 32) = v114;
          *(v56 + 40) = v115;
          sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
          v116 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          sub_10000A7F4();
          os_log(_:dso:log:type:_:)(v117);

          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          v118 = swift_initStackObject();
          *(v118 + 16) = xmmword_10057CA80;
          *(v118 + 32) = v51;
          if (sub_10000B6F4(v118))
          {
            v119 = v51;
            sub_10039B3B8(v118);
          }

          else
          {
            swift_setDeallocating();
            v144 = v51;
            sub_1002F5CC8();
          }

          sub_10000844C();
          sub_1002F93D0(v145, v146, v147, v148);
          isa = Set._bridgeToObjectiveC()().super.isa;

          [v55 removePendingMembers:isa triggeredLocally:1];

          v150 = [v55 delegate];
          if (v150)
          {
            [v150 conversationChanged:v55];
            swift_unknownObjectRelease();
          }
        }
      }

      v185[1](v181, v179);
      goto LABEL_61;
    }

    v66 = v182;
    v67 = sub_1002F6F18(v10, v182);
    *&v175 = sub_100004778(v67);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10057DDF0;
    sub_10031DF4C(v66, v1);
    sub_100008B74();
    v69 = String.init<A>(reflecting:)();
    v70 = v15;
    v72 = v71;
    *(v68 + 56) = &type metadata for String;
    v73 = sub_100009D88();
    *(v68 + 64) = v73;
    *(v68 + 32) = v69;
    *(v68 + 40) = v72;
    sub_100016F80();
    LOBYTE(v186) = v74 & 1;
    v75 = String.init<A>(reflecting:)();
    *(v68 + 96) = &type metadata for String;
    *(v68 + 104) = v73;
    *(v68 + 72) = v75;
    *(v68 + 80) = v76;
    v186 = v33;
    v77 = sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    v78 = v33;
    v176 = v77;
    v79 = String.init<A>(reflecting:)();
    *(v68 + 136) = &type metadata for String;
    *(v68 + 144) = v73;
    *(v68 + 112) = v79;
    *(v68 + 120) = v80;
    v81 = v180;
    v82 = [v180 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001006C();
    (*(v83 + 16))(v19, v23, v70);
    v84 = String.init<A>(reflecting:)();
    v86 = v85;
    sub_10001006C();
    v88 = *(v87 + 8);
    v185 = (v87 + 8);
    sub_10000EA00();
    sub_10001006C();
    v88();
    *(v68 + 176) = &type metadata for String;
    *(v68 + 184) = v73;
    *(v68 + 152) = v84;
    *(v68 + 160) = v86;
    v186 = v81;
    v89 = sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
    v90 = v81;
    v91 = String.init<A>(reflecting:)();
    *(v68 + 216) = &type metadata for String;
    *(v68 + 224) = v73;
    *(v68 + 192) = v91;
    *(v68 + 200) = v92;
    v93 = static os_log_type_t.default.getter();
    v94 = v175;
    os_log(_:dso:log:type:_:)("Processing local user action for pending member {info: %@, action: %@, member: %@, conversation.groupUUID: %@, conversation: %@}", 128, 2, &_mh_execute_header, v175, v93, v68);

    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    v95 = swift_initStackObject();
    v175 = xmmword_10057CA80;
    *(v95 + 16) = xmmword_10057CA80;
    v180 = v78;
    *(v95 + 32) = v78;
    if (sub_10000B6F4(v95))
    {
      sub_10003DB94();
      sub_10039B3B8(v95);
    }

    else
    {
      swift_setDeallocating();
      sub_10003DB94();
      sub_1002F5CC8();
    }

    sub_10000844C();
    sub_1002F93D0(v96, v97, v98, v99);
    sub_10003DDC0();
    Set._bridgeToObjectiveC()();
    sub_100010160();
    [v90 removePendingMembers:v89 triggeredLocally:1];

    v100 = &v182[*(v184 + 20)];
    v102 = *v100;
    v101 = *(v100 + 1);
    if ((*(v100 + 2) & 0x2000000000000000) == 0)
    {
      sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_delegate);
      Strong = swift_unknownObjectWeakLoadStrong();

      v104 = sub_10000EA00();
      sub_100290AC4(v104, v105);
      sub_100016F80();
      if (v106)
      {
        v107 = v88;
        if (Strong)
        {
          sub_10000EA00();
          v108 = Data._bridgeToObjectiveC()().super.isa;
          sub_100017D10(v108, "pendingMembershipTracker:willAdd:to:using:");
          v109 = sub_10000EA00();
          sub_100049B14(v109, v110);

          swift_unknownObjectRelease();
        }

        else
        {
          v142 = sub_10000EA00();
          sub_100049B14(v142, v143);
        }

        v129 = 1;
        goto LABEL_57;
      }

      if (Strong)
      {
        sub_10000EA00();
        v120 = Data._bridgeToObjectiveC()().super.isa;
        sub_100017D10(v120, "pendingMembershipTracker:willNotAdd:to:using:");

        swift_unknownObjectRelease();
      }

      v121 = [v90 rejectedMembers];
      sub_10003DDC0();
      v122 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v122 & 0xC000000000000001) == 0)
      {
        v151 = sub_10003DB94();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v186 = v122;
        v126 = v151;
LABEL_49:

        v107 = v88;
        sub_10003DDC0();
        v152 = Set._bridgeToObjectiveC()().super.isa;

        [v90 setRejectedMembers:v152];

        v153 = [v90 delegate];
        v129 = v153;
        if (v153)
        {
          [v153 conversationChanged:v90];
          v154 = sub_10000EA00();
          sub_100049B14(v154, v155);
          swift_unknownObjectRelease();
          v129 = 0;
        }

        else
        {
          v163 = sub_10000EA00();
          sub_100049B14(v163, v164);
        }

        goto LABEL_57;
      }

      if (v122 < 0)
      {
        v123 = v122;
      }

      else
      {
        v123 = v122 & 0xFFFFFFFFFFFFFF8;
      }

      sub_10003DB94();
      sub_100005F0C();
      v124 = __CocoaSet.count.getter();
      if (!__OFADD__(v124, 1))
      {
        sub_100396A04(v123, v124 + 1);
        v186 = v125;
        v126 = sub_1000079BC();
        goto LABEL_49;
      }

      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v111 = swift_initStackObject();
    *(v111 + 16) = v175;
    *(v111 + 32) = v102;
    v112 = sub_10000B6F4(v111);
    v184 = v101;
    if (v112)
    {
      sub_10000F350();
      v113 = v102;
      sub_10039B7D4(v111);
    }

    else
    {
      swift_setDeallocating();
      sub_10000F350();
      sub_10000F350();
      sub_1002F5CC8();
    }

    sub_100016F80();
    if (v128)
    {
      v107 = v88;
      sub_100035A80();
      v129 = 1;
      goto LABEL_57;
    }

    v130 = [v90 rejectedMembers];
    sub_10003DDC0();
    v131 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v131 & 0xC000000000000001) != 0)
    {
      if (v131 < 0)
      {
        v132 = v131;
      }

      else
      {
        v132 = v131 & 0xFFFFFFFFFFFFFF8;
      }

      sub_10003DB94();
      sub_100005F0C();
      v133 = __CocoaSet.count.getter();
      if (__OFADD__(v133, 1))
      {
        goto LABEL_64;
      }

      sub_100396A04(v132, v133 + 1);
      v186 = v134;
      v135 = sub_1000079BC();
    }

    else
    {
      v156 = sub_10003DB94();
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v131;
      v135 = v156;
    }

    sub_10003DDC0();
    v157 = Set._bridgeToObjectiveC()().super.isa;

    [v90 setRejectedMembers:v157];

    v158 = [v90 delegate];
    v129 = v158;
    v107 = v88;
    if (v158)
    {
      [v158 conversationChanged:v90];
      sub_100035A80();
      swift_unknownObjectRelease();
      v129 = 0;
    }

    else
    {
      sub_100035A80();
    }

LABEL_57:
    sub_100008950(OBJC_IVAR___CSDPendingMembershipTracker_messenger);
    v165 = swift_unknownObjectWeakLoadStrong();
    if (v165)
    {
      v166 = v165;
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_10000844C();
      sub_1002F93D0(v167, &qword_1006A2640, TUHandle_ptr, v168);
      v169 = Set._bridgeToObjectiveC()().super.isa;

      v170 = UUID._bridgeToObjectiveC()().super.isa;
      [v166 sendDelegationResponseMessageTo:v169 conversation:v90 transactionUUID:v170 forMember:v180 withResponse:v129];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v171 = v179;
    sub_100006DDC(v177, v177[3]);
    v172 = [v180 handle];
    sub_10031D478(v181, v172);

    v173 = sub_10000FC08();
    sub_10031E2FC(v173);
    (v107)(v181, v171);
LABEL_61:
    sub_100005EDC();
    return;
  }

  v185 = sub_100004778(v24);
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Local user action for pending member attempted, disabled -- ignoring", 68, 2, &_mh_execute_header, v185, v28, _swiftEmptyArrayStorage);
  sub_100005EDC();
}

id sub_10031CA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingMembershipTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10031CB04@<X0>(uint64_t a2@<X8>)
{
  v3 = TUCopyIDSCanonicalAddressForHandle();
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_1000052D0();
    swift_beginAccess();

    v8 = sub_1002DB870();

    if (v8)
    {
      sub_1002CB814(v5, v7, v8, a2);
    }

    else
    {

      type metadata accessor for PendingMembershipInfo(0);
      v13 = sub_1000079BC();
      return sub_10000AF74(v13, v14, 1, v15);
    }
  }

  else
  {
    type metadata accessor for PendingMembershipInfo(0);
    v10 = sub_1000079BC();

    return sub_10000AF74(v10, v11, 1, v12);
  }
}

void *sub_10031CC20()
{
  sub_1000052D0();
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {

    sub_100021E24();
    if (v3)
    {
      v4 = *(*(v1 + 56) + 8 * v2);

      return sub_100274144(v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_10031CCAC()
{
  sub_100005EF4();
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_10000C1C4();
  v52 = v10;
  v11 = sub_10026D814(&qword_1006A5650, &qword_100580320);
  v12 = sub_100007BF0(v11);
  __chkstk_darwin(v12);
  sub_100007BAC();
  sub_100005FEC();
  __chkstk_darwin(v13);
  sub_10000C1C4();
  v55 = v14;
  sub_1000052D0();
  swift_beginAccess();
  v57 = *(v0 + 16) + 64;
  sub_100007990();
  v17 = v16 & v15;
  v56 = (v18 + 63) >> 6;
  v58 = v4;
  v61 = (v4 + 32);
  v53 = v19;
  v54 = (v4 + 8);

  v20 = 0;
  v62 = v2;
  v59 = v8;
  v60 = v1;
  while (v17)
  {
    v21 = v20;
LABEL_8:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v21 << 6);
    (*(v58 + 16))(v52, *(v53 + 48) + *(v58 + 72) * v23, v2);
    v24 = *(*(v53 + 56) + 8 * v23);
    v25 = sub_10026D814(&qword_1006A5658, &qword_100580328);
    v26 = *(v25 + 48);
    v1 = v60;
    (*(v58 + 32))(v60, v52, v2);
    *(v60 + v26) = v24;
    sub_10000AF74(v60, 0, 1, v25);

    v8 = v59;
LABEL_9:
    sub_10031DFB0(v1, v55);
    v27 = sub_10026D814(&qword_1006A5658, &qword_100580328);
    if (sub_100015468(v55, 1, v27) == 1)
    {

      sub_100005EDC();
      return;
    }

    v28 = *(v55 + *(v27 + 48));
    (*v61)(v8, v55, v62);
    v29 = *(v28 + 16);
    if (v29)
    {
      sub_10026D814(&qword_1006A4808, &qword_10057F850);
      v30 = *(type metadata accessor for PendingMembershipInfo(0) - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      v34 = j__malloc_size(v33);
      if (!v31)
      {
        goto LABEL_33;
      }

      if (v34 - v32 == 0x8000000000000000 && v31 == -1)
      {
        goto LABEL_36;
      }

      v33[2] = v29;
      v33[3] = 2 * ((v34 - v32) / v31);
      sub_1002F6BDC();
      v37 = v36;
      sub_100022DDC(v63);
      if (v37 != v29)
      {
        goto LABEL_34;
      }

      v8 = v59;
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = _swiftEmptyDictionarySingleton;
    sub_100021E24();
    v41 = _swiftEmptyDictionarySingleton[2];
    v42 = (v40 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_32;
    }

    v44 = v39;
    v45 = v40;
    sub_10026D814(&qword_1006A5660, &unk_100580330);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43))
    {
      sub_100021E24();
      v2 = v62;
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_37;
      }

      v44 = v46;
    }

    else
    {
      v2 = v62;
    }

    if (v45)
    {
      *(_swiftEmptyDictionarySingleton[7] + 8 * v44) = v33;

      (*v54)(v8, v2);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v44 >> 6) + 8] |= 1 << v44;
      (*(v58 + 16))(_swiftEmptyDictionarySingleton[6] + *(v58 + 72) * v44, v8, v2);
      *(_swiftEmptyDictionarySingleton[7] + 8 * v44) = v33;
      (*(v58 + 8))(v8, v2);
      v48 = _swiftEmptyDictionarySingleton[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_35;
      }

      _swiftEmptyDictionarySingleton[2] = v50;
    }

    v1 = v60;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v56)
    {
      v51 = sub_10026D814(&qword_1006A5658, &qword_100580328);
      sub_10000AF74(v1, 1, 1, v51);
      v17 = 0;
      goto LABEL_9;
    }

    v17 = *(v57 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10031D224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_10000691C();
  v7 = type metadata accessor for PendingMembershipInfo(v6);
  v8 = sub_100007BF0(v7);
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = TUCopyIDSCanonicalAddressForHandle();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000052D0();
    swift_beginAccess();

    v14 = sub_1002DB870();

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = _swiftEmptyDictionarySingleton;
    }

    sub_10031DF4C(v3, v11);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1003793F0();

    sub_100021F04();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v3 + 16);
    sub_1003793C8(v15, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v26;
    v17 = swift_endAccess();
    v18 = sub_100004778(v17);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    sub_10000E6DC();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10057D690;
    v25 = *(v4 + 16);

    sub_10026D814(&qword_1006A5638, &qword_100580308);
    sub_10000D648();
    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100009D88();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    static os_log_type_t.default.getter();
    sub_100008378();
    os_log(_:dso:log:type:_:)(v23, v25);
  }

  else
  {
    sub_10031DEF8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10031D478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10026D814(&qword_1006A5640, &qword_100580310);
  sub_100007BF0(v5);
  sub_100006688();
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = TUCopyIDSCanonicalAddressForHandle();
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_1000052D0();
    swift_beginAccess();

    v14 = sub_1002DB870();

    if (!v14)
    {
      v14 = _swiftEmptyDictionarySingleton;
    }

    v15 = sub_100005208(v11, v13);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v14;
      v19 = v14[3];
      sub_10026D814(&unk_1006A6FD0, &qword_100580318);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19);
      v14 = v35;

      v20 = v14[7];
      v21 = type metadata accessor for PendingMembershipInfo(0);
      sub_100008070();
      sub_1002F6F18(v20 + *(v22 + 72) * v17, v8);
      _NativeDictionary._delete(at:)();
      v23 = v8;
      v24 = 0;
      v25 = v21;
    }

    else
    {
      v25 = type metadata accessor for PendingMembershipInfo(0);
      v23 = v8;
      v24 = 1;
    }

    sub_10000AF74(v23, v24, 1, v25);

    sub_100009A04(v8, &qword_1006A5640, &qword_100580310);
    sub_100021F04();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v3 + 16);
    sub_1003793C8(v14, a1, v27);
    *(v3 + 16) = v36;
    v28 = swift_endAccess();
    v29 = sub_100004778(v28);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    sub_10000E6DC();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10057D690;
    v35 = *(v3 + 16);

    sub_10026D814(&qword_1006A5638, &qword_100580308);
    sub_10000D648();
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100009D88();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    static os_log_type_t.default.getter();
    sub_100008378();
    os_log(_:dso:log:type:_:)(v34);
  }

  else
  {
    sub_10031DEF8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10031D7A0(uint64_t a1)
{
  swift_beginAccess();
  sub_100383E0C(a1, v2, v3, v4, v5, v6, v7, v8, v17, v18);
  swift_endAccess();

  v10 = sub_100004778(v9);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  sub_10000E6DC();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;

  sub_10026D814(&qword_1006A5638, &qword_100580308);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100009D88();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  static os_log_type_t.default.getter();
  sub_10000A7F4();
  os_log(_:dso:log:type:_:)(v15);
}

uint64_t sub_10031D8C4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_10031D920(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      v10 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
      v11 = swift_dynamicCast();
      if (v11)
      {
        v12 = sub_100004778(v11);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_10057D6A0;
        *(v13 + 56) = &type metadata for String;
        *(v13 + 64) = sub_100009D88();
        *(v13 + 32) = a1;
        *(v13 + 40) = a2;
        *(v13 + 96) = v10;
        *(v13 + 104) = sub_1002F93D0(&qword_1006A4CE0, &qword_1006A3480, NSNumber_ptr, &protocol conformance descriptor for NSObject);
        *(v13 + 72) = v25;

        v14 = v25;
        v15 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Got %@ from server bag with a value of: %@", 42, 2, &_mh_execute_header, v12, v15, v13);

        a3 = [v14 BOOLValue];

        return (a3 & 1);
      }
    }

    else
    {
      v11 = sub_100009A04(v28, &unk_1006A2D10, &unk_10057D940);
    }

    v16 = sub_100004778(v11);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10057D6A0;
    *&v28[0] = a1;
    *(&v28[0] + 1) = a2;

    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_100009D88();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    LOBYTE(v28[0]) = a3 & 1;
    v22 = String.init<A>(reflecting:)();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Server bag does not have a value for %@, so returning the default one of %@ seconds.", 84, 2, &_mh_execute_header, v16, v24, v17);

    return (a3 & 1);
  }

  __break(1u);
  return result;
}

id sub_10031DC2C()
{
  result = sub_10031D920(0x617369642D696D6CLL, 0xEC00000064656C62, 0);
  byte_1006A53C0 = result & 1;
  return result;
}

id sub_10031DC70()
{
  result = sub_10031D920(0xD000000000000017, 0x800000010056AE60, 0);
  byte_1006A53C1 = result & 1;
  return result;
}

uint64_t type metadata accessor for PendingMembershipInfo(uint64_t a1)
{
  result = qword_1006A55F8;
  if (!qword_1006A55F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031DD48(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_100006AF0(319, &qword_1006A3DE0, TUConversationMember_ptr);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10031DDFC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10031DE24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 24))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10031DE70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_10031DEF8()
{
  result = qword_1006A5648;
  if (!qword_1006A5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5648);
  }

  return result;
}

uint64_t sub_10031DF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingMembershipInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5650, &qword_100580320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10031E020(void *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {

    return a1;
  }

  else
  {

    return sub_100290AC4(a2, a3);
  }
}

uint64_t sub_10031E074(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = NSObject._rawHashValue(seed:)(*(*v2 + 40));
  v5 = ~(-1 << *(v3 + 32));
  v6 = 1;
  while (1)
  {
    v7 = v4 & v5;
    v8 = (v4 & v5) >> 6;
    v9 = 1 << (v4 & v5);
    v10 = v9 & *(v3 + 56 + 8 * v8);
    if (!v10)
    {
      break;
    }

    sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
    v11 = *(*(v3 + 48) + 8 * v7);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      v6 = 0;
      break;
    }

    v4 = v7 + 1;
  }

  v13 = *(v3 + 16);
  v14 = v13 + v6;
  if (__OFADD__(v13, v6))
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 24);
    v16 = v29;
    if (v15 < v14 || (a2 & 1) == 0)
    {
      if (a2)
      {
        sub_100396BE4(v14);
        goto LABEL_16;
      }

      if (v15 < v14)
      {
        sub_1003994BC();
LABEL_16:
        v17 = *v29;
        v18 = NSObject._rawHashValue(seed:)(*(*v29 + 40));
        v19 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v7 = v18 & v19;
          v8 = (v18 & v19) >> 6;
          v9 = 1 << (v18 & v19);
          if ((v9 & *(v17 + 56 + 8 * v8)) == 0)
          {
            v16 = v29;
            if (v10)
            {
              goto LABEL_27;
            }

            goto LABEL_21;
          }

          sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
          v20 = *(*(v17 + 48) + 8 * v7);
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
            break;
          }

          v18 = v7 + 1;
        }

        v16 = v29;
        if (!v10)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_1003989E4();
    }

    if (v10)
    {
LABEL_24:
      v27 = *(*v16 + 48);
      result = *(v27 + 8 * v7);
      *(v27 + 8 * v7) = a1;
      return result;
    }

LABEL_21:
    v22 = *v16;
    *(*v16 + 8 * v8 + 56) |= v9;
    *(*(v22 + 48) + 8 * v7) = a1;
    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      result = 0;
      *(v22 + 16) = v25;
      return result;
    }
  }

  __break(1u);
LABEL_27:
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10031E2A8(void *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  else
  {

    sub_100049B14(a2, a3);
  }
}

uint64_t sub_10031E2FC(uint64_t a1)
{
  v2 = type metadata accessor for PendingMembershipInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10031E358()
{
  result = qword_1006A3BE0;
  if (!qword_1006A3BE0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3BE0);
  }

  return result;
}

id sub_10031E3B0(uint64_t a1, uint64_t a2, char *a3)
{
  v10[3] = type metadata accessor for MemoryPendingMembershipTrackerStorage();
  v10[4] = &off_100626B88;
  v10[0] = a1;
  v9[3] = type metadata accessor for SharedPendingMembershipBag();
  v9[4] = &off_100626B70;
  v9[0] = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_100009AB0(v10, &a3[OBJC_IVAR___CSDPendingMembershipTracker_storage]);
  sub_100009AB0(v9, &a3[OBJC_IVAR___CSDPendingMembershipTracker_serverBag]);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for PendingMembershipTracker();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100009B7C(v9);
  sub_100009B7C(v10);
  return v6;
}

id sub_10031E494(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for MemoryPendingMembershipTrackerStorage();
  v20 = &off_100626B88;
  v18[0] = a1;
  v16 = type metadata accessor for SharedPendingMembershipBag();
  v17 = &off_100626B70;
  v15[0] = a2;
  v4 = objc_allocWithZone(type metadata accessor for PendingMembershipTracker());
  v5 = sub_10001BDB8(v18, v19);
  __chkstk_darwin(v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_10001BDB8(v15, v16);
  __chkstk_darwin(v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10031E3B0(*v7, *v11, v4);
  sub_100009B7C(v15);
  sub_100009B7C(v18);
  return v13;
}

_BYTE *storeEnumTagSinglePayload for PendingMembershipTracker.UserAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryPendingMembershipTrackerStorage.Errors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10031E7E4()
{
  result = qword_1006A5688;
  if (!qword_1006A5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5688);
  }

  return result;
}

unint64_t sub_10031E83C()
{
  result = qword_1006A5690;
  if (!qword_1006A5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5690);
  }

  return result;
}

uint64_t sub_10031E8A0(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

id sub_10031E958(uint64_t a1, void *a2)
{
  result = TUBundle();
  if (result)
  {
    v5 = result;
    v10._object = 0xE000000000000000;
    v6.value._object = 0x800000010056B140;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    v6.value._countAndFlagsBits = 0xD000000000000012;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v10)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10031E9F4(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    v39 = sub_10001E578();
    v40 = v3;
    v41 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v39;
        v8 = v41;
        v36 = v40;
        v9 = v1;
        sub_10001E580(v39, v40, v41, v1);
        v11 = v10;
        v12 = [v10 value];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = v37;
        v42 = v37;
        v18 = v37[2];
        v17 = v37[3];
        if (v18 >= v17 >> 1)
        {
          sub_10039A2E0(v17 > 1, v18 + 1, 1);
          v16 = v42;
        }

        v16[2] = v18 + 1;
        v19 = &v16[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v37 = v16;
        if (v35)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v24 = v34;
          sub_10026D814(&unk_1006A2650, &qword_10057D170);
          v25 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v25(v38, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v20 = 1 << *(v9 + 32);
          if (v7 >= v20)
          {
            goto LABEL_32;
          }

          v21 = v7 >> 6;
          v22 = *(v33 + 8 * (v7 >> 6));
          if (((v22 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v36)
          {
            goto LABEL_34;
          }

          v23 = v22 & (-2 << (v7 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v24 = v34;
          }

          else
          {
            v26 = v21 << 6;
            v27 = v21 + 1;
            v28 = (v32 + 8 * v21);
            v24 = v34;
            while (v27 < (v20 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100010000(v7, v36, 0);
                v20 = __clz(__rbit64(v29)) + v26;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v36, 0);
          }

LABEL_27:
          v31 = *(v9 + 36);
          v39 = v20;
          v40 = v31;
          v41 = 0;
        }

        if (v5 == v24)
        {
          sub_100010000(v39, v40, v41);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

char *sub_10031ED14(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___CSDDuetDonater_maxDuration] = 0x4024000000000000;
  *&v1[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver] = 0;
  *&v1[OBJC_IVAR___CSDDuetDonater_queue] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v12, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v11 = [v6 tu_defaults];
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v7;
  v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v9 = *&v7[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver];
  *&v7[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver] = v8;

  return v7;
}

uint64_t sub_10031EE74()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = [v0 silenceUnknownCallersEnabled];

  if (v1)
  {
    v2 = 28271;
  }

  else
  {
    v2 = 6710895;
  }

  if (v1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  sub_10026D814(&qword_1006A56E8, &qword_1005804C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000100565D90;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 88) = &protocol witness table for String;
  *(inited + 96) = &protocol witness table for String;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  sub_10026D814(&qword_1006A56F0, &unk_1005804C8);
  v8 = Dictionary.init(dictionaryLiteral:)();
  sub_10031F348(v4, v6, v8);
}

id sub_10031F00C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR___CSDDuetDonater_silenceUnknownCallersEnabledObserver];
  if (v3)
  {
    v4 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10031F0F0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  sub_10000A0F0(v15);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v21 = v16;
  v22 = &unk_100626EE8;
  v17 = _Block_copy(aBlock);
  v18 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

uint64_t sub_10031F2F8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10031F348(v0, v1, 0);
}

uint64_t sub_10031F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_10000AF74(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  sub_1002762F0();
}

uint64_t sub_10031F4BC(void *a1)
{
  if ([a1 status] == 1)
  {
    return [a1 isScreening] ^ 1;
  }

  else
  {
    return 0;
  }
}

void sub_10031F50C(id a1)
{
  v94 = type metadata accessor for UUID();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v93 = v88 - v7;
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = sub_1003205AC(a1);
  v95 = a1;
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = [objc_opt_self() bundleIDKey];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      a1 = v95;
      *(&v99 + 1) = &type metadata for String;
      *&v98 = v11;
      *(&v98 + 1) = v12;
      sub_10003EBF0(&v98, v97);
      swift_isUniquelyReferenced_nonNull_native();
      v96 = v8;
      sub_100040430();

      v8 = v96;
    }

    else
    {
    }
  }

  v15 = sub_100320800(a1);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 40);
      v18 = _swiftEmptyArrayStorage;
      do
      {
        v20 = *(v17 - 1);
        v19 = *v17;
        v21 = HIBYTE(*v17) & 0xF;
        if ((*v17 & 0x2000000000000000) == 0)
        {
          v21 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100017840();
            v18 = v24;
          }

          v22 = v18[2];
          if (v22 >= v18[3] >> 1)
          {
            sub_100017840();
            v18 = v25;
          }

          v18[2] = v22 + 1;
          v23 = &v18[2 * v22];
          v23[4] = v20;
          v23[5] = v19;
        }

        v17 += 2;
        --v16;
      }

      while (v16);

      if (v18[2])
      {
        v26 = [objc_opt_self() calleeContactIDsKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        *(&v99 + 1) = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        *&v98 = v18;
        sub_10003EBF0(&v98, v97);
        swift_isUniquelyReferenced_nonNull_native();
        v96 = v8;
        sub_100040430();

        a1 = v95;
        v8 = v96;
      }

      else
      {

        a1 = v95;
      }
    }

    else
    {
    }
  }

  v27 = a1;
  v28 = [a1 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v28) = sub_10039C378();

  if (v28)
  {
LABEL_36:
    v49 = v95;
    if ([v95 isConversation])
    {
      v50 = [objc_opt_self() sharedInstance];
      v51 = [v50 activeConversationForCall:v49];

      if (v51)
      {
        v52 = v6;
        v53 = v8;
        v54 = objc_opt_self();
        v55 = [v54 groupIDKey];
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = [v51 messagesGroupUUID];
        if (v59)
        {
          v60 = v59;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v61 = 0;
        }

        else
        {
          v61 = 1;
        }

        v62 = v94;
        sub_10000AF74(v52, v61, 1, v94);
        v63 = v93;
        sub_100286068(v52, v93);
        if (sub_100015468(v63, 1, v62))
        {
          sub_1000099A4(v63, &unk_1006A3DD0, &unk_10057C9D0);
          v64 = sub_100005208(v56, v58);
          if (v65)
          {
            v66 = v64;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v97[0] = v53;
            v68 = *(v53 + 24);
            sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v68);
            v69 = *&v97[0];

            sub_10003EBF0((*(v69 + 56) + 32 * v66), &v98);
            v53 = v69;
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v98 = 0u;
            v99 = 0u;
          }

          sub_1000099A4(&v98, &unk_1006A2D10, &unk_10057D940);
          v75 = v53;
        }

        else
        {
          v71 = v91;
          v70 = v92;
          (*(v92 + 16))(v91, v63, v62);
          sub_1000099A4(v63, &unk_1006A3DD0, &unk_10057C9D0);
          v72 = UUID.uuidString.getter();
          v74 = v73;
          (*(v70 + 8))(v71, v62);
          *(&v99 + 1) = &type metadata for String;
          *&v98 = v72;
          *(&v98 + 1) = v74;
          sub_10003EBF0(&v98, v97);
          swift_isUniquelyReferenced_nonNull_native();
          v96 = v53;
          sub_100040430();

          v75 = v96;
        }

        v76 = [v54 groupNameKey];
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        v80 = sub_100320858(v51);
        if (v81)
        {
          *(&v99 + 1) = &type metadata for String;
          *&v98 = v80;
          *(&v98 + 1) = v81;
          sub_10003EBF0(&v98, v97);
          swift_isUniquelyReferenced_nonNull_native();
          v96 = v75;
          sub_100040430();
        }

        else
        {
          v82 = sub_100005208(v77, v79);
          if (v83)
          {
            v84 = v82;
            v85 = swift_isUniquelyReferenced_nonNull_native();
            *&v97[0] = v75;
            v86 = *(v75 + 24);
            sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v85, v86);
            v87 = *&v97[0];

            sub_10003EBF0((*(v87 + 56) + 32 * v84), &v98);
            _NativeDictionary._delete(at:)();
          }

          else
          {
            v98 = 0u;
            v99 = 0u;
          }

          sub_1000099A4(&v98, &unk_1006A2D10, &unk_10057D940);
        }
      }
    }
  }

  else
  {
    v89 = v6;
    v90 = v8;
    v29 = [objc_opt_self() calleeHandlesKey];
    v88[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88[2] = v30;

    v31 = [v27 remoteParticipantHandles];
    v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10031E9F4(v32);
    v34 = v33;

    v35 = 0;
    v36 = *(v34 + 16);
    v37 = v34 + 40;
    v38 = _swiftEmptyArrayStorage;
    v88[0] = v34 + 40;
LABEL_25:
    for (i = (v37 + 16 * v35); ; i += 2)
    {
      if (v36 == v35)
      {

        *(&v99 + 1) = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
        *&v98 = v38;
        sub_10003EBF0(&v98, v97);
        v48 = v90;
        swift_isUniquelyReferenced_nonNull_native();
        v96 = v48;
        sub_100040430();

        v8 = v96;
        v6 = v89;
        goto LABEL_36;
      }

      if (v35 >= *(v34 + 16))
      {
        break;
      }

      v40 = *(i - 1);
      v41 = *i;

      v42 = String._bridgeToObjectiveC()();
      v43 = [v42 destinationIdIsPseudonym];

      if ((v43 & 1) == 0)
      {
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *&v98 = v38;
        if ((v44 & 1) == 0)
        {
          sub_10039A2E0(0, v38[2] + 1, 1);
          v38 = v98;
        }

        v46 = v38[2];
        v45 = v38[3];
        if (v46 >= v45 >> 1)
        {
          sub_10039A2E0(v45 > 1, v46 + 1, 1);
          v38 = v98;
        }

        ++v35;
        v38[2] = v46 + 1;
        v47 = &v38[2 * v46];
        v47[4] = v40;
        v47[5] = v41;
        v37 = v88[0];
        goto LABEL_25;
      }

      ++v35;
    }

    __break(1u);
  }
}

uint64_t sub_10031FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100320014, 0, 0);
}

uint64_t sub_100320014()
{
  type metadata accessor for TipEventProxy();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[18] = v2;
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1003200E8;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  return static TipEventProxy.donate(eventIdentifier:for:with:)(v7, v5, v1, v3, v6);
}

uint64_t sub_1003200E8()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100320238, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100320238()
{
  v1 = v0[20];
  v2 = v0[17];
  v14 = v0[16];
  v15 = v0[15];
  v3 = v0[14];
  v13 = v0[13];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 queue];

  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v1;
  v0[6] = sub_1003207F4;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004CEC;
  v0[5] = &unk_100626D80;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v13 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10032047C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004778(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057D6A0;

  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100009D88();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v11 = String.init<A>(reflecting:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v11;
  *(v6 + 80) = v12;
  v13 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("error making donation of event=%@ error=%@", 42, 2, &_mh_execute_header, v5, v13, v6, a3, a2);
}

uint64_t sub_1003205AC(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isTelephonyProvider];

  if (v3)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = [a1 provider];
  v6 = [v5 isFaceTimeProvider];

  if (!v6)
  {
    return sub_100021AEC([a1 provider]);
  }

  v7 = TUPreferredFaceTimeBundleIdentifier();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_10032072C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1002DE008;

  return sub_10031FEF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100320800(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100320858(void *a1)
{
  v1 = [a1 messagesGroupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *sub_10032091C(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void SmartHoldingController.performRequest(_:for:)(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    if (([a2 isScreening] & 1) == 0)
    {
      v7 = [v5 session];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 state];

        if (!v9)
        {
          v10 = [a2 smartHoldingActiveSessionCount];
          if (v10 == -1)
          {
            __break(1u);
            return;
          }

          [a2 setSmartHoldingActiveSessionCount:v10 + 1];
        }
      }
    }

    v11 = sub_1003229AC(v5);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = v5;
    *(v12 + 32) = v11 & 1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10032392C;
    *(v13 + 24) = v12;
    aBlock[4] = sub_1000200AC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002007C;
    aBlock[3] = &unk_100626F88;
    v14 = _Block_copy(aBlock);
    v67 = v6;
    v15 = a2;

    [v15 handleUpdatedPropertiesAfterChangesInBlock:v14];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v17 = sub_100015D50();
      if (v17)
      {
        v18 = v17;
        v19 = [v17 state];

        if (!v19)
        {
          v58 = sub_100015D50();
          if (v58)
          {
            v59 = v58;
            v60 = [v58 events];

            sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v61 = sub_10000E6E8();

            if (v61)
            {
              v62 = [v61 text];
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              v66 = HIBYTE(v65) & 0xF;
              if ((v65 & 0x2000000000000000) == 0)
              {
                v66 = v63 & 0xFFFFFFFFFFFFLL;
              }

              if (v66)
              {
                [v61 confidenceScore];
                sub_1003B1B08();
              }
            }
          }
        }
      }

      v20 = sub_100015D50();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 state];

        if (v22 == 3)
        {
          v23 = sub_100015D50();
          if (v23)
          {
            v24 = v23;
            v25 = [v23 events];

            sub_100006AF0(0, &qword_1006A5708, TUSmartHoldingEvent_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v26 = sub_10000E6E8();

            if (v26)
            {
              [v26 confidenceScore];
              sub_1003B25E4();
            }
          }
        }
      }

      if ([v15 isScreening] && (v27 = objc_msgSend(v15, "smartHoldingSession")) != 0)
      {
        v28 = v27;
        v29 = swift_allocObject();
        *(v29 + 16) = v15;
        *(v29 + 24) = v28;
        v30 = v15;
        v31 = v28;
        WaitOnHoldController.cancellationHandler.setter();
      }

      else
      {
        WaitOnHoldController.cancellationHandler.setter();
      }

      if (qword_1006A0B60 == -1)
      {
        goto LABEL_20;
      }
    }

    sub_100008464();
    swift_once();
LABEL_20:
    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA6A0);
    v33 = v15;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      sub_100007BFC();
      v36 = swift_slowAlloc();
      sub_100015070();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      v69 = v33;
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      v38 = v33;
      v39 = String.init<A>(reflecting:)();
      v41 = sub_10002741C(v39, v40, aBlock);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updated smart holding session on call %s", v36, 0xCu);
      sub_100009B7C(v37);
      sub_100009ED0();

      sub_100009ED0();
    }

    return;
  }

  if (qword_1006A0B60 != -1)
  {
    sub_100008464();
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000AF9C(v42, qword_1006BA6A0);
  v43 = a1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    sub_100007BFC();
    v46 = swift_slowAlloc();
    sub_100015070();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v69 = v43;
    sub_100006AF0(0, &qword_1006A56F8, TUSmartHoldingSessionRequest_ptr);
    v48 = v43;
    v49 = String.init<A>(reflecting:)();
    v51 = sub_10002741C(v49, v50, aBlock);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "Invalid smart holding request %s", v46, 0xCu);
    sub_100009B7C(v47);
    sub_100009ED0();

    sub_100009ED0();
  }

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v55 = objc_allocWithZone(NSError);
  v56 = sub_100323698(v52, v54, 6, 0);
  v57 = _convertErrorToNSError(_:)();

  [a2 setSmartHoldingError:v57];
  swift_willThrow();
}