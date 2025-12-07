uint64_t MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(uint64_t a1)
{
  v2 = *(*v1 + 200);
  *(*v1 + 880) = a1;

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v2, 0);
}

{
  v3 = *v2;
  *(*v2 + 920) = a1;

  v4 = *(v3 + 200);
  if (v1)
  {

    v5 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  else
  {

    v5 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v5, v4, 0);
}

{
  v70 = v1;
  if (*(v1 + 1353))
  {
    static CommonLogger.processing.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 960);
    v6 = *(v1 + 928);
    v7 = *(v1 + 568);
    v8 = *(v1 + 472);
    v9 = *(v1 + 440);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[runFullProcessing] user has iPad, shouldProceedWithoutDeferral", v10, 2u);
    }

    v5(v7, v8);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(v1 + 992) = *(v1 + 960);
    type metadata accessor for DBManager();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, 255, &type metadata accessor for DBManager, &protocol conformance descriptor for DBManager);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    *(v1 + 1000) = v11;
    *(v1 + 1008) = v12;
    v14 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    v15 = v11;

    return _swift_task_switch(v14, v15, v13);
  }

  static DefaultsManager.Processing.deferralMinimumThreshold.getter();
  v17 = v16;
  v14 = static DefaultsManager.Processing.deferralMaximumThreshold.getter();
  if (v17 > v18)
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = v18 - v17;
  if (COERCE__INT64(fabs(v18 - v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    return _swift_task_switch(v14, v15, v13);
  }

  v21 = *(v1 + 752);
  v22 = *(v1 + 744);
  v23 = *(v1 + 712);
  v24 = *(v1 + 704);
  v25 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  v26 = v17 + v20 * vcvtd_n_f64_u64(v25, 0x35uLL);
  if (v25 == 0x20000000000000)
  {
    v27 = v19;
  }

  else
  {
    v27 = v26;
  }

  Date.addingTimeInterval(_:)();
  static DefaultsManager.Processing.setDeferredRunDate(_:)();
  static CommonLogger.processing.getter();
  (*(v23 + 16))(v22, v21, v24);
  v28 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v28, v68);
  v30 = *(v1 + 960);
  v31 = *(v1 + 936);
  v32 = *(v1 + 744);
  v33 = *(v1 + 704);
  v34 = *(v1 + 584);
  v35 = *(v1 + 472);
  if (v29)
  {
    v67 = *(v1 + 960);
    v36 = swift_slowAlloc();
    v66 = v34;
    v37 = swift_slowAlloc();
    v69[0] = v37;
    *v36 = 134218498;
    *(v36 + 4) = v27;
    *(v36 + 12) = 2080;
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v63 = v35;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v31(v32, v33);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v69);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2048;
    static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
    *(v36 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v28, v68, "[runFullProcessing] set target defer run date, randomizedInterval=%f, targetDate=%s, reconsiderationInterval=%f", v36, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v37);

    v67(v66, v63);
  }

  else
  {

    v31(v32, v33);
    v30(v34, v35);
  }

  v43 = *(v1 + 936);
  v44 = *(v1 + 840);
  v62 = *(v1 + 752);
  v64 = *(v1 + 928);
  v45 = *(v1 + 704);
  v65 = *(v1 + 440);
  v46 = *(v1 + 208);
  v47 = *(v1 + 216);
  v48 = *(v1 + 200);
  static DefaultsManager.Processing.setDeferredRunScheduledDate(_:)();
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
  swift_allocError();
  (*(v47 + 104))(v49, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v46);
  swift_willThrow();

  v43(v62, v45);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v43(v44, v45);
  swift_beginAccess();
  *(v48 + 120) = 0;
  static CommonLogger.processing.getter();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 67109120;
    *(v52 + 4) = *(v48 + 120);

    _os_log_impl(&_mh_execute_header, v50, v51, "[runFullProcessing] isRunning changed to %{BOOL}d", v52, 8u);
  }

  else
  {
  }

  v53 = *(v1 + 464);
  v54 = *(v1 + 200);
  (*(v1 + 960))(*(v1 + 576), *(v1 + 472));
  v55 = type metadata accessor for TaskPriority();
  (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
  v57 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v56, type metadata accessor for MOBundleProcessingSession, &protocol conformance descriptor for MOBundleProcessingSession);
  v58 = swift_allocObject();
  v58[2] = v54;
  v58[3] = v57;
  v58[4] = v54;
  v59 = *(v1 + 464);
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v59, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v58);

  v60 = *(v1 + 8);

  return v60();
}

{
  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v1[37];
    v5 = v1[29];
    v6 = v1[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[30] + 8))(v1[37], v1[29]);
      v7 = "";
    }

    v13 = v1[52];
    v14 = v1[50];
    v15 = v1[38];
    v16 = v1[39];
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v18, "UIService_RefreshBundles", v7, v17, 2u);

    v19 = *(v16 + 8);
    v19(v14, v15);
    v19(v13, v15);
  }

  else
  {
    v8 = v1[52];
    v9 = v1[50];
    v10 = v1[38];
    v11 = v1[39];

    v12 = *(v11 + 8);
    v12(v9, v10);
    v12(v8, v10);
  }

  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for OSSignposter();
  v1[133] = v20;
  v1[134] = __swift_project_value_buffer(v20, static MOAngelSignposter.bundleProcessing);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "UIService_FetchBundles", "", v23, 2u);
  }

  v25 = v1[51];
  v26 = v1[49];
  v27 = v1[38];
  v28 = v1[39];

  v29 = *(v28 + 16);
  v1[135] = v29;
  v1[136] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v25, v26, v27);
  v1[137] = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v1[138] = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = swift_task_alloc();
  v1[139] = v30;
  *v30 = v1;
  v30[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return MOBundleProcessingSession.fetchBundles(options:)(0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1120) = a1;
  *(v4 + 1128) = v1;

  v5 = *(v3 + 200);
  if (v1)
  {
    v6 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  else
  {
    v6 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v6, v5, 0);
}

{
  v2 = v1[140];
  if (v2)
  {
    v3 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v4 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v5 = v1[36];
      v6 = v1[29];
      v7 = v1[30];

      checkForErrorAndConsumeState(state:)();

      if ((*(v7 + 88))(v5, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v8 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[30] + 8))(v1[36], v1[29]);
        v8 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v16, "UIService_FetchBundles", v8, v15, 2u);
    }

    v17 = v1[48];
    v18 = v1[38];
    v19 = v1[39];

    v20 = *(v19 + 8);
    v1[142] = v20;
    v20(v17, v18);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v21 = OSSignposter.logHandle.getter();
    v22 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v24, "UIService_MapSuggestions", "", v23, 2u);
    }

    v25 = v1[135];
    v26 = v1[51];
    v27 = v1[47];
    v28 = v1[38];

    v25(v26, v27, v28);
    swift_allocObject();
    v1[143] = OSSignpostIntervalState.init(id:isOpen:)();
    v29 = swift_task_alloc();
    v1[144] = v29;
    *v29 = v1;
    v29[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return MOBundleProcessingSession.generatedSuggestions(bundles:)(v2);
  }

  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v12 = v1[30];
    v11 = v1[31];
    v13 = v1[29];

    checkForErrorAndConsumeState(state:)();

    if ((*(v12 + 88))(v11, v13) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[30] + 8))(v1[31], v1[29]);
      v14 = "";
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v32, "UIService_FetchBundles", v14, v31, 2u);
  }

  v33 = v1[49];
  v35 = v1[39];
  v34 = v1[40];
  v36 = v1[38];
  v37 = v1[26];
  v38 = v1[27];

  v39 = *(v35 + 8);
  v39(v34, v36);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
  v40 = swift_allocError();
  (*(v38 + 104))(v41, enum case for ProcessingError.cannotMapBundlesToSuggestions(_:), v37);
  swift_willThrow();

  v39(v33, v36);
  v1[168] = v40;
  v1[23] = v40;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  if ((*(v1[27] + 88))(v1[28], v1[26]) != enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
  {
    (*(v1[27] + 8))(v1[28], v1[26]);
LABEL_21:

    v42 = v1[126];
    v43 = v1[125];
    v44 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    goto LABEL_22;
  }

  v42 = v1[126];
  v43 = v1[125];
  v44 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_22:

  return _swift_task_switch(v44, v43, v42);
}

{
  v2 = *(*v1 + 200);
  *(*v1 + 1160) = a1;

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v2, 0);
}

{
  v2 = v1[145];
  if (v2)
  {
    v3 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v4 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v5 = v1[35];
      v6 = v1[29];
      v7 = v1[30];

      checkForErrorAndConsumeState(state:)();

      if ((*(v7 + 88))(v5, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v8 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[30] + 8))(v1[35], v1[29]);
        v8 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v16, "UIService_MapSuggestions", v8, v15, 2u);
    }

    v17 = v1[142];
    v18 = v1[46];
    v19 = v1[38];

    v17(v18, v19);
    static CommonLogger.processing.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v1[128];
      v23 = v1[99];
      v24 = v1[88];
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v27 = v26;
      v22(v23, v24);
      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "[runFullProcessing] fetched and mapped suggestions, timestamp=%f", v25, 0xCu);
    }

    v28 = v1[124];
    v29 = v1[68];
    v30 = v1[59];
    v31 = v1[60];

    v1[146] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v29, v30);
    if (static DefaultsManager.Processing.shouldUseIncremental.getter())
    {
      v32 = static MomentsUIManager.shared.getter();
      v1[150] = dispatch thunk of MomentsUIManager.cloudManager.getter();

      v33 = swift_task_alloc();
      v1[151] = v33;
      *v33 = v1;
      v33[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

      return CloudManager.getDeviceDB()();
    }

    else
    {
      if (one-time initialization token for assetRendering != -1)
      {
        swift_once();
      }

      v1[147] = __swift_project_value_buffer(v1[133], static MOAngelSignposter.assetRendering);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v34 = OSSignposter.logHandle.getter();
      v35 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "UIService_RenderAssets", "", v36, 2u);
      }

      v38 = v1[135];
      v39 = v1[51];
      v40 = v1[45];
      v41 = v1[38];

      v38(v39, v40, v41);
      swift_allocObject();
      v1[148] = OSSignpostIntervalState.init(id:isOpen:)();
      v42 = swift_task_alloc();
      v1[149] = v42;
      *v42 = v1;
      v42[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

      return MOBundleProcessingSession.renderSuggestions(suggestions:)(v2);
    }
  }

  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = v1[32];
    v12 = v1[29];
    v13 = v1[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v13 + 88))(v11, v12) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[30] + 8))(v1[32], v1[29]);
      v14 = "";
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v44, "UIService_MapSuggestions", v14, v43, 2u);
  }

  v45 = v1[142];
  v56 = v1[47];
  v57 = v1[49];
  v46 = v1[41];
  v47 = v1[38];
  v48 = v1[26];
  v49 = v1[27];

  v45(v46, v47);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
  v50 = swift_allocError();
  (*(v49 + 104))(v51, enum case for ProcessingError.cannotMapBundlesToSuggestions(_:), v48);
  swift_willThrow();

  v45(v56, v47);
  v45(v57, v47);
  v1[168] = v50;
  v1[23] = v50;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  if ((*(v1[27] + 88))(v1[28], v1[26]) != enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
  {
    (*(v1[27] + 8))(v1[28], v1[26]);
LABEL_29:

    v52 = v1[126];
    v53 = v1[125];
    v54 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    goto LABEL_30;
  }

  v52 = v1[126];
  v53 = v1[125];
  v54 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_30:

  return _swift_task_switch(v54, v53, v52);
}

{
  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v1[34];
    v5 = v1[29];
    v6 = v1[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[30] + 8))(v1[34], v1[29]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v9, "UIService_RenderAssets", v7, v8, 2u);
  }

  v10 = v1[142];
  v11 = v1[44];
  v12 = v1[38];

  v10(v11, v12);
  static CommonLogger.processing.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v1[128];
    v16 = v1[99];
    v17 = v1[88];
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v20 = v19;
    v15(v16, v17);
    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[runFullProcessing] rendered suggestions, timestamp=%f", v18, 0xCu);
  }

  v21 = v1[142];
  v22 = v1[124];
  v23 = v1[67];
  v24 = v1[59];
  v25 = v1[45];
  v26 = v1[38];

  v22(v23, v24);
  v21(v25, v26);
  v27 = static MomentsUIManager.shared.getter();
  v1[150] = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v28 = swift_task_alloc();
  v1[151] = v28;
  *v28 = v1;
  v28[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return CloudManager.getDeviceDB()();
}

{
  v2 = *(*v1 + 200);
  *(*v1 + 1216) = a1;

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v2, 0);
}

{
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[writeDBSuggestions] triggered a cloud refresh", v4, 2u);
  }

  v5 = v1[124];
  v6 = v1[65];
  v7 = v1[59];

  v5(v6, v7);
  v8 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v9 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v10 = v1[33];
    v11 = v1[29];
    v12 = v1[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v12 + 88))(v10, v11) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[30] + 8))(v1[33], v1[29]);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v15, "UIService_CloudSync", v13, v14, 2u);
  }

  v16 = v1[145];
  v17 = v1[142];
  v18 = v1[42];
  v19 = v1[38];

  v17(v18, v19);
  static Date.now.getter();
  static DefaultsManager.Processing.setLastSuccessfulRun(_:)();
  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v20; i = v1)
  {
    v21 = 0;
    v22 = v1[145];
    v1 = (v22 & 0xC000000000000001);
    v23 = v22 & 0xFFFFFFFFFFFFFF8;
    v24 = v22 + 32;
    v25 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v1)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v23 + 16))
        {
          goto LABEL_29;
        }

        v26 = *(v24 + 8 * v21);
      }

      v27 = v26;
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v29 = Suggestion.assets.getter();
      if (v29)
      {
        if (v29 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v30 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v32 = *(v25 + 2);
      v31 = *(v25 + 3);
      if (v32 >= v31 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v25);
      }

      *(v25 + 2) = v32 + 1;
      *&v25[v32 + 4] = v30;
      ++v21;
      if (v28 == v20)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_32:

  v36 = *(v25 + 2);
  if (v36)
  {
    v37 = 0;
    v38 = (v25 + 4);
    while (1)
    {
      v39 = *v38++;
      v40 = __OFADD__(v37, v39);
      v37 += v39;
      if (v40)
      {
        break;
      }

      if (!--v36)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = 0;
LABEL_38:

    static CommonLogger.processing.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v41, v42, "[runFullProcessing] total assets processed, n=%ld", v43, 0xCu);
    }

    v44 = i[124];
    v45 = i[64];
    v46 = i[59];

    v44(v45, v46);
    v35 = i[126];
    v34 = i[125];
    v33 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v33, v34, v35);
}

{
  v2 = *(v1 + 1024);
  v3 = *(v1 + 792);
  v4 = *(v1 + 704);
  static Date.now.getter();
  static DefaultsManager.Processing.setLastSuccessfulRun(_:)();

  v2(v3, v4);

  v5 = *(v1 + 200);
  (*(v1 + 1024))(*(v1 + 840), *(v1 + 704));
  swift_beginAccess();
  *(v5 + 120) = 0;
  static CommonLogger.processing.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v5 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "[runFullProcessing] isRunning changed to %{BOOL}d", v8, 8u);
  }

  else
  {
  }

  v9 = *(v1 + 464);
  v10 = *(v1 + 200);
  (*(v1 + 992))(*(v1 + 504), *(v1 + 472));
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v13 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v12, type metadata accessor for MOBundleProcessingSession, &protocol conformance descriptor for MOBundleProcessingSession);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = v10;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v14);

  v15 = *(v1 + 8);

  return v15();
}

{
  v2 = *(v1 + 1024);
  v3 = *(v1 + 840);
  v4 = *(v1 + 704);
  v5 = *(v1 + 200);
  swift_willThrow();

  v2(v3, v4);
  swift_beginAccess();
  *(v5 + 120) = 0;
  static CommonLogger.processing.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v5 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "[runFullProcessing] isRunning changed to %{BOOL}d", v8, 8u);
  }

  else
  {
  }

  v9 = *(v1 + 464);
  v10 = *(v1 + 200);
  (*(v1 + 992))(*(v1 + 488), *(v1 + 472));
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v13 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v12, type metadata accessor for MOBundleProcessingSession, &protocol conformance descriptor for MOBundleProcessingSession);
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = v10;
  v15 = *(v1 + 464);
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v15, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v14);

  v16 = *(v1 + 8);

  return v16();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of (String, Date?)(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t MOBundleProcessingSession.fetchBundles(options:)(char a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 136) = a1;
  v4 = type metadata accessor for Logger();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for PrivacySettings.JournalingSuggestions();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(MOBundleProcessingSession.fetchBundles(options:), v2, 0);
}

