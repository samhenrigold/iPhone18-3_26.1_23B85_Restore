uint64_t closure #3 in LinkRCHFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7[0] = a3;
  v8 = a4;
  OUTLINED_FUNCTION_57_0(a2 + 48, v6);
  swift_errorRetain();
  outlined assign with take of LinkRCHFlow.State(v7, a2 + 48);
  return swift_endAccess();
}

void LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v63 = v1;
  v64 = v3;
  v58 = v4;
  v60 = v5;
  OUTLINED_FUNCTION_88_0();
  v56 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v17;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_44_8();
  v18 = v1;
  v19 = [v1 parameterName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  static InstrumentationUtils.emitActionParameterDisambiguationStartedInstrumentation(parameterName:)(v20, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  v29 = __swift_project_value_buffer(v12, static Signposter.voiceCommands);
  v61 = v14;
  v62 = v12;
  v55 = *(v14 + 16);
  v55(v0, v29, v12);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5(v31))
  {
    v32 = v0;
    v33 = OUTLINED_FUNCTION_52();
    *v33 = 0;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v30, v22, v34, "LinkRCHFlowNeedsDisambiguation", "", v33, 2u);
    v35 = v33;
    v0 = v32;
    OUTLINED_FUNCTION_15_0(v35);
  }

  v53 = v0;

  v36 = v56;
  (*(v7 + 16))(v2, v11, v56);
  v37 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v37);
  v54 = OUTLINED_FUNCTION_36_7();
  (*(v7 + 8))(v11, v36);
  v38 = v63;
  v39 = v63[4];
  OUTLINED_FUNCTION_18_4();
  v41 = *(v40 + 176);
  v52 = v18;
  v58 = v41();
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20(v38 + 48);
  outlined assign with take of LinkRCHFlow.State(v67, v38 + 48);
  swift_endAccess();
  v42 = v59;
  v43 = v0;
  v44 = v62;
  v55(v59, v43, v62);
  outlined init with copy of DeviceState(v39, v67);
  v45 = v61;
  OUTLINED_FUNCTION_39_13();
  v46 = OUTLINED_FUNCTION_79_2();
  v47 = OUTLINED_FUNCTION_16_22(v46);
  v48(v47, v42, v44);
  *(v39 + v7 + 8) = v54;
  *(v39 + v22) = v38;
  outlined init with take of AceServiceInvokerAsync(v67, &v11[v39]);
  v49 = v52;
  *(v39 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8)) = v52;

  v50 = v49;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v45 + 8))(v53, v44);
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsConfirmationFlow(request:iterator:)()
{
  OUTLINED_FUNCTION_40_0();
  v66 = v1;
  v67 = v3;
  v64 = v4;
  OUTLINED_FUNCTION_88_0();
  v5 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_44_8();
  v10 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  OUTLINED_FUNCTION_5_20(v14, v15, v16, v17, v18, v19, v20, v21, v57);
  __chkstk_darwin(v22);
  v24 = &v57 - v23;
  v68 = v1;
  v25 = [v1 parameterName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  static InstrumentationUtils.emitActionParameterConfirmationStartedInstrumentation(parameterName:)(v26, v28, v29, v30, v31, v32, v33, v34, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72[0]);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  v35 = __swift_project_value_buffer(v10, static Signposter.voiceCommands);
  v65 = v12;
  v61 = *(v12 + 16);
  v61(v24, v35, v10);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v36 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5(v37))
  {
    v38 = OUTLINED_FUNCTION_52();
    v60 = v2;
    v39 = OUTLINED_FUNCTION_67_5(v38);
    OUTLINED_FUNCTION_46_11(&dword_0, v40, v41, v39, "LinkRCHFlowNeedsConfirmation", "");
    OUTLINED_FUNCTION_15_0(v10);
  }

  v58 = v24;

  v42 = OUTLINED_FUNCTION_29_13();
  v43(v42);
  v44 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v44);
  v59 = OUTLINED_FUNCTION_36_7();
  v46 = *(v7 + 8);
  v45 = (v7 + 8);
  v46(v0, v5);
  v47 = v66;
  v48 = v66[4];
  OUTLINED_FUNCTION_18_4();
  v60 = (*(v49 + 160))();
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20(v47 + 48);
  outlined assign with take of LinkRCHFlow.State(v72, v47 + 48);
  swift_endAccess();
  v50 = v63;
  v61(v63, v24, v10);
  outlined init with copy of DeviceState(v48, v72);
  OUTLINED_FUNCTION_6_24();
  v51 = OUTLINED_FUNCTION_79_2();
  v52 = OUTLINED_FUNCTION_16_22(v51);
  v53(v52, v50, v10);
  *&v45[v48] = v59;
  *(v48 + v28) = v47;
  OUTLINED_FUNCTION_40_9();

  v54 = v45;
  OUTLINED_FUNCTION_73_4();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  v55 = OUTLINED_FUNCTION_76_5();
  v56(v55);
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v85 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v79 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_44_8();
  v87 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v83 = v12;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v80 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v77 - v17;
  v88 = v5;
  LNActionMetadata.firstParameterMetadata(from:)(v5);
  if (!v18)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v35, static Logger.voiceCommands);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v37))
    {
      v38 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v38);
      OUTLINED_FUNCTION_25(&dword_0, v39, v40, "#LinkRCHFlow Could not find matching parameter data for LNNeedsValueRequest");
      OUTLINED_FUNCTION_15_0(v2);
    }

    v41 = lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
    v42 = OUTLINED_FUNCTION_16_6(&type metadata for LinkRCHFlowError, v41);
    *v43 = 0xD00000000000001DLL;
    v43[1] = 0x8000000000233430;
    *&v92[0] = v42;
    v93 = 11;
    OUTLINED_FUNCTION_15_20(v2 + 48);
    outlined assign with take of LinkRCHFlow.State(v92, v2 + 48);
    swift_endAccess();
    static ExecuteResponse.complete()();
    goto LABEL_23;
  }

  v19 = v18;
  v81 = v2;
  v82 = v7;
  v20 = [v18 valueType];
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    v22 = swift_dynamicCastObjCClass();

    if (v22)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v23, static Logger.voiceCommands);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v25))
      {
        v26 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v26);
        OUTLINED_FUNCTION_25(&dword_0, v27, v28, "#LinkRCHFlow LNNeedsValueRequest has parameter value type LNArrayValueType, punching out to Shortcuts jr");
        OUTLINED_FUNCTION_17();
      }

      v29 = [objc_opt_self() wfSiriExecutionRequiresShortcutsJrError];
      *&v92[0] = v29;
      v93 = 10;
      v30 = v81;
      OUTLINED_FUNCTION_15_20(v81 + 48);
      v31 = v29;
      outlined assign with take of LinkRCHFlow.State(v92, v30 + 48);
      swift_endAccess();
      static ExecuteResponse.complete()();

LABEL_23:
      OUTLINED_FUNCTION_42();
      return;
    }
  }

  v84 = v19;
  v32 = [v84 valueType];
  objc_opt_self();
  OUTLINED_FUNCTION_71();
  if (!swift_dynamicCastObjCClass())
  {

    v44 = [v88 parameterName];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(v45, v47, v48, v49, v50, v51, v52, v53, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, *&v92[0]);

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
    }

    v54 = v87;
    v55 = __swift_project_value_buffer(v87, static Signposter.voiceCommands);
    v78 = *(v83 + 16);
    (v78)(v86, v55, v54);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v56 = OSSignposter.logHandle.getter();
    v57 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v58 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v58);
      v59 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v56, v57, v59, "LinkRCHFlowNeedsValue", "", v54, 2u);
      OUTLINED_FUNCTION_17();
    }

    v60 = v79;
    v61 = OUTLINED_FUNCTION_29_13();
    v62(v61);
    v63 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_66(v63);
    v77 = OUTLINED_FUNCTION_36_7();
    (*(v60 + 8))(v0, v8);
    v64 = v81;
    OUTLINED_FUNCTION_18_4();
    v79 = (*(v65 + 144))();
    v66 = v85;
    outlined init with copy of DeviceState(v85, v92);
    OUTLINED_FUNCTION_50_4();
    OUTLINED_FUNCTION_15_20(v64 + 48);
    outlined assign with take of LinkRCHFlow.State(v92, v64 + 48);
    swift_endAccess();
    v67 = v80;
    (v78)(v80, v86, v87);
    outlined init with copy of DeviceState(v66, v92);
    v68 = v83;
    v69 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v70 = (v14 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    v74 = v87;
    (*(v68 + 32))(v73 + v69, v67, v87);
    *(v73 + v70) = v77;
    *(v73 + v71) = v64;
    v75 = v88;
    *(v73 + v72) = v88;
    outlined init with take of AceServiceInvokerAsync(v92, v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));

    v76 = v75;
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    (*(v68 + 8))(v86, v74);
    goto LABEL_23;
  }

  LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)();
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsActionConfirmationFlow(request:iterator:)()
{
  OUTLINED_FUNCTION_40_0();
  v4 = v1;
  v7 = OUTLINED_FUNCTION_78_2(v5, v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_44_8();
  v12 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v14 = __chkstk_darwin(v13);
  OUTLINED_FUNCTION_5_20(v14, v15, v16, v17, v18, v19, v20, v21, v52);
  v23 = __chkstk_darwin(v22);
  v25 = &v52 - v24;
  static InstrumentationUtils.emitActionConfirmationStartedInstrumentation()(v23, v26, v27, v28, v29, v30, v31, v32, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  __swift_project_value_buffer(v12, static Signposter.voiceCommands);
  v33 = OUTLINED_FUNCTION_58_5();
  v54 = v34;
  (v34)(v33);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v60 = v25;
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5(v36))
  {
    v37 = OUTLINED_FUNCTION_52();
    v53 = v7;
    v38 = OUTLINED_FUNCTION_67_5(v37);
    OUTLINED_FUNCTION_46_11(&dword_0, v39, v40, v38, "LinkRCHFlowNeedsActionConfirmation", "");
    v7 = v53;
    OUTLINED_FUNCTION_15_0(v3);
  }

  v41 = OUTLINED_FUNCTION_29_13();
  v42(v41);
  v43 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v43);
  v52 = OUTLINED_FUNCTION_36_7();
  v45 = *(v9 + 8);
  v44 = (v9 + 8);
  v45(v0, v7);
  OUTLINED_FUNCTION_18_4();
  v53 = (*(v46 + 168))();
  OUTLINED_FUNCTION_80_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20(v4 + 48);
  outlined assign with take of LinkRCHFlow.State(&v65, v4 + 48);
  swift_endAccess();
  v47 = v56;
  v48 = v58;
  v54(v56, v60, v58);
  OUTLINED_FUNCTION_80_3();
  v49 = v57;
  OUTLINED_FUNCTION_6_24();
  v50 = OUTLINED_FUNCTION_79_2();
  (*(v49 + 32))(&v35[v50], v47, v48);
  *&v44[v50] = v52;
  *(v50 + v2) = v4;
  OUTLINED_FUNCTION_40_9();

  v51 = v44;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v49 + 8))(v60, v48);
  OUTLINED_FUNCTION_42();
}

void LinkRCHFlow.createNeedsChoiceFlow(request:iterator:)()
{
  OUTLINED_FUNCTION_40_0();
  v58 = v1;
  v6 = OUTLINED_FUNCTION_78_2(v4, v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3_29();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_44_8();
  v11 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_20(v15, v16, v17, v18, v19, v20, v21, v22, v54);
  __chkstk_darwin(v23);
  v25 = &v54 - v24;
  static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(0, 0, v26, v27, v28, v29, v30, v31, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, *&v69[0]);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  __swift_project_value_buffer(v11, static Signposter.voiceCommands);
  v32 = OUTLINED_FUNCTION_58_5();
  v57 = v33;
  (v33)(v32);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v64 = v25;
  v34 = OSSignposter.logHandle.getter();
  v35 = static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5(v35))
  {
    v36 = OUTLINED_FUNCTION_52();
    v37 = OUTLINED_FUNCTION_67_5(v36);
    OUTLINED_FUNCTION_46_11(&dword_0, v38, v39, v37, "LinkRCHFlowNeedsChoice", "");
    OUTLINED_FUNCTION_15_0(v3);
  }

  v40 = OUTLINED_FUNCTION_29_13();
  v41(v40);
  v42 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v42);
  v55 = OUTLINED_FUNCTION_36_7();
  (*(v8 + 8))(v0, v6);
  v43 = v58;
  v44 = *(v58 + 32);
  OUTLINED_FUNCTION_18_4();
  v56 = (*(v45 + 184))();
  OUTLINED_FUNCTION_80_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20(v43 + 48);
  outlined assign with take of LinkRCHFlow.State(v69, v43 + 48);
  swift_endAccess();
  v46 = v60;
  v47 = v62;
  v57(v60, v64, v62);
  OUTLINED_FUNCTION_80_3();
  v48 = v61;
  OUTLINED_FUNCTION_39_13();
  v49 = swift_allocObject();
  v50 = OUTLINED_FUNCTION_16_22(v49);
  v51(v50, v46, v47);
  *(v44 + v8 + 8) = v55;
  *(v44 + v2) = v43;
  v52 = v65;
  *(v44 + v13) = v65;
  outlined init with take of AceServiceInvokerAsync(v69, v44 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));

  v53 = v52;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v48 + 8))(v64, v47);
  OUTLINED_FUNCTION_42();
}

uint64_t LinkRCHFlow.createContinueInAppFlow(request:iterator:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_4();
  (*(v5 + 192))();
  outlined init with copy of DeviceState(a2, v10);
  v11 = 4;
  OUTLINED_FUNCTION_57_0(v2 + 48, v9);
  outlined assign with take of LinkRCHFlow.State(v10, v2 + 48);
  swift_endAccess();
  outlined init with copy of DeviceState(a2, v10);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  outlined init with take of AceServiceInvokerAsync(v10, v6 + 24);
  *(v6 + 64) = a1;

  v7 = a1;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in LinkRCHFlow.responseFrom(event:iterator:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in LinkRCHFlow.responseFrom(event:iterator:));
}

uint64_t closure #1 in LinkRCHFlow.responseFrom(event:iterator:)()
{
  v1 = *(v0[3] + 40);
  if (v1)
  {
    v6 = (*(*v1 + 192) + **(*v1 + 192));
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = closure #1 in LinkRCHFlow.responseFrom(event:iterator:);

    return v6();
  }

  else
  {
    v4 = v0[2];
    *v4 = 0;
    v4[1] = 0;
    OUTLINED_FUNCTION_6_0();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v2 + 40) = v0;
  *(v2 + 48) = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_6_0();
  return v1();
}