uint64_t MOBundleProcessingSession.fetchBundles(options:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 136);
  v3 = [objc_allocWithZone(MOPromptManager) init];
  *(v0 + 104) = v3;
  *(v0 + 16) = specialized MOBundleProcessingSession.allowedSourceTypes.getter();
  v5 = v0 + 16;
  if ((v2 & 1) != 0 && v1)
  {
    v46 = v3;
    v6 = *(v0 + 32);
    v9 = *(v6 + 56);
    v8 = v6 + 56;
    v7 = v9;
    v10 = -1;
    v11 = -1 << *(*(v0 + 32) + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & v7;
    v13 = (63 - v11) >> 6;
    v50 = enum case for PrivacySettings.JournalingSuggestions.topLevel(_:);
    v51 = *(v0 + 80);
    v48 = (v51 + 8);
    v45 = enum case for PrivacySettings.JournalingSuggestions.activity(_:);
    v44 = enum case for PrivacySettings.JournalingSuggestions.media(_:);
    v43 = enum case for PrivacySettings.JournalingSuggestions.communications(_:);
    v42 = enum case for PrivacySettings.JournalingSuggestions.photos(_:);
    v41 = enum case for PrivacySettings.JournalingSuggestions.significantLocation(_:);
    v40 = enum case for PrivacySettings.JournalingSuggestions.nearbyPeople(_:);
    v39 = enum case for PrivacySettings.JournalingSuggestions.stateOfMind(_:);
    v38 = enum case for PrivacySettings.JournalingSuggestions.reflectionPrompts(_:);
    v52 = *(v0 + 32);

    v14 = 0;
    v47 = _swiftEmptyArrayStorage;
    v49 = v8;
LABEL_6:
    v15 = v14;
    if (!v12)
    {
      goto LABEL_8;
    }

    do
    {
      v14 = v15;
LABEL_11:
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v18 = *(v0 + 72);
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = *(v51 + 16);
      v20(v16, *(v52 + 48) + *(v51 + 72) * (v19 | (v14 << 6)), v18);
      v20(v17, v16, v18);
      v21 = (*(v51 + 88))(v17, v18);
      if (v21 != v50)
      {
        v22 = &MOEventBundleSourceTypeActivity;
        if (v21 != v45)
        {
          v22 = &MOEventBundleSourceTypeMedia;
          if (v21 != v44)
          {
            v22 = &MOEventBundleSourceTypeContact;
            if (v21 != v43)
            {
              v22 = &MOEventBundleSourceTypePhoto;
              if (v21 != v42)
              {
                v22 = &MOEventBundleSourceTypeVisitLocation;
                if (v21 != v41)
                {
                  v22 = &MOEventBundleSourceTypePeopleContext;
                  if (v21 != v40)
                  {
                    v22 = &MOEventBundleSourceTypeStateOfMind;
                    if (v21 != v39)
                    {
                      v22 = &MOEventBundleSourceTypeReflectionPrompt;
                      if (v21 != v38)
                      {
                        return _assertionFailure(_:_:file:line:flags:)();
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v23 = *(v0 + 96);
        v24 = *(v0 + 72);
        v25 = *v48;
        v26 = *v22;
        v25(v23, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

        v8 = v49;
        v28 = *(v47 + 2);
        v27 = *(v47 + 3);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v47);
          v29 = v28 + 1;
          v47 = v30;
        }

        *(v47 + 2) = v29;
        *&v47[v28 + 4] = v26;
        goto LABEL_6;
      }

      (*v48)(*(v0 + 96), *(v0 + 72));
      v15 = v14;
      v8 = v49;
    }

    while (v12);
LABEL_8:
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo23MOEventBundleSourceTypea_SayAEGTt0g5Tf4g_n(v47);

        v5 = v0 + 16;
        v3 = v46;
        *(v0 + 16) = v31;
        goto LABEL_28;
      }

      v12 = *(v8 + 8 * v14);
      ++v15;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
LABEL_28:
    v32 = *(v0 + 40);
    v33 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v4, type metadata accessor for MOBundleProcessingSession, &protocol conformance descriptor for MOBundleProcessingSession);
    v34 = swift_task_alloc();
    *(v0 + 112) = v34;
    *(v34 + 16) = v3;
    *(v34 + 24) = v5;
    v35 = swift_task_alloc();
    *(v0 + 120) = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28MOEventBundleProcessorResultCSgMd, &_sSo28MOEventBundleProcessorResultCSgMR);
    *v35 = v0;
    v35[1] = MOBundleProcessingSession.fetchBundles(options:);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 24, v32, v33, 0xD000000000000016, 0x80000001002B2DD0, partial apply for closure #2 in MOBundleProcessingSession.fetchBundles(options:), v34, v36);
  }
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = MOBundleProcessingSession.fetchBundles(options:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = MOBundleProcessingSession.fetchBundles(options:);
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) processedBundles];
    v3 = *(v0 + 104);
    if (v2)
    {
      v4 = v2;
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle, MOEventBundle_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v5 = 0;
    }

    v17 = *(v0 + 8);

    return v17(v5);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[fetchBundles] result is nil", v8, 2u);
    }

    v9 = *(v0 + 104);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);

    (*(v11 + 8))(v10, v12);
    v13 = type metadata accessor for ProcessingError();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for ProcessingError.nilFetchResult(_:), v13);
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MOBundleProcessingSession.generatedSuggestions(bundles:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(MOBundleProcessingSession.generatedSuggestions(bundles:), v1, 0);
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 80) = a1;

  return _swift_task_switch(MOBundleProcessingSession.generatedSuggestions(bundles:), v2, 0);
}

uint64_t MOBundleProcessingSession.generatedSuggestions(bundles:)()
{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[3];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[5] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[3];
        v0[6] = 0;
        v0[7] = _swiftEmptyArrayStorage;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[8] = v4;
        v5 = swift_task_alloc();
        v0[9] = v5;
        *v5 = v0;
        v5[1] = MOBundleProcessingSession.generatedSuggestions(bundles:);

        return MOEventBundle.asSuggestion.getter();
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[5] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v6 = v0[1];

  return v6(_swiftEmptyArrayStorage);
}

{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = (v0 + 16);
    v3 = v1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v4 = *(v0 + 64);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {

    v2 = (v0 + 56);
  }

  v5 = *v2;
  v6 = *(v0 + 48) + 1;
  if (v6 == *(v0 + 40))
  {
    v7 = *(v0 + 8);
    v8 = *v2;

    return v7(v8);
  }

  else
  {
    *(v0 + 48) = v6;
    *(v0 + 56) = v5;
    v10 = *(v0 + 24);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v6 + 32);
    }

    *(v0 + 64) = v11;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = MOBundleProcessingSession.generatedSuggestions(bundles:);

    return MOEventBundle.asSuggestion.getter();
  }
}

uint64_t MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for OS_dispatch_queue.Attributes();
  v2[14] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(MOBundleProcessingSession.renderSuggestions(suggestions:), v1, 0);
}

{
  static CommonLogger.processing.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 24);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5 >> 62)
    {
      v14 = v6;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v6 = v14;
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;
    v8 = v6;

    _os_log_impl(&_mh_execute_header, v2, v3, "[renderSuggestions] did render %ld suggestions", v8, 0xCu);
  }

  else
  {
  }

  v9 = *(v1 + 152);
  v10 = *(v1 + 64);
  v11 = *(v1 + 48);

  v9(v10, v11);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t MOBundleProcessingSession.renderSuggestions(suggestions:)()
{
  v1 = v0[12];
  v2 = v0[11];
  v23 = v0[10];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v0[2] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v3 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[16] = v3;
  v4 = swift_allocObject();
  v0[17] = v4;
  *(v4 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v0[18] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v8 >> 62)
    {
      v21 = v9;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v21;
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;
    v11 = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "[renderSuggestions] will render %ld suggestions", v11, 0xCu);
  }

  else
  {
  }

  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];
  v16 = v0[3];
  v17 = *(v14 + 8);
  v0[19] = v17;
  v0[20] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v12, v13);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v18, type metadata accessor for MOBundleProcessingSession, &protocol conformance descriptor for MOBundleProcessingSession);
  v19 = swift_task_alloc();
  v0[21] = v19;
  v19[2] = v16;
  v19[3] = v3;
  v19[4] = v4;
  v19[5] = v15;
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = MOBundleProcessingSession.renderSuggestions(suggestions:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

{
  v1 = *(*v0 + 32);

  return _swift_task_switch(MOBundleProcessingSession.renderSuggestions(suggestions:), v1, 0);
}

uint64_t closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = type metadata accessor for OSSignpostError();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[17] = v9;
  v4[18] = *(v9 - 8);
  v4[19] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[20] = v10;
  v4[21] = *(v10 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:), a2, 0);
}

uint64_t closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)()
{
  v1 = specialized MOBundleProcessingSession.generatedDBSuggestions(suggestions:)(v0[3]);
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v0[26] = type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134218240;
      if (v2 >> 62)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = v0[18];
      v7 = v0[19];
      v9 = v0[17];
      *(v5 + 4) = v6;

      *(v5 + 12) = 2048;
      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v11 = v10;
      (*(v8 + 8))(v7, v9);
      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "[runFullProcessing] converted suggestions, dbSuggestions n=%ld, timestamp=%f", v5, 0x16u);
    }

    else
    {
    }

    v16 = v0[24];
    v17 = v0[20];
    v18 = v0[21];
    v19 = *(v18 + 8);
    v0[27] = v19;
    v0[28] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v16, v17);
    static TaskPriority.background.getter();
    type metadata accessor for MomentsUIManager();
    if (static MomentsUIManager.userIsActivelyWaitingOnUI.getter())
    {
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[13];
      v23 = v0[14];
      static TaskPriority.userInitiated.getter();
      (*(v23 + 8))(v20, v22);
      (*(v23 + 32))(v20, v21, v22);
      static CommonLogger.processing.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "[runFullProcessing] user waiting, running at high QoS", v26, 2u);
      }

      v27 = v0[23];
      v28 = v0[20];

      v19(v27, v28);
    }

    if (static DefaultsManager.Processing.shouldUseIncremental.getter())
    {
      type metadata accessor for IncrementalProcessor();
      v46 = (&async function pointer to dispatch thunk of static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:) + async function pointer to dispatch thunk of static IncrementalProcessor.resumeProcessingUntilComplete(withLatest:qos:startDate:));
      v29 = swift_task_alloc();
      v0[29] = v29;
      *v29 = v0;
      v29[1] = closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      v30 = v0[16];
      v31 = v0[4];

      return v46(v2, v30, v31);
    }

    else
    {
      if (one-time initialization token for databaseOps != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for OSSignposter();
      v0[31] = __swift_project_value_buffer(v32, static MOAngelSignposter.databaseOps);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v33 = OSSignposter.logHandle.getter();
      v34 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v36, "UIService_WriteDatabase", "", v35, 2u);
      }

      v38 = v0[18];
      v37 = v0[19];
      v47 = v0[17];
      v40 = v0[11];
      v39 = v0[12];
      v42 = v0[8];
      v41 = v0[9];

      (*(v41 + 16))(v40, v39, v42);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v0[32] = OSSignpostIntervalState.init(id:isOpen:)();
      Date.init()();
      Date.timeIntervalSince(_:)();
      v44 = v43;
      (*(v38 + 8))(v37, v47);
      v45 = swift_task_alloc();
      v0[33] = v45;
      *v45 = v0;
      v45[1] = closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

      return MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:)(v2, v44, 0);
    }
  }

  else
  {
    v12 = type metadata accessor for ProcessingError();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for ProcessingError.cannotMapSuggestionsToDBSuggestions(_:), v12);
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  else
  {
    v4 = closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  else
  {
    v4 = closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[9];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(uint64_t a1)
{
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 144);
    v4 = *(v1 + 152);
    v6 = *(v1 + 136);
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v9 = v8;
    (*(v5 + 8))(v4, v6);
    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[runFullProcessing] finished incremental processing, timestamp=%f", v7, 0xCu);
  }

  v10 = *(v1 + 128);
  v11 = *(v1 + 104);
  v12 = *(v1 + 112);
  (*(v1 + 216))(*(v1 + 176), *(v1 + 160));
  (*(v12 + 8))(v10, v11);

  v13 = *(v1 + 8);

  return v13();
}

{
  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v1[6];
    v4 = v1[7];
    v6 = v1[5];

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[6] + 8))(v1[7], v1[5]);
      v7 = "";
    }

    v13 = v1[9];
    v12 = v1[10];
    v21 = v1[8];
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v15, "UIService_WriteDatabase", v7, v14, 2u);

    v11 = *(v13 + 8);
    v11(v12, v21);
  }

  else
  {
    v9 = v1[9];
    v8 = v1[10];
    v10 = v1[8];

    v11 = *(v9 + 8);
    v11(v8, v10);
  }

  v16 = v1[16];
  v18 = v1[13];
  v17 = v1[14];
  v11(v1[12], v1[8]);
  (*(v17 + 8))(v16, v18);

  v19 = v1[1];

  return v19();
}

uint64_t MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 264) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Date();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMR);
  *(v4 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v4 + 72) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:), v3, 0);
}

uint64_t MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:)()
{
  v23 = v0;
  if (one-time initialization token for databasePath != -1)
  {
    swift_once();
  }

  v1 = qword_1003353C8;
  if (qword_1003353C8)
  {
    v2 = static MOBundleProcessingSession.Constants.databasePath;
    v0[17] = type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 134218242;
      if (v5 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v0[16];
      v10 = v0[10];
      v11 = v0[11];
      *(v6 + 4) = v8;

      *(v6 + 12) = 2080;
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, &v22);
      _os_log_impl(&_mh_execute_header, v3, v4, "[writeDBSuggestions] writing suggestions n=%ld to path=%s", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v7);

      v12 = *(v11 + 8);
      v12(v9, v10);
    }

    else
    {
      v17 = v0[16];
      v18 = v0[10];
      v19 = v0[11];

      v12 = *(v19 + 8);
      v12(v17, v18);
    }

    v0[18] = v12;
    type metadata accessor for MomentsUIManager();
    v20 = static MomentsUIManager.shared.getter();
    v0[19] = dispatch thunk of MomentsUIManager.cloudManager.getter();

    v21 = swift_task_alloc();
    v0[20] = v21;
    *v21 = v0;
    v21[1] = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);

    return CloudManager.getDBManager()();
  }

  else
  {
    v13 = type metadata accessor for ProcessingError();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for ProcessingError.nilDatabasePath(_:), v13);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

{
  v16 = v0;
  if (v0[21])
  {
    static CommonLogger.analytics.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[18];
    v5 = v0[15];
    v6 = v0[10];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001002B2D60, &v15);
      _os_log_impl(&_mh_execute_header, v1, v2, "[DBWriter.%{public}s] Adding snapshot event for createFull", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    v4(v5, v6);
    v0[22] = type metadata accessor for MainActor();
    v0[23] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:), v10, v9);
  }

  else
  {
    v11 = type metadata accessor for ProcessingError();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for ProcessingError.noDatabase(_:), v11);
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *(v0 + 32);

  *(v0 + 192) = dispatch thunk of DBManager.mainWriter.getter();

  return _swift_task_switch(MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:), v1, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = enum case for DBSnapshotAnalytics.SnapshotEvent.Reason.createFull(_:);
  v5 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent.Reason();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  static DBWriter.Constants.defaultSnapshotExpiration.getter();
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[2];

  return DBWriter.addSnapshot(id:generation:sequence:expiry:recommended:recent:reuse:processingTime:snapshotEventReason:)(v8, 0, 0, 0, 1, v9, v10, _swiftEmptyArrayStorage);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  *(*v1 + 208) = v0;

  (*(v6 + 8))(v5, v7);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMd, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventV6ReasonOSgMR);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(v2 + 32);
  if (v0)
  {
    v9 = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);
  }

  else
  {
    v9 = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);
  }

  return _swift_task_switch(v9, v8, 0);
}

{

  *(v0 + 224) = dispatch thunk of DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);

  return DBWriter.latestSnapshotMain(prefetch:)(1);
}

{
  v1 = *(*v0 + 32);

  return _swift_task_switch(MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 168) = a1;

  return _swift_task_switch(MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:), v2, 0);
}

{
  *(v1 + 216) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:), v3, v2);
}

{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);
  }

  else
  {
    v6 = v3[4];

    v5 = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

{
  if (*(v1 + 240))
  {

    v2 = dispatch thunk of DBSnapshot.recommended.getter();

    if (v2)
    {
      static CommonLogger.processing.getter();

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        if (v2 >> 62)
        {
          v6 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v5 + 4) = v6;

        _os_log_impl(&_mh_execute_header, v3, v4, "[writeDBSuggestions] read suggestions n=%ld from latest snapshot", v5, 0xCu);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (*(v1 + 144))(*(v1 + 112), *(v1 + 80));
    }
  }

  static CommonLogger.processing.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[writeDBSuggestions] triggering a cloud refresh", v9, 2u);
  }

  v10 = *(v1 + 144);
  v11 = *(v1 + 104);
  v12 = *(v1 + 80);

  v10(v11, v12);
  v13 = swift_task_alloc();
  *(v1 + 256) = v13;
  v14 = type metadata accessor for CloudManager();
  v15 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, 255, &type metadata accessor for CloudManager, &protocol conformance descriptor for CloudManager);
  *v13 = v1;
  v13[1] = MOBundleProcessingSession.writeDBSuggestions(suggestions:processsingTime:);

  return CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0xD000000000000030, 0x80000001002B2D60, 981, v14, v15);
}

{
  static CommonLogger.processing.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[writeDBSuggestions] triggered a cloud refresh", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[12];
  v7 = v1[10];

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

void one-time initialization function for libraryDirectory()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static MOBundleProcessingSession.Constants.libraryDirectory = v1;
}

void one-time initialization function for databasePath()
{
  if (one-time initialization token for libraryDirectory != -1)
  {
    swift_once();
  }

  v0 = *(static MOBundleProcessingSession.Constants.libraryDirectory + 2);
  if (v0)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v3 = String.init<A>(_:)();
    v4 = v1;
    String.append<A>(contentsOf:)();
    v2 = v3;
    v0 = v4;
  }

  else
  {
    v2 = 0;
  }

  static MOBundleProcessingSession.Constants.databasePath = v2;
  qword_1003353C8 = v0;
}