uint64_t closure #2 in LinkRCHFlow.responseFrom(event:iterator:)(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = 13;
  swift_beginAccess();
  v4 = a2;
  outlined assign with take of LinkRCHFlow.State(&v6, a1 + 48);
  return swift_endAccess();
}

uint64_t LinkRCHFlow.runAppProtectionCheckFlow(completionHandler:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 14;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v14, v3 + 48);
  swift_endAccess();
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#LinkRCHFlow runAppProtectionCheckFlow - resolving...", v11, 2u);
  }

  (*(**(v4 + 32) + 208))();
  outlined init with copy of DeviceState(a3, &v14);
  v12 = swift_allocObject();
  v12[2] = v4;
  outlined init with take of AceServiceInvokerAsync(&v14, (v12 + 3));
  v12[8] = a1;
  v12[9] = a2;

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

void LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v70 = v1;
  v71 = v2;
  v68 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_88_0();
  v65 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_50_0();
  v64 = v9 - v10;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_44_8();
  v12 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_20(v16, v17, v18, v19, v20, v21, v22, v23, v61);
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  v72 = v1;
  v27 = [v1 parameterName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  static InstrumentationUtils.emitPromptForValueStartedInstrumentation(parameterName:)(v28, v30, v31, v32, v33, v34, v35, v36, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0]);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_4_4(&one-time initialization token for voiceCommands);
  }

  v37 = __swift_project_value_buffer(v12, static Signposter.voiceCommands);
  v69 = v14;
  v63 = *(v14 + 16);
  v63(v26, v37, v12);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v38 = OSSignposter.logHandle.getter();
  v39 = static os_signpost_type_t.begin.getter();
  if (OUTLINED_FUNCTION_69_5(v39))
  {
    v40 = OUTLINED_FUNCTION_52();
    v61 = v5;
    v41 = v26;
    v42 = v12;
    v43 = v40;
    *v40 = 0;
    v44 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v38, v30, v44, "LinkRCHFlowNeedsValue", "", v43, 2u);
    v45 = v43;
    v12 = v42;
    v26 = v41;
    OUTLINED_FUNCTION_15_0(v45);
  }

  v62 = v26;

  v47 = v64;
  v46 = v65;
  (*(v7 + 16))(v64, v0, v65);
  v48 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_66(v48);
  v64 = OSSignpostIntervalState.init(id:isOpen:)();
  v50 = *(v7 + 8);
  v49 = (v7 + 8);
  v50(v0, v46);
  v51 = v70;
  v52 = v70[4];
  OUTLINED_FUNCTION_18_4();
  v65 = (*(v53 + 152))();
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_20(v51 + 48);
  outlined assign with take of LinkRCHFlow.State(v76, v51 + 48);
  swift_endAccess();
  v54 = v67;
  v63(v67, v26, v12);
  outlined init with copy of DeviceState(v52, v76);
  OUTLINED_FUNCTION_6_24();
  v55 = OUTLINED_FUNCTION_79_2();
  v56 = OUTLINED_FUNCTION_16_22(v55);
  v57(v56, v54, v12);
  *&v49[v52] = v64;
  *(v52 + v47) = v51;
  OUTLINED_FUNCTION_40_9();

  v58 = v49;
  OUTLINED_FUNCTION_73_4();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  v59 = OUTLINED_FUNCTION_76_5();
  v60(v59);
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v95 = a6;
  v96 = a5;
  v104 = a4;
  v98 = a3;
  v97 = a2;
  v94 = type metadata accessor for OSSignpostError();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySo7LNValueCGMd, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMR);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v103 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v90 - v16;
  __chkstk_darwin(v15);
  v18 = &v90 - v17;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.voiceCommands);
  v21 = *(v12 + 16);
  v21(v18, a1, v11);
  v91 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v107 = v12;
  v102 = a1;
  v99 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v108[0] = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNValue> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMd, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMR);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v21;
    v30 = v29;
    v105 = *(v107 + 8);
    v105(v18, v11);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v108);
    v21 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v22, v23, "PromptForConfirmationFlow.createNeedsValueFlow received %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v12 = v107;
    v10 = v99;

    a1 = v102;
  }

  else
  {

    v105 = *(v12 + 8);
    v105(v18, v11);
  }

  v32 = v106;
  v21(v106, a1, v11);
  v33 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v97) = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v90 = v21;

    v34 = v92;
    checkForErrorAndConsumeState(state:)();

    v35 = v93;
    v36 = v94;
    if ((*(v93 + 88))(v34, v94) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v37 = 0;
      v38 = 0;
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v34, v36);
      v39 = "exitValue: %s";
      v38 = 2;
      v37 = 1;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v108[0] = v41;
    *v40 = v38;
    *(v40 + 1) = v37;
    *(v40 + 2) = 2080;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNValue> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMd, &_s11SiriKitFlow12PromptResultOySo7LNValueCGMR);
    v42 = v106;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = v107;
    v105(v42, v11);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v108);
    v12 = v46;

    *(v40 + 4) = v47;
    v48 = v99;
    v49 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v33, v97, v49, "LinkRCHFlowNeedsValue", v39, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);

    (*(v100 + 8))(v48, v101);
    a1 = v102;
    v21 = v90;
  }

  else
  {

    (*(v100 + 8))(v10, v101);
    v105(v32, v11);
  }

  v50 = v103;
  v21(v103, a1, v11);
  v51 = (*(v12 + 88))(v50, v11);
  if (v51 == enum case for PromptResult.answered<A>(_:))
  {
    v59 = (*(v12 + 96))(v50, v11);
    v60 = *v50;
    static InstrumentationUtils.emitPromptForValueEndedInstrumentation()(v59, v61, v62, v63, v64, v65, v66, v67, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    [v96 respondWithValue:v60];

    outlined init with copy of DeviceState(v95, v108);
    v68 = 3;
LABEL_14:
    v109 = v68;
    v69 = v104;
    swift_beginAccess();
LABEL_15:
    outlined assign with take of LinkRCHFlow.State(v108, v69 + 48);
    return swift_endAccess();
  }

  if (v51 == enum case for PromptResult.error<A>(_:))
  {
    (*(v12 + 96))(v50, v11);
    if (*(v50 + 8) == 1)
    {
      v108[0] = *v50;
      v68 = 10;
    }

    else
    {
      v108[0] = *v50;
      v68 = 11;
    }

    goto LABEL_14;
  }

  if (v51 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v52, v53, v54, v55, v56, v57, v58, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    v108[0] = 2;
    memset(&v108[1], 0, 48);
    v68 = 14;
    goto LABEL_14;
  }

  if (v51 == enum case for PromptResult.unanswered<A>(_:))
  {
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "PromptForValueFlow received an .unanswered result, reprompting...", v73, 2u);
    }

    static InstrumentationUtils.emitPromptForValueEndedInstrumentation()(v74, v75, v76, v77, v78, v79, v80, v81, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    v82 = v96;
    v108[0] = v96;
    v108[1] = 0;
    outlined init with copy of DeviceState(v95, &v108[2]);
    v109 = 7;
    v69 = v104;
    swift_beginAccess();
    v83 = v82;
    goto LABEL_15;
  }

  lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
  v84 = swift_allocError();
  *v85 = 0xD000000000000022;
  v85[1] = 0x80000000002335B0;
  v108[0] = v84;
  v109 = 11;
  v86 = v104;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(v108, v86 + 48);
  swift_endAccess();
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_0, v87, v88, "Unexpected result", v89, 2u);
  }

  return (v105)(v50, v11);
}

void closure #1 in LinkRCHFlow.createNeedsActionConfirmationFlow(request:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21, char a22)
{
  OUTLINED_FUNCTION_40_0();
  v143 = v22;
  v148 = v23;
  v149 = v24;
  v26 = v25;
  v156 = v27;
  v151 = v28;
  v150 = v29;
  v160 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin(v31 - 8);
  OUTLINED_FUNCTION_50_0();
  v139 = v32 - v33;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_27_14(&v135 - v35);
  v146 = type metadata accessor for SimpleConfirmationResponseProvider();
  OUTLINED_FUNCTION_7_1();
  v145 = v36;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v39 - v38);
  v142 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_7_1();
  v41 = v40;
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v44 - v43);
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v153 = v46;
  v154 = v45;
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  OUTLINED_FUNCTION_7_1();
  v52 = v51;
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_50_0();
  v155 = (v54 - v55);
  OUTLINED_FUNCTION_25_4();
  v57 = __chkstk_darwin(v56);
  v59 = &v135 - v58;
  __chkstk_darwin(v57);
  v61 = &v135 - v60;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v141 = v41;
  v158 = v59;
  v62 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v62, static Logger.voiceCommands);
  v159 = *(v52 + 16);
  v159(v61, v160, v50);
  v138 = v59;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  v65 = os_log_type_enabled(v63, v64);
  v152 = v49;
  if (v65)
  {
    v66 = OUTLINED_FUNCTION_48();
    v136 = OUTLINED_FUNCTION_85();
    v161 = v136;
    *v66 = 136315138;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v26;
    v69 = v68;
    v70 = OUTLINED_FUNCTION_60_4();
    v71(v70);
    v72 = OUTLINED_FUNCTION_75_4();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v69, v73);

    *(v66 + 4) = v74;
    _os_log_impl(&dword_0, v63, v64, v148, v66, 0xCu);
    v75 = v136;
    __swift_destroy_boxed_opaque_existential_1Tm(v136);
    OUTLINED_FUNCTION_15_0(v75);
    v76 = v66;
    v49 = v152;
    OUTLINED_FUNCTION_15_0(v76);
  }

  else
  {
    v67 = v26;

    v77 = OUTLINED_FUNCTION_60_4();
    v78(v77);
  }

  v148 = a21;
  v79 = v158;
  v159(v158, v160, v50);
  v80 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v81 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v150 = v67;

    v82 = v140;
    checkForErrorAndConsumeState(state:)();

    v83 = v141;
    v84 = v142;
    v85 = (*(v141 + 88))(v82, v142);
    v137 = v52 + 16;
    if (v85 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v91 = 0;
      v90 = 0;
      v89 = "[Error] Interval already ended";
    }

    else
    {
      (*(v83 + 8))(v82, v84);
      v89 = "exitValue: %s";
      v90 = 2;
      v91 = 1;
    }

    v92 = v158;
    v93 = OUTLINED_FUNCTION_48();
    v161 = OUTLINED_FUNCTION_85();
    *v93 = v90;
    *(v93 + 1) = v91;
    *(v93 + 2) = 2080;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v94;
    v157(v92, v50);
    v96 = OUTLINED_FUNCTION_75_4();
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, v97);

    *(v93 + 4) = v98;
    v99 = v152;
    v100 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v80, v81, v100, v143, v89, v93, 0xCu);
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_15_0(v93);

    OUTLINED_FUNCTION_71_4();
    v101(v99);
    v88 = v150;
    v87 = v155;
  }

  else
  {

    OUTLINED_FUNCTION_71_4();
    v86(v49);
    v157(v79, v50);
    v87 = v155;
    v88 = v67;
  }

  outlined init with copy of DeviceState(v88, &v161);
  v163 = 3;
  v102 = v156;
  OUTLINED_FUNCTION_15_20(v156 + 48);
  outlined assign with take of LinkRCHFlow.State(&v161, v102 + 48);
  swift_endAccess();
  v159(v87, v160, v50);
  v103 = OUTLINED_FUNCTION_72_4();
  v105 = v104(v103);
  if (v105 != enum case for PromptResult.answered<A>(_:))
  {
    if (v105 == enum case for PromptResult.error<A>(_:))
    {
      v121 = OUTLINED_FUNCTION_72_4();
      v122(v121);
      if (v87[8] == 1)
      {
        v161 = *v87;
        v123 = 10;
      }

      else
      {
        v161 = *v87;
        v123 = 11;
      }
    }

    else
    {
      if (v105 != enum case for PromptResult.cancelled<A>(_:))
      {
        if (v105 != enum case for PromptResult.unanswered<A>(_:))
        {
          [v149 respondWithConfirmation:0];
          v134 = OUTLINED_FUNCTION_72_4();
          (v157)(v134);
          goto LABEL_26;
        }

        (v148)(0);
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v128))
        {
          v129 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v129);
          OUTLINED_FUNCTION_25(&dword_0, v130, v131, "PromptForConfirmationFlow received an .unanswered result, reprompting...");
          OUTLINED_FUNCTION_17();
        }

        v132 = v149;
        v161 = v149;
        outlined init with copy of DeviceState(v88, &v162);
        v163 = a22;
        OUTLINED_FUNCTION_15_20(v102 + 48);
        v133 = v132;
        goto LABEL_25;
      }

      static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v106, v107, v108, v109, v110, v111, v112, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
      OUTLINED_FUNCTION_49_6();
    }

    v163 = v123;
    OUTLINED_FUNCTION_15_20(v102 + 48);