void closure #1 in MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary();
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned MODatabaseUpgradeStatus, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_126;
  v12 = _Block_copy(aBlock);

  [a2 scheduleDatabaseUpgradeWithHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary()(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v79 = a3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v76 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v76 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v76 - v18;
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  v23 = &v76 - v22;
  if (!a2)
  {
    v36 = v7;
    v77 = type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v37, v38, "[scheduleDatabaseUpgrade] state=%lu", v39, 0xCu);
    }

    v40 = *(v36 + 8);
    v40(v19, v6);
    if (a1 > 4)
    {
      v65 = v79;
      swift_beginAccess();
      if (*(v65 + 16))
      {
        static CommonLogger.processing.getter();

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v6;
          v69 = swift_slowAlloc();
          *v69 = 67109120;
          swift_beginAccess();
          *(v69 + 4) = *(v65 + 16);

          _os_log_impl(&_mh_execute_header, v66, v67, "[scheduleDatabaseUpgrade] unexpected callback, hasResumed=%{BOOL}d", v69, 8u);
          v6 = v68;
        }

        else
        {
        }

        v46 = v10;
        return (v40)(v46, v6);
      }

      swift_beginAccess();
      *(v65 + 16) = 1;
      v70 = type metadata accessor for ProcessingError();
      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
      v71 = swift_allocError();
      v73 = v75;
      v74 = &enum case for ProcessingError.unhandledDatabaseState(_:);
    }

    else
    {
      if (a1 != 2)
      {
        v41 = v79;
        swift_beginAccess();
        if ((*(v41 + 16) & 1) == 0)
        {
          swift_beginAccess();
          *(v41 + 16) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
          return CheckedContinuation.resume(returning:)();
        }

        static CommonLogger.processing.getter();

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v6;
          v45 = swift_slowAlloc();
          *v45 = 67109120;
          swift_beginAccess();
          *(v45 + 4) = *(v41 + 16);

          _os_log_impl(&_mh_execute_header, v42, v43, "[scheduleDatabaseUpgrade] unexpected callback, hasResumed=%{BOOL}d", v45, 8u);
          v6 = v44;
        }

        else
        {
        }

        v46 = v16;
        return (v40)(v46, v6);
      }

      v60 = v79;
      swift_beginAccess();
      if (*(v60 + 16))
      {
        static CommonLogger.processing.getter();

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = v6;
          v64 = swift_slowAlloc();
          *v64 = 67109120;
          swift_beginAccess();
          *(v64 + 4) = *(v60 + 16);

          _os_log_impl(&_mh_execute_header, v61, v62, "[scheduleDatabaseUpgrade] hasResumed=%{BOOL}d, needUpgrade", v64, 8u);
          v6 = v63;
        }

        else
        {
        }

        v46 = v13;
        return (v40)(v46, v6);
      }

      swift_beginAccess();
      *(v60 + 16) = 1;
      v70 = type metadata accessor for ProcessingError();
      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
      v71 = swift_allocError();
      v73 = v72;
      v74 = &enum case for ProcessingError.needUpgrade(_:);
    }

    (*(*(v70 - 8) + 104))(v73, *v74, v70);
    v80 = v71;
    goto LABEL_17;
  }

  v77 = v21;
  v24 = type metadata accessor for CommonLogger();
  swift_errorRetain();
  static CommonLogger.processing.getter();
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v76 = v24;
    v28 = v27;
    v29 = swift_slowAlloc();
    v81[0] = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = v7;
    v33 = v6;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v81);

    *(v28 + 4) = v34;
    v6 = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "[scheduleDatabaseUpgrade] error=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);

    v35 = v32;
  }

  else
  {

    v35 = v7;
  }

  v47 = *(v35 + 8);
  v47(v23, v6);
  v48 = v79;
  swift_beginAccess();
  if ((*(v48 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(v48 + 16) = 1;
    v80 = a2;
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  v49 = v77;
  static CommonLogger.processing.getter();
  swift_errorRetain();

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = v48;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v80 = v54;
    *v53 = 67109378;
    swift_beginAccess();
    *(v53 + 4) = *(v52 + 16);

    *(v53 + 8) = 2080;
    swift_getErrorValue();
    v55 = Error.localizedDescription.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v80);
    v79 = v6;
    v58 = v57;

    *(v53 + 10) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "[scheduleDatabaseUpgrade] hasResumed=%{BOOL}d, error=%s", v53, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v54);

    return (v47)(v49, v79);
  }

  else
  {

    return (v47)(v49, v6);
  }
}

void closure #1 in MOBundleProcessingSession.runSoftRefreshIfNecessary()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in MOBundleProcessingSession.runSoftRefreshIfNecessary();
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_115;
  v10 = _Block_copy(aBlock);

  [a2 softRefreshEventsWithRefreshVariant:1536 andHandler:v10];
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in MOBundleProcessingSession.runSoftRefreshIfNecessary()(uint64_t a1)
{
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void closure #2 in MOBundleProcessingSession.fetchBundles(options:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMd, &_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  type metadata accessor for MOEventBundleSourceType(0);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, 255, type metadata accessor for MOEventBundleSourceType, &protocol conformance descriptor for MOEventBundleSourceType);

  isa = Set._bridgeToObjectiveC()().super.isa;

  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = partial apply for closure #1 in closure #2 in MOBundleProcessingSession.fetchBundles(options:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_96;
  v12 = _Block_copy(aBlock);

  [a2 fetchEventBundlesWithAllowedSourceTypes:isa respectOnboardingDates:1 respectLearnFromThisApp:1 handler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #2 in MOBundleProcessingSession.fetchBundles(options:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for CommonLogger();
    swift_errorRetain();
    static CommonLogger.processing.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "[fetchBundles] Error: %@", v10, 0xCu);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    (*(v5 + 8))(v7, v4);
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMd, &_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v16 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMd, &_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[13] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:), 0, 0);
}

uint64_t closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)()
{
  v118 = v0;
  v1 = v0[9];
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v2; v2 = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v89 = v1 & 0xFFFFFFFFFFFFFF8;
    v90 = v1 & 0xC000000000000001;
    v88 = v0[9] + 32;
    v106 = (v0[18] + 8);
    v92 = (v0[15] + 8);
    v87 = v2;
    while (1)
    {
      if (v90)
      {
        v4 = v3;
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v89 + 16))
        {
          goto LABEL_49;
        }

        v4 = v3;
        v5 = *(v88 + 8 * v3);
      }

      v1 = v5;
      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
        break;
      }

      v100 = v7;
      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      v8 = v1;
      v1 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      v10 = os_log_type_enabled(v1, v9);
      v11 = v0[21];
      v12 = v0[17];
      v91 = v8;
      if (v10)
      {
        v114 = v0[21];
        v13 = v0[16];
        v14 = v0[14];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v116 = v16;
        *v15 = 136315650;
        Suggestion.suggestionID.getter();
        lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*v92)(v13, v14);
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v116);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2048;
        *(v15 + 14) = v100;
        *(v15 + 22) = 2048;
        *(v15 + 24) = i;
        _os_log_impl(&_mh_execute_header, v1, v9, "[renderSuggestions] suggestion %s (%ld/%ld)", v15, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v16);

        (*v106)(v114, v12);
      }

      else
      {

        (*v106)(v11, v12);
      }

      v21 = Suggestion.assets.getter();
      if (v21)
      {
        v22 = v21 & 0xFFFFFFFFFFFFFF8;
        v96 = v21 & 0xFFFFFFFFFFFFFF8;
        v97 = v21;
        if (v21 >> 62)
        {
          v105 = _CocoaArrayWrapper.endIndex.getter();
          v23 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v96;
          v21 = v97;
          if (v23)
          {
LABEL_16:
            v24 = 0;
            v94 = v21 + 32;
            v95 = v21 & 0xC000000000000001;
            v93 = v23;
            while (1)
            {
              if (v95)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v24 >= *(v22 + 16))
                {
                  goto LABEL_47;
                }

                v25 = *(v94 + 8 * v24);
              }

              v1 = v25;
              v6 = __OFADD__(v24++, 1);
              if (v6)
              {
                break;
              }

              static CommonLogger.processing.getter();
              v26 = v1;
              v1 = Logger.logObject.getter();
              v27 = static os_log_type_t.info.getter();

              v28 = os_log_type_enabled(v1, v27);
              v29 = v0[20];
              v30 = v0[17];
              v98 = v26;
              if (v28)
              {
                v112 = v0[20];
                v115 = v0[17];
                v31 = v0[16];
                v32 = v0[14];
                v33 = swift_slowAlloc();
                v34 = swift_slowAlloc();
                v116 = v34;
                *v33 = 136315650;
                Asset.universalUUID.getter();
                lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v35 = dispatch thunk of CustomStringConvertible.description.getter();
                v37 = v36;
                (*v92)(v31, v32);
                v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v116);

                *(v33 + 4) = v38;
                *(v33 + 12) = 2048;
                *(v33 + 14) = v24;
                *(v33 + 22) = 2048;
                *(v33 + 24) = v105;
                _os_log_impl(&_mh_execute_header, v1, v27, "[renderSuggestions] asset %s (%ld/%ld)", v33, 0x20u);
                __swift_destroy_boxed_opaque_existential_0(v34);

                (*v106)(v112, v115);
              }

              else
              {

                (*v106)(v29, v30);
              }

              v39 = Asset.representations.getter();
              if (v39)
              {
                v1 = v39;
                v40 = v39 & 0xFFFFFFFFFFFFFF8;
                v107 = v24;
                if (v39 >> 62)
                {
                  v108 = _CocoaArrayWrapper.endIndex.getter();
                  v41 = _CocoaArrayWrapper.endIndex.getter();
                  if (v41)
                  {
LABEL_29:
                    v42 = 0;
                    v103 = v1;
                    v104 = v1 & 0xC000000000000001;
                    v101 = v41;
                    v102 = v40;
                    while (1)
                    {
                      if (v104)
                      {
                        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v42 >= *(v40 + 16))
                        {
                          goto LABEL_45;
                        }

                        v71 = *(v1 + 8 * v42 + 32);
                      }

                      v72 = v71;
                      v73 = v42 + 1;
                      if (__OFADD__(v42, 1))
                      {
                        break;
                      }

                      v113 = v42;
                      type metadata accessor for AssetViewModel();
                      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type AssetViewModel and conformance AssetViewModel, 255, &type metadata accessor for AssetViewModel, &protocol conformance descriptor for AssetViewModel);
                      v74 = Identifiable<>.id.getter();
                      static CommonLogger.processing.getter();
                      v75 = Logger.logObject.getter();
                      v76 = static os_log_type_t.info.getter();
                      v77 = os_log_type_enabled(v75, v76);
                      v78 = v0[19];
                      v79 = v0[17];
                      v111 = v74;
                      if (v77)
                      {
                        v80 = swift_slowAlloc();
                        v110 = v72;
                        v81 = swift_slowAlloc();
                        v116 = v81;
                        *v80 = 136315650;
                        v82 = ObjectIdentifier.debugDescription.getter();
                        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v116);

                        *(v80 + 4) = v84;
                        *(v80 + 12) = 2048;
                        *(v80 + 14) = v73;
                        *(v80 + 22) = 2048;
                        *(v80 + 24) = v108;
                        _os_log_impl(&_mh_execute_header, v75, v76, "[renderSuggestions] viewModel %s (%ld/%ld)", v80, 0x20u);
                        __swift_destroy_boxed_opaque_existential_0(v81);
                        v72 = v110;
                      }

                      (*v106)(v78, v79);
                      v43 = v0[13];
                      v45 = v0[10];
                      v44 = v0[11];
                      v109 = v0[12];
                      v116 = 0;
                      v117 = 0xE000000000000000;
                      _StringGuts.grow(_:)(41);
                      v46 = [(objc_class *)v72 description];
                      v47 = v72;
                      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v50 = v49;

                      v116 = v48;
                      v117 = v50;
                      v51._countAndFlagsBits = 0x3D65707974202CLL;
                      v51._object = 0xE700000000000000;
                      String.append(_:)(v51);
                      swift_getObjectType();
                      v52._countAndFlagsBits = _typeName(_:qualified:)();
                      String.append(_:)(v52);

                      v53._countAndFlagsBits = 678633516;
                      v53._object = 0xE400000000000000;
                      String.append(_:)(v53);
                      v0[2] = v100;
                      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v54);

                      v55._countAndFlagsBits = 47;
                      v55._object = 0xE100000000000000;
                      String.append(_:)(v55);
                      v0[3] = i;
                      v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v56);

                      v57._countAndFlagsBits = 0x2861202C29;
                      v57._object = 0xE500000000000000;
                      String.append(_:)(v57);
                      v0[4] = v107;
                      v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v58);

                      v59._countAndFlagsBits = 47;
                      v59._object = 0xE100000000000000;
                      String.append(_:)(v59);
                      v0[5] = v105;
                      v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v60);

                      v61._countAndFlagsBits = 0x2876202C29;
                      v61._object = 0xE500000000000000;
                      String.append(_:)(v61);
                      v0[6] = v73;
                      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v62);

                      v63._countAndFlagsBits = 47;
                      v63._object = 0xE100000000000000;
                      String.append(_:)(v63);
                      v0[7] = v108;
                      v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v64);

                      v65._countAndFlagsBits = 41;
                      v65._object = 0xE100000000000000;
                      String.append(_:)(v65);
                      v66 = v116;
                      v67 = v117;
                      v68 = type metadata accessor for TaskPriority();
                      (*(*(v68 - 8) + 56))(v43, 1, 1, v68);
                      v69 = swift_allocObject();
                      v69[2] = 0;
                      v69[3] = 0;
                      v69[4] = v47;
                      v69[5] = v45;
                      v69[6] = v44;
                      v69[7] = v111;
                      v69[8] = v66;
                      v69[9] = v67;
                      v69[10] = v109;
                      v70 = v45;

                      _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v43, &async function pointer to partial apply for closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:), v69);
                      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v43, &_sScPSgMd, &_sScPSgMR);
                      v42 = v113 + 1;
                      v40 = v102;
                      v1 = v103;
                      if (v73 == v101)
                      {
                        goto LABEL_17;
                      }
                    }

                    __break(1u);
LABEL_45:
                    __break(1u);
                    break;
                  }
                }

                else
                {
                  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v108 = v41;
                  if (v41)
                  {
                    goto LABEL_29;
                  }
                }

LABEL_17:

                v24 = v107;
              }

              v22 = v96;
              if (v24 == v93)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
            break;
          }
        }

        else
        {
          v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v105 = v23;
          if (v23)
          {
            goto LABEL_16;
          }
        }

LABEL_4:
      }

      v3 = v100;
      if (v100 == v87)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    i = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_51:

  v85 = v0[1];

  return v85();
}

uint64_t closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v14;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = type metadata accessor for OSSignpostError();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v8[33] = v11;
  v8[34] = *(v11 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:), 0, 0);
}

void closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)()
{
  v38 = v0;
  v1 = v0[20];
  v2 = type metadata accessor for AssetViewModel();
  v0[14] = v1;
  v0[17] = v2;
  v3 = v1;
  v4 = specialized static MOBundleProcessingSession.signpostNameForAssetRepresentation(_:)(v0 + 14);
  v6 = v5;
  v0[38] = v4;
  *(v0 + 360) = v5;
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  if (one-time initialization token for assetRendering != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSSignposter();
  v0[39] = __swift_project_value_buffer(v7, static MOAngelSignposter.assetRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v8 = OSSignposter.logHandle.getter();
  v9 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if ((v6 & 1) == 0)
    {
      if (v4)
      {
LABEL_11:
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v11, v4, "", v10, 2u);

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ((v4 & 0xFFFFF800) == 0xD800)
    {
LABEL_21:
      __break(1u);
      return;
    }

    if (v4 >> 16 > 0x10)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v4 = (v0 + 19);
    goto LABEL_11;
  }

LABEL_12:
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[33];
  v15 = v0[34];
  v17 = v0[24];
  v16 = v0[25];
  v19 = v0[22];
  v18 = v0[23];
  queuea = v0[21];

  (*(v15 + 16))(v13, v12, v14);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[40] = OSSignpostIntervalState.init(id:isOpen:)();
  v20 = swift_allocObject();
  v0[41] = v20;
  v20[2] = v19 + 16;
  v20[3] = v18;
  v20[4] = v17;
  v20[5] = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:);
  *(v21 + 24) = v20;
  v0[6] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v0[7] = v21;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_6;
  v22 = _Block_copy(v0 + 2);

  dispatch_sync(queuea, v22);
  _Block_release(v22);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v0[42] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[32];
  v27 = v0[29];
  v28 = v0[30];
  if (v25)
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v37);
    _os_log_impl(&_mh_execute_header, v23, v24, "[renderSuggestions] start rendering %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v33 = *(v28 + 8);
  v33(v26, v27);
  v0[43] = v33;
  queue = (&async function pointer to dispatch thunk of AssetViewModel.render() + async function pointer to dispatch thunk of AssetViewModel.render());
  v34 = swift_task_alloc();
  v0[44] = v34;
  *v34 = v0;
  v34[1] = closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:);

  queue();
}

uint64_t closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)()
{

  return _swift_task_switch(closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:), 0, 0);
}

void closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1)
{
  v36 = v1;
  v2 = (v1 + 64);
  static CommonLogger.processing.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 344);
  v7 = *(v1 + 248);
  v8 = *(v1 + 232);
  if (v5)
  {
    v34 = *(v1 + 344);
    v10 = *(v1 + 192);
    v9 = *(v1 + 200);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    v13 = v9;
    v2 = (v1 + 64);
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v13, &v35);
    _os_log_impl(&_mh_execute_header, v3, v4, "[renderSuggestions] finished rendering %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);

    v34(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = *(v1 + 168);
  v15 = swift_allocObject();
  *(v15 + 16) = *(v1 + 176);
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #2 in closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:);
  *(v16 + 24) = v15;
  *(v1 + 96) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v1 + 104) = v16;
  *(v1 + 64) = _NSConcreteStackBlock;
  *(v1 + 72) = 1107296256;
  *(v1 + 80) = thunk for @escaping @callee_guaranteed () -> ();
  *(v1 + 88) = &block_descriptor_86;
  v17 = _Block_copy(v2);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = *(v1 + 304);
    if (*(v1 + 360))
    {
      if (!(v20 >> 32))
      {
        if ((*(v1 + 304) & 0xFFFFF800) == 0xD800)
        {
LABEL_24:
          __break(1u);
          return;
        }

        if (v20 >> 16 <= 0x10)
        {
          v21 = v18;
          v20 = (v1 + 144);
          goto LABEL_13;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v20)
    {
      v21 = v18;
LABEL_13:
      v22 = *(v1 + 216);
      v23 = *(v1 + 224);
      v24 = *(v1 + 208);

      checkForErrorAndConsumeState(state:)();

      if ((*(v22 + 88))(v23, v24) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208));
        v25 = "";
      }

      v18 = v21;
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v19, v27, v20, v25, v26, 2u);

      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v28 = *(v1 + 296);
  v29 = *(v1 + 272);
  v30 = *(v1 + 280);
  v31 = *(v1 + 264);

  v32 = *(v29 + 8);
  v32(v30, v31);
  v32(v28, v31);

  v33 = *(v1 + 8);

  v33();
}