LABEL_25:
    outlined assign with take of LinkRCHFlow.State(&v161, v102 + 48);
    swift_endAccess();
    goto LABEL_26;
  }

  v113 = OUTLINED_FUNCTION_72_4();
  v114(v113);
  v115 = v145;
  v116 = v144;
  v117 = v146;
  (*(v145 + 32))(v144, v87, v146);
  v118 = v147;
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v119 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v118, 1, v119) != 1)
  {
    v124 = v139;
    outlined init with copy of SpeakableString?(v118, v139, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v125 = *(v119 - 8);
    v126 = (*(v125 + 88))(v124, v119);
    if (v126 == enum case for ConfirmationResponse.confirmed(_:))
    {
      v120 = 1;
      goto LABEL_20;
    }

    if (v126 != enum case for ConfirmationResponse.rejected(_:))
    {
      (*(v125 + 8))(v124, v119);
    }
  }

  v120 = 0;
LABEL_20:
  (v148)(v120);
  [v149 respondWithConfirmation:v120];
  (*(v115 + 8))(v116, v117);
  outlined destroy of SpeakableString?(v118, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_26:
  OUTLINED_FUNCTION_42();
}

void closure #1 in LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  HIDWORD(v161) = v1;
  v162 = v2;
  v166 = v3;
  v174 = v4;
  v6 = v5;
  v169 = v7;
  v168 = v8;
  v10 = v9;
  v165 = type metadata accessor for OSSignpostError();
  OUTLINED_FUNCTION_7_1();
  v164 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v14 - v13);
  type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_7_1();
  v171 = v16;
  v172 = v15;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMd, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMR);
  OUTLINED_FUNCTION_7_1();
  v22 = v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_50_0();
  v173 = (v24 - v25);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v26);
  v177 = &v159 - v27;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v28);
  v30 = &v159 - v29;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v31, static Logger.voiceCommands);
  v178 = *(v22 + 16);
  v178(v30, v10, v20);
  v167 = v0;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v175 = v6;
  v170 = v22 + 16;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_48();
    v36 = OUTLINED_FUNCTION_85();
    v159 = v19;
    v37 = v36;
    v179 = v36;
    *v35 = 136315138;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<[LNValue]> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMd, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMR);
    dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v10;
    v39 = v22;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_51_6();
    v176 = v43;
    (v43)(v42);
    v44 = OUTLINED_FUNCTION_75_4();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v41, v45);
    v22 = v39;
    v10 = v38;

    *(v35 + 4) = v46;
    _os_log_impl(&dword_0, v32, v33, v162, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v47 = v37;
    v19 = v159;
    OUTLINED_FUNCTION_15_0(v47);
    v48 = v35;
    v6 = v175;
    OUTLINED_FUNCTION_15_0(v48);
  }

  else
  {

    v49 = OUTLINED_FUNCTION_51_6();
    v176 = v50;
    (v50)(v49);
  }

  v51 = v177;
  v178(v177, v10, v20);
  v52 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v168) = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v162 = v22;

    v53 = v163;
    checkForErrorAndConsumeState(state:)();

    v54 = v164;
    v55 = v165;
    v56 = (*(v164 + 88))(v53, v165);
    v160 = v10;
    if (v56 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v60 = 0;
      v59 = 0;
      v58 = "[Error] Interval already ended";
    }

    else
    {
      (*(v54 + 8))(v53, v55);
      v58 = "exitValue: %s";
      v59 = 2;
      v60 = 1;
    }

    v61 = OUTLINED_FUNCTION_48();
    v62 = OUTLINED_FUNCTION_85();
    v179 = v62;
    *v61 = v59;
    *(v61 + 1) = v60;
    *(v61 + 2) = 2080;
    OUTLINED_FUNCTION_4_37(&lazy protocol witness table cache variable for type PromptResult<[LNValue]> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMd, &_s11SiriKitFlow12PromptResultOySaySo7LNValueCGGMR);
    v63 = v177;
    dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v176(v63, v20);
    v66 = OUTLINED_FUNCTION_75_4();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v67);

    *(v61 + 4) = v68;
    v69 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v52, v168, v69, "LinkRCHFlowNeedsDisambiguation", v58, v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_15_0(v62);
    OUTLINED_FUNCTION_19_0();

    OUTLINED_FUNCTION_71_4();
    v70(v19);
    v6 = v175;
    v10 = v160;
  }

  else
  {

    OUTLINED_FUNCTION_71_4();
    v57(v19);
    v176(v51, v20);
  }

  v71 = v174;
  outlined init with copy of DeviceState(v174, &v179);
  OUTLINED_FUNCTION_11_20(3);
  outlined assign with take of LinkRCHFlow.State(&v179, v6 + 48);
  swift_endAccess();
  v72 = v173;
  v178(v173, v10, v20);
  v73 = OUTLINED_FUNCTION_51_6();
  v75 = v74(v73);
  if (v75 == enum case for PromptResult.answered<A>(_:))
  {
    v83 = OUTLINED_FUNCTION_51_6();
    v85 = v84(v83);
    v86 = *v72;
    static InstrumentationUtils.emitActionParameterDisambiguationEndedInstrumentation()(v85, v87, v88, v89, v90, v91, v92, v93, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
    if (specialized Array.count.getter(v86))
    {
      v94 = specialized Array.count.getter(v86);
      if (v94 == 1)
      {

        v102 = OUTLINED_FUNCTION_68_6(v98, v99, v100, v101);
        v103 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = OUTLINED_FUNCTION_48();
          v105 = OUTLINED_FUNCTION_85();
          v179 = v105;
          *v104 = 136315138;
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
          v106 = Array.description.getter();
          v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v179);

          *(v104 + 4) = v108;
          OUTLINED_FUNCTION_42_8();
          _os_log_impl(v109, v110, v111, v112, v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v105);
          OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_15_0(v104);
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        if ((v86 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v113 = *(v86 + 32);
        }

        OUTLINED_FUNCTION_1_18();

        [v166 respondWithValue:v86 & 0xC000000000000001];

        goto LABEL_34;
      }

      v128 = OUTLINED_FUNCTION_68_6(v94, v95, v96, v97);
      v129 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_38_4(v129))
      {
        v130 = OUTLINED_FUNCTION_52();
        *v130 = 0;
        OUTLINED_FUNCTION_42_8();
        _os_log_impl(v131, v132, v133, v134, v130, 2u);
        OUTLINED_FUNCTION_15_0(v130);
      }

      v135 = v166;
      v179 = v166;
      v180 = v86;
      outlined init with copy of DeviceState(v71, v181);
      OUTLINED_FUNCTION_11_20(SBYTE4(v161));
      v136 = v135;
    }

    else
    {

      v121 = OUTLINED_FUNCTION_68_6(v117, v118, v119, v120);
      v122 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v122))
      {
        v123 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v123);
        OUTLINED_FUNCTION_25(&dword_0, v124, v125, "PromptForDisambiguationFlow did not receive any valid input, reprompting...");
        OUTLINED_FUNCTION_17();
      }

      v126 = v166;
      v179 = v166;
      v180 = 0;
      outlined init with copy of DeviceState(v71, v181);
      OUTLINED_FUNCTION_11_20(SBYTE4(v161));
      v127 = v126;
    }

LABEL_33:
    outlined assign with take of LinkRCHFlow.State(&v179, v6 + 48);
    swift_endAccess();
    goto LABEL_34;
  }

  if (v75 == enum case for PromptResult.error<A>(_:))
  {
    v114 = OUTLINED_FUNCTION_51_6();
    v115(v114);
    if (v72[8] == 1)
    {
      v179 = *v72;
      v116 = 10;
    }

    else
    {
      v179 = *v72;
      v116 = 11;
    }

    goto LABEL_32;
  }

  if (v75 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v76, v77, v78, v79, v80, v81, v82, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
    OUTLINED_FUNCTION_49_6();
LABEL_32:
    OUTLINED_FUNCTION_11_20(v116);
    goto LABEL_33;
  }

  if (v75 == enum case for PromptResult.unanswered<A>(_:))
  {
    v137 = static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v76, v77, v78, v79, v80, v81, v82, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
    v141 = OUTLINED_FUNCTION_68_6(v137, v138, v139, v140);
    v142 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v142))
    {
      v143 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v143);
      OUTLINED_FUNCTION_25(&dword_0, v144, v145, "Unexpected .unanswered result from a disambiguation request.");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v146 = lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
    v147 = OUTLINED_FUNCTION_16_6(&type metadata for LinkRCHFlowError, v146);
    *v148 = 0xD00000000000002BLL;
    v148[1] = 0x8000000000233550;
    v179 = v147;
    OUTLINED_FUNCTION_11_20(11);
    outlined assign with take of LinkRCHFlow.State(&v179, v6 + 48);
    v149 = swift_endAccess();
    v153 = OUTLINED_FUNCTION_68_6(v149, v150, v151, v152);
    v154 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_17_11(v154))
    {
      v155 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v155);
      OUTLINED_FUNCTION_25(&dword_0, v156, v157, "Unexpected result");
      OUTLINED_FUNCTION_17();
    }

    v158 = OUTLINED_FUNCTION_51_6();
    (v176)(v158);
  }

LABEL_34:
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in LinkRCHFlow.createNeedsChoiceFlow(request:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v92 = a6;
  v93 = a5;
  v102 = a4;
  v96 = a3;
  v95 = a2;
  v91 = type metadata accessor for OSSignpostError();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMd, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMR);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v101 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v104 = &v88 - v16;
  __chkstk_darwin(v15);
  v18 = &v88 - v17;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.voiceCommands);
  v21 = *(v12 + 16);
  v21(v18, a1, v11);
  v94 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v105 = v12;
  v100 = a1;
  v97 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v106 = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNChoiceOption> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMd, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMR);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v21;
    v30 = v29;
    v103 = *(v105 + 8);
    v103(v18, v11);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, &v106);
    v21 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v22, v23, "PromptForConfirmationFlow.createNeedsChoiceFlow received %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v12 = v105;
    v10 = v97;

    a1 = v100;
  }

  else
  {

    v103 = *(v12 + 8);
    v103(v18, v11);
  }

  v32 = v104;
  v21(v104, a1, v11);
  v33 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v95) = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v88 = v21;

    v34 = v89;
    checkForErrorAndConsumeState(state:)();

    v35 = v90;
    v36 = v91;
    if ((*(v90 + 88))(v34, v91) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v37 = 0;
      v38 = 0;
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v34, v36);
      v39 = "exitValue: %s";
      v38 = 2;
      v37 = 1;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v106 = v41;
    *v40 = v38;
    *(v40 + 1) = v37;
    *(v40 + 2) = 2080;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<LNChoiceOption> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMd, &_s11SiriKitFlow12PromptResultOySo14LNChoiceOptionCGMR);
    v42 = v104;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = v105;
    v103(v42, v11);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v106);
    v12 = v46;

    *(v40 + 4) = v47;
    v48 = v97;
    v49 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v33, v95, v49, "LinkRCHFlowNeedsChoice", v39, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);

    (*(v98 + 8))(v48, v99);
    a1 = v100;
    v21 = v88;
  }

  else
  {

    (*(v98 + 8))(v10, v99);
    v103(v32, v11);
  }

  v50 = v101;
  v21(v101, a1, v11);
  v51 = (*(v12 + 88))(v50, v11);
  if (v51 == enum case for PromptResult.answered<A>(_:))
  {
    v59 = (*(v12 + 96))(v50, v11);
    v60 = *v50;
    static InstrumentationUtils.emitPromptForValueEndedInstrumentation()(v59, v61, v62, v63, v64, v65, v66, v67, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    v68 = v60;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v68;
      *v72 = v68;
      v73 = v68;
      _os_log_impl(&dword_0, v69, v70, "PromptForMultiChoiceFlow selected value: %@.", v71, 0xCu);
      outlined destroy of SpeakableString?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    [v93 respondWithOption:v68];
    outlined init with copy of DeviceState(v92, &v106);
    v74 = 3;
    goto LABEL_16;
  }

  if (v51 == enum case for PromptResult.error<A>(_:))
  {
    (*(v12 + 96))(v50, v11);
    if (*(v50 + 8) == 1)
    {
      v106 = *v50;
      v74 = 10;
    }

    else
    {
      v106 = *v50;
      v74 = 11;
    }

    goto LABEL_16;
  }

  if (v51 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v52, v53, v54, v55, v56, v57, v58, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    v106 = &dword_0 + 2;
    memset(v107, 0, sizeof(v107));
    v74 = 14;
LABEL_16:
    v108 = v74;
    v75 = v102;
    swift_beginAccess();
LABEL_17:
    outlined assign with take of LinkRCHFlow.State(&v106, v75 + 48);
    return swift_endAccess();
  }

  if (v51 == enum case for PromptResult.unanswered<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v52, v53, v54, v55, v56, v57, v58, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "Unexpected .unanswered result from a needs choice request.", v79, 2u);
    }

    v80 = v93;
    v106 = v93;
    outlined init with copy of DeviceState(v92, v107);
    v108 = 9;
    v75 = v102;
    swift_beginAccess();
    v81 = v80;
    goto LABEL_17;
  }

  lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
  v82 = swift_allocError();
  *v83 = 0xD000000000000028;
  v83[1] = 0x8000000000233580;
  v106 = v82;
  v108 = 11;
  v84 = v102;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v106, v84 + 48);
  swift_endAccess();
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_0, v85, v86, "Unexpected result", v87, 2u);
  }

  return (v103)(v50, v11);
}

void closure #1 in LinkRCHFlow.createContinueInAppFlow(request:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v91 = a2;
  v92 = a4;
  v89 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v6 = __chkstk_darwin(v5 - 8);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v81 - v8;
  v10 = type metadata accessor for SimpleConfirmationResponseProvider();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v93 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v81 - v18;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.voiceCommands);
  v22 = *(v15 + 16);
  v90 = a1;
  v88 = v22;
  v22(v19, a1, v14);
  v94 = v15;
  v87 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v84 = v9;
    v26 = v25;
    v82 = swift_slowAlloc();
    v95 = v82;
    *v26 = 136315138;
    lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v13;
    v28 = v11;
    v29 = v10;
    v31 = v30;
    v86 = *(v94 + 8);
    v86(v19, v14);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v31, &v95);
    v10 = v29;
    v11 = v28;
    v13 = v83;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_0, v23, v24, "PromptForConfirmationFlow.createContinueInAppFlow received %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);

    v9 = v84;

    v33 = v94;
  }

  else
  {

    v34 = v94;
    v86 = *(v94 + 8);
    v86(v19, v14);
    v33 = v34;
  }

  v35 = v93;
  outlined init with copy of DeviceState(v89, &v95);
  v99 = 3;
  v36 = v91;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(&v95, v36 + 48);
  swift_endAccess();
  v88(v35, v90, v14);
  v37 = (*(v33 + 88))(v35, v14);
  if (v37 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v33 + 96))(v35, v14);
    (*(v11 + 32))(v13, v35, v10);
    SimpleConfirmationResponseProvider.confirmationResponse.getter();
    v45 = type metadata accessor for ConfirmationResponse();
    if (__swift_getEnumTagSinglePayload(v9, 1, v45) != 1)
    {
      v53 = v85;
      outlined init with copy of SpeakableString?(v9, v85, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v54 = *(v45 - 8);
      if ((*(v54 + 88))(v53, v45) == enum case for ConfirmationResponse.confirmed(_:))
      {
        static InstrumentationUtils.emitActionConfirmationEndedInstrumentation(isCorrectAction:)(1, v55, v56, v57, v58, v59, v60, v61, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
        [v92 respondWithSuccess];
LABEL_18:
        (*(v11 + 8))(v13, v10);
        outlined destroy of SpeakableString?(v9, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        return;
      }

      (*(v54 + 8))(v53, v45);
    }

    static InstrumentationUtils.emitActionParameterConfirmationEndedInstrumentation(isCorrectParameter:)(0, v46, v47, v48, v49, v50, v51, v52, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
    v71 = static NSError.userCancelled.getter();
    v72 = _convertErrorToNSError(_:)();

    [v92 respondWithError:v72];
    goto LABEL_18;
  }

  v62 = v37;
  if (v37 == enum case for PromptResult.error<A>(_:))
  {
    v86(v35, v14);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "PromptForConfirmationFlow.createContinueInAppFlow received an .error result, returning error", v65, 2u);
    }

LABEL_13:

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
    v66 = static NSError.userCancelled.getter();
    static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)(v66);

    v67 = v66;
    v68 = _convertErrorToNSError(_:)();

    [v92 respondWithError:v68];
    return;
  }

  if (v37 == enum case for PromptResult.cancelled<A>(_:))
  {
    static InstrumentationUtils.emitLinkFlowCancelledInstrumentation(cancellationInitiator:)(1, v38, v39, v40, v41, v42, v43, v44, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
    v69 = static NSError.userCancelled.getter();
    v70 = _convertErrorToNSError(_:)();

    [v92 respondWithError:v70];
    v95 = (&dword_0 + 2);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 14;
    swift_beginAccess();
    outlined assign with take of LinkRCHFlow.State(&v95, v36 + 48);
    swift_endAccess();
    return;
  }

  v73 = enum case for PromptResult.unanswered<A>(_:);
  v63 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  v75 = os_log_type_enabled(v63, v74);
  if (v62 == v73)
  {
    if (v75)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v63, v74, "PromptForConfirmationFlow.createContinueInAppFlow received an .unanswered result, returning error", v76, 2u);
    }

    goto LABEL_13;
  }

  if (v75)
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_0, v63, v74, "PromptForConfirmationFlow.createContinueInAppFlow received an unknown result, returning error", v77, 2u);
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, NSError_ptr);
  v78 = static NSError.userCancelled.getter();
  static InstrumentationUtils.emitLinkFlowFailedInstrumentation(error:)(v78);

  v79 = v78;
  v80 = _convertErrorToNSError(_:)();

  [v92 respondWithError:v80];
  v86(v93, v14);
}

id static NSError.userCancelled.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(NSError);
  return @nonobjc NSError.init(domain:code:userInfo:)(v0, v2, 3072, 0);
}

uint64_t closure #1 in LinkRCHFlow.runAppProtectionCheckFlow(completionHandler:iterator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v54 = a4;
  v7 = type metadata accessor for AppResolutionFlowResult();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v50 - v13;
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  outlined init with copy of DeviceState(a3, v56);
  v57 = 3;
  swift_beginAccess();
  outlined assign with take of LinkRCHFlow.State(v56, a2 + 48);
  swift_endAccess();
  v17 = *(v8 + 16);
  v17(v16, a1, v7);
  v18 = (*(v8 + 88))(v16, v7);
  if (v18 == enum case for AppResolutionFlowResult.resolved(_:))
  {
    (*(v8 + 96))(v16, v7);
    v19 = *v16;
LABEL_5:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v56[0] = v24;
      *v23 = 136315138;
      v55 = v19;
      type metadata accessor for App();
      lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(&lazy protocol witness table cache variable for type App and conformance App, 255, &type metadata accessor for App);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v56);

      *(v23 + 4) = v27;

      _os_log_impl(&dword_0, v21, v22, "#LinkRCHFlow runAppProtectionCheckFlow - resolved app: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    else
    {
    }

    v28 = 1;
    return v54(v28);
  }

  if (v18 == enum case for AppResolutionFlowResult.resolvedWithIntent(_:))
  {
    (*(v8 + 96))(v16, v7);
    v19 = *v16;

    goto LABEL_5;
  }

  if (v18 == enum case for AppResolutionFlowResult.error(_:))
  {
    (*(v8 + 96))(v16, v7);
    v30 = v16[8];
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.voiceCommands);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412546;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      *(v34 + 12) = 1024;
      *(v34 + 14) = v30;
      _os_log_impl(&dword_0, v32, v33, "#LinkRCHFlow runAppProtectionCheckFlow - error: %@; \n\t handled=%{BOOL}d", v34, 0x12u);
      outlined destroy of SpeakableString?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v54(0);
  }

  else
  {
    if (v18 == enum case for AppResolutionFlowResult.cancelled(_:))
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.voiceCommands);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "#LinkRCHFlow runAppProtectionCheckFlow - cancelled", v40, 2u);
      }

      v28 = 0;
      return v54(v28);
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.voiceCommands);
    v17(v14, a1, v7);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v52 = v43;
      v45 = v44;
      v53 = swift_slowAlloc();
      v56[0] = v53;
      *v45 = 136315138;
      v17(v11, v14, v7);
      v51 = String.init<A>(describing:)();
      v47 = v46;
      v48 = *(v8 + 8);
      v48(v14, v7);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v47, v56);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_0, v42, v52, "#LinkRCHFlow runAppProtectionCheckFlow - received unexpected appResolutionFlowResult: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
    }

    else
    {

      v48 = *(v8 + 8);
      v48(v14, v7);
    }

    v54(0);
    return (v48)(v16, v7);
  }
}

id LNEnvironment.__allocating_init(localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithLocaleIdentifier:v4];

  return v5;
}

uint64_t LinkRCHFlow.processDeviceUnlockResult(exitValue:)(char a1)
{
  swift_beginAccess();
  outlined init with copy of LinkRCHFlow.State(v1 + 48, v9);
  if (v10 == 2)
  {
    outlined init with take of AceServiceInvokerAsync(v9, v11);
    if (a1)
    {
      lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
      v3 = swift_allocError();
      *v4 = 0x64656B636F6C6E55;
      v4[1] = 0xEF64656C69616620;
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      *&v9[0] = v3;
      v5 = 11;
    }

    else
    {
      outlined init with take of AceServiceInvokerAsync(v11, v9);
      v5 = 3;
    }

    v10 = v5;
    swift_beginAccess();
    outlined assign with take of LinkRCHFlow.State(v9, v1 + 48);
  }

  else
  {
    outlined destroy of LinkRCHFlow.State(v9);
    lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError();
    v6 = swift_allocError();
    *v7 = 0xD00000000000001BLL;
    v7[1] = 0x80000000002335E0;
    *&v9[0] = v6;
    v10 = 11;
    swift_beginAccess();
    outlined assign with take of LinkRCHFlow.State(v9, v1 + 48);
  }

  return swift_endAccess();
}

uint64_t LinkRCHFlow.deinit()
{

  outlined destroy of LinkRCHFlow.State(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  outlined destroy of SpeakableString?(v0 + 168, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));

  return v0;
}

uint64_t LinkRCHFlow.__deallocating_deinit()
{
  LinkRCHFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance LinkRCHFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance LinkRCHFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return LinkRCHFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance LinkRCHFlow@<X0>(uint64_t a1@<X8>)
{
  result = LinkRCHFlow.exitValue.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

void outlined bridged method (mbnn) of @objc LNActionExecutorOptions.clientLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setClientLabel:v4];
}

uint64_t specialized LinkRCHFlow.__allocating_init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, __int128 a9, __int128 a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v29 = a7;
  v30 = a8;
  v28 = a5;
  v26 = a3;
  v27 = a4;
  v24 = a10;
  v25 = a9;
  v18 = *(a14 - 8);
  __chkstk_darwin(a13);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v18 + 16))(v20, a6, a14);
  v22 = specialized LinkRCHFlow.init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(a1, a2, v26, v27, v28, v20, v29, v30, v25, *(&v25 + 1), v24, *(&v24 + 1), a11, a12, v21, a14, a15);
  (*(v18 + 8))(a6, a14);
  return v22;
}

unint64_t lazy protocol witness table accessor for type LinkRCHFlowError and conformance LinkRCHFlowError()
{
  result = lazy protocol witness table cache variable for type LinkRCHFlowError and conformance LinkRCHFlowError;
  if (!lazy protocol witness table cache variable for type LinkRCHFlowError and conformance LinkRCHFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkRCHFlowError and conformance LinkRCHFlowError);
  }

  return result;
}

uint64_t specialized LinkRCHFlow.init(action:actionMetadata:bundleId:showWhenRun:connection:workflowRunner:serviceInvoker:deviceState:overrideStrategy:overrideState:overrideUnlockFlowProvider:outputPublisher:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v95 = a8;
  v97 = a7;
  v82 = a5;
  v89 = a4;
  v81 = a3;
  v94 = a14;
  v93 = a11;
  v96 = a10;
  v20 = type metadata accessor for CATOption();
  __chkstk_darwin(v20 - 8);
  v83 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109[3] = a16;
  v109[4] = a17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
  (*(*(a16 - 8) + 32))(boxed_opaque_existential_1, a6, a16);
  *(a15 + 16) = a1;
  *(a15 + 24) = a2;
  v23 = *(a17 + 16);
  v24 = a1;
  v25 = v96;
  v91 = v24;
  v26 = a2;
  v86 = boxed_opaque_existential_1;
  v87 = a16;
  v88 = a17;
  v84 = a17 + 16;
  v85 = v23;
  *(a15 + 112) = v23(a16, a17);
  *(a15 + 120) = v27;
  outlined init with copy of SpeakableString?(v97, a15 + 168, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  outlined init with copy of DeviceState(a9, a15 + 208);
  v92 = a9;
  v90 = v26;
  if (v25)
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.voiceCommands);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = v26;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v29, v30, "#LinkRCHFlow init - overriding strategy", v32, 2u);
    }

    v33 = v25;
  }

  else
  {
    outlined init with copy of DeviceState(a9, v98);
    outlined init with copy of DeviceState(v94, v108);
    outlined init with copy of DeviceState(v95, v107);
    type metadata accessor for RunLinkActionCATs(0);
    v34 = v26;
    static CATOption.defaultMode.getter();
    v80 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunLinkActionCATsSimple(0);
    static CATOption.defaultMode.getter();
    v79 = CATWrapperSimple.__allocating_init(options:globals:)();
    v35 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    v36 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for ShortcutsLinkRCHFlowStrategy();
    v33 = swift_allocObject();
    v106[3] = v35;
    v106[4] = &protocol witness table for RunLinkActionCATPatternsExecutor;
    v106[0] = v36;
    v37 = v89;
    *(v33 + 16) = v81;
    *(v33 + 24) = v37;
    *(v33 + 32) = v34;
    outlined init with copy of DeviceState(v98, v33 + 40);
    *(v33 + 80) = v82 & 1;
    outlined init with copy of DeviceState(v108, v33 + 88);
    outlined init with copy of DeviceState(v107, v33 + 128);
    outlined init with copy of DeviceState(v98, v105);
    outlined init with copy of DeviceState(v106, v104);
    type metadata accessor for RunVoiceCommandCATs(0);
    v38 = v34;

    static CATOption.defaultMode.getter();
    v89 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    v83 = CATWrapperSimple.__allocating_init(options:globals:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    type metadata accessor for LinkActionDialogTemplating();
    v39 = swift_allocObject();
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v104, v104[3]);
    __chkstk_darwin(v40);
    v42 = (&v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = v90;
    (*(v43 + 16))(v42);
    v44 = *v42;
    v102 = v35;
    v103 = &protocol witness table for RunLinkActionCATPatternsExecutor;

    *&v101 = v44;
    outlined init with take of AceServiceInvokerAsync(v105, (v39 + 2));
    v45 = v79;
    v39[7] = v80;
    v39[8] = v45;
    v46 = v83;
    v39[9] = v89;
    v39[10] = v46;
    outlined init with take of AceServiceInvokerAsync(&v101, (v39 + 11));
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    *(v33 + 168) = v39;
  }

  *(a15 + 32) = v33;
  v47 = [v31 systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = [objc_opt_self() sessionStartingProtocol];
  *&v98[0] = v49;
  __chkstk_darwin(v49);
  *(&v78 - 2) = v98;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v78 - 4), v48);
  v51 = v50;

  v52 = 0;
  if (v51)
  {
    v53 = v85(v87, v88);
    v55 = v54;
    type metadata accessor for LinkActivityManager();
    swift_allocObject();
    v52 = LinkActivityManager.init(bundleId:)(v53, v55);
  }

  *(a15 + 40) = v52;
  v56 = v95;
  outlined init with copy of DeviceState(v95, a15 + 128);
  outlined init with copy of DeviceState(v109, a15 + 248);
  v57 = v93;
  outlined init with copy of SpeakableString?(v93, v98, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
  v58 = v100;
  v59 = v94;
  if (v100 == 255)
  {
    v63 = 0;
    v60 = 0uLL;
    v58 = 14;
    v61 = 0uLL;
    v62 = 0uLL;
  }

  else
  {
    v60 = v98[0];
    v61 = v98[1];
    v62 = v98[2];
    v63 = v99;
  }

  v64 = a12;
  *(a15 + 48) = v60;
  *(a15 + 64) = v61;
  *(a15 + 80) = v62;
  *(a15 + 96) = v63;
  *(a15 + 104) = v58;
  if (*(v57 + 56) != 255)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.voiceCommands);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v89 = a12;
      *v68 = 0;
      _os_log_impl(&dword_0, v66, v67, "#LinkRCHFlow init - overriding Flow state", v68, 2u);
      v64 = v89;
    }
  }

  if (v64)
  {
    v69 = swift_allocObject();
    *(v69 + 16) = v64;
    *(v69 + 24) = a13;
    v70 = swift_allocObject();
    *(v70 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow);
    *(v70 + 24) = v69;
    *(a15 + 288) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ShortcutsUnlockDeviceStrategy) -> (@out GuardFlow);
    *(a15 + 296) = v70;
    v71 = one-time initialization token for voiceCommands;

    if (v71 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.voiceCommands);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "#LinkRCHFlow init - overriding UnlockFlowProvider", v75, 2u);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow))?(v64, a13);
    v31 = v90;
  }

  else
  {
    v76 = swift_allocObject();
    *(v76 + 16) = specialized thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow);
    *(v76 + 24) = 0;
    *(a15 + 288) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ShortcutsUnlockDeviceStrategy) -> (@out GuardFlow);
    *(a15 + 296) = v76;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  outlined destroy of SpeakableString?(v97, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  outlined destroy of SpeakableString?(v57, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  return a15;
}

uint64_t outlined destroy of DurationUtil(uint64_t a1)
{
  v2 = type metadata accessor for DurationUtil(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v0);
}

void outlined consume of LinkConnectionEvent?(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of LinkConnectionEvent(result, a2, a3);
  }
}

void outlined consume of LinkConnectionEvent(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:

      break;
    case 6:

      break;
    default:
      return;
  }
}

id outlined copy of LinkConnectionEvent(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
      result = result;
      break;
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t partial apply for closure #1 in LinkRCHFlow.responseFrom(event:iterator:)()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in LinkRCHFlow.responseFrom(event:iterator:)(v3, v0);
}

uint64_t sub_113FA8()
{

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v1);
}

uint64_t objectdestroy_13Tm()
{
  type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_38_12();
  v3(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v1));

  return _swift_deallocObject(v0);
}