uint64_t closure #1 in closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  *a1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, 0, a2);
  swift_endAccess();
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 134218242;
    swift_beginAccess();
    *(v10 + 4) = *(*(a1 + 16) + 16);

    *(v10 + 12) = 2080;

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[renderSuggestions] active renders: %ld %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of (String, Date?)(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:), a4, 0);
}

uint64_t closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)()
{
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[runFullProcessing] Initiating notification servicing", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  (*(v5 + 8))(v4, v6);
  v9 = *(v8 + 112);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v14 = (*((swift_isaMask & *v9) + 0x78) + **((swift_isaMask & *v9) + 0x78));
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  v12 = v0[3];

  return v14(v12, 0, 0);
}

{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[8] = v0;

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *specialized static MOBundleProcessingSession.signpostNameForAssetLoading(assetType:)(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    v7 = "UIService_LoadPhotoAsset";
LABEL_8:

    return v7;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return "UIService_LoadPhotoAsset";
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    v7 = "UIService_LoadLivePhotoAsset";
    goto LABEL_8;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    return "UIService_LoadLivePhotoAsset";
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    v7 = "UIService_LoadVideoAsset";
    goto LABEL_8;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    return "UIService_LoadVideoAsset";
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    v7 = "UIService_LoadWorkoutAsset";
    goto LABEL_8;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return "UIService_LoadWorkoutAsset";
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    v7 = "UIService_LoadWorkoutGroupAsset";
    goto LABEL_8;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    return "UIService_LoadWorkoutGroupAsset";
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    v7 = "UIService_LoadMotionActivityAsset";
    goto LABEL_8;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    return "UIService_LoadMotionActivityAsset";
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    v7 = "UIService_LoadMultiPinMapAsset";
    goto LABEL_8;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    return "UIService_LoadMultiPinMapAsset";
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
    v7 = "UIService_LoadGenericMapAsset";
    goto LABEL_8;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    return "UIService_LoadGenericMapAsset";
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
    v7 = "UIService_LoadLocationPreviewAsset";
    goto LABEL_8;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    return "UIService_LoadLocationPreviewAsset";
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
    v7 = "UIService_LoadMusicSongAsset";
    goto LABEL_8;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    return "UIService_LoadMusicSongAsset";
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
    v7 = "UIService_LoadContactPhotoAsset";
    goto LABEL_8;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    return "UIService_LoadContactPhotoAsset";
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {
    v7 = "UIService_LoadStateOfMindAsset";
    goto LABEL_8;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    return "UIService_LoadStateOfMindAsset";
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {
    v7 = "UIService_LoadRoutePreviewAsset";
    goto LABEL_8;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {
    return "UIService_LoadRoutePreviewAsset";
  }

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
  {
    v7 = "UIService_LoadReflectionPromptAsset";
    goto LABEL_8;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
    return "UIService_LoadReflectionPromptAsset";
  }

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
  {
LABEL_79:
    v7 = "UIService_LoadUnknownAsset";
    goto LABEL_8;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v79)
  {
    return "UIService_LoadUnknownAsset";
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {
    goto LABEL_79;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
    return "UIService_LoadUnknownAsset";
  }

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;
  if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
  {
    goto LABEL_79;
  }

  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v89)
  {
    return "UIService_LoadUnknownAsset";
  }

  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;
  if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
  {
    goto LABEL_79;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v94)
  {
    return "UIService_LoadUnknownAsset";
  }

  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;
  if (v95 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v97 == v98)
  {
    goto LABEL_79;
  }

  v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v99)
  {
    return "UIService_LoadUnknownAsset";
  }

  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;
  if (v100 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v102 == v103)
  {
    goto LABEL_79;
  }

  v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v104)
  {
    return "UIService_LoadUnknownAsset";
  }

  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;
  if (v105 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v107 == v108)
  {
    goto LABEL_79;
  }

  v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v109)
  {
    return "UIService_LoadUnknownAsset";
  }

  _StringGuts.grow(_:)(16);
  v110._countAndFlagsBits = 0x20676E697373694DLL;
  v110._object = 0xEE00203A65736163;
  String.append(_:)(v110);
  type metadata accessor for MOSuggestionAssetsType(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

const char *specialized static MOBundleProcessingSession.signpostNameForSuggestionCell(bundleInterfaceType:)()
{
  result = "UIService_RenderPhotoMemoryCell";
  switch("UIService_RenderPhotoMemoryCell")
  {
    case 1uLL:
      result = "UIService_RenderWorkoutCell";
      break;
    case 2uLL:
      result = "UIService_RenderLocationOutingCell";
      break;
    case 4uLL:
      result = "UIService_RenderContactCell";
      break;
    case 5uLL:
      result = "UIService_RenderMediaCell";
      break;
    case 6uLL:
      result = "UIService_RenderSharedContentCell";
      break;
    case 0xAuLL:
      return result;
    case 0xBuLL:
      result = "UIService_RenderEvergreenCell";
      break;
    case 0xCuLL:
      result = "UIService_RenderTimeContextCell";
      break;
    case 0xDuLL:
      result = "UIService_RenderLocationTripCell";
      break;
    case 0xEuLL:
      result = "UIService_RenderStateOfMindCell";
      break;
    default:
      result = "UIService_RenderGenericCell";
      break;
  }

  return result;
}

void specialized MOBundleProcessingSession.checkOnboarding()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    if ((OnboardingType.needsOnboarding.getter(1) & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v5)
  {
    __break(1u);
    return;
  }

  if (OnboardingType.needsOnboarding.getter(0))
  {
LABEL_6:
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[runFullProcessing] device ineligible for full processing", v8, 2u);
    }

    (*(v1 + 8))(v3, v0);
    v9 = type metadata accessor for ProcessingError();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for ProcessingError.notOnboarded(_:), v9);
    swift_willThrow();
  }
}

uint64_t specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for TaskPriority();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:), v0, 0);
}

{
  v0[25] = objc_opt_self();
  v0[26] = type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:), v2, v1);
}

{
  v1 = v0[25];
  v2 = v0[5];

  v0[28] = [v1 currentDevice];

  return _swift_task_switch(specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:), v2, 0);
}

{
  v1 = v0[28];
  v2 = v0[5];

  v0[30] = [v1 userInterfaceIdiom];

  return _swift_task_switch(specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:), v2, 0);
}

{
  v72 = v0;
  if (v0[30] == 1)
  {

    v1 = v0[1];
LABEL_8:

    return v1();
  }

  specialized MOBundleProcessingSession.checkOnboarding()();
  v2 = v0[5];
  swift_beginAccess();
  if (*(v2 + 120))
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[runFullProcessing] ignoring request to run, already running", v5, 2u);
    }

    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];

    (*(v7 + 8))(v6, v8);
    v9 = type metadata accessor for ProcessingError();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for ProcessingError.alreadyRunning(_:), v9);
    swift_willThrow();
    goto LABEL_7;
  }

  type metadata accessor for MomentsUIManager();
  if ((static MomentsUIManager.userIsActivelyWaitingOnUI.getter() & 1) == 0)
  {
    v12 = v0[20];
    v13 = v0[21];
    v14 = v0[19];
    static DefaultsManager.Processing.lastSuccessfulRun.getter();
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[19], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v15 = v0[23];
      v16 = v0[20];
      v17 = v0[21];
      (*(v17 + 32))(v0[24], v0[19], v16);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v19 = v18;
      v20 = *(v17 + 8);
      v20(v15, v16);
      static DefaultsManager.Processing.minimumInterval.getter();
      v21 = v0[24];
      if (v19 < v22)
      {
        v24 = v0[21];
        v23 = v0[22];
        v25 = v0[20];
        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        (*(v24 + 16))(v23, v21, v25);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        v28 = os_log_type_enabled(v26, v27);
        v29 = v0[22];
        v30 = v0[20];
        v31 = v0[18];
        v32 = v0[14];
        v33 = v0[15];
        if (v28)
        {
          v70 = v0[14];
          v34 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v71[0] = v69;
          *v34 = 136315138;
          lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v67 = v27;
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v31;
          v37 = v36;
          v20(v29, v30);
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v71);

          *(v34 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v26, v67, "[runFullProcessing] minimum interval not met, last successful run was %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);

          (*(v33 + 8))(v68, v70);
        }

        else
        {

          v20(v29, v30);
          (*(v33 + 8))(v31, v32);
        }

        v63 = v0[24];
        v64 = v0[20];
        v65 = type metadata accessor for ProcessingError();
        lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError, &protocol conformance descriptor for ProcessingError);
        swift_allocError();
        (*(*(v65 - 8) + 104))(v66, enum case for ProcessingError.minimimIntervalNotMet(_:), v65);
        swift_willThrow();
        v20(v63, v64);
LABEL_7:

        v1 = v0[1];
        goto LABEL_8;
      }

      v20(v0[24], v0[20]);
    }
  }

  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v39, static MOAngelSignposter.processing);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v40 = static DefaultsManager.Processing.shouldUseIncremental.getter();
  if (v40)
  {
    v41 = 0xEB000000006C6174;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  IsActivelyWaitingOn = static MomentsUIManager.userIsActivelyWaitingOnUI.getter();

  v43 = OSSignposter.logHandle.getter();
  v44 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    if (v40)
    {
      v45 = 0x6E656D6572636E69;
    }

    else
    {
      v45 = 1819047270;
    }

    v46 = IsActivelyWaitingOn & 1;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v71[0] = v48;
    *v47 = 136315394;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v41, v71);

    *(v47 + 4) = v49;
    *(v47 + 12) = 2048;
    *(v47 + 14) = v46;
    v50 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v50, "UIService_RunFullProcessing", "mode=%s userWaiting=%ld", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
  }

  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[31] = OSSignpostIntervalState.init(id:isOpen:)();
  *(v2 + 120) = 1;
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 67109120;
    *(v53 + 4) = *(v2 + 120);

    _os_log_impl(&_mh_execute_header, v51, v52, "[runFullProcessing] isRunning changed to %{BOOL}d", v53, 8u);
  }

  else
  {
  }

  (*(v0[15] + 8))(v0[17], v0[14]);
  if (static MomentsUIManager.userIsActivelyWaitingOnUI.getter())
  {
    static TaskPriority.userInitiated.getter();
  }

  else
  {
    static TaskPriority.background.getter();
  }

  v54 = v0[8];
  v56 = v0[6];
  v55 = v0[7];
  (*(v54 + 16))(v56, v0[9], v55);
  (*(v54 + 56))(v56, 0, 1, v55);
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v57;
  v59 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZytSg_Tt2g5(0, 0, v56, &async function pointer to partial apply for closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:), v58);
  v0[32] = v59;
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v56, &_sScPSgMd, &_sScPSgMR);
  v60 = swift_task_alloc();
  v0[33] = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v60 = v0;
  v60[1] = specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:);

  return Task.value.getter(v0 + 35, v59, v61, v62, &protocol self-conformance witness table for Error);
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 40);

  if (v0)
  {
    v4 = specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:);
  }

  else
  {
    v4 = specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  v1 = v0[31];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  $defer #1 () in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)(v1);

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[31];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);
  $defer #1 () in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)(v1);

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)(uint64_t a1)
{
  *(v1 + 232) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:), v3, v2);
}

uint64_t partial apply for closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type MOBundleProcessingSession.Options.PrivacyLevel and conformance MOBundleProcessingSession.Options.PrivacyLevel()
{
  result = lazy protocol witness table cache variable for type MOBundleProcessingSession.Options.PrivacyLevel and conformance MOBundleProcessingSession.Options.PrivacyLevel;
  if (!lazy protocol witness table cache variable for type MOBundleProcessingSession.Options.PrivacyLevel and conformance MOBundleProcessingSession.Options.PrivacyLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOBundleProcessingSession.Options.PrivacyLevel and conformance MOBundleProcessingSession.Options.PrivacyLevel);
  }

  return result;
}

uint64_t sub_100089DD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_100089E20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
  return MOBundleProcessingSession.isRunning.didset();
}

uint64_t getEnumTagSinglePayload for MOBundleProcessingSession.Options(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MOBundleProcessingSession.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double *specialized MOBundleProcessingSession.generatedDBSuggestions(suggestions:)(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _swiftEmptyArrayStorage;
  v21 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_28:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = Suggestion.asDBSuggestion.getter();

    ++v6;
    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v24;
      v6 = v10;
    }
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = v7 >> 62;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    if (v21)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v16;

    *(v15 + 12) = 2048;
    if (v14)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v22;
    v17 = v23;
    *(v15 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v12, v13, "[generatedDBSuggestions] suggestionts count=%ld, dbSuggestions count=%ld", v15, 0x16u);
  }

  else
  {

    v18 = v22;
    v17 = v23;
  }

  (*(v18 + 8))(v4, v17);
  if (v14)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      return v7;
    }

    goto LABEL_24;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_24:

    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_10008A264()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008A364()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(uint64_t a1)
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
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in closure #1 in MOBundleProcessingSession.renderSuggestions(suggestions:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

const char *specialized static MOBundleProcessingSession.signpostNameForAssetRepresentation(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, &DynamicType);
  type metadata accessor for MOSuggestionSheetAssetViewModel(0);
  if (swift_dynamicCast())
  {
    v6 = v127;
    if ((*(*v127 + 656))() != 26)
    {

      result = "UIService_RenderMusicSongs";
      switch(v16)
      {
        case 1:
          return "UIService_RenderMusicAlbums";
        case 2:
          return "UIService_RenderPodcastContent";
        case 3:
          result = "UIService_RenderPodcastArtists";
          break;
        case 4:
          result = "UIService_RenderThirdPartyMediaItems";
          break;
        case 5:
          result = "UIService_RenderThirdPartyAlbums";
          break;
        case 6:
          result = "UIService_RenderThirdPartyArtists";
          break;
        case 7:
        case 10:
          return "UIService_RenderWorkouts";
        case 8:
          return "UIService_RenderSystemImages";
        case 9:
          return "UIService_RenderWorkoutRoutes";
        case 11:
          return "UIService_RenderContactPhotos";
        case 12:
          return "UIService_RenderPhotos";
        case 13:
          return "UIService_RenderLivePhotos";
        case 14:
          return "UIService_RenderVideos";
        case 15:
          return "UIService_RenderMultiPinMaps";
        case 16:
          return "UIService_RenderLocationPreviews";
        case 17:
          return "UIService_RenderWalkingActivity";
        case 18:
          return "UIService_RenderRunningActivity";
        case 19:
          return "UIService_RenderMotionActivity";
        case 20:
        case 21:
        case 22:
          return "UIService_RenderGenericMaps";
        case 23:
          return "UIService_RenderReflectionPrompts";
        case 24:
          return "UIService_RenderAppIcons";
        case 25:
          return "UIService_RenderStateOfMind";
        default:
          return result;
      }

      return result;
    }

    v7 = (*(*v6 + 632))();
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {

          return "UIService_RenderPhotos";
        }

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
        if (v20 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v22 != v23)
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {

            return "UIService_RenderLivePhotos";
          }

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
          if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
          {

            goto LABEL_19;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v30)
          {

            return "UIService_RenderVideos";
          }

          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
          if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
          {
            goto LABEL_66;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_76;
          }

          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
          if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
          {
LABEL_66:

LABEL_40:

            return "UIService_RenderWorkouts";
          }

          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v40)
          {
LABEL_76:

            return "UIService_RenderWorkouts";
          }

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
          if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
          {

            goto LABEL_47;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {

            return "UIService_RenderMotionActivity";
          }

          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v47;
          if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
          {

LABEL_58:

            return "UIService_RenderMultiPinMaps";
          }

          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v50)
          {

            return "UIService_RenderMultiPinMaps";
          }

          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;
          if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
          {

LABEL_63:

            return "UIService_RenderGenericMaps";
          }

          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v55)
          {

            return "UIService_RenderGenericMaps";
          }

          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
          if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
          {

LABEL_69:

            return "UIService_RenderMusicSongs";
          }

          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v65)
          {

            return "UIService_RenderMusicSongs";
          }

          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;
          if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
          {

            goto LABEL_87;
          }

          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v70)
          {

            return "UIService_RenderContactPhotos";
          }

          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;
          if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
          {

LABEL_90:

            return "UIService_RenderReflectionPrompts";
          }

          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v75)
          {

            return "UIService_RenderReflectionPrompts";
          }

          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;
          if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
          {

LABEL_93:

            return "UIService_RenderStateOfMind";
          }

          v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v80)
          {

            return "UIService_RenderStateOfMind";
          }

          v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;
          if (v81 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v83 != v84)
          {
            v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v85)
            {
LABEL_149:

              return "UIService_RenderUnknown";
            }

            v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v88 = v87;
            if (v86 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v88 != v89)
            {
              v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v90)
              {
                goto LABEL_149;
              }

              v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v93 = v92;
              if (v91 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v93 != v94)
              {
                v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v95)
                {
                  goto LABEL_149;
                }

                v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v98 = v97;
                if (v96 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v98 != v99)
                {
                  v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v100)
                  {
                    goto LABEL_149;
                  }

                  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v103 = v102;
                  if (v101 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v103 != v104)
                  {
                    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v105)
                    {
                      goto LABEL_149;
                    }

                    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v108 = v107;
                    if (v106 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v108 != v109)
                    {
                      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v110)
                      {
                        goto LABEL_149;
                      }

                      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v113 = v112;
                      if (v111 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v113 != v114)
                      {
                        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v115)
                        {
                          goto LABEL_149;
                        }

                        v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v118 = v117;
                        if (v116 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v118 != v119)
                        {
                          v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v120)
                          {
                            goto LABEL_149;
                          }

                          v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v123 = v122;
                          if (v121 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v123 != v124)
                          {
                            v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if ((v125 & 1) == 0)
                            {
                              DynamicType = 0;
                              v130 = 0xE000000000000000;
                              _StringGuts.grow(_:)(16);
                              v126._countAndFlagsBits = 0x20676E697373694DLL;
                              v126._object = 0xEE00203A65736163;
                              String.append(_:)(v126);
                              v127 = v8;
                              type metadata accessor for MOSuggestionAssetsType(0);
                              _print_unlocked<A, B>(_:_:)();
                              _assertionFailure(_:_:file:line:flags:)();
                              __break(1u);
                              JUMPOUT(0x10008BABCLL);
                            }

                            goto LABEL_149;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          return "UIService_RenderUnknown";
        }