uint64_t objectdestroy_19Tm()
{
  type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_38_12();
  v3(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + ((v1 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in LinkRCHFlow.createNeedsValueFlow(request:iterator:selectedValues:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_5_0(v4);
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_56_4();

  return a2(a1, v2 + v5);
}

uint64_t sub_11435C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return _swift_deallocObject(v0);
}

void partial apply for closure #1 in LinkRCHFlow.createNeedsDisambiguationFlow(request:iterator:selectedValues:)(uint64_t a1, const char *a2, ...)
{
  v2 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_5_0(v2);
  OUTLINED_FUNCTION_10_27();
  OUTLINED_FUNCTION_56_4();
  closure #1 in LinkRCHFlow.createDismbiguatingNeedsValueFlow(request:actionParameterMetadata:iterator:selectedValues:)();
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B13RCHFlowResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B7RCHFlowC5StateO(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 0xD)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkRCHFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && *(a1 + 57))
  {
    return (*a1 + 242);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xF)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkRCHFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LinkRCHFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 > 0xD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkRCHFlowError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkRCHFlowError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1146B0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_114758()
{

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v0);
}

uint64_t lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ShortcutsUnlockDeviceStrategy) -> (@out GuardFlow)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_37(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_23()
{
}

uint64_t OUTLINED_FUNCTION_11_20@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_20(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_18_21()
{

  static InstrumentationUtils.emitLinkFlowStartedInstrumentation(targetBundle:action:)();
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return OSSignpostIntervalState.init(id:isOpen:)();
}

uint64_t OUTLINED_FUNCTION_40_9()
{
  outlined init with take of AceServiceInvokerAsync((v3 - 152), v0 + v1);
  *(v0 + v2) = *(v3 - 184);
}

void OUTLINED_FUNCTION_46_11(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

double OUTLINED_FUNCTION_49_6()
{
  *(v0 - 152) = 2;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_5()
{
  *(v3 - 216) = v2;
  *(v3 - 208) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  result = v1;
  *(v2 - 208) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_3()
{
  v2 = *(v0 - 216);

  return outlined init with copy of DeviceState(v2, v0 - 152);
}

uint64_t OUTLINED_FUNCTION_67_5(_WORD *a1)
{
  *a1 = 0;

  return OSSignpostID.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_69_5(uint64_t a1)
{

  return OS_os_log.signpostsEnabled.getter();
}

uint64_t OUTLINED_FUNCTION_78_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 184) = a1;
  *(v2 - 200) = a2;

  return type metadata accessor for OSSignpostID();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return outlined init with copy of DeviceState(v0, v1 - 152);
}

void OUTLINED_FUNCTION_81_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::Properties_optional __swiftcall AutoShortcutCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t AutoShortcutCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 7:
    case 9:
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.appDisabled(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_2_35(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v9);
  OUTLINED_FUNCTION_32_13();
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v12;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 56) = v13;
  *v13 = v1;
  v13[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  OUTLINED_FUNCTION_66_5();

  return v14();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppDisabledDialogIds_optional __swiftcall AutoShortcutCATsSimple.AppDisabledDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.AppDisabledDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t AutoShortcutCATsSimple.AppDisabledDialogIds.rawValue.getter(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_27_15();
      break;
    case 2:
      result = 0x6C62616E45736177;
      break;
    case 3:
      result = 0x7361576863746177;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppDisabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.AppDisabledDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppDisabledDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.AppDisabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.AppDisabledDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.AppDisabledDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.appDisabledAsLabels(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_2_35(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v9);
  OUTLINED_FUNCTION_32_13();
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v12;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 56) = v13;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v13 = v14;
  v13[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  OUTLINED_FUNCTION_60_5();

  return v15();
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.appEnabled(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_2_35(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v9);
  OUTLINED_FUNCTION_32_13();
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v12;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 56) = v13;
  *v13 = v1;
  v13[1] = RunLinkActionCATsSimple.needsDisambiguation(customDialog:items:);
  OUTLINED_FUNCTION_66_5();

  return v14();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppEnabledDialogIds_optional __swiftcall AutoShortcutCATsSimple.AppEnabledDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.AppEnabledDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t AutoShortcutCATsSimple.AppEnabledDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x6C62616E45736177;
  }

  return 0x6863746177;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppEnabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.AppEnabledDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppEnabledDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.AppEnabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.AppEnabledDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.AppEnabledDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.appEnabledAsLabels(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_69_3(v4);
  v6 = OUTLINED_FUNCTION_32_12(v5);
  v7 = OUTLINED_FUNCTION_1_3(v6, xmmword_218630);
  if (v3)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_2_35(v7);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v9);
  OUTLINED_FUNCTION_32_13();
  if (v10)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v12;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 56) = v13;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v13 = v14;
  v13[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  OUTLINED_FUNCTION_60_5();

  return v15();
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablement(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_9_22(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_64_4(v10);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_17_8(v12);
  v14 = OUTLINED_FUNCTION_15_9(36);

  return v15(v14);
}

uint64_t AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C62616E65;
  }

  else
  {
    return 0x656C6261736964;
  }
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablementAsLabels(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_9_22(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_64_4(v11);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v14 = OUTLINED_FUNCTION_14_7(36);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablementDeclined(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_9_22(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_64_4(v10);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_17_8(v12);
  v14 = OUTLINED_FUNCTION_15_9(44);

  return v15(v14);
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDeclinedDialogIds_optional __swiftcall AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.rawValue.getter(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_27_15();
  }

  if (a1 == 1)
  {
    return 0x66664F7470656BLL;
  }

  return 0x6E4F7470656BLL;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDeclinedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDeclinedDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.rawValue.getter(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablementDeclinedAsLabels(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_9_22(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_64_4(v11);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v14 = OUTLINED_FUNCTION_14_7(44);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.disableAndCancel()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v5(0xD00000000000001DLL, 0x800000000022E6F0, _swiftEmptyArrayStorage);
}

uint64_t AutoShortcutCATsSimple.DisableAndCancelDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x66664F6E727574;
  }

  else
  {
    return 0x6E4F657661656CLL;
  }
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::DisableAndCancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::DisableAndCancelDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.DisableAndCancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.DisableAndCancelDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

uint64_t AutoShortcutCATsSimple.disableAndCancelAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  OUTLINED_FUNCTION_32_7();

  return v5(0xD00000000000001DLL);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.enableAndCancel()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_16_23();

  return v6(v4);
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::EnableAndCancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::EnableAndCancelDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.EnableAndCancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  AutoShortcutCATsSimple.EnableAndCancelDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = 0xE600000000000000;
}

uint64_t AutoShortcutCATsSimple.enableAndCancelAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_17_21();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.firstRun(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_57_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_17_8(v11);
  v13 = OUTLINED_FUNCTION_15_9(21);

  return v14(v13);
}

BOOL AutoShortcutCATsSimple.FirstRunDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.FirstRunDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.FirstRunDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AutoShortcutCATsSimple.FirstRunDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.firstRunAsLabels(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_12_21(v5, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v11);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v12;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v13 = OUTLINED_FUNCTION_14_7(21);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.firstRunHomePod(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_64_0();
  v22 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3(v3);
  v0[9] = v4;
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_218630);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v0[8];
  if (v8 == 1)
  {
    outlined destroy of String?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = OUTLINED_FUNCTION_30_10();
  outlined init with copy of SpeakableString?(v11, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_16_7();
  v13 = v0[7];
  if (v12 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_29_14();
  outlined init with copy of SpeakableString?(v15, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v21 = v17;
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = AutoShortcutCATsSimple.firstRunHomePod(app:firstPhrase:secondPhrase:);
  v19 = OUTLINED_FUNCTION_16_23();

  return v21(v19);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t AutoShortcutCATsSimple.FirstRunHomePodDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7845657361726870;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::FirstRunHomePodDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::FirstRunHomePodDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.FirstRunHomePodDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.FirstRunHomePodDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.firstRunHomePodAsLabels(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_64_0();
  v23 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3(v3);
  v0[9] = v4;
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_218630);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v0[8];
  if (v8 == 1)
  {
    outlined destroy of String?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = OUTLINED_FUNCTION_30_10();
  outlined init with copy of SpeakableString?(v11, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_16_7();
  v13 = v0[7];
  if (v12 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  v15 = OUTLINED_FUNCTION_29_14();
  outlined init with copy of SpeakableString?(v15, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v22 = v17;
  v18 = swift_task_alloc();
  v0[10] = v18;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v18 = v19;
  v18[1] = AutoShortcutCATsSimple.firstRunHomePodAsLabels(app:firstPhrase:secondPhrase:);
  v20 = OUTLINED_FUNCTION_17_21();

  return v22(v20);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.moreShortcuts(numberOfShortcuts:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v4);
}

uint64_t AutoShortcutCATsSimple.moreShortcuts(numberOfShortcuts:)()
{
  OUTLINED_FUNCTION_64_0();
  v12 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 56);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = v4;
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_216850;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x8000000000233620;
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = &type metadata for Double;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v7;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = RunLinkActionCATsSimple.unsupportedOnPlatform(device:);

  return v11(0xD00000000000001ALL, 0x800000000022E770, v5);
}

BOOL AutoShortcutCATsSimple.MoreShortcutsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.MoreShortcutsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AutoShortcutCATsSimple.MoreShortcutsDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.moreShortcutsAsLabels(numberOfShortcuts:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v4);
}

uint64_t AutoShortcutCATsSimple.moreShortcutsAsLabels(numberOfShortcuts:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = v3;
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x8000000000233620;
  if (v1)
  {
    v5 = 0;
    v6 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = &type metadata for Double;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v6;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = v7;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v8 = v9;
  OUTLINED_FUNCTION_44_3();

  return v11(0xD00000000000001ALL, 0x800000000022E770, v4, &type metadata for AutoShortcutCATsSimple.MoreShortcutsDialogIds);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.openInShortcuts()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_16_23();

  return v6(v4);
}

BOOL AutoShortcutCATsSimple.OpenInShortcutsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.OpenInShortcutsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AutoShortcutCATsSimple.OpenInShortcutsDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.openInShortcutsAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_17_21();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.shortcutPhrases(phrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_41_8(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = v10;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  v12[1] = RunLinkActionCATsSimple.errorDialog(customDialog:nonOptionalParameterIsNil:);
  v14 = OUTLINED_FUNCTION_16_23();

  return v16(v14);
}

BOOL AutoShortcutCATsSimple.ShortcutPhrasesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.ShortcutPhrasesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AutoShortcutCATsSimple.ShortcutPhrasesDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.shortcutPhrasesAsLabels(phrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_41_8(v5, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v16 = v11;
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  v14 = OUTLINED_FUNCTION_17_21();

  return v16(v14);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.userDenied()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.userDenied();

  return v5(0xD000000000000017, 0x800000000022E7D0, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

BOOL AutoShortcutCATsSimple.UserDeniedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.UserDeniedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.UserDeniedDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = AutoShortcutCATsSimple.UserDeniedDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.userDeniedAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  OUTLINED_FUNCTION_32_7();

  return v5(0xD000000000000017);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return AutoShortcutCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t AutoShortcutCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  __chkstk_darwin(v13);
  outlined init with copy of SpeakableString?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t AutoShortcutCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v2;
}

uint64_t AutoShortcutCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AutoShortcutCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AutoShortcutCATsSimple;
  if (!type metadata singleton initialization cache for AutoShortcutCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutCATsSimple.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x118F44);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.AppDisabledDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x119048);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.AppEnabledDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x11916CLL);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1192A4);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.FirstRunDialogIds(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1193A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x656D614E707061;
  v2[11] = 0xE700000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_9_22(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E707061;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_12_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7368801;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  result = *(v0 + 32);
  strcpy((v1 + 128), "secondPhrase");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_10()
{
  result = *(v0 + 24);
  *(v1 + 80) = 0x7268507473726966;
  *(v1 + 88) = 0xEB00000000657361;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t result, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = result;
  return result;
}

__n128 *OUTLINED_FUNCTION_41_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x657361726870;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_2(uint64_t result, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = v2;
  return result;
}

uint64_t SiriWorkflowRunnerEvent.name.getter()
{
  type metadata accessor for SiriWorkflowRunnerEvent(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  outlined init with copy of SiriWorkflowRunnerEvent(v0, v3 - v2, type metadata accessor for SiriWorkflowRunnerEvent);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v8 + 5;
      break;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);

      type metadata accessor for URL();
      OUTLINED_FUNCTION_7();
      (*(v6 + 8))(v4);
      v0 = 0x4C52556E65706FLL;
      break;
    case 3u:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v7 + 1;
      break;
    case 4u:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x4965747563657865;
      break;
    case 5u:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x6C616944776F6873;
      break;
    case 6u:
    case 0xAu:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v9 + 3;
      break;
    case 7u:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x7070416E65706FLL;
      break;
    case 8u:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v10 | 2;
      break;
    case 0xBu:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v5 + 11;
      break;
    case 0xCu:
      outlined destroy of SiriWorkflowRunnerEvent(v4, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x7472617453646964;
      break;
    default:
      OUTLINED_FUNCTION_4_38();
      break;
  }

  return v0;
}

uint64_t static VoiceCmdsInstrumentations.emitWaitForRequest(type:logMessage:task:updateInfo:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 104) = v7;
  type metadata accessor for DurationUtil(0);
  *(v0 + 64) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  v4 = DurationUtil.computeDuration()();
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v2, v5);
  static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(v1, LODWORD(v4), v3);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v2, v4);
  static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(v1, 0x100000000, v3);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t WaitForRequestType.getDomainExecutionType()(char a1)
{
  if (a1)
  {
    return 401;
  }

  else
  {
    return 400;
  }
}

void static VoiceCmdsInstrumentations.emitWaitForRequestStarted(type:contextId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v30 = [objc_opt_self() sharedStream];
  v31 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo) init];
    if (v33)
    {
      v34 = v33;
      OUTLINED_FUNCTION_14_20(v33, "setContextId:");
      [v32 setStartedOrChanged:v34];
      [v30 emitMessage:v32];

      v32 = v34;
    }
  }

  v35 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v35)
  {
    v36 = v35;
    v37 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v37)
    {
      v38 = v37;
      v39 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionStarted) init];
      if (v39)
      {
        v40 = v39;
        if (v29)
        {
          v41 = 401;
        }

        else
        {
          v41 = 400;
        }

        [v39 setDomainExecutionType:v41];
        OUTLINED_FUNCTION_14_20([v38 setStartedOrChanged:v40], "setContextId:");
        [v36 setFlowDomainExecutionContext:v38];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(&a10, a13);
        type metadata accessor for SiriKitEvent();
        v42 = v36;
        OUTLINED_FUNCTION_1_40();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(&a10);
        OUTLINED_FUNCTION_15_10();
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_15_10();

  swift_unknownObjectRelease();
}

uint64_t static DurationUtil.computeDuration(task:logMessage:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  type metadata accessor for DurationUtil(0);
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  DurationUtil.init(logMessage:)(v3, v1, v2);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = static DurationUtil.computeDuration(task:logMessage:);

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  v2 = DurationUtil.computeDuration()();
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v1, v3);

  OUTLINED_FUNCTION_6_0();
  v5.n128_f32[0] = v2;

  return v4(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v1, v2);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t type metadata accessor for DurationUtil(uint64_t a1)
{
  result = type metadata singleton initialization cache for DurationUtil;
  if (!type metadata singleton initialization cache for DurationUtil)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [objc_opt_self() sharedStream];
  v37 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v37)
  {
    v38 = v37;
    v39 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo) init];
    if (v39)
    {
      v40 = v39;
      [v38 setContextId:v35];
      closure #2 in WorkflowRunnerFlow.execute()(v40, v31, v29);
      if ((v33 & 0x100000000) == 0)
      {
        LODWORD(v41) = v33;
        [v40 setClockSeconds:v41];
      }

      [v38 setEnded:v40];
      [v36 emitMessage:v38];
    }

    else
    {
      v40 = v38;
    }
  }

  v42 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v42)
  {
    v43 = v42;
    v44 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v44)
    {
      v45 = v44;
      v46 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
      if (v46)
      {
        v47 = v46;
        OUTLINED_FUNCTION_14_20([v45 setEnded:v46], "setContextId:");
        [v43 setFlowDomainExecutionContext:v45];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(&a10, a13);
        type metadata accessor for SiriKitEvent();
        v48 = v43;
        OUTLINED_FUNCTION_1_40();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(&a10);
        OUTLINED_FUNCTION_15_10();
        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_10();

  swift_unknownObjectRelease();
}

{
  OUTLINED_FUNCTION_16_10();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v32 = [objc_opt_self() sharedStream];
  v33 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo) init];
    if (v35)
    {
      v36 = v35;
      OUTLINED_FUNCTION_14_20(v35, "setContextId:");
      if ((v29 & 0x100000000) == 0)
      {
        LODWORD(v37) = v29;
        [v36 setClockSeconds:v37];
      }

      [v34 setEnded:v36];
      [v32 emitMessage:v34];
    }

    else
    {
      v36 = v34;
    }
  }

  v38 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v40)
    {
      v41 = v40;
      v42 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
      if (v42)
      {
        v43 = v42;
        [v41 setEnded:v42];
        [v41 setContextId:v31];
        [v39 setFlowDomainExecutionContext:v41];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(&a10, a13);
        type metadata accessor for SiriKitEvent();
        v44 = v39;
        OUTLINED_FUNCTION_1_40();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(&a10);
        OUTLINED_FUNCTION_15_10();
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_15_10();

  swift_unknownObjectRelease();
}

uint64_t static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = [objc_opt_self() sharedStream];
  v7 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo) init];
    if (v9)
    {
      v10 = v9;
      [v8 setContextId:a1];
      a3(v10);
      if ((a2 & 0x100000000) == 0)
      {
        LODWORD(v11) = a2;
        [v10 setClockSeconds:v11];
      }

      [v8 setEnded:v10];
      [v6 emitMessage:v8];
    }

    else
    {
      v10 = v8;
    }
  }

  v12 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
      if (v16)
      {
        v17 = v16;
        [v15 setEnded:v16];
        [v15 setContextId:a1];
        [v13 setFlowDomainExecutionContext:v15];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        type metadata accessor for SiriKitEvent();
        v18 = v13;
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }
    }

    else
    {
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t DurationUtil.startInstant.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContinuousClock.Instant();
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DurationUtil.innerMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for DurationUtil(0) + 20));

  return v1;
}

void DurationUtil.init(logMessage:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  static ContinuousClock.now.getter();
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v7 = static DurationUtil.lock;
  [static DurationUtil.lock lock];
  v8 = static DurationUtil.nextId;
  if (static DurationUtil.nextId == -1)
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    goto LABEL_7;
  }

  ++static DurationUtil.nextId;
  [v7 unlock];
  _StringGuts.grow(_:)(18);

  v22 = 0x6E6F697461727544;
  v23 = 0xEF5B235F6C697455;
  LODWORD(v21[0]) = v8;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 93;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v3 = 0x6E6F697461727544;
  v8 = 0xEF5B235F6C697455;
  if (a2)
  {
    v21[0] = 539831584;
    v21[1] = 0xE400000000000000;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 539831584;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);

    v3 = v22;
    v8 = v23;
  }

  v13 = (a3 + *(type metadata accessor for DurationUtil(0) + 20));
  *v13 = v3;
  v13[1] = v8;
  v14 = one-time initialization token for voiceCommands;

  if (v14 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315138;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v8, v21);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_0, v16, v17, "started: %s ...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_15_0(v19);
    OUTLINED_FUNCTION_15_0(v18);
  }

  else
  {
  }
}

uint64_t outlined destroy of SiriWorkflowRunnerEvent(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Float __swiftcall DurationUtil.computeDuration()()
{
  v1 = type metadata accessor for DurationUtil(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v11 = Duration.components.getter();
  v13 = v12 / 1.0e18;
  v14 = v11;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v15 = v13 + v14;
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.voiceCommands);
  outlined init with copy of SiriWorkflowRunnerEvent(v0, v5, type metadata accessor for DurationUtil);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315394;
    v21 = (v5 + *(v1 + 20));
    v22 = *v21;
    v23 = v21[1];

    OUTLINED_FUNCTION_0_26();
    outlined destroy of SiriWorkflowRunnerEvent(v5, v24);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v15;
    _os_log_impl(&dword_0, v17, v18, "stopped: %s; duration=%fs", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_15_0(v20);
    OUTLINED_FUNCTION_15_0(v19);
  }

  else
  {

    OUTLINED_FUNCTION_0_26();
    outlined destroy of SiriWorkflowRunnerEvent(v5, v26);
  }

  (*(v7 + 8))(v10, v6);
  return v15;
}

id one-time initialization function for lock()
{
  result = [objc_allocWithZone(NSLock) init];
  static DurationUtil.lock = result;
  return result;
}

uint64_t outlined init with copy of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WaitForRequestType and conformance WaitForRequestType()
{
  result = lazy protocol witness table cache variable for type WaitForRequestType and conformance WaitForRequestType;
  if (!lazy protocol witness table cache variable for type WaitForRequestType and conformance WaitForRequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WaitForRequestType and conformance WaitForRequestType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WaitForRequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x11B334);
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

uint64_t sub_11B390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_11B454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for DurationUtil(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return outlined destroy of SiriWorkflowRunnerEvent(v0, type metadata accessor for SiriWorkflowRunnerEvent);
}

id OUTLINED_FUNCTION_14_20(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void CustomIntentsDialogTemplating.__allocating_init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_40_0();
  v45 = v21;
  v46 = v22;
  v44 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = swift_allocObject();
  v35 = a21[3];
  v36 = a21[4];
  v37 = OUTLINED_FUNCTION_48_2();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  OUTLINED_FUNCTION_28_3();
  __chkstk_darwin(v39);
  v41 = &v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  specialized CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(v33, v31, v29, v27 & 1, v25, v44, v45, v46, v41, v34, v35, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_42();
}

uint64_t static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(void *a1)
{
  v1 = [a1 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.lowercased()();

  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;
  v2 = lazy protocol witness table accessor for type String and conformance String();
  v9 = OUTLINED_FUNCTION_0_18(v2, &type metadata for String, v3, v4, v5, v6, v7, v8, countAndFlagsBits);

  if (v9 & 1) != 0 || (v10 = String.lowercased()()._countAndFlagsBits, v17 = OUTLINED_FUNCTION_0_18(v10, &type metadata for String, v11, v12, v13, v14, v15, v16, v10), v18 = , (v17))
  {

    v25 = 1;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_0_18(v18, &type metadata for String, v19, v20, v21, v22, v23, v24, 0xD000000000000013);
  }

  return v25 & 1;
}

void CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_40_0();
  v45 = v22;
  v46 = v23;
  v44 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a21[3];
  v36 = a21[4];
  v37 = OUTLINED_FUNCTION_48_2();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  OUTLINED_FUNCTION_28_3();
  __chkstk_darwin(v39);
  v41 = &v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  specialized CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(v34, v32, v30, v28 & 1, v26, v44, v45, v46, v41, v21, v35, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel(intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[5] = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 64) = v0;

  v7 = *(v4 + 40);
  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  *(v0 + 80) = 2;
  dispatch thunk of LabelExecutionResult.subscript.getter();
  *(v0 + 81) = 0;
  dispatch thunk of LabelExecutionResult.subscript.getter();

  OUTLINED_FUNCTION_57();

  return v6(v1, v2, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel(intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_3_11((v9[4] + 16));
  v9[6] = OUTLINED_FUNCTION_105_0(v10);

  OUTLINED_FUNCTION_13_18();
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v11);
  OUTLINED_FUNCTION_6_17();
  v23 = v12 + *v12;
  v13 = swift_task_alloc();
  v9[7] = v13;
  *v13 = v9;
  v13[1] = CustomIntentsDialogTemplating.yesAndCancel(intentVerb:);
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_82_2();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, v23);
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[17] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for TemplatingResult();
  v1[18] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 184) = v0;

  outlined destroy of String?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_3_11((v9[16] + 16));
  v9[21] = OUTLINED_FUNCTION_105_0(v10);

  OUTLINED_FUNCTION_13_18();
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v11);
  OUTLINED_FUNCTION_6_17();
  v24 = v12 + *v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[22] = v13;
  *v13 = v14;
  v13[1] = CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_82_2();

  return v18(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

void *CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216840;
  *(inited + 32) = 7562617;
  *(inited + 40) = 0xE300000000000000;
  result = TemplatingResult.print.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = result[4];
  v13 = result[5];

  *(inited + 48) = v14;
  *(inited + 56) = v13;
  *(inited + 64) = 0x6C65636E6163;
  *(inited + 72) = 0xE600000000000000;
  result = TemplatingResult.print.getter();
  if (result[2] < 2uLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v16 = v10[19];
  v15 = v10[20];
  v17 = v10[18];
  v19 = result[6];
  v18 = result[7];

  *(inited + 80) = v19;
  *(inited + 88) = v18;
  Dictionary.init(dictionaryLiteral:)();
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_25_2();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.inputErrorDialog()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v1);
  *(v0 + 184) = OUTLINED_FUNCTION_28();
  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  static Device.current.getter();
  type metadata accessor for RunLinkActionCATs(0);
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple(0);
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v3 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v4 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v5 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v6 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v1 + 192) = inited;
  inited[14] = v0;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v6;
  outlined init with take of Output((v1 + 144), (inited + 2));
  inited[7] = v2;
  inited[8] = v3;
  inited[9] = v4;
  inited[10] = v5;
  v8 = swift_task_alloc();
  *(v1 + 200) = v8;
  *v8 = v1;
  v8[1] = CustomIntentsDialogTemplating.inputErrorDialog();
  OUTLINED_FUNCTION_21_0();

  return LinkActionDialogTemplating.makeGenericError()();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    swift_setDeallocating();
    LinkActionDialogTemplating.deinit();
    swift_deallocClassInstance();

    v8 = OUTLINED_FUNCTION_24_14();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 176) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  *(v1 + 104) = OUTLINED_FUNCTION_27();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 152) = v0;

  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_12_0();

  v0 = OUTLINED_FUNCTION_6_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 168) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();

  v0 = OUTLINED_FUNCTION_6_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_11((v14[12] + 16));
  OUTLINED_FUNCTION_101_0();
  v14[16] = DeviceState.asSiriKitDeviceState()(v15, v16);
  OUTLINED_FUNCTION_93_1();
  v18 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(v17);
  v14[17] = v18;
  if (v18)
  {
    v19 = v14[8];
    v20 = *(v14[12] + 88);
    v21 = *(*v18 + 112);

    v21(v22);
    v23 = type metadata accessor for SpeakableString();
    v24 = OUTLINED_FUNCTION_17_22();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    CustomIntentsDialogTemplating.getAppName(app:)(v19);
    v27 = OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
    v56 = *v20 + class metadata base offset for RunCustomIntentCATsSimple + 368;
    OUTLINED_FUNCTION_16_1();
    v58 = v30 + *v30;
    v31 = swift_task_alloc();
    v14[18] = v31;
    *v31 = v14;
    v31[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, v56, v58, a12, a13, a14);
  }

  else
  {
    v41 = *(v14[12] + 88);

    OUTLINED_FUNCTION_13_18();
    type metadata accessor for SpeakableString();
    v42 = OUTLINED_FUNCTION_16_11();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    v57 = *v41 + class metadata base offset for RunCustomIntentCATsSimple + 352;
    OUTLINED_FUNCTION_16_1();
    v59 = v46 + *v46;
    v47 = swift_task_alloc();
    v14[20] = v47;
    *v47 = v14;
    v47[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v59, a12, a13, a14);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 144) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  *(v1 + 64) = OUTLINED_FUNCTION_27();
  v9 = swift_task_alloc();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_7();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 136) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v13 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(0);
  v12[11] = v13;
  if (v13)
  {
    v14 = v13;
    OUTLINED_FUNCTION_3_11((v12[7] + 16));
    OUTLINED_FUNCTION_42_9();
    v12[12] = DeviceState.asSiriKitDeviceState()(v15, v16);
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_119();
    v17();
    v18 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v18);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v19, v20, v21, v14);
    OUTLINED_FUNCTION_6_17();
    v47 = v22 + *v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[13] = v23;
    *v23 = v24;
    v23[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_78();

    return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, v47, a11, a12);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_3_11((v12[7] + 16));
    v12[15] = OUTLINED_FUNCTION_105_0(v34);

    OUTLINED_FUNCTION_13_18();
    v35 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v35);
    OUTLINED_FUNCTION_6_17();
    v48 = v36 + *v36;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[16] = v37;
    *v37 = v38;
    v37[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_15_21();
    OUTLINED_FUNCTION_78();

    return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.getCustomIntroductionPrompt(disambiguationList:app:parameterName:intent:tokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) >= 6uLL && (v3 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(2)) != 0)
  {
    (*(*v3 + 112))(v3);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v5);
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 120) = v14;
  *(v1 + 128) = v0;
  *(v1 + 257) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 256) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  *(v1 + 80) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v10 = OUTLINED_FUNCTION_27();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v10);
  *(v1 + 152) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 184) = v6;
  *(v7 + 192) = v0;

  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_122();
  if (v1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = v0[19];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = v0[9];

  outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v0[28] = v3;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_49_7(v4);

  return CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 208) = v6;
  *(v7 + 216) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_122();
  if (v1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v0[28] = v0[9];
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_49_7(v2);

  return CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 240))
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*(v0 + 72) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 72) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_48_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v1 = OUTLINED_FUNCTION_6_4();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 152);

  outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:)()
{
  v1 = v0[16];
  v2 = v0[13];
  v0[9] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd, &_ss23_ContiguousArrayStorageCySS_SitGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_89_0(inited, xmmword_216850)[3].n128_u64[0] = *(v2 + 16);
  v4 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_3_11((v1 + 16));
  OUTLINED_FUNCTION_101_0();
  v0[20] = DeviceState.asSiriKitDeviceState()(v5, v6);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);
  OUTLINED_FUNCTION_93_1();
  v8 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(v7);
  v0[21] = v8;

  if (v8)
  {
    v9 = v0[19];
    v10 = v0[13];
    v11 = v0[10];
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);

    CustomIntentsDialogTemplating.getCustomIntroductionPrompt(disambiguationList:app:parameterName:intent:tokens:)(v10, v9);

    v12 = *(*v8 + 112);

    v12(v13);
    v14 = type metadata accessor for SpeakableString();
    v15 = OUTLINED_FUNCTION_26_17();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    CustomIntentsDialogTemplating.getAppName(app:)(v11);
    v18 = OUTLINED_FUNCTION_17_22();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    OUTLINED_FUNCTION_16_1();
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:);
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X5, X16 }
  }

  v24 = swift_task_alloc();
  v0[25] = v24;
  *v24 = v0;
  v24[1] = CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:);
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentsDialogTemplating.offerMoreItems(remainingPages:nextPageSize:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.offerMoreItems(remainingPages:nextPageSize:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_3();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_3_11((v3 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v4, v5);
  OUTLINED_FUNCTION_45_5();
  v0[5] = v6;
  OUTLINED_FUNCTION_16_1();
  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_57_1(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_21_14(v9);

  return (v13)(v11, v1, 0, v2, 0);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeUnlockDeviceDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_3_11((v1 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v2, v3);
  OUTLINED_FUNCTION_45_5();
  *(v0 + 24) = v4;
  OUTLINED_FUNCTION_2_26();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_21_14(v6);

  return v9(v7);
}

uint64_t CustomIntentsDialogTemplating.makeUnlockDeviceDialog_rfv1()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.makeUnlockDeviceDialog_rfv1()()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_3_11((v0[3] + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v1, v2);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v3;
  OUTLINED_FUNCTION_2_26();
  v9 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = WorkflowDialogTemplating.makePromptForShortcutName_prerfv2();
  v7 = OUTLINED_FUNCTION_15_21();

  return v9(v7);
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialogAsLabels(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v0;

  outlined destroy of String?(*(v2 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v5);
  }

  else
  {

    OUTLINED_FUNCTION_87();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialogAsLabels(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[2];
  OUTLINED_FUNCTION_3_11((v9[3] + 16));
  OUTLINED_FUNCTION_42_9();
  v9[5] = DeviceState.asSiriKitDeviceState()(v11, v12);
  CustomIntentsDialogTemplating.getAppName(app:)(v10);
  type metadata accessor for SpeakableString();
  v13 = OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_24_11(v13, v14, v15, v16);
  OUTLINED_FUNCTION_6_17();
  v30 = v17 + *v17;
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_57_1(v18);
  *v19 = v20;
  v19[1] = CustomIntentsDialogTemplating.makeOpenAppDialogAsLabels(app:);
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_82_2();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialog_rfv1(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[5] = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9);
  }

  else
  {

    OUTLINED_FUNCTION_87();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialog_rfv1(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[3];
  OUTLINED_FUNCTION_3_11((v9[4] + 16));
  OUTLINED_FUNCTION_42_9();
  v9[6] = DeviceState.asSiriKitDeviceState()(v11, v12);
  CustomIntentsDialogTemplating.getAppName(app:)(v10);
  type metadata accessor for SpeakableString();
  v13 = OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_24_11(v13, v14, v15, v16);
  OUTLINED_FUNCTION_6_17();
  v29 = v17 + *v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[7] = v18;
  *v18 = v19;
  v18[1] = CustomIntentsDialogTemplating.makeOpenAppDialog_rfv1(app:);
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_82_2();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29);
}

uint64_t CustomIntentsDialogTemplating.makeReadDisambiguationList(disambiguationItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for SpeakableString();
  v1[15] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v9(v1);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void CustomIntentsDialogTemplating.makeReadDisambiguationList(disambiguationItems:)()
{
  object = v0[13];
  v3 = object[2];
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v0[16];
    OUTLINED_FUNCTION_107();
    type metadata accessor for CATSpeakableString();
    OUTLINED_FUNCTION_98();
    do
    {
      outlined init with copy of CustomIntentDisambiguationItem(v1, (v0 + 2));
      v6 = OUTLINED_FUNCTION_92_1();
      static CATSpeakableString.stripTTSHint(print:)(v6, v7, v8, v9, v10, v11, v12, v13, v48, v50, v52, v54, v55, v4, v57, v58, v61, v63._countAndFlagsBits, v63._object, v64, v65, v66, v67, v68, v69, v70);
      OUTLINED_FUNCTION_123();
      if (object)
      {
        v14 = OUTLINED_FUNCTION_54_1();
        static CATSpeakableString.stripTTSHint(print:)(v14, v15, v16, v17, v18, v19, v20, v21, v49, v51, v53, v5, v55, v56, v57, v59, v62, v63._countAndFlagsBits, v63._object, v64, v65, v66, v67, v68, v69, v70);
        v23 = v22;
        OUTLINED_FUNCTION_5_21();
        if (v24)
        {
          OUTLINED_FUNCTION_10_28();
          v25._object = v23;
          String.append(_:)(v25);

          String.append(_:)(v63);
          v4 = v60;
        }

        v5 = v54;
      }

      OUTLINED_FUNCTION_92_1();
      static CATSpeakableString.applyTTSHint(speak:)();
      OUTLINED_FUNCTION_120();
      v58 = v26;
      v61 = v27;
      if (object)
      {
        OUTLINED_FUNCTION_54_1();
        static CATSpeakableString.applyTTSHint(speak:)();
        object = v28;
        OUTLINED_FUNCTION_5_21();
        if (v29)
        {
          OUTLINED_FUNCTION_10_28();
          v30._object = object;
          String.append(_:)(v30);

          object = v63._object;
          String.append(_:)(v63);
        }
      }

      OUTLINED_FUNCTION_138();
      outlined destroy of CustomIntentDisambiguationItem((v0 + 2));
      OUTLINED_FUNCTION_99_0();
      if (v38)
      {
        OUTLINED_FUNCTION_104_0(v37);
        v4 = v57;
      }

      v39 = OUTLINED_FUNCTION_59_7(v31, v0[17], v0[15], v32, v33, v34, v35, v36, v49, v51, v53);
      v40(v39);
      v1 += 88;
      --v3;
    }

    while (v3);
  }

  v0[18] = v4;
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_3_11((v41 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v42, v43);
  OUTLINED_FUNCTION_45_5();
  v0[19] = v44;
  OUTLINED_FUNCTION_16_1();
  v45 = swift_task_alloc();
  v0[20] = v45;
  *v45 = v0;
  OUTLINED_FUNCTION_21_14(v45);
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X2, X16 }
}

uint64_t CustomIntentsDialogTemplating.makeOfferMoreDisambiguationItem(app:parameterName:intent:remainingPages:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v1[8] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[7];
  v2 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(4);
  v0[9] = v2;
  OUTLINED_FUNCTION_3_11((v1 + 16));
  OUTLINED_FUNCTION_42_9();
  v0[10] = DeviceState.asSiriKitDeviceState()(v3, v4);
  if (v2)
  {
    OUTLINED_FUNCTION_54_6();
    v6 = *(v5 + 112);

    v6(v7);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v0[8];
  v10 = v0[6];
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_11(v9, v8, 1, v11);
  OUTLINED_FUNCTION_16_1();
  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = CustomIntentsDialogTemplating.makeOfferMoreDisambiguationItem(app:parameterName:intent:remainingPages:);
  v14 = OUTLINED_FUNCTION_70_3();

  return (v16)(v14, v10, 0);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 96) = v0;

  v7 = *(v4 + 64);
  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 104);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeIntroduceDisambiguationPagination(app:intent:parameterName:intentResolutionResult:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v1[18] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[19] = OUTLINED_FUNCTION_27();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[9] = v1;
  v2[10] = v4;
  v2[11] = v0;
  OUTLINED_FUNCTION_70();
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 192) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of String?(*(v0 + 168), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_140();

  v1 = OUTLINED_FUNCTION_6_4();

  return v2(v1);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 216) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9);
  }

  else
  {

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_87();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v4 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }

  else
  {

    OUTLINED_FUNCTION_6_6();

    return v9(v1);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of String?(*(v0 + 168), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_140();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_140();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_140();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = type metadata accessor for SpeakableString();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[17] = v5;
  v1[18] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)()
{
  if (static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)())
  {
    object = v0[13];
    v3 = object[2];
    v4 = _swiftEmptyArrayStorage;
    if (v3)
    {
      v5 = v0[17];
      OUTLINED_FUNCTION_107();
      type metadata accessor for CATSpeakableString();
      OUTLINED_FUNCTION_98();
      do
      {
        outlined init with copy of CustomIntentDisambiguationItem(v1, (v0 + 2));
        v6 = OUTLINED_FUNCTION_92_1();
        static CATSpeakableString.stripTTSHint(print:)(v6, v7, v8, v9, v10, v11, v12, v13, v50, v52, v54, v56, v57, v4, v59, v60, v63, v65._countAndFlagsBits, v65._object, v66, v67, v68, v69, v70, v71, v72);
        OUTLINED_FUNCTION_123();
        if (object)
        {
          v14 = OUTLINED_FUNCTION_54_1();
          static CATSpeakableString.stripTTSHint(print:)(v14, v15, v16, v17, v18, v19, v20, v21, v51, v53, v55, v5, v57, v58, v59, v61, v64, v65._countAndFlagsBits, v65._object, v66, v67, v68, v69, v70, v71, v72);
          v23 = v22;
          OUTLINED_FUNCTION_5_21();
          if (v24)
          {
            OUTLINED_FUNCTION_10_28();
            v25._object = v23;
            String.append(_:)(v25);

            String.append(_:)(v65);
            v4 = v62;
          }

          v5 = v56;
        }

        OUTLINED_FUNCTION_92_1();
        static CATSpeakableString.applyTTSHint(speak:)();
        OUTLINED_FUNCTION_120();
        v60 = v26;
        v63 = v27;
        if (object)
        {
          OUTLINED_FUNCTION_54_1();
          static CATSpeakableString.applyTTSHint(speak:)();
          object = v28;
          OUTLINED_FUNCTION_5_21();
          if (v29)
          {
            OUTLINED_FUNCTION_10_28();
            v30._object = object;
            String.append(_:)(v30);

            object = v65._object;
            String.append(_:)(v65);
          }
        }

        OUTLINED_FUNCTION_138();
        outlined destroy of CustomIntentDisambiguationItem((v0 + 2));
        OUTLINED_FUNCTION_99_0();
        if (v38)
        {
          OUTLINED_FUNCTION_104_0(v37);
          v4 = v59;
        }

        v39 = OUTLINED_FUNCTION_59_7(v31, v0[18], v0[16], v32, v33, v34, v35, v36, v51, v53, v55);
        v40(v39);
        v1 += 88;
        --v3;
      }

      while (v3);
    }

    v0[19] = v4;
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_3_11((v43 + 16));
    OUTLINED_FUNCTION_42_9();
    DeviceState.asSiriKitDeviceState()(v44, v45);
    OUTLINED_FUNCTION_45_5();
    v0[20] = v46;
    OUTLINED_FUNCTION_16_1();
    v47 = swift_task_alloc();
    v0[21] = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_21_14(v47);
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X2, X16 }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 344) = v2;
  *(v1 + 256) = v3;
  *(v1 + 264) = v0;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  *(v1 + 224) = v6;
  *(v1 + 232) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  *(v1 + 272) = OUTLINED_FUNCTION_27();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  OUTLINED_FUNCTION_70();
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 320) = v0;

  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_12_0();

  v0 = OUTLINED_FUNCTION_6_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 336) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();

  v0 = OUTLINED_FUNCTION_6_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 256);
  OUTLINED_FUNCTION_3_11((*(v14 + 264) + 16));
  OUTLINED_FUNCTION_101_0();
  *(v14 + 296) = DeviceState.asSiriKitDeviceState()(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_72_5(inited, xmmword_216840);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v15 valueForKey:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any((v14 + 144), (inited + 48));
  }

  else
  {
    v22 = *(v14 + 232);
    v21 = *(v14 + 240);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v22;
    *(inited + 56) = v21;
  }

  v23 = *(v14 + 248);
  v24 = *(v14 + 240);
  *(inited + 80) = *(v14 + 232);
  *(inited + 88) = v24;

  v25 = [v23 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  Dictionary.init(dictionaryLiteral:)();
  v26 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(5);
  *(v14 + 304) = v26;

  if (v26)
  {
    v27 = *(v14 + 224);
    OUTLINED_FUNCTION_18_4();
    v29 = *(v28 + 112);

    v29(v30);
    v31 = type metadata accessor for SpeakableString();
    v32 = OUTLINED_FUNCTION_17_22();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    CustomIntentsDialogTemplating.getAppName(app:)(v27);
    v35 = OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
    OUTLINED_FUNCTION_2_26();
    v65 = v38 + *v38;
    v39 = swift_task_alloc();
    *(v14 + 312) = v39;
    *v39 = v14;
    v39[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v44(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, v65, a12, a13, a14);
  }

  else
  {
    v49 = *(*(v14 + 264) + 88);

    OUTLINED_FUNCTION_13_18();
    type metadata accessor for SpeakableString();
    v50 = OUTLINED_FUNCTION_16_11();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    v64 = *v49 + class metadata base offset for RunCustomIntentCATsSimple;
    OUTLINED_FUNCTION_16_1();
    v66 = v54 + *v54;
    v55 = swift_task_alloc();
    *(v14 + 328) = v55;
    *v55 = v14;
    v55[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, v64, v66, a12, a13, a14);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  *(v1 + 312) = v3;
  *(v1 + 200) = v4;
  *(v1 + 208) = v5;
  *(v1 + 184) = v6;
  *(v1 + 192) = v7;
  *(v1 + 176) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  *(v1 + 232) = OUTLINED_FUNCTION_27();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 280) = v0;

  v7 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_7();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 304) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_72_5(inited, xmmword_216840);
  OUTLINED_FUNCTION_73_3();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 valueForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any((v12 + 144), (inited + 48));
  }

  else
  {
    v18 = *(v12 + 192);
    v17 = *(v12 + 200);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v18;
    *(inited + 56) = v17;
  }

  v19 = *(v12 + 208);
  v20 = *(v12 + 200);
  *(inited + 80) = *(v12 + 192);
  *(inited + 88) = v20;

  v21 = [v19 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_93_1();
  v23 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(v22);
  *(v12 + 256) = v23;

  if (v23)
  {
    OUTLINED_FUNCTION_3_11((*(v12 + 224) + 16));
    OUTLINED_FUNCTION_42_9();
    *(v12 + 264) = DeviceState.asSiriKitDeviceState()(v24, v25);
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_119();
    v26();
    v27 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v27);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v28, v29, v30, v23);
    OUTLINED_FUNCTION_6_17();
    v58 = v31 + *v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 272) = v32;
    *v32 = v33;
    v32[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_78();

    return v39(v34, v35, v36, v37, v38, v39, v40, v41, a9, v58, a11, a12);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_3_11((*(v12 + 224) + 16));
    *(v12 + 288) = OUTLINED_FUNCTION_105_0(v43);

    OUTLINED_FUNCTION_13_18();
    v44 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v44);
    v57 = v45 + class metadata base offset for RunCustomIntentCATs;
    OUTLINED_FUNCTION_16_1();
    v59 = v46 + *v46;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 296) = v47;
    *v47 = v48;
    v47[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_41_9();
    OUTLINED_FUNCTION_78();

    return v52(v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 168) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  *(v1 + 88) = OUTLINED_FUNCTION_27();
  v9 = swift_task_alloc();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 136) = v0;

  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_12_0();

  v0 = OUTLINED_FUNCTION_6_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9);
  }

  else
  {

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_87();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  [*(v12 + 64) unsupportedReason];
  v13 = OUTLINED_FUNCTION_40_10();
  v14 = CustomIntentsDialogTemplating.localizedCustomUnsupportendPromptFor(app:parameterName:unsupportedReasonCode:intent:tokens:)(v13);
  *(v12 + 112) = v14;
  if (v14)
  {
    v15 = v14;
    OUTLINED_FUNCTION_3_11((*(v12 + 80) + 16));
    OUTLINED_FUNCTION_42_9();
    *(v12 + 120) = DeviceState.asSiriKitDeviceState()(v16, v17);
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_119();
    v18();
    v19 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v19);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v20, v21, v22, v15);
    v48 = v23 + class metadata base offset for RunCustomIntentCATsSimple + 416;
    OUTLINED_FUNCTION_16_1();
    v50 = v24 + *v24;
    v25 = swift_task_alloc();
    *(v12 + 128) = v25;
    *v25 = v12;
    v25[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_78();

    return v30(v26, v27, v28, v29, v30, v31, v32, v33, v48, v50, a11, a12);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_3_11((*(v12 + 80) + 16));
    *(v12 + 144) = OUTLINED_FUNCTION_105_0(v35);

    OUTLINED_FUNCTION_13_18();
    v36 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v36);
    v49 = v37 + class metadata base offset for RunCustomIntentCATsSimple + 400;
    OUTLINED_FUNCTION_16_1();
    v51 = v38 + *v38;
    v39 = swift_task_alloc();
    *(v12 + 152) = v39;
    *v39 = v12;
    v39[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_78();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, v49, v51, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 152) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_54_5(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v10 = OUTLINED_FUNCTION_27();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v10);
  *(v1 + 88) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  v7 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_7();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 144) = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_12_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  [*(v12 + 48) unsupportedReason];
  v13 = OUTLINED_FUNCTION_40_10();
  v14 = CustomIntentsDialogTemplating.localizedCustomUnsupportendPromptFor(app:parameterName:unsupportedReasonCode:intent:tokens:)(v13);
  *(v12 + 96) = v14;
  if (v14)
  {
    v15 = v14;
    OUTLINED_FUNCTION_3_11((*(v12 + 64) + 16));
    OUTLINED_FUNCTION_42_9();
    *(v12 + 104) = DeviceState.asSiriKitDeviceState()(v16, v17);
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_119();
    v18();
    v19 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v19);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v20, v21, v22, v15);
    OUTLINED_FUNCTION_6_17();
    v48 = v23 + *v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 112) = v24;
    *v24 = v25;
    v24[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_78();

    return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, v48, a11, a12);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_3_11((*(v12 + 64) + 16));
    *(v12 + 128) = OUTLINED_FUNCTION_105_0(v35);

    OUTLINED_FUNCTION_13_18();
    v36 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v36);
    OUTLINED_FUNCTION_6_17();
    v49 = v37 + *v37;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 136) = v38;
    *v38 = v39;
    v38[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    OUTLINED_FUNCTION_15_21();
    OUTLINED_FUNCTION_78();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 216) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v7 = OUTLINED_FUNCTION_27();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v7);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 184) = v0;

  OUTLINED_FUNCTION_77_4(v6);
  v10 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v16);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 208) = v0;

  OUTLINED_FUNCTION_83_2();
  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 80);

  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_25_2();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 80);

  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_27_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 176) = v3;
  OUTLINED_FUNCTION_54_5(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_27();
  *(v1 + 64) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v8);
  *(v1 + 88) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_77_4(v5);
  v9 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_83_2();
  v7 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v11);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 40);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_21_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 40);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 40);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 112);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 208) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v7 = OUTLINED_FUNCTION_27();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v7);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v8);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 176) = v0;

  OUTLINED_FUNCTION_77_4(v6);
  v10 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v16);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_83_2();
  v8 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();

  v13 = *(v12 + 72);
  type metadata accessor for CustomIntentsDialogTemplating();
  if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v13) & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v14 = type metadata accessor for Logger();
    v15 = OUTLINED_FUNCTION_15_6(v14, static Logger.voiceCommands);
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_40(&dword_0, v17, v18, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
    }

    OUTLINED_FUNCTION_18_4();
    (*(v19 + 224))(0);
  }

  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 72);
  type metadata accessor for CustomIntentsDialogTemplating();
  if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v13) & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v14 = type metadata accessor for Logger();
    v15 = OUTLINED_FUNCTION_15_6(v14, static Logger.voiceCommands);
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_40(&dword_0, v17, v18, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
    }

    OUTLINED_FUNCTION_18_4();
    (*(v19 + 224))(0);
  }

  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 80);

  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 240) = v3;
  OUTLINED_FUNCTION_54_5(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_27();
  *(v1 + 64) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v8);
  *(v1 + 88) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v9);
  v10 = type metadata accessor for TemplatingResult();
  *(v1 + 112) = v10;
  OUTLINED_FUNCTION_5_0(v10);
  *(v1 + 120) = v11;
  *(v1 + 128) = OUTLINED_FUNCTION_27();
  v12 = swift_task_alloc();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v12);
  v13 = type metadata accessor for BehaviorAfterSpeaking();
  *(v1 + 152) = v13;
  OUTLINED_FUNCTION_5_0(v13);
  *(v1 + 160) = v14;
  *(v1 + 168) = OUTLINED_FUNCTION_27();
  *(v1 + 176) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_77_4(v5);
  v9 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_83_2();
  v7 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v11);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();

  v15 = v14[4];
  v16 = *(v14[15] + 32);
  (v16)(v14[18], v14[17], v14[14]);
  type metadata accessor for CustomIntentsDialogTemplating();
  if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v15) & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_15_6(v17, static Logger.voiceCommands);
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v19))
    {
      v20 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v20);
      OUTLINED_FUNCTION_26(&dword_0, v21, v22, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_18_4();
    (*(v23 + 224))(0);
  }

  OUTLINED_FUNCTION_134();
  v24 = OUTLINED_FUNCTION_118();
  v16(v24);
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[4];
  v16 = *(v14[15] + 32);
  (v16)(v14[18], v14[16], v14[14]);
  type metadata accessor for CustomIntentsDialogTemplating();
  if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v15) & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_15_6(v17, static Logger.voiceCommands);
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v19))
    {
      v20 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v20);
      OUTLINED_FUNCTION_26(&dword_0, v21, v22, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_18_4();
    (*(v23 + 224))(0);
  }

  OUTLINED_FUNCTION_134();
  v24 = OUTLINED_FUNCTION_118();
  v16(v24);
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 40);

  OUTLINED_FUNCTION_73_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_73_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[6] = OUTLINED_FUNCTION_27();
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for SpeakableString();
  v1[8] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v3;
  }

  OUTLINED_FUNCTION_86_0();
  outlined destroy of String?(v6, v7, v8);
  OUTLINED_FUNCTION_86_0();
  outlined destroy of String?(v9, v10, v11);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_133();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_57();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_133();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_57();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[3];
  v16 = v14[4];
  v17 = static SAAppInfoFactory.createAppInfo(app:)();
  v14[11] = v17;
  CustomIntentsDialogTemplating.copyPropertiesFromIntentToResponse(intent:intentResponse:)();
  INIntentResponse.languageCode()();
  OUTLINED_FUNCTION_127();
  v18 = INIntentResponse.printedTemplate()();
  OUTLINED_FUNCTION_94_0(v18.value._countAndFlagsBits, v18.value._object);
  OUTLINED_FUNCTION_71_6();

  v19 = static LocaleUtils.siriLanguageCode()();
  LOBYTE(v15) = static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v19, v20, v15, v17);

  if ((v15 & 1) != 0 && v16)
  {
    v21 = v14[4];
    v22 = v14[3];
    __swift_project_boxed_opaque_existential_1((v14[5] + 16), *(v14[5] + 40));
    v23 = v21;
    v24 = DeviceState.isVox.getter();
    v25 = [v22 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24)
    {
      INIntentResponse.printedDialog()();
      if (v26)
      {
        v27 = v14[4];

LABEL_7:
        OUTLINED_FUNCTION_54_6();
        (*(v32 + 112))();

        goto LABEL_9;
      }
    }

    v28 = v14[4];
    v29 = OUTLINED_FUNCTION_48_2();
    v31 = INIntentResponse.localizedSpokenResponse(intentName:)(v29, v30);

    if (v31)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_62_5();
  SpeakableString.init(print:speak:)();
LABEL_9:
  v33 = v14[8];
  v34 = v14[5];
  v35 = v14[2];
  v58 = *(v34 + 88);
  OUTLINED_FUNCTION_3_11((v34 + 16));
  OUTLINED_FUNCTION_42_9();
  v14[12] = DeviceState.asSiriKitDeviceState()(v36, v37);
  v38 = OUTLINED_FUNCTION_117();
  v39(v38);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v33);
  CustomIntentsDialogTemplating.getAppName(app:)(v35);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_74_3(v43, v44, v45, v33);
  OUTLINED_FUNCTION_6_17();
  v57 = v46 + *v46;
  v47 = swift_task_alloc();
  v14[13] = v47;
  *v47 = v14;
  v47[1] = CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog(app:intent:intentResponse:);
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_6_1();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, v57, v58, a12, a13, a14);
}