LABEL_16:

        return "UIService_RenderLivePhotos";
      }

LABEL_28:

      return "UIService_RenderPhotos";
    }
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  DynamicType = v17;
  v130 = v18;
  v127 = 0x6F746F6850;
  v128 = 0xE500000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    DynamicType = v17;
    v130 = v19;
    v127 = 1702259020;
    v128 = 0xE400000000000000;
    if ((StringProtocol.contains<A>(_:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  DynamicType = v17;
  v130 = v19;
  v127 = 1702259020;
  v128 = 0xE400000000000000;
  if (StringProtocol.contains<A>(_:)())
  {
    goto LABEL_16;
  }

  DynamicType = v17;
  v130 = v19;
  v127 = 0x6F65646956;
  v128 = 0xE500000000000000;
  if (StringProtocol.contains<A>(_:)())
  {
LABEL_19:

    return "UIService_RenderVideos";
  }

  DynamicType = v17;
  v130 = v19;
  v127 = 0x74756F6B726F57;
  v128 = 0xE700000000000000;
  if (StringProtocol.contains<A>(_:)())
  {
    DynamicType = v17;
    v130 = v19;
    v127 = 0x6574756F52;
    v128 = 0xE500000000000000;
    if ((StringProtocol.contains<A>(_:)() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  DynamicType = v17;
  v130 = v19;
  v127 = 0x6574756F52;
  v128 = 0xE500000000000000;
  if (StringProtocol.contains<A>(_:)())
  {

    return "UIService_RenderWorkoutRoutes";
  }

  else
  {
    DynamicType = v17;
    v130 = v19;
    v127 = 1802264919;
    v128 = 0xE400000000000000;
    if (StringProtocol.contains<A>(_:)())
    {

      return "UIService_RenderWalkingActivity";
    }

    else
    {
      DynamicType = v17;
      v130 = v19;
      v127 = 7238994;
      v128 = 0xE300000000000000;
      if (StringProtocol.contains<A>(_:)())
      {

        return "UIService_RenderRunningActivity";
      }

      else
      {
        DynamicType = v17;
        v130 = v19;
        v127 = 0x6E6F69746F4DLL;
        v128 = 0xE600000000000000;
        if (StringProtocol.contains<A>(_:)())
        {
LABEL_47:

          return "UIService_RenderMotionActivity";
        }

        DynamicType = v17;
        v130 = v19;
        v127 = 7364941;
        v128 = 0xE300000000000000;
        if (StringProtocol.contains<A>(_:)())
        {
          DynamicType = v17;
          v130 = v19;
          v127 = 0x6E695069746C754DLL;
          v128 = 0xE800000000000000;
          if (StringProtocol.contains<A>(_:)())
          {
            goto LABEL_58;
          }
        }

        DynamicType = v17;
        v130 = v19;
        v127 = 7364941;
        v128 = 0xE300000000000000;
        if (StringProtocol.contains<A>(_:)())
        {
          goto LABEL_63;
        }

        DynamicType = v17;
        v130 = v19;
        v127 = 0x636973754DLL;
        v128 = 0xE500000000000000;
        if (StringProtocol.contains<A>(_:)())
        {
          DynamicType = v17;
          v130 = v19;
          v127 = 1735290707;
          v128 = 0xE400000000000000;
          if (StringProtocol.contains<A>(_:)())
          {
            goto LABEL_69;
          }
        }

        DynamicType = v17;
        v130 = v19;
        v127 = 0x636973754DLL;
        v128 = 0xE500000000000000;
        if (StringProtocol.contains<A>(_:)() & 1) != 0 && (DynamicType = v17, v130 = v19, v127 = 0x6D75626C41, v128 = 0xE500000000000000, (StringProtocol.contains<A>(_:)()))
        {

          return "UIService_RenderMusicAlbums";
        }

        else
        {
          DynamicType = v17;
          v130 = v19;
          v127 = 0x74736163646F50;
          v128 = 0xE700000000000000;
          if (StringProtocol.contains<A>(_:)())
          {

            return "UIService_RenderPodcastContent";
          }

          else
          {
            DynamicType = v17;
            v130 = v19;
            v127 = 0x746361746E6F43;
            v128 = 0xE700000000000000;
            if (StringProtocol.contains<A>(_:)())
            {
LABEL_87:

              return "UIService_RenderContactPhotos";
            }

            DynamicType = v17;
            v130 = v19;
            v127 = 0x697463656C666552;
            v128 = 0xEA00000000006E6FLL;
            if (StringProtocol.contains<A>(_:)())
            {
              goto LABEL_90;
            }

            DynamicType = v17;
            v130 = v19;
            v127 = 0x4D664F6574617453;
            v128 = 0xEB00000000646E69;
            if (StringProtocol.contains<A>(_:)())
            {
              goto LABEL_93;
            }

            DynamicType = v17;
            v130 = v19;
            v127 = 0x6E6F6349707041;
            v128 = 0xE700000000000000;
            if (StringProtocol.contains<A>(_:)())
            {

              return "UIService_RenderAppIcons";
            }

            else
            {
              DynamicType = v17;
              v130 = v19;
              v127 = 0x6D6574737953;
              v128 = 0xE600000000000000;
              if (StringProtocol.contains<A>(_:)())
              {

                return "UIService_RenderSystemImages";
              }

              else
              {
                DynamicType = v17;
                v130 = v19;
                v127 = 0x7974697669746341;
                v128 = 0xE800000000000000;
                if (StringProtocol.contains<A>(_:)())
                {
                  DynamicType = v17;
                  v130 = v19;
                  v127 = 1735289170;
                  v128 = 0xE400000000000000;
                  if (StringProtocol.contains<A>(_:)())
                  {

                    return "UIService_RenderActivityRings";
                  }
                }

                DynamicType = v17;
                v130 = v19;
                v127 = 1802398028;
                v128 = 0xE400000000000000;
                if (StringProtocol.contains<A>(_:)())
                {

                  return "UIService_RenderLinkPreviews";
                }

                DynamicType = v17;
                v130 = v19;
                v127 = 0x6E6F697461636F4CLL;
                v128 = 0xE800000000000000;
                if ((StringProtocol.contains<A>(_:)() & 1) == 0)
                {
                  type metadata accessor for CommonLogger();
                  static CommonLogger.processing.getter();

                  v56 = Logger.logObject.getter();
                  v57 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v56, v57))
                  {
                    v58 = swift_slowAlloc();
                    v59 = swift_slowAlloc();
                    DynamicType = v59;
                    *v58 = 136315138;
                    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &DynamicType);

                    *(v58 + 4) = v60;
                    _os_log_impl(&_mh_execute_header, v56, v57, "[signpostNameForAssetRepresentation] Unrecognized asset type: %s - using UIService_RenderUnknown", v58, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v59);
                  }

                  else
                  {
                  }

                  (*(v3 + 8))(v5, v2);
                  return "UIService_RenderUnknown";
                }

                return "UIService_RenderLocationPreviews";
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10008BB24()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008BB90()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t partial apply for closure #1 in closure #2 in MOBundleProcessingSession.fetchBundles(options:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMd, &_sScCySo28MOEventBundleProcessorResultCSgs5Error_pGMR);

  return closure #1 in closure #2 in MOBundleProcessingSession.fetchBundles(options:)(a1, a2);
}

uint64_t sub_10008BD04(__n128 a1)
{
  swift_weakDestroy();

  return _swift_deallocObject(v1, 24, 7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in MOBundleProcessingSession.runSoftRefreshIfNecessary()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);

  return closure #1 in closure #1 in MOBundleProcessingSession.runSoftRefreshIfNecessary()(a1);
}

uint64_t sub_10008BED8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary()(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in closure #1 in MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary()(a1, a2, v6, v7);
}

uint64_t MOSuggestionSheetAssetView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetAssetView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

uint64_t MOSuggestionSheetAssetView.assetViewModel.didset()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionSheetAssetView.assetViewModel.didset;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_11;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void closure #1 in MOSuggestionSheetAssetView.assetViewModel.didset(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((swift_isaMask & *Strong) + 0xC0))();
  }
}

double MOSuggestionSheetAssetView.assetViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  MOSuggestionSheetAssetView.assetViewModel.didset();

  return result;
}

void (*MOSuggestionSheetAssetView.assetViewModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_assetViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionSheetAssetView.assetViewModel.modify;
}

void MOSuggestionSheetAssetView.assetViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    MOSuggestionSheetAssetView.assetViewModel.didset();
  }

  free(v3);
}

id MOSuggestionSheetAssetView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_currentSizeType] = 3;
  *&v4[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MOSuggestionSheetAssetView();
  v9 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v9 setContentMode:2];
  v10 = [v9 layer];
  [v10 setCornerRadius:7.0];

  [v9 setClipsToBounds:1];
  return v9;
}

void MOSuggestionSheetAssetView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_currentSizeType) = 3;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MOSuggestionSheetAssetView.sizedBasedMapStyle(numLocations:)(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x98))();
  if (!v3)
  {
    return 5;
  }

  v4 = (*(*v3 + 1328))(v3);

  result = 5;
  if (v4 <= 4u)
  {
    if (v4 == 2 || v4 == 4)
    {
      if (a1 <= 1)
      {
        return 2;
      }

      else
      {
        return 5;
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 8u:
        return 4;
      case 6u:
        return 0;
      case 5u:
        return 1;
    }
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionSheetAssetView.initAssetView()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v2 - 8);
  v621 = &v613 - v3;
  *&v625 = type metadata accessor for Date();
  v624 = *(v625 - 8);
  v4 = __chkstk_darwin(v625);
  v622 = (&v613 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v623 = (&v613 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = __chkstk_darwin(v7 - 8);
  v619 = &v613 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v620 = &v613 - v10;
  *&v628 = type metadata accessor for DispatchWorkItemFlags();
  v627 = *(v628 - 8);
  __chkstk_darwin(v628);
  v12 = &v613 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v626 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v613 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  __chkstk_darwin(v16 - 8);
  v18 = &v613 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 subviews];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView, UIView_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_10;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v20 + 8 * i + 32);
    }

    v24 = v23;
    [v23 removeFromSuperview];
  }