uint64_t CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog_prerfv2(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_54_5(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[7] = OUTLINED_FUNCTION_27();
  v1[8] = swift_task_alloc();
  v7 = type metadata accessor for SpeakableString();
  v1[9] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  v7 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_130();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_57();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_130();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_57();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog_prerfv2(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[4];
  v16 = v14[5];
  v17 = static SAAppInfoFactory.createAppInfo(app:)();
  v14[12] = v17;
  CustomIntentsDialogTemplating.copyPropertiesFromIntentToResponse(intent:intentResponse:)();
  INIntentResponse.languageCode()();
  OUTLINED_FUNCTION_127();
  v18 = INIntentResponse.printedTemplate()();
  OUTLINED_FUNCTION_94_0(v18.value._countAndFlagsBits, v18.value._object);
  OUTLINED_FUNCTION_71_6();

  v19 = static LocaleUtils.siriLanguageCode()();
  LOBYTE(v15) = static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v19, v20, v15, v17);

  if ((v15 & 1) != 0 && v16)
  {
    v21 = v14[5];
    v22 = v14[4];
    __swift_project_boxed_opaque_existential_1((v14[6] + 16), *(v14[6] + 40));
    v23 = v21;
    v24 = DeviceState.isVox.getter();
    v25 = [v22 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24)
    {
      INIntentResponse.printedDialog()();
      if (v26)
      {
        v27 = v14[5];

LABEL_7:
        OUTLINED_FUNCTION_54_6();
        (*(v32 + 112))();

        goto LABEL_9;
      }
    }

    v28 = v14[5];
    v29 = OUTLINED_FUNCTION_48_2();
    v31 = INIntentResponse.localizedSpokenResponse(intentName:)(v29, v30);

    if (v31)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_62_5();
  SpeakableString.init(print:speak:)();
LABEL_9:
  v33 = v14[9];
  v34 = v14[6];
  v35 = v14[3];
  v59 = *(v34 + 80);
  OUTLINED_FUNCTION_3_11((v34 + 16));
  OUTLINED_FUNCTION_42_9();
  v14[13] = DeviceState.asSiriKitDeviceState()(v36, v37);
  v38 = OUTLINED_FUNCTION_117();
  v39(v38);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v33);
  CustomIntentsDialogTemplating.getAppName(app:)(v35);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_74_3(v43, v44, v45, v33);
  OUTLINED_FUNCTION_6_17();
  v58 = v46 + *v46;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v14[14] = v47;
  *v47 = v48;
  v47[1] = CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog_prerfv2(app:intent:intentResponse:);
  OUTLINED_FUNCTION_6_1();

  return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, a12, a13, a14);
}