LABEL_10:

  v25 = v629;
  [v629 frame];
  v30 = specialized static MOSuggestionSheetGridManager.getSizeType(for:)(v26, v27, v28, v29);
  *&v630 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_currentSizeType;
  *(v25 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionSheetAssetView_currentSizeType) = v30;
  v31 = *((swift_isaMask & *v25) + 0x98);
  v32 = v31();
  if (!v32)
  {
    return;
  }

  v33 = v32;
  if ((*(*v32 + 1424))())
  {
    [v25 frame];
    v38 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{v34, v35, v36, v37}];
    v39 = [objc_opt_self() darkGrayColor];
    [v38 setColor:v39];

    [v38 startAnimating];
    *&v630 = v38;
    [v25 addSubview:v630];
    [v630 setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = [v630 superview];
    if (v40)
    {
      v41 = v40;
      [v630 setTranslatesAutoresizingMaskIntoConstraints:0];
      v42 = [v630 centerYAnchor];
      v43 = [v41 centerYAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      [v44 setConstant:0.0];
      if (v44)
      {
        [v44 setActive:1];
      }
    }

    v629 = [v630 superview];
    if (v629)
    {
      [v630 setTranslatesAutoresizingMaskIntoConstraints:0];
      v45 = [v630 centerXAnchor];
      v46 = [v629 centerXAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      [v47 setConstant:0.0];
      if (v47)
      {
        [v47 setActive:1];
      }

      else
      {
      }

      v82 = &v645;
    }

    else
    {

      v82 = &v646;
    }

    v97 = *(v82 - 32);

    return;
  }

  v48 = (*(*v33 + 632))();
  if (!v48)
  {
    goto LABEL_271;
  }

  v1 = v48;
  v618 = v33;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;
          if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
          {
          }

          else
          {
            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v68 & 1) == 0)
            {
              v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v72 = v71;
              if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
              {
              }

              else
              {
                v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v75 & 1) == 0)
                {
                  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v79 = v78;
                  if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
                  {

                    goto LABEL_89;
                  }

                  v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v158)
                  {
LABEL_89:
                    v159 = v618;
                    v160 = (*(*v618 + 1448))(v81);
                    if (v160)
                    {
                      v161 = v160;
                      v162 = v1;
                      v163 = (*(*v159 + 1136))();
                      if (!v164)
                      {

                        goto LABEL_57;
                      }

                      v165 = v164;
                      v166 = v163;
                      v167 = (*(*v159 + 1160))();
                      if ((v168 & 1) != 0 || (v169 = v167, *&v630 = (*(*v159 + 1184))(), !v170))
                      {

                        goto LABEL_103;
                      }

                      v171 = v170;
                      *&v628 = (*(*v159 + 1208))();
                      if (!v172)
                      {

                        goto LABEL_103;
                      }

                      v173 = v172;
                      v626 = (*(*v159 + 896))();
                      v627 = v174;
                      if (!v174)
                      {

                        goto LABEL_103;
                      }

                      LODWORD(v625) = (*(*v618 + 1328))();
                      if (v625 == 11)
                      {

LABEL_103:

                        goto LABEL_57;
                      }

                      v624 = v161;
                      [v629 frame];
                      v255 = v254;
                      v257 = v256;
                      v259 = v258;
                      v261 = v260;
                      v623 = type metadata accessor for MOSuggestionActivityIconAssetView();
                      v262 = objc_allocWithZone(v623);
                      v263 = String._bridgeToObjectiveC()();
                      v264 = objc_opt_self();
                      v265 = [v264 colorNamed:v263];

                      if (!v265)
                      {
                        v265 = [v264 systemBlueColor];
                      }

                      *&v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue] = v265;
                      v266 = String._bridgeToObjectiveC()();
                      v267 = [v264 colorNamed:v266];

                      if (!v267)
                      {
                        v267 = [v264 systemYellowColor];
                      }

                      *&v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow] = v267;
                      v268 = String._bridgeToObjectiveC()();
                      v269 = [v264 colorNamed:v268];

                      if (!v269)
                      {
                        v269 = [v264 systemPinkColor];
                      }

                      *&v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink] = v269;
                      v270 = String._bridgeToObjectiveC()();
                      v271 = [v264 colorNamed:v270];

                      if (!v271)
                      {
                        v271 = [v264 systemRedColor];
                      }

                      *&v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed] = v271;
                      v272 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
                      closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
                      *&v262[v272] = v273;
                      v274 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
                      closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
                      *&v262[v274] = v275;
                      v276 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
                      v277 = [objc_allocWithZone(UIStackView) init];
                      [v277 setAxis:1];
                      [v277 setAlignment:1];
                      *&v262[v276] = v277;
                      v278 = &v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_name];
                      v279 = v627;
                      *v278 = v626;
                      v278[1] = v279;
                      v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize] = v625;
                      v280 = &v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories];
                      *v280 = v166;
                      v280[1] = v165;
                      *&v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration] = v169;
                      v281 = &v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
                      *v281 = v630;
                      v281[1] = v171;
                      v282 = &v262[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
                      *v282 = v628;
                      v282[1] = v173;
                      v633.receiver = v262;
                      v633.super_class = v623;
                      v283 = objc_msgSendSuper2(&v633, "initWithFrame:", v255, v257, v259, v261);
                      [v283 setContentMode:1];
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
                      v284 = swift_allocObject();
                      *(v284 + 16) = xmmword_1002A48B0;
                      *(v284 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
                      *(v284 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
                      UIView.registerForTraitChanges(_:action:)();
                      swift_unknownObjectRelease();

                      v285 = v624;
                      (*((swift_isaMask & *v283) + 0x108))(v624);

                      [v629 addSubview:v283];
                      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                      goto LABEL_71;
                    }

                    goto LABEL_56;
                  }

                  v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v177 = v176;
                  v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v617 = v1;
                  if (v175 == v178 && v177 == v179)
                  {

                    goto LABEL_107;
                  }

                  v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v181)
                  {
LABEL_107:
                    v182 = v618;
                    v183 = (*(*v618 + 536))(v180);
                    if (v183)
                    {
                      v184 = v183;
                      v185 = (*(*v182 + 824))();
                      if (v186)
                      {
                        v187 = v185;
                        v188 = v186;
                        v189 = (*(*v618 + 872))();
                        if (!v190)
                        {

                          goto LABEL_135;
                        }

                        v191 = v189;
                        v192 = v190;
                        v193 = (*(*v618 + 1328))();
                        if (v193 == 11)
                        {

LABEL_135:

                          goto LABEL_136;
                        }

                        v250 = v193;
                        objc_allocWithZone(type metadata accessor for MOSuggestionContactAssetView());
                        v251 = v184;
                        MOSuggestionContactAssetView.init(image:name:contactFirstName:assignedTileSize:)(v251, v187, v188, v191, v192, v250);
LABEL_138:
                        v253 = v252;
                        [v629 addSubview:v252];
                        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                        goto LABEL_87;
                      }
                    }

LABEL_136:
                    type metadata accessor for MOSuggestionFallbackAssetView();
                    v248 = v629;
                    v249 = MOSuggestionFallbackAssetView.__allocating_init(with:sizeType:)(0xD000000000000012, 0x80000001002AEC10, *(v629 + v630));
                    [v248 addSubview:v249];
                    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                    goto LABEL_87;
                  }

                  v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v233 = v232;
                  if (v231 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v233 == v234)
                  {

                    goto LABEL_130;
                  }

                  v236 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v236)
                  {
LABEL_130:
                    v237 = (*(*v618 + 536))(v235);
                    if (v237)
                    {
                      v238 = v237;
                      v239 = [objc_allocWithZone(UIImageView) initWithImage:v237];
                      v240 = v31();
                      if (v240)
                      {
                        v241 = v240;
                        [v629 frame];
                        v246 = specialized static MOSuggestionSheetGridManager.getSizeType(for:)(v242, v243, v244, v245);
                        v247 = *v241;
                        if (v246 == 2)
                        {
                          (*(v247 + 1280))(&aBlock);
                        }

                        else
                        {
                          (*(v247 + 1256))(&aBlock);
                        }

                        v291 = aBlock;
                        v292 = v635;
                        v293 = v636;

                        if ((v293 & 1) == 0)
                        {
                          v654.origin.x = 0.0;
                          v654.origin.y = 0.0;
                          v654.size.width = 0.0;
                          v654.size.height = 0.0;
                          v652.origin = v291;
                          v652.size = v292;
                          if (!CGRectEqualToRect(v652, v654))
                          {
                            v294 = [v239 layer];
                            [v294 setContentsRect:{v291, v292}];
                          }
                        }
                      }

                      v295 = v239;
                      [v295 setContentMode:2];
                      [v629 addSubview:v295];
                      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                      v296 = v295;
                      [v296 setIsAccessibilityElement:1];
                      v297 = UIAccessibilityTraitImage;
                      v298 = [v296 accessibilityTraits];
                      if ((v297 & ~v298) != 0)
                      {
                        v299 = v297;
                      }

                      else
                      {
                        v299 = 0;
                      }

                      [v296 setAccessibilityTraits:v299 | v298];
                      [v296 setAccessibilityIgnoresInvertColors:1];

                      v300 = [objc_opt_self() mainBundle];
                      v649._object = 0x80000001002B2FA0;
                      v301._countAndFlagsBits = 0x7361206F746F6850;
                      v301._object = 0xEB00000000746573;
                      v649._countAndFlagsBits = 0xD00000000000002ALL;
                      v302._countAndFlagsBits = 0;
                      v302._object = 0xE000000000000000;
                      NSLocalizedString(_:tableName:bundle:value:comment:)(v301, 0, v300, v302, v649);

                      v303 = String._bridgeToObjectiveC()();

                      [v296 setAccessibilityLabel:v303];

LABEL_160:
                      goto LABEL_161;
                    }

LABEL_166:
                    type metadata accessor for MOSuggestionFallbackAssetView();
                    v308 = v629;
                    v309 = *(v629 + v630);
                    v310 = 1953458288;
LABEL_167:
                    v311 = v310 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
                    v312 = 0xE500000000000000;
LABEL_168:
                    v313 = MOSuggestionFallbackAssetView.__allocating_init(with:sizeType:)(v311, v312, v309);
                    [v308 addSubview:v313];
                    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                    goto LABEL_87;
                  }

                  v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v288 = v287;
                  if (v286 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v288 == v289)
                  {

                    goto LABEL_163;
                  }

                  v304 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v304)
                  {
LABEL_163:
                    v305 = (*(*v618 + 920))(v290);
                    if (v305)
                    {
                      v306 = v305;
                      v307 = (*(*v618 + 1328))();
                      if (v307 != 11)
                      {
                        v319 = v307;
                        v320 = v306;
                        v321 = [v629 frame];
                        v323 = v322;
                        v325 = v324;
                        v327 = v326;
                        v329 = v328;
                        v330 = (*(*v618 + 1232))(v321);
                        v331 = objc_allocWithZone(type metadata accessor for MOSuggestionLivePhotoView());
                        v303 = MOSuggestionLivePhotoView.init(livePhoto:frame:shouldAutoPlay:size:)(v320, v330 & 1, v319, v323, v325, v327, v329);
                        v332 = v31();
                        if (v332)
                        {
                          v333 = v332;
                          [v629 frame];
                          v338 = specialized static MOSuggestionSheetGridManager.getSizeType(for:)(v334, v335, v336, v337);
                          v339 = *v333;
                          if (v338 == 2)
                          {
                            (*(v339 + 1280))(&aBlock);
                          }

                          else
                          {
                            (*(v339 + 1256))(&aBlock);
                          }

                          v347 = aBlock;
                          v348 = v635;
                          v349 = v636;

                          if ((v349 & 1) == 0)
                          {
                            v655.origin.x = 0.0;
                            v655.origin.y = 0.0;
                            v655.size.width = 0.0;
                            v655.size.height = 0.0;
                            v653.origin = v347;
                            v653.size = v348;
                            if (!CGRectEqualToRect(v653, v655))
                            {
                              (*((swift_isaMask & *v303) + 0x88))(v347.x, v347.y, v348.width, v348.height);
                            }
                          }
                        }

                        v350 = v629;
                        [v629 addSubview:v303];
                        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                        v352 = (*((swift_isaMask & *v350) + 0x80))(v351);
                        (*((swift_isaMask & *v303) + 0x70))(v352);

                        goto LABEL_160;
                      }
                    }

                    goto LABEL_166;
                  }

                  v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v316 = v315;
                  if (v314 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v316 == v317)
                  {

LABEL_176:
                    v341 = (*(*v618 + 944))(v318);
                    if (v341)
                    {
                      v342 = v341;
                      v343 = (*(*v618 + 1328))();
                      if (v343 != 11)
                      {
                        v358 = v343;
                        static URL._unconditionallyBridgeFromObjectiveC(_:)();
                        v359 = [v629 frame];
                        v361 = v360;
                        v363 = v362;
                        v365 = v364;
                        v367 = v366;
                        v368 = (v31)(v359);
                        if (v368)
                        {
                          v369 = v368;
                          [v629 frame];
                          v374 = specialized static MOSuggestionSheetGridManager.getSizeType(for:)(v370, v371, v372, v373);
                          v375 = *v369;
                          if (v374 == 2)
                          {
                            (*(v375 + 1280))(v640);
                          }

                          else
                          {
                            (*(v375 + 1256))(v640);
                          }

                          v630 = v640[0];
                          v625 = v640[1];
                          v390 = v641;
                        }

                        else
                        {
                          v630 = 0u;
                          v390 = 1;
                          v625 = 0u;
                        }

                        v642 = v630;
                        v643 = v625;
                        v644 = v390;
                        v391 = objc_allocWithZone(type metadata accessor for MOSuggestionSheetVideoPlaybackView());
                        MOSuggestionSheetVideoPlaybackView.init(url:frame:assignedTileSize:cropRect:)(v18, v358, &v642, v361, v363, v365, v367);
                        v393 = v392;
                        [v629 addSubview:v392];
                        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                        if ((*(*v618 + 1232))(v394))
                        {
                          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
                          v395 = static OS_dispatch_queue.main.getter();
                          v396 = swift_allocObject();
                          *(v396 + 16) = v393;
                          v636 = partial apply for closure #1 in MOSuggestionSheetAssetView.initAssetView();
                          v637 = v396;
                          *&aBlock.x = _NSConcreteStackBlock;
                          *&aBlock.y = 1107296256;
                          *&v635.width = thunk for @escaping @callee_guaranteed () -> ();
                          *&v635.height = &block_descriptor_7;
                          v397 = _Block_copy(&aBlock);
                          v398 = v393;

                          static DispatchQoS.unspecified.getter();
                          *&aBlock.x = _swiftEmptyArrayStorage;
                          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                          v399 = v628;
                          dispatch thunk of SetAlgebra.init<A>(_:)();
                          OS_dispatch_queue.async(group:qos:flags:execute:)();
                          _Block_release(v397);

                          (*(v627 + 1))(v12, v399);
                          (*(v626 + 1))(v15, v13);
                        }

                        else
                        {
                        }

                        return;
                      }
                    }

                    v344 = (*(*v618 + 536))();
                    if (v344)
                    {
                      v345 = v344;
                      v346 = (*(*v618 + 1328))();
                      if (v346 != 11)
                      {
                        v376 = v346;
                        v377 = v31();
                        if (v377)
                        {
                          v378 = v377;
                          [v629 frame];
                          v383 = specialized static MOSuggestionSheetGridManager.getSizeType(for:)(v379, v380, v381, v382);
                          v384 = *v378;
                          if (v383 == 2)
                          {
                            (*(v384 + 1280))(&v642);
                          }

                          else
                          {
                            (*(v384 + 1256))(&v642);
                          }

                          v630 = v642;
                          v628 = v643;
                          v405 = v644;
                        }

                        else
                        {
                          v630 = 0u;
                          v405 = 1;
                          v628 = 0u;
                        }

                        aBlock = v630;
                        v635 = v628;
                        LOBYTE(v636) = v405;
                        v420 = (*(*v618 + 1160))(v377);
                        v422 = v421;
                        objc_allocWithZone(type metadata accessor for MOSuggestionSheetVideoPlaybackView.ThumbnailView());
                        v423 = v345;
                        MOSuggestionSheetVideoPlaybackView.ThumbnailView.init(thumbnail:assignedTileSize:cropRect:duration:)(v423, v376, &aBlock, v420, (v422 & 1));
                        v425 = v424;
                        [v629 addSubview:v424];
                        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                        goto LABEL_87;
                      }
                    }

                    type metadata accessor for MOSuggestionFallbackAssetView();
                    v308 = v629;
                    v309 = *(v629 + v630);
                    v310 = 1701079414;
                    goto LABEL_167;
                  }

                  v340 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v340)
                  {
                    goto LABEL_176;
                  }

                  v353 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v355 = v354;
                  if (v353 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v355 == v356)
                  {

                    goto LABEL_198;
                  }

                  v385 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v385)
                  {
LABEL_198:
                    v386 = (*(*v618 + 536))(v357);
                    if (v386)
                    {
                      v387 = v386;
                      v388 = (*(*v618 + 1400))();
                      if ((v389 & 1) == 0)
                      {
                        v406 = v388;
                        v407 = v618;
                        v408 = *(*v618 + 1352);
                        v409 = v387;
                        v410 = v408();
                        v412 = v411;
                        v413 = (*(*v407 + 1376))();
                        v415 = v414;
                        v416 = v629;
                        LODWORD(v406) = MOSuggestionSheetAssetView.sizedBasedMapStyle(numLocations:)(v406);
                        v417 = (*(*v407 + 1328))();
                        v418 = objc_allocWithZone(type metadata accessor for MOSuggestionMapSnapshotView());
                        v419 = MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(v409, v410, v412, v413, v415, v406, v417);
                        [v419 setContentMode:2];
                        [v416 addSubview:v419];
                        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                        goto LABEL_87;
                      }
                    }

                    goto LABEL_201;
                  }

                  v400 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v402 = v401;
                  if (v400 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v402 == v403)
                  {

LABEL_217:
                    v427 = (*(*v618 + 536))(v404);
                    if (!v427)
                    {
LABEL_201:
                      type metadata accessor for MOSuggestionFallbackAssetView();
                      v308 = v629;
                      v309 = *(v629 + v630);
                      v312 = 0x80000001002AEBE0;
                      v311 = 0xD000000000000015;
                      goto LABEL_168;
                    }

                    v428 = *(*v618 + 1328);
                    v429 = v427;
                    v430 = v428();
                    v431 = objc_allocWithZone(type metadata accessor for MOSuggestionMapSnapshotView());
                    v432 = MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(v429, 0, 0, 0, 0, 5, v430);
LABEL_219:
                    v433 = v432;
                    [v432 setContentMode:2];
                    [v629 addSubview:v433];
                    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                    goto LABEL_87;
                  }

                  v426 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v426)
                  {
                    goto LABEL_217;
                  }

                  v434 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v436 = v435;
                  if (v434 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v436 == v437)
                  {

                    goto LABEL_224;
                  }

                  v439 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v439)
                  {
LABEL_224:
                    v440 = (*(*v618 + 584))(v438);
                    if (v440)
                    {
                      v441 = v440;
                      v442 = (*(*v618 + 1136))();
                      if (v443)
                      {
                        v444 = v442;
                        v445 = v443;
                        v446 = (*(*v618 + 1160))();
                        if ((v447 & 1) != 0 || (v448 = v446, v449 = (*(*v618 + 1184))(), !v450))
                        {
                        }

                        else
                        {
                          v451 = v449;
                          v452 = v450;
                          *&v630 = (*(*v618 + 896))();
                          if (v453)
                          {
                            v454 = v453;
                            LODWORD(v628) = (*(*v618 + 1328))();
                            if (v628 != 11)
                            {
                              v627 = v441;
                              [v629 frame];
                              v476 = v475;
                              v478 = v477;
                              v480 = v479;
                              v482 = v481;
                              v626 = type metadata accessor for MOSuggestionActivityRouteAssetView();
                              v483 = objc_allocWithZone(v626);
                              v484 = String._bridgeToObjectiveC()();
                              v485 = objc_opt_self();
                              v486 = [v485 colorNamed:v484];

                              if (!v486)
                              {
                                v486 = [v485 systemBlueColor];
                              }

                              *&v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue] = v486;
                              v487 = String._bridgeToObjectiveC()();
                              v488 = [v485 colorNamed:v487];

                              if (!v488)
                              {
                                v488 = [v485 systemYellowColor];
                              }

                              *&v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow] = v488;
                              v489 = String._bridgeToObjectiveC()();
                              v490 = [v485 colorNamed:v489];

                              if (!v490)
                              {
                                v490 = [v485 systemPinkColor];
                              }

                              *&v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink] = v490;
                              v491 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_exerciseNameLabel;
                              closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.exerciseNameLabel();
                              *&v483[v491] = v492;
                              v493 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel;
                              closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.workoutDataLabel();
                              *&v483[v493] = v494;
                              v495 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_labelStack;
                              v496 = [objc_allocWithZone(UIStackView) init];
                              [v496 setAxis:1];
                              [v496 setDistribution:4];
                              [v496 setAlignment:1];
                              [v496 setSpacing:2.0];
                              *&v483[v495] = v496;
                              v497 = v627;
                              *&v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_routeMap] = v627;
                              v498 = &v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_name];
                              *v498 = v630;
                              v498[1] = v454;
                              v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize] = v628;
                              *&v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_duration] = v448;
                              v499 = &v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_calories];
                              *v499 = v444;
                              v499[1] = v445;
                              v500 = &v483[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
                              *v500 = v451;
                              v500[1] = v452;
                              v638.receiver = v483;
                              v638.super_class = v626;
                              v501 = v497;
                              v502 = objc_msgSendSuper2(&v638, "initWithFrame:", v476, v478, v480, v482);
                              [v502 setContentMode:1];
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
                              v503 = swift_allocObject();
                              *(v503 + 16) = xmmword_1002A48B0;
                              *(v503 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
                              *(v503 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
                              UIView.registerForTraitChanges(_:action:)();
                              swift_unknownObjectRelease();

                              (*((swift_isaMask & *v502) + 0xB8))(v504);

                              [v629 addSubview:v502];
                              UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                              goto LABEL_72;
                            }
                          }

                          else
                          {
                          }
                        }
                      }

                      else
                      {
                      }
                    }

                    goto LABEL_161;
                  }

                  v455 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v457 = v456;
                  if (v455 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v457 == v458)
                  {

                    goto LABEL_237;
                  }

                  v460 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v460)
                  {
LABEL_237:
                    v461 = (*(*v618 + 608))(v459);
                    if (v461)
                    {
                      v462 = v461;
                      v463 = objc_allocWithZone(type metadata accessor for MOSuggestionLinkShareView());
                      v251 = v462;
                      v252 = MOSuggestionLinkShareView.init(linkMetadata:)(v251);
                      goto LABEL_138;
                    }

LABEL_161:

                    goto LABEL_57;
                  }

                  v464 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v466 = v465;
                  if (v464 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v466 == v467)
                  {

LABEL_244:
                    v470 = (*(*v618 + 680))(v468);
                    if (!v470)
                    {
                      goto LABEL_161;
                    }

                    v429 = v470;
                    v471 = [v470 reflectionType];
                    v472 = [v429 reflectionPrompts];
                    v473 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    objc_allocWithZone(type metadata accessor for ReflectionPromptView());
                    v474 = v618;

                    v432 = ReflectionPromptView.init(type:prompts:updateReflectionIndex:)(v471, v473, partial apply for implicit closure #2 in implicit closure #1 in MOSuggestionSheetAssetView.initAssetView(), v474);
                    goto LABEL_219;
                  }

                  v469 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v469)
                  {
                    goto LABEL_244;
                  }

                  v505 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v507 = v506;
                  if (v505 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v507 == v508)
                  {

                    goto LABEL_257;
                  }

                  v510 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v510)
                  {
LABEL_257:
                    v511 = (*(*v618 + 1328))(v509);
                    if (v511 != 11)
                    {
                      v512 = v511;
                      v513 = v618;
                      v514 = (*(*v618 + 536))();
                      *&v625 = v514;
                      *&v630 = (*(*v513 + 728))();
                      *&v628 = v515;
                      v516 = v620;
                      v517 = (*(*v513 + 752))();
                      v626 = (*(*v513 + 1712))(v517);
                      v518 = v516;
                      v519 = v619;
                      outlined init with copy of URL?(v518, v619);
                      v520 = *(*v513 + 776);
                      v627 = v514;
                      v521 = v520();
                      v522 = (*(*v513 + 1040))();
                      v524 = v523;
                      v525 = (*(*v513 + 1064))();
                      v527 = v526;
                      v528 = (*(*v513 + 1688))();
                      v529 = (*(*v513 + 1736))();
                      v530 = objc_allocWithZone(type metadata accessor for MOSuggestionSheetMediaAssetView(0));
                      v531 = specialized MOSuggestionSheetMediaAssetView.init(mediaAssetID:mediaPreviewURL:image:mediaType:sizeType:title:subtitle:assignedTileSize:bgColor:associatedColors:colorVariant:)(v630, v628, v519, v625, v521, v522, v524, v525, v527, v512, v528, v626, v529);
                      [v629 addSubview:v531];
                      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v620, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                      return;
                    }

                    goto LABEL_161;
                  }

                  v532 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v534 = v533;
                  if (v532 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v534 == v535)
                  {

                    goto LABEL_263;
                  }

                  v537 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v537)
                  {
LABEL_263:
                    v538 = (*(*v618 + 536))(v536);
                    if (!v538)
                    {
LABEL_279:
                      type metadata accessor for MOSuggestionFallbackAssetView();
                      v552 = v629;
                      v553 = MOSuggestionFallbackAssetView.__allocating_init(with:sizeType:)(0xD000000000000011, 0x80000001002AEC30, *(v629 + v630));
                      [v552 addSubview:v553];
                      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                      goto LABEL_71;
                    }

                    v539 = v538;
                    v540 = (*(*v618 + 1616))();
                    if (!v540)
                    {

                      goto LABEL_279;
                    }

                    v541 = v540;
                    v542 = (*(*v618 + 1640))();
                    if (v542)
                    {
                      v543 = v542;
                      v544 = (*(*v618 + 1328))();
                      if (v544 != 11)
                      {
                        v545 = v544;
                        *&v628 = (*(*v618 + 1472))();
                        if (v546)
                        {
                          v547 = v546;
                          v548 = v621;
                          (*(*v618 + 1664))();
                          if ((*(v624 + 6))(v548, 1, v625) == 1)
                          {

                            outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v621, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                            goto LABEL_279;
                          }

                          v554 = v624;
                          v555 = v623;
                          v556 = v625;
                          (*(v624 + 4))(v623, v621, v625);
                          v615 = v539;
                          v557 = [v629 frame];
                          v559 = v558;
                          v561 = v560;
                          v563 = v562;
                          v565 = v564;
                          v566 = v618;
                          v614 = (*(*v618 + 1496))(v557);
                          v616 = (*(*v566 + 1520))();
                          *&v630 = v567;
                          v620 = (*(*v566 + 1544))();
                          v626 = v568;
                          v619 = (*(*v566 + 1568))();
                          v570 = v569;
                          v621 = (*(*v566 + 1592))();
                          v627 = v571;
                          v554[2](v622, v555, v556);
                          v572 = type metadata accessor for MOSuggestionStateOfMindAssetView();
                          v573 = objc_allocWithZone(v572);
                          *&v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors] = 0;
                          *&v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient] = 0;
                          v574 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabel;
                          *&v573[v574] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.primaryLabel();
                          v575 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabel;
                          *&v573[v575] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel();
                          v576 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabel;
                          *&v573[v576] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.typeLabel();
                          v577 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_labelStack;
                          v578 = [objc_allocWithZone(UIStackView) init];
                          [v578 setAxis:1];
                          [v578 setSpacing:1.0];
                          [v578 setAlignment:1];
                          *&v573[v577] = v578;
                          v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_assignedTileSize] = v545;
                          v579 = &v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_valenceClassificationAndReflectiveInterval];
                          *v579 = v628;
                          v579[1] = v547;
                          *&v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsLight] = v541;
                          *&v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsDark] = v543;
                          v580 = objc_opt_self();

                          v581 = [v580 mainBundle];
                          v650._object = 0x80000001002B2F20;
                          v582._countAndFlagsBits = 0x206E6F69746F6D45;
                          v582._object = 0xAD0000402520B7C2;
                          v583._object = 0x80000001002B2F00;
                          v650._countAndFlagsBits = 0xD000000000000046;
                          v583._countAndFlagsBits = 0x1000000000000011;
                          NSLocalizedString(_:tableName:bundle:value:comment:)(v583, 0, v581, v582, v650);

                          if (one-time initialization token for shortTimeFormatter != -1)
                          {
                            swift_once();
                          }

                          v584 = static MODateFormatter.shortTimeFormatter;
                          isa = Date._bridgeToObjectiveC()().super.isa;
                          v586 = [v584 stringForObjectValue:isa];

                          if (v586)
                          {
                            v587 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v589 = v588;
                          }

                          else
                          {
                            v587 = 0;
                            v589 = 0xE000000000000000;
                          }

                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                          v590 = swift_allocObject();
                          v613 = xmmword_1002A48B0;
                          *(v590 + 16) = xmmword_1002A48B0;
                          *(v590 + 56) = &type metadata for String;
                          *(v590 + 64) = lazy protocol witness table accessor for type String and conformance String();
                          *(v590 + 32) = v587;
                          *(v590 + 40) = v589;
                          v591 = static String.localizedStringWithFormat(_:_:)();
                          v593 = v592;

                          if (v614 == 2)
                          {

                            v591 = 0;
                            v593 = 0xE000000000000000;
                          }

                          v594 = &v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabelText];
                          *v594 = v591;
                          v594[1] = v593;
                          if (v630)
                          {
                            v595 = BYTE7(v630) & 0xF;
                            if ((v630 & 0x2000000000000000) == 0)
                            {
                              v595 = v616 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v595)
                            {

                              *&v628 = v616;
                              v547 = v630;
                              goto LABEL_295;
                            }
                          }

                          else
                          {
                          }

                          v620 = 0;
                          v626 = 0xE000000000000000;
LABEL_295:
                          v596 = &v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelText];
                          *v596 = v628;
                          v596[1] = v547;
                          v597 = &v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelTextShortened];
                          v598 = v626;
                          *v597 = v620;
                          v597[1] = v598;
                          if (v570)
                          {
                            v599 = HIBYTE(v570) & 0xF;
                            if ((v570 & 0x2000000000000000) == 0)
                            {
                              v599 = v619 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v599)
                            {
                              v591 = v619;
LABEL_302:

                              v600 = &v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelText];
                              *v600 = v591;
                              v600[1] = v570;
                              v601 = &v573[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelTextShortened];
                              v602 = v627;
                              *v601 = v621;
                              v601[1] = v602;
                              v639.receiver = v573;
                              v639.super_class = v572;
                              v603 = objc_msgSendSuper2(&v639, "initWithFrame:", v559, v561, v563, v565);
                              [v603 setContentMode:1];
                              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
                              v604 = swift_allocObject();
                              *(v604 + 16) = v613;
                              *(v604 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
                              *(v604 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
                              UIView.registerForTraitChanges(_:action:)();
                              swift_unknownObjectRelease();

                              v605 = v615;
                              v606 = (*((swift_isaMask & *v603) + 0x198))(v615);
                              (*((swift_isaMask & *v603) + 0x190))(v606);
                              [v603 setIsAccessibilityElement:1];
                              v607 = [v580 mainBundle];
                              v651._object = 0x80000001002B2F70;
                              v608._countAndFlagsBits = 0x666F206574617453;
                              v608._object = 0xED0000646E696D20;
                              v651._countAndFlagsBits = 0xD00000000000002CLL;
                              v609._countAndFlagsBits = 0;
                              v609._object = 0xE000000000000000;
                              NSLocalizedString(_:tableName:bundle:value:comment:)(v608, 0, v607, v609, v651);

                              v610 = String._bridgeToObjectiveC()();

                              [v603 setAccessibilityLabel:v610];

                              v611 = *(v624 + 1);
                              v612 = v625;
                              v611(v622, v625);
                              [v629 addSubview:v603];
                              UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                              v611(v623, v612);
                              return;
                            }
                          }

                          v621 = 0;
                          v570 = v593;
                          v627 = 0xE000000000000000;
                          goto LABEL_302;
                        }
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_279;
                  }

                  v25 = v629;
LABEL_271:
                  v549 = String._bridgeToObjectiveC()();
                  v550 = [objc_opt_self() imageNamed:v549];

                  v551 = [objc_allocWithZone(UIImageView) initWithImage:v550];
                  [v25 addSubview:v551];
                  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                  goto LABEL_272;
                }
              }

              v140 = v618;
              v141 = (*(*v618 + 536))(v76);
              if (!v141)
              {
                goto LABEL_86;
              }

              v142 = v141;
              v99 = v1;
              v143 = (*(*v140 + 1136))();
              if (!v144)
              {

                goto LABEL_85;
              }

              v145 = v144;
              v146 = v143;
              v147 = (*(*v140 + 1160))();
              if ((v148 & 1) != 0 || (v149 = v147, v150 = (*(*v140 + 1184))(), !v151))
              {

                goto LABEL_85;
              }

              v152 = v151;
              *&v628 = v150;
              v627 = (*(*v140 + 1208))();
              if (!v153)
              {

                goto LABEL_85;
              }

              v154 = v153;
              *&v625 = (*(*v140 + 896))();
              v626 = v155;
              if (!v155)
              {

                goto LABEL_85;
              }

              LODWORD(v624) = (*(*v140 + 1328))();
              if (v624 == 11)
              {

LABEL_85:
                v1 = v99;
LABEL_86:
                type metadata accessor for MOSuggestionFallbackAssetView();
                v156 = v629;
                v157 = MOSuggestionFallbackAssetView.__allocating_init(with:sizeType:)(0x722E657275676966, 0xEA00000000006E75, *(v629 + v630));
                [v156 addSubview:v157];
                UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

                goto LABEL_87;
              }

              v194 = one-time initialization token for exerciseGreen;
              *&v630 = v142;
              if (v194 != -1)
              {
                swift_once();
              }

              v195 = static MOSuggestionTheme.Colors.exerciseGreen;
              v196 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
              v197 = [v195 colorWithAlphaComponent:0.18];
              v198 = objc_allocWithZone(type metadata accessor for MOSuggestionWorkoutIconGlyphView());
              v199 = v195;
              v623 = MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(v630, v196, v197, v199);
              [v629 frame];
              v201 = v200;
              v203 = v202;
              v205 = v204;
              v207 = v206;
              v622 = type metadata accessor for MOSuggestionActivityIconAssetView();
              v208 = objc_allocWithZone(v622);
              v209 = String._bridgeToObjectiveC()();
              v210 = objc_opt_self();
              v211 = [v210 colorNamed:v209];

              if (!v211)
              {
                v211 = [v210 systemBlueColor];
              }

              *&v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distanceBlue] = v211;
              v212 = String._bridgeToObjectiveC()();
              v213 = [v210 colorNamed:v212];

              if (!v213)
              {
                v213 = [v210 systemYellowColor];
              }

              *&v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_timeYellow] = v213;
              v214 = String._bridgeToObjectiveC()();
              v215 = [v210 colorNamed:v214];

              if (!v215)
              {
                v215 = [v210 systemPinkColor];
              }

              *&v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_movePink] = v215;
              v216 = String._bridgeToObjectiveC()();
              v217 = [v210 colorNamed:v216];

              if (!v217)
              {
                v217 = [v210 systemRedColor];
              }

              *&v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_heartRed] = v217;
              v218 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_exerciseNameLabel;
              closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.exerciseNameLabel();
              *&v208[v218] = v219;
              v220 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_workoutDataLabel;
              closure #1 in variable initialization expression of MOSuggestionActivityIconAssetView.workoutDataLabel();
              *&v208[v220] = v221;
              v222 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_labelStack;
              v223 = [objc_allocWithZone(UIStackView) init];
              [v223 setAxis:1];
              [v223 setAlignment:1];
              *&v208[v222] = v223;
              v224 = &v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_name];
              v225 = v626;
              *v224 = v625;
              v224[1] = v225;
              v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_assignedTileSize] = v624;
              v226 = &v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_calories];
              *v226 = v146;
              v226[1] = v145;
              *&v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_duration] = v149;
              v227 = &v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_distance];
              *v227 = v628;
              v227[1] = v152;
              v228 = &v208[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionActivityIconAssetView_averageHeartRate];
              *v228 = v627;
              v228[1] = v154;
              v632.receiver = v208;
              v632.super_class = v622;
              v133 = objc_msgSendSuper2(&v632, "initWithFrame:", v201, v203, v205, v207);
              [v133 setContentMode:1];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
              v229 = swift_allocObject();
              *(v229 + 16) = xmmword_1002A48B0;
              *(v229 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
              *(v229 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
              UIView.registerForTraitChanges(_:action:)();
              swift_unknownObjectRelease();

              v230 = v623;
              (*((swift_isaMask & *v133) + 0x108))(v623);

              [v629 addSubview:v133];
              UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

LABEL_70:
LABEL_71:

LABEL_72:

              return;
            }
          }

          v99 = v1;
          v100 = v618;
          v101 = (*(*v618 + 1040))(v69);
          if (v102)
          {
            v103 = v101;
            v104 = v102;
            v105 = (*(*v100 + 1064))();
            if (v106)
            {
              v107 = v105;
              v108 = v106;
              v109 = (*(*v100 + 1328))();
              if (v109 != 11)
              {
                v110 = v109;
                *&v628 = v107;
                *&v630 = (*(*v100 + 536))();
                v111 = [v629 frame];
                v113 = v112;
                v115 = v114;
                v117 = v116;
                v119 = v118;
                v627 = (*(*v100 + 1448))(v111);
                v626 = type metadata accessor for MOSuggestionMotionAssetView();
                v120 = objc_allocWithZone(v626);
                v121 = String._bridgeToObjectiveC()();
                v122 = objc_opt_self();
                v123 = [v122 colorNamed:v121];

                if (!v123)
                {
                  v123 = [v122 systemWhiteColor];
                }

                *&v120[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_motionBackground] = v123;
                v124 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_exerciseNameLabel;
                *&v120[v124] = closure #1 in variable initialization expression of MOSuggestionMotionAssetView.exerciseNameLabel();
                v125 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_workoutDataLabel;
                *&v120[v125] = variable initialization expression of MOSuggestionMotionAssetView.workoutDataLabel();
                v126 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_labelStack;
                v127 = [objc_allocWithZone(UIStackView) init];
                [v127 setAxis:1];
                [v127 setAlignment:1];
                *&v120[v126] = v127;
                v128 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_imageView;
                type metadata accessor for MOSuggestionRoundView();
                *&v120[v128] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                v129 = &v120[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_title];
                *v129 = v103;
                v129[1] = v104;
                v120[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_assignedTileSize] = v110;
                v130 = &v120[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_subtitle];
                *v130 = v628;
                v130[1] = v108;
                v131 = v627;
                *&v120[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMotionAssetView_snowglobeView] = v627;
                v631.receiver = v120;
                v631.super_class = v626;
                v132 = v131;
                v133 = objc_msgSendSuper2(&v631, "initWithFrame:", v113, v115, v117, v119);
                [v133 setContentMode:1];
                v134 = v630;
                (*((swift_isaMask & *v133) + 0xE8))(v630);
                [v133 setIsAccessibilityElement:1];
                v135 = [objc_opt_self() mainBundle];
                v648._object = 0x80000001002B1E30;
                v136._countAndFlagsBits = 0x676E696B6C6157;
                v648._countAndFlagsBits = 0xD000000000000036;
                v136._object = 0xE700000000000000;
                v137._countAndFlagsBits = 0;
                v137._object = 0xE000000000000000;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v136, 0, v135, v137, v648);

                v138 = String._bridgeToObjectiveC()();

                [v133 setAccessibilityLabel:v138];

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
                v139 = swift_allocObject();
                *(v139 + 16) = xmmword_1002A48B0;
                *(v139 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
                *(v139 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
                UIView.registerForTraitChanges(_:action:)();

                swift_unknownObjectRelease();

                [v629 addSubview:v133];
                UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
                goto LABEL_70;
              }
            }
          }

          goto LABEL_57;
        }
      }

      v98 = (*(*v618 + 536))(v62);
      if (v98)
      {
        v86 = v98;
        v96 = [objc_allocWithZone(UIImageView) initWithImage:v98];
        [v96 setContentMode:1];
        [v629 addSubview:v96];
        goto LABEL_47;
      }

LABEL_56:

LABEL_57:

      return;
    }
  }

  v83 = (*(*v618 + 560))(v55);
  if (!v83)
  {
    goto LABEL_56;
  }

  v84 = v629;
  v85 = *(v629 + v630);
  v86 = v83;
  [v84 frame];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = objc_allocWithZone(type metadata accessor for MOSuggestionActivityRingsAssetView());
  v96 = MOSuggestionActivityRingsAssetView.init(activitySummary:currentSizeType:frame:)(v86, v85, v88, v90, v92, v94);
  [v96 setContentMode:1];
  [v84 addSubview:v96];
LABEL_47:
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

LABEL_87:

LABEL_272:
}

Swift::Void __swiftcall MOSuggestionSheetAssetView.prepareForReuse()()
{
  (*((swift_isaMask & *v0) + 0xA0))(0);
  v1 = [v0 subviews];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:
}

id MOSuggestionSheetAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091A88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100091B38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100091B94(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100091C08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_100091C64(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA0);

  return v2(v3);
}

uint64_t sub_100091CC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double MOSuggestionSheetHalfMosaicLayout.cachedAttributes.getter()
{
  swift_beginAccess();

  return result;
}

double MOSuggestionSheetHalfMosaicLayout.cachedAttributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_cachedAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double MOSuggestionSheetHalfMosaicLayout.contentBounds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_contentBounds;
  swift_beginAccess();
  return *v1;
}

uint64_t MOSuggestionSheetHalfMosaicLayout.contentBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_contentBounds);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t MOSuggestionSheetHalfMosaicLayout.mosaicSegmentDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_mosaicSegmentDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionSheetHalfMosaicLayout.mosaicSegmentDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_mosaicSegmentDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