uint64_t CustomIntentsDialogTemplating.makeHandoffDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_3_11((v1 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v2, v3);
  OUTLINED_FUNCTION_45_5();
  *(v0 + 24) = v4;
  OUTLINED_FUNCTION_2_26();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_21_14(v6);

  return v9(v7);
}

uint64_t CustomIntentsDialogTemplating.makeHandoffDialog_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.makeHandoffDialog_preRFv2()()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_3_11((v0[3] + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v1, v2);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v3;
  OUTLINED_FUNCTION_2_26();
  v9 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = WorkflowDialogTemplating.makeHandoffDialog_preRFv2();
  v7 = OUTLINED_FUNCTION_15_21();

  return v9(v7);
}

uint64_t CustomIntentsDialogTemplating.makeNotificationMessageForHandoff()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  OUTLINED_FUNCTION_3_11((v1 + 16));
  OUTLINED_FUNCTION_101_0();
  v4 = DeviceState.isActualHomePod.getter(v2, v3);
  v5 = *(v1 + 48);
  v6 = OUTLINED_FUNCTION_3_11((v1 + 16));
  DeviceState.asSiriKitDeviceState()(v6, v5);
  OUTLINED_FUNCTION_45_5();
  v0[3] = v7;
  if (v4)
  {
    OUTLINED_FUNCTION_16_1();
    v17 = (v8 + *v8);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_57_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_21_14(v10);
    v13 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_16_1();
    v18 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[4] = v15;
    *v15 = v0;
    v12 = OUTLINED_FUNCTION_21_14(v15);
    v13 = v18;
  }

  return v13(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}