Swift::Void __swiftcall MOSuggestionSheetHalfMosaicLayout.prepare()()
{
  v1 = v0;
  v102 = type metadata accessor for IndexPath();
  v2 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  v105.receiver = v0;
  v105.super_class = v4;
  objc_msgSendSuper2(&v105, "prepareLayout");
  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = *((swift_isaMask & *v0) + 0xA0);
    v8 = swift_unknownObjectRetain();
    v7(v8, &protocol witness table for MOSuggestionSheetHalfMosaicLayout);
    v9 = (swift_isaMask & *v0) + 120;
    v100 = *((swift_isaMask & *v0) + 0x78);
    v99 = v9;
    v10 = v100(&slice);
    *v11 = _swiftEmptyArrayStorage;

    v10(&slice, 0);
    v12 = v6;
    v13 = [v12 bounds];
    v14 = (swift_isaMask & *v1) + 136;
    v98 = *((swift_isaMask & *v1) + 0x88);
    v97 = v14;
    (v98)(v13, 0.0, 0.0);
    v15 = [v12 numberOfItemsInSection:0];
    [v12 bounds];
    v17 = v16;

    (*((swift_isaMask & *v1) + 0xB0))(v15, v17);
    if (v15 < 1)
    {
    }

    else
    {
      v19 = v18;
      v80 = v12;
      v20 = 0;
      v84 = ceil(v17 * 0.5);
      v21 = 0.0;
      v91 = ceil(v18 * 0.5);
      v96 = (v2 + 8);
      v22 = _swiftEmptyArrayStorage;
      v83 = xmmword_1002A48B0;
      v82 = xmmword_1002A4A00;
      v81 = xmmword_1002A55C0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v94 = v17;
      v93 = v18;
      v92 = v15;
      while (v15 > 2)
      {
        if (v15 == 3)
        {

          memset(&slice, 0, sizeof(slice));
          memset(&remainder, 0, sizeof(remainder));
          v111.origin.x = 0.0;
          v111.origin.y = 0.0;
          v111.size.width = v17;
          v111.size.height = v19;
          CGRectDivide(v111, &slice, &remainder, v91, CGRectMinYEdge);
          v112.origin.x = remainder.origin.x;
          v112.size.width = remainder.size.width;
          v112.origin.y = remainder.origin.y + 1.0;
          v112.size.height = remainder.size.height + -1.0;
          v57 = ceil(remainder.size.width * 0.5);
          size = slice.size;
          origin = slice.origin;
          memset(&slice, 0, sizeof(slice));
          v103 = size;
          memset(&remainder, 0, sizeof(remainder));
          CGRectDivide(v112, &slice, &remainder, v57, CGRectMinXEdge);
          y = remainder.origin.y;
          height = remainder.size.height;
          v61 = remainder.origin.x + 1.0;
          v62 = remainder.size.width + -1.0;
          v90 = slice.origin;
          v89 = slice.size;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
          v22 = swift_allocObject();
          v63 = origin;
          *(v22 + 1) = v81;
          *(v22 + 2) = v63;
          v64 = v89;
          *(v22 + 3) = v103;
          *(v22 + 4) = v90;
          *(v22 + 5) = v64;
          v22[12] = v61;
          v22[13] = y;
          v31 = 3;
          v22[14] = v62;
          v22[15] = height;
          goto LABEL_24;
        }

        if (v15 != 4)
        {
          goto LABEL_35;
        }

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v108.origin.x = 0.0;
        v108.origin.y = 0.0;
        v32 = v22;
        v108.size.width = v17;
        v108.size.height = v19;
        CGRectDivide(v108, &slice, &remainder, v84, CGRectMinXEdge);
        v109 = slice;
        v86.x = remainder.origin.y;
        v33 = remainder.size.height;
        v34 = remainder.origin.x + 1.0;
        v35 = remainder.size.width + -1.0;
        v36 = ceil(slice.size.height * 0.5);
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        CGRectDivide(v109, &slice, &remainder, v36, CGRectMinYEdge);
        v87 = slice.size;
        v88 = slice.origin;
        v103.x = remainder.origin.x;
        v90.x = remainder.origin.y;
        origin.width = remainder.size.width;
        v89.width = remainder.size.height;
        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v110.origin.x = v34;
        v110.origin.y = v86.x;
        v110.size.width = v35;
        v110.size.height = v33;
        CGRectDivide(v110, &slice, &remainder, ceil(v33 * 0.5), CGRectMinYEdge);
        v85 = slice.size;
        v86 = slice.origin;
        x = remainder.origin.x;
        v38 = remainder.origin.y;
        width = remainder.size.width;
        v40 = remainder.size.height;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = v32;
        }

        else
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v42 = *(v22 + 2);
        v41 = *(v22 + 3);
        v43 = v41 >> 1;
        v44 = v42 + 1;
        if (v41 >> 1 <= v42)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
          v41 = *(v22 + 3);
          v43 = v41 >> 1;
        }

        *(v22 + 2) = v44;
        v45 = &v22[4 * v42];
        v46 = v87;
        *(v45 + 2) = v88;
        *(v45 + 3) = v46;
        v47 = v42 + 2;
        if (v43 < (v42 + 2))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 2, 1, v22);
        }

        *(v22 + 2) = v47;
        v48 = &v22[4 * v44];
        v49 = v85;
        *(v48 + 2) = v86;
        *(v48 + 3) = v49;
        v50 = *(v22 + 3);
        v51 = v42 + 3;
        if ((v42 + 3) > (v50 >> 1))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v42 + 3, 1, v22);
        }

        v52 = v90.x + 1.0;
        v53 = v89.width + -1.0;
        *(v22 + 2) = v51;
        v54 = &v22[4 * v47];
        v54[4] = v103.x;
        v54[5] = v52;
        v54[6] = origin.width;
        v54[7] = v53;
        v55 = *(v22 + 3);
        if ((v42 + 4) > (v55 >> 1))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v42 + 4, 1, v22);
        }

        *(v22 + 2) = v42 + 4;
        v56 = &v22[4 * v51];
        v56[4] = x;
        v56[5] = v38 + 1.0;
        v56[6] = width;
        v56[7] = v40 + -1.0;
        v31 = *(v22 + 2);
        if (v31)
        {
          goto LABEL_24;
        }

LABEL_30:
        v17 = v94;
        v19 = v93;
        if (v20 >= v15)
        {

          return;
        }
      }

      if (v15 == 1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
        v22 = swift_allocObject();
        *(v22 + 1) = v83;
        v22[4] = 0.0;
        v22[5] = 0.0;
        v31 = 1;
        v22[6] = v17;
        v22[7] = v19;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        memset(&slice, 0, sizeof(slice));
        memset(&remainder, 0, sizeof(remainder));
        v107.origin.x = 0.0;
        v107.origin.y = 0.0;
        v107.size.width = v17;
        v107.size.height = v19;
        CGRectDivide(v107, &slice, &remainder, v91, CGRectMinYEdge);
        v26 = remainder.origin.x;
        v27 = remainder.size.width;
        v28 = remainder.origin.y + 1.0;
        v29 = remainder.size.height + -1.0;
        v103 = slice.origin;
        origin = slice.size;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
        v22 = swift_allocObject();
        v30 = origin;
        *(v22 + 1) = v82;
        *(v22 + 2) = v103;
        *(v22 + 3) = v30;
        v22[8] = v26;
        v22[9] = v28;
        v31 = 2;
        v22[10] = v27;
        v22[11] = v29;
      }

LABEL_24:
      *&origin.width = v22;
      v65 = v22 + 7;
      *&v103.x = objc_opt_self();
      v66 = *((swift_isaMask & *v1) + 0x80);
      while (1)
      {
        v67 = *(v65 - 3);
        v68 = *(v65 - 2);
        v69 = *(v65 - 1);
        v70 = *v65;
        v71 = v101;
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v73 = [*&v103.x layoutAttributesForCellWithIndexPath:isa];

        (*v96)(v71, v102);
        [v73 setFrame:{v67, v68, v69, v70}];
        v74 = v73;
        v75 = v100(&slice);
        v77 = v76;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v78 = v75(&slice, 0);
        v113.origin.x = v66(v78);
        v115.origin.x = v21;
        v115.origin.y = v23;
        v115.size.width = v24;
        v115.size.height = v25;
        v114 = CGRectUnion(v113, v115);
        v98(v114.origin, *&v114.origin.y, v114.size, *&v114.size.height);

        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v20;
        v65 += 4;
        v21 = v67;
        v23 = v68;
        v24 = v69;
        v25 = v70;
        if (!--v31)
        {
          v21 = v67;
          v23 = v68;
          v24 = v69;
          v25 = v70;
          v15 = v92;
          v22 = *&origin.width;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
    }
  }
}

uint64_t MOSuggestionSheetHalfMosaicLayout.layoutAttributesForItem(at:)()
{
  v1 = *((swift_isaMask & *v0) + 0x68);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  v4 = IndexPath.item.getter();
  result = v1();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v4 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t MOSuggestionSheetHalfMosaicLayout.layoutAttributesForElements(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = v4;
  v12 = &swift_isaMask;
  v13 = *((swift_isaMask & *v4) + 0x68);
  v14 = (swift_isaMask & *v4) + 104;
  v15 = v13();
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  while (1)
  {
    v19 = v15;
    v16 = _CocoaArrayWrapper.endIndex.getter();

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_3:
    if (!v16)
    {
      return _swiftEmptyArrayStorage;
    }

    v17 = (*((*v12 & *v7) + 0xB8))(0, v16 - 1, a1, a2, a3, a4);
    if (v18)
    {
      return _swiftEmptyArrayStorage;
    }

    v6 = v17;
    v19 = v7;
    v20 = v13();
    if (v6 < 0)
    {
      goto LABEL_61;
    }

    v19 = v20;
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    v16 = v20 >> 62;
    if (v20 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < v6)
    {
      goto LABEL_67;
    }

LABEL_9:
    if ((v19 & 0xC000000000000001) == 0 || v6 == 0)
    {
    }

    else
    {
      type metadata accessor for UICollectionViewLayoutAttributes();

      v23 = 0;
      do
      {
        v24 = v23 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v23);
        v23 = v24;
      }

      while (v6 != v24);
    }

    v51 = v13;
    if (v16)
    {
      _CocoaArrayWrapper.subscript.getter();
      v13 = v27;
      v25 = v28;
      v30 = v29;

      v26 = v30 >> 1;
    }

    else
    {
      v25 = 0;
      v13 = ((v19 & 0xFFFFFFFFFFFFFF8) + 32);
      v26 = v6;
    }

    p_align = &stru_100327FE8.align;
    v12 = _swiftEmptyArrayStorage;
    if (v26 == v25)
    {
LABEL_30:
      v36 = swift_unknownObjectRelease();
      result = (v51)(v36);
      v14 = result;
      v16 = result >> 62;
      if (result >> 62)
      {
        goto LABEL_68;
      }

      v38 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38 < v6)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    v31 = v26;
    while (!__OFSUB__(v31--, 1))
    {
      if (v31 < v25 || v31 >= v26)
      {
        goto LABEL_57;
      }

      v33 = *(v13 + v31);
      [v33 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = a1;
      v53.origin.y = a2;
      v53.size.width = a3;
      v53.size.height = a4;
      if (CGRectGetMinY(v53) > MaxY)
      {

        goto LABEL_30;
      }

      v35 = v33;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 = _swiftEmptyArrayStorage;
      if (v31 == v25)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (v19 < 0)
  {
    v12 = v19;
  }

  else
  {
    v12 = v21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_74;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= v6)
  {
    goto LABEL_9;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_75;
  }

  v38 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_76;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v38)
  {
LABEL_32:
    if ((v14 & 0xC000000000000001) == 0 || v6 == v38)
    {
    }

    else
    {
      if (v6 >= v38)
      {
        goto LABEL_73;
      }

      type metadata accessor for UICollectionViewLayoutAttributes();

      v39 = v6;
      do
      {
        v40 = v39 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v39);
        v39 = v40;
      }

      while (v38 != v40);
    }

    if (v16)
    {
      v7 = _CocoaArrayWrapper.subscript.getter();
      v41 = v42;
      v6 = v43;
      v45 = v44;

      v38 = v45 >> 1;
    }

    else
    {
      v7 = (v14 & 0xFFFFFFFFFFFFFF8);
      v41 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v15 = swift_unknownObjectRetain();
    v14 = v38 - v6;
    if (v38 != v6)
    {
      if (v6 <= v38)
      {
        v46 = v38;
      }

      else
      {
        v46 = v6;
      }

      v13 = (v46 - v6);
      v47 = (v41 + 8 * v6);
      while (v13)
      {
        v48 = *v47;
        [v48 *(p_align + 266)];
        MinY = CGRectGetMinY(v54);
        v55.origin.x = a1;
        v55.origin.y = a2;
        v55.size.width = a3;
        v55.size.height = a4;
        if (MinY > CGRectGetMaxY(v55))
        {

          goto LABEL_54;
        }

        v50 = v48;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = _swiftEmptyArrayStorage;
        v13 = (v13 - 1);
        ++v47;
        if (!--v14)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
    return v12;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

double MOSuggestionSheetHalfMosaicLayout.assetGridHeight(assetCount:totalWidth:)(uint64_t a1, double result)
{
  if (a1 > 5)
  {
    result = result + result;
  }

  if (!a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t MOSuggestionSheetHalfMosaicLayout.binSearch(_:start:end:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v15 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v15 / 2;
  v10 = &swift_isaMask;
  result = (*((swift_isaMask & *v7) + 0x68))();
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v18 = v17;

    [v18 frame];
    v29.origin.x = v14;
    v29.origin.y = v13;
    v29.size.width = v12;
    v29.size.height = v11;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v14;
      v28.origin.y = v13;
      v28.size.width = v12;
      v28.size.height = v11;
      if (MaxY >= CGRectGetMinY(v28))
      {
        v25 = v6 - 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v23.n128_f64[0] = v11;
        v24 = v9;
      }

      else
      {
        v24 = v6 + 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v25 = v8;
        v23.n128_f64[0] = v11;
      }

      v6 = (*((*v10 & *v7) + 0xB8))(v24, v25, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id MOSuggestionSheetHalfMosaicLayout.init()()
{
  *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_contentBounds];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_mosaicSegmentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  return objc_msgSendSuper2(&v3, "init");
}

id MOSuggestionSheetHalfMosaicLayout.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_contentBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_mosaicSegmentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id MOSuggestionSheetHalfMosaicLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100093AB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_100093B10(void *a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x70);

  return v2(v3);
}

void sub_100093B74(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((swift_isaMask & **a1) + 0x80))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_100093C30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100093C8C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0xA0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

double MOAngelDefaultsManager.momentsUIDendrogramPOIPenalty.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0.5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldUpLevelPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSd_GTt0g5(uint64_t a1)
{
  v2 = 0;
  v12[2] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    specialized Set._Variant.insert(_:)(v12, v10, v11);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void one-time initialization function for defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOAngelDefaultsManager.defaults = v2;
}

void one-time initialization function for siri()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  static MOAngelDefaultsManager.siri = v2;
}

uint64_t MOAngelDefaultsManager.momentsUIShouldSkipDendrogram.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUIForceEmbeddedPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t MOAngelDefaultsManager.momentsUITripDropUninterestingPOI.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

double MOAngelDefaultsManager.momentsUILowConfidenceHighCertaintyThreshold.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 150.0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 150.0;
}

uint64_t MOAngelDefaultsManager.momentsUIGridBuckets.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Any?(&v7);
    return 5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 5;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.momentsUIClusterMaxCount.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_14:
    outlined destroy of Any?(&v7);
    return 30;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 30;
  }

  v4 = round(*&v5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

double MOAngelDefaultsManager.momentsUITightPOIScale.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    outlined destroy of Any?(&v6);
    return 0.5;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return *&v4;
  }

  return 0.5;
}

uint64_t MOAngelDefaultsManager.lastSuggestionNotificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

double *MOAngelDefaultsManager.notificationSchedule.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Any?(&v7);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !*(v3 + 2))
  {

    return 0;
  }

  return result;
}

double *specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (*&v8 >= *&v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((*&v7 > 1uLL), *&v8 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v8 + 1;
      _swiftEmptyArrayStorage[*&v8 + 4] = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (*&v8 >= *&v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((*&v7 > 1uLL), *&v8 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * *&v8];
      *(v9 + 4) = v11;
      *(v9 + 5) = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

{
  if (!(a1 >> 62))
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  _CocoaArrayWrapper.endIndex.getter();
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _CocoaArrayWrapper.endIndex.getter();
  v3 = result;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v3 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        ++v4;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v3 != v4);
    }

    else
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        v7 = v6;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v3;
      }

      while (v3);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationPredictionOptimalEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t MOAngelDefaultsManager.notificationRealTimeCheckTimerDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v2 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = type metadata accessor for Date();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  outlined destroy of Any?(&v11);
  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

double *MOAngelDefaultsManager.eligiblePOICategories.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    outlined destroy of Any?(&v7);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = specialized _arrayConditionalCast<A, B>(_:)(v5);

  result = v3;
  if (v3 && !*(v3 + 2))
  {

    return 0;
  }

  return result;
}

uint64_t MOAngelDefaultsManager.authorizedAppsArray.getter()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    outlined destroy of Any?(&v8);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVyXlGMd, &_sSDys11AnyHashableVyXlGMR);
  if (swift_dynamicCast())
  {
    specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v6);
    v4 = v3;

    return v4;
  }

  return 0;
}

Swift::Void __swiftcall MOAngelDefaultsManager.setAuthorizedAppsArray(_:)(Swift::OpaquePointer a1)
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v1 = static MOAngelDefaultsManager.defaults;
  if (static MOAngelDefaultsManager.defaults)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setValue:isa forKey:v3];
  }
}

void *MOAngelDefaultsManager.siriCanLearnFromAppDenySet.getter()
{
  if (one-time initialization token for siri != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.siri;
  if (!static MOAngelDefaultsManager.siri)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_12:
    outlined destroy of Any?(&v8);
    return &_swiftEmptySetSingleton;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayyXlGMd, &_sSayyXlGMR);
  if (swift_dynamicCast())
  {
    v3 = specialized _arrayConditionalCast<A, B>(_:)(v6);

    if (v3)
    {
      v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v3);

      return v4;
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t specialized static MOAngelDefaultsManager.doubleValueFor(_:)()
{
  if (one-time initialization token for defaults != -1)
  {
    swift_once();
  }

  v0 = static MOAngelDefaultsManager.defaults;
  if (!static MOAngelDefaultsManager.defaults)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    outlined destroy of Any?(&v6);
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}