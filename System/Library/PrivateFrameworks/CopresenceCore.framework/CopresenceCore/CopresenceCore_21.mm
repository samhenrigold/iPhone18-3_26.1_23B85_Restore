uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.join()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.join()(a1, v1);
}

char *specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, _BYTE *a9)
{
  v117 = a7;
  v118 = a6;
  v125 = a5;
  v126 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v109 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v123 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v109 - v19;
  v134[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v134[4] = &protocol witness table for IMUserNotificationCenter;
  v134[0] = a8;
  DateInterval.init()();
  *&a9[OBJC_IVAR___CPActivitySession_terminatingHandle] = 0;
  a9[OBJC_IVAR___CPActivitySession_isFirstJoin] = 1;
  a9[OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose] = 0;
  v20 = &a9[OBJC_IVAR___CPActivitySession_audioSessionID];
  *v20 = 0;
  v20[4] = 1;
  v21 = OBJC_IVAR___CPActivitySession_domainAssertion;
  v22 = type metadata accessor for ActivitySession.DomainAssertionWrapper(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  *&a9[OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_distributionCount] = 0;
  a9[OBJC_IVAR___CPActivitySession_isLocalParticipantActive] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_activeParticipantIDs] = MEMORY[0x1E69E7CD0];
  *&a9[OBJC_IVAR___CPActivitySession_applicationState] = 1;
  v23 = OBJC_IVAR___CPActivitySession_foregroundPresentationSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  swift_allocObject();
  *&a9[v23] = PassthroughSubject.init()();
  *&a9[OBJC_IVAR___CPActivitySession_capabilities] = 0;
  v24 = OBJC_IVAR___CPActivitySession_reportDictionary;
  v25 = MEMORY[0x1E69E7CC0];
  *&a9[v24] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Date.init()();
  v26 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v113 = v28 + 56;
  v112 = v29;
  v29(&a9[v26], 1, 1, v27);
  *&a9[OBJC_IVAR___CPActivitySession_activeParticipantsUpdateItem] = 0;
  v30 = OBJC_IVAR___CPActivitySession_activeParticipants;
  *&a9[v30] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_So25TUConversationParticipantCTt0g5Tf4g_n(v25);
  v31 = &a9[OBJC_IVAR___CPActivitySession_sessionManager];
  *(v31 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&a9[OBJC_IVAR___CPActivitySession_rtcReporter] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_connection] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs] = 0;
  v124 = v16;
  v32 = *(v16 + 16);
  v127 = a2;
  v128 = v15;
  v122 = v32;
  v32(&a9[OBJC_IVAR___CPActivitySession_id], a2, v15);
  v33 = OBJC_IVAR___CPActivitySession_activity;
  *&a9[OBJC_IVAR___CPActivitySession_activity] = a1;
  v34 = a1;
  v35 = [v34 metadata];
  [v35 saveImageToDisk];

  swift_beginAccess();
  *(v31 + 1) = &protocol witness table for ActivitySessionManager;
  swift_unknownObjectWeakAssign();
  v119 = a3;
  v36 = *(a3 + OBJC_IVAR___CPActivitySessionManager_queue);
  v115 = OBJC_IVAR___CPActivitySession_queue;
  *&a9[OBJC_IVAR___CPActivitySession_queue] = v36;
  v120 = v28;
  v37 = v28;
  v38 = v117;
  v39 = *(v37 + 16);
  v121 = v27;
  v39(&a9[OBJC_IVAR___CPActivitySession_timestamp], v126, v27);
  v40 = objc_opt_self();
  v41 = v36;
  v42 = [v40 anonymousListener];
  *&a9[OBJC_IVAR___CPActivitySession_listener] = v42;
  v43 = [v42 endpoint];
  *&a9[OBJC_IVAR___CPActivitySession_endpoint] = v43;
  if (v125 & 1) == 0 || (v38)
  {
    swift_beginAccess();
    v44 = 0x8000000000000010;
  }

  else
  {
    swift_beginAccess();
    v44 = 0x8000000000000000;
  }

  v132[0] = v44;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v45 = [*&a9[v33] isScreenSharingActivity];
  v46 = &static ConversationManagerInterface.identity;
  v47 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v48 = OBJC_IVAR___CPActivitySession__state;
    swift_beginAccess();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
    (*(*(v49 - 8) + 8))(&a9[v48], v49);
    v130[0] = 0x8000000000000000;
    Published.init(initialValue:)();
    swift_endAccess();
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Log.host);
    v51 = v111;
    v52 = v128;
    v122(v111, v127, v128);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v116 = v34;
      v56 = v55;
      v110 = swift_slowAlloc();
      v132[0] = v110;
      *v56 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (*(v124 + 8))(v51, v52);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v132);
      v46 = &static ConversationManagerInterface.identity;

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1AEB26000, v53, v54, "Setting initial ActivitySession(%s) state to waiting for screen sharing activity", v56, 0xCu);
      v61 = v110;
      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      MEMORY[0x1B27120C0](v61, -1, -1);
      v62 = v56;
      v34 = v116;
      MEMORY[0x1B27120C0](v62, -1, -1);
    }

    else
    {

      (*(v124 + 8))(v51, v52);
    }

    v47 = MEMORY[0x1E69E7CC0];
  }

  a9[OBJC_IVAR___CPActivitySession_isLocallyInitiated] = v125 & 1;
  a9[OBJC_IVAR___CPActivitySession_isLightweightPrimaryInitiated] = v118 & 1;
  a9[OBJC_IVAR___CPActivitySession_isStageInitiated] = v38 & 1;
  outlined init with copy of UserNotificationCenter(v134, &a9[OBJC_IVAR___CPActivitySession_notificationCenter]);
  a9[OBJC_IVAR___CPActivitySession_isUsingAirplay] = 0;
  v63 = *(v119 + OBJC_IVAR___CPActivitySessionManager_sceneObservationManager);
  if (v63)
  {
    v64 = v122;
    v122(v123, v127, v128);
    swift_unknownObjectRetain();
    v65 = [v34 metadata];
    v116 = v34;
    v66 = v128;
    if (v65)
    {
      v67 = v65;
      v68 = [v65 sceneAssociationBehavior];
    }

    else
    {
      v68 = 0;
    }

    v72 = *&a9[v115];
    v73 = type metadata accessor for ActivitySession.SceneAssociationCoordinator(0);
    v74 = objc_allocWithZone(v73);
    v75 = &v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged];
    *v75 = 0;
    v75[1] = 0;
    v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene] = 0;
    *&v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch] = -1;
    v76 = &v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
    *v76 = 0;
    v76[8] = 1;
    *&v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations] = v47;
    v77 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sessionID;
    v78 = v72;
    v79 = &v74[v77];
    v80 = v123;
    v64(v79, v123, v66);
    *&v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue] = v78;
    *&v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior] = v68;
    *&v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] = v63;
    v129.receiver = v74;
    v129.super_class = v73;
    v71 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    swift_unknownObjectRetain();
    v81 = v78;
    v82 = v68;
    v69 = objc_msgSendSuper2(&v129, sel_init);
    [v63 addDelegate_];

    swift_unknownObjectRelease();
    v70 = v124;
    v83 = v80;
    v47 = MEMORY[0x1E69E7CC0];
    (*(v124 + 8))(v83, v66);
    v34 = v116;
    v46 = &static ConversationManagerInterface.identity;
  }

  else
  {
    v69 = 0;
    v70 = v124;
    v71 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  }

  *&a9[OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator] = v69;
  if (v47 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v84 = MEMORY[0x1E69E7CD0];
  }

  *&a9[OBJC_IVAR___CPActivitySession_externalParticipants] = v84;
  v85 = type metadata accessor for ActivitySession(0);
  v133.receiver = a9;
  v133.super_class = v85;
  v86 = objc_msgSendSuper2(&v133, v71[31]);
  v87 = *&v86[OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator];
  if (v87)
  {
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = v87;

    ActivitySession.SceneAssociationCoordinator.setAssociatedScenesChangedHandler(_:)(partial apply for closure #1 in ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:), v88);
  }

  v90 = OBJC_IVAR___CPActivitySession_listener;
  v91 = *&v86[OBJC_IVAR___CPActivitySession_listener];
  v92 = v86;
  [v91 setDelegate_];
  [*&v86[v90] resume];
  type metadata accessor for RTCReporter();
  swift_allocObject();
  v93 = RTCReporter.init(session:)(v92);
  v94 = OBJC_IVAR___CPActivitySession_rtcReporter;
  swift_beginAccess();
  *&v92[v94] = v93;

  (*((*MEMORY[0x1E69E7D40] & *v92) + 0x2F8))(v130, v95);
  v131 = 0x8000000000000000;
  LOBYTE(v93) = static ActivitySession.State.== infix(_:_:)(v130, &v131);
  outlined consume of ActivitySession.State(v130[0]);
  v96 = v121;
  if (v93)
  {
    v97 = v114;
    Date.init()();
    v112(v97, 0, 1, v96);
    v98 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v97, &v92[v98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
  }

  if (*(v46 + 233) != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  __swift_project_value_buffer(v99, static Log.host);
  v100 = v34;
  v101 = v92;
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v104 = 138412546;
    *(v104 + 4) = v101;
    *(v104 + 12) = 2112;
    *(v104 + 14) = v100;
    *v105 = v86;
    v105[1] = v100;
    v106 = v100;
    v107 = v101;
    _os_log_impl(&dword_1AEB26000, v102, v103, "Initialized %@ activity: %@", v104, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v105, -1, -1);
    MEMORY[0x1B27120C0](v104, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v134);
  (*(v120 + 8))(v126, v96);
  (*(v70 + 8))(v127, v128);
  return v101;
}

uint64_t NSXPCConnection.isEntitledToUseNearbyInvitations.getter()
{
  v0 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(14);
  if (v0 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v0 = *(v1 + 72);
  }

  return v0 & 1;
}

double protocol witness for EntitlementValueProviding.value(forEntitlement:) in conformance NSXPCConnection@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = MEMORY[0x1B270FF70]();
  v5 = [v3 valueForEntitlement_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned PresenceSessionConnectionInfo?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *BackgroundSessionManagerHostConnection.init(connection:queue:dataSource:)(void *a1, void *a2, void *a3)
{
  outlined init with copy of UserNotificationCenter(a3, v3 + direct field offset for BackgroundSessionManagerHostConnection.dataSource);
  v7 = type metadata accessor for ABCReporter();
  v8 = swift_allocObject();
  v8[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v8[3] = 0x636E795374736146;
  v8[4] = 0xE800000000000000;
  v8[5] = 0x65636976726553;
  v8[6] = 0xE700000000000000;
  v9 = (v3 + direct field offset for BackgroundSessionManagerHostConnection.abcReporter);
  v9[3] = v7;
  v9[4] = &protocol witness table for ABCReporter;
  *v9 = v8;
  v10 = specialized XPCHostConnection.init(connection:queue:)(a1, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v10;
}

uint64_t BackgroundSessionManagerHostConnection.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for BackgroundSessionManagerHostConnection.dataSource));
  v1 = (v0 + direct field offset for BackgroundSessionManagerHostConnection.abcReporter);

  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

id BackgroundSessionManagerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc BackgroundSessionManagerHostConnection.__ivar_destroyer(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + direct field offset for BackgroundSessionManagerHostConnection.dataSource));
  v2 = (a1 + direct field offset for BackgroundSessionManagerHostConnection.abcReporter);

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

Swift::Int BackgroundSessionManagerHostConnection.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t BackgroundSessionManagerHostConnection.begin(request:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;
  v14 = a1;

  v15 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:), v12);
  v16 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
  v18 = *&v13[direct field offset for XPCHostConnection.bundleIdentifier];
  v17 = *&v13[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v11(v9, 1, 1, v10);
  outlined init with copy of UserNotificationCenter(&v13[v16], v22);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = 0xD00000000000001ALL;
  v19[6] = 0x80000001AEE36F00;
  v19[7] = v18;
  v19[8] = v17;
  outlined init with take of ContiguousBytes(v22, (v19 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v19);

  return outlined destroy of TaskPriority?(v9);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001ALL, 0x80000001AEE36F00, partial apply for closure #1 in closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:), v1, v3);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:);
  }

  else
  {

    v2 = closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[8];
  v2 = v0[4];

  v3 = v1;
  v2(v1);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(uint64_t a1)
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
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v10 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 32);
  v18 = __swift_project_boxed_opaque_existential_1((a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource), v9);
  v11 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier);
  v17 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v12 = [*(a2 + direct field offset for XPCHostConnection.connection) processIdentifier];
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  (*(v10 + 32))(v19, v11, v17, v12, partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v14, v9, v10);
}

uint64_t BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v24[0] = *(v13 + 56);
  v24[1] = v13 + 56;
  (v24[0])(v11, 1, 1, v12);
  (*(v7 + 16))(v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  (*(v7 + 32))(&v15[v14], v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = &v15[(v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = v25;
  v16[1] = a3;
  v17 = v3;

  v18 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v15);
  v19 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
  v21 = *&v17[direct field offset for XPCHostConnection.bundleIdentifier];
  v20 = *&v17[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  (v24[0])(v11, 1, 1, v12);
  outlined init with copy of UserNotificationCenter(&v17[v19], v26);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v18;
  v22[5] = 0xD00000000000001DLL;
  v22[6] = 0x80000001AEE36F20;
  v22[7] = v21;
  v22[8] = v20;
  outlined init with take of ContiguousBytes(v26, (v22 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v11, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v22);

  return outlined destroy of TaskPriority?(v11);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001DLL, 0x80000001AEE36F20, partial apply for closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v1, v3);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:);
  }

  else
  {

    v2 = closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v11 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 32);
  __swift_project_boxed_opaque_existential_1((a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource), v10);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  (*(v11 + 40))(a3, partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v13, v10, v11);
}

void BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(char *a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v47 = a1;
  v48 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = specialized Sequence.compactMap<A>(_:)(a2);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v14);

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v16 == *(a2 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = *(v15 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v16 == __CocoaSet.count.getter())
  {
LABEL_4:
    v45 = type metadata accessor for TaskPriority();
    v17 = *(v45 - 8);
    v44 = *(v17 + 56);
    v46 = v17 + 56;
    v44(v13, 1, 1, v45);
    (*(v8 + 16))(&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v7);
    v18 = *(v8 + 80);
    v47 = v13;
    v19 = (v18 + 40) & ~v18;
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v4;
    (*(v8 + 32))(&v21[v19], v10, v7);
    *&v21[v20] = v15;
    v22 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v22 = v48;
    v22[1] = a4;
    v23 = v4;

    v24 = v47;
    v25 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v47, &async function pointer to partial apply for closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), v21);
    v26 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
    v28 = *&v23[direct field offset for XPCHostConnection.bundleIdentifier];
    v27 = *&v23[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v44(v24, 1, 1, v45);
    outlined init with copy of UserNotificationCenter(&v23[v26], v49);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v25;
    v29[5] = 0xD00000000000002DLL;
    v29[6] = 0x80000001AEE36F40;
    v29[7] = v28;
    v29[8] = v27;
    outlined init with take of ContiguousBytes(v49, (v29 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v24, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v29);

    outlined destroy of TaskPriority?(v24);
    return;
  }

LABEL_7:
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Log.service);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v49[0] = v34;
    *v33 = 136315394;
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v35 = Set.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v49);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    type metadata accessor for TUHandle();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    v39 = Set.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v49);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_1AEB26000, v31, v32, "Lost members in conversion. convertedMembers %s vs members: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors();
  v42 = swift_allocError();
  v48();
}

uint64_t closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), 0, 0);
}

uint64_t closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD00000000000002DLL, 0x80000001AEE36F40, partial apply for closure #1 in closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), v2, v4);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:);
  }

  else
  {

    v2 = closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v1;
  v2(v1);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = (a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource);
  v12 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  (*(v13 + 48))(a3, v18, partial apply for closure #1 in closure #1 in closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), v15, v12, v13);
}

uint64_t closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v4;
  *(v16 + 5) = a1;
  (*(v9 + 32))(&v16[v15], &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v17 = &v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = v22;
  v17[1] = a4;
  v18 = v4;
  v19 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:), v16);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)()
{
  v1 = (v0[2] + direct field offset for BackgroundSessionManagerHostConnection.dataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:);
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5, v2, v3);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:);
  }

  else
  {
    v2 = closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = v3;
  v14 = a1;

  v15 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), v12);
  v16 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
  v18 = *&v13[direct field offset for XPCHostConnection.bundleIdentifier];
  v17 = *&v13[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v11(v9, 1, 1, v10);
  outlined init with copy of UserNotificationCenter(&v13[v16], v22);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = 0xD000000000000027;
  v19[6] = 0x80000001AEE36F70;
  v19[7] = v18;
  v19[8] = v17;
  outlined init with take of ContiguousBytes(v22, (v19 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v19);

  return outlined destroy of TaskPriority?(v9);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = type metadata accessor for PresenceSessionConnectionInfo();
  *v2 = v0;
  v2[1] = closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000027, 0x80000001AEE36F70, partial apply for closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), v1, v3);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:);
  }

  else
  {

    v2 = closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v2;
  v1(v2, 0);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v1;
  v2(0, v1);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v10 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 32);
  v18 = __swift_project_boxed_opaque_existential_1((a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource), v9);
  v11 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier);
  v17 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v12 = [*(a2 + direct field offset for XPCHostConnection.connection) processIdentifier];
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  (*(v10 + 64))(v19, v11, v17, v12, partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), v14, v9, v10);
}

void *closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(void *result, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc BackgroundSessionManagerHostConnection.begin(request:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

unint64_t lazy protocol witness table accessor for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors()
{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors);
  }

  return result;
}

unint64_t type metadata accessor for TUHandle()
{
  result = lazy cache variable for type metadata for TUHandle;
  if (!lazy cache variable for type metadata for TUHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUHandle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(uint64_t a1)
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
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata accessor for BackgroundSessionManagerHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for BackgroundSessionManagerHostConnection;
  if (!type metadata singleton initialization cache for BackgroundSessionManagerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)partial apply(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t specialized BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(char *a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v47 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v46 - v12;
  v48 = swift_allocObject();
  *(v48 + 16) = a4;
  _Block_copy(a4);
  v14 = specialized Sequence.compactMap<A>(_:)(a2);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v14);

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v16 == *(a2 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = *(v15 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v16 == __CocoaSet.count.getter())
  {
LABEL_4:
    v17 = type metadata accessor for TaskPriority();
    v18 = *(v17 - 8);
    v46[0] = *(v18 + 56);
    v46[1] = v18 + 56;
    (v46[0])(v13, 1, 1, v17);
    (*(v8 + 16))(v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v7);
    v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = v13;
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = a3;
    (*(v8 + 32))(&v21[v19], v10, v7);
    *&v21[v20] = v15;
    v22 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
    v23 = v48;
    *v22 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
    v22[1] = v23;
    v24 = a3;

    v25 = v47;
    v26 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v47, &closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)partial apply, v21);
    v27 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
    v29 = *&v24[direct field offset for XPCHostConnection.bundleIdentifier];
    v28 = *&v24[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    (v46[0])(v25, 1, 1, v17);
    outlined init with copy of UserNotificationCenter(&v24[v27], v49);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v26;
    v30[5] = 0xD00000000000002DLL;
    v30[6] = 0x80000001AEE36F40;
    v30[7] = v29;
    v30[8] = v28;
    outlined init with take of ContiguousBytes(v49, (v30 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v25, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v30);

    outlined destroy of TaskPriority?(v25);
  }

LABEL_7:
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.service);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v49[0] = v36;
    *v35 = 136315394;
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v37 = Set.description.getter();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v49);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    type metadata accessor for TUHandle();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    v41 = Set.description.getter();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v49);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_1AEB26000, v33, v34, "Lost members in conversion. convertedMembers %s vs members: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v35, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors();
  v44 = swift_allocError();
  v45 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v45);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

void *partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);

  return closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(a1, a2);
}

uint64_t specialized Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_CreateTopicResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<PluginAttachmentLedgerTopic.Configuration?, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMR, MEMORY[0x1E695C038]);
  swift_retain_n();

  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_GetAuthTokenResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_UpdateAttachmentResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

uint64_t specialized closure #1 in Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PluginRpcError(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Subscribers.Completion<PluginRpcError>(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  }

  outlined init with take of PluginRpcError(v7, v11);
  if (OneShotCancellationBox.cancel()())
  {
    a3(v11);
  }

  return outlined destroy of PluginRpcError(v11);
}

uint64_t PluginAttachmentLedgerServiceProvider.__allocating_init(client:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AttachmentLedgerServiceProvider.updateAttachment(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.updateAttachment(input:), 0, 0);
}

uint64_t AttachmentLedgerServiceProvider.updateAttachment(input:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  *v4 = v0;
  v4[1] = AsyncSerialQueue.performAndWaitFor<A>(_:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000018, 0x80000001AEE32480, partial apply for closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:), v3, updated);
}

uint64_t AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.getAuthToken(input:), 0, 0);
}

uint64_t AttachmentLedgerServiceProvider.getAuthToken(input:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  *v4 = v0;
  v4[1] = AttachmentLedgerServiceProvider.getAuthToken(input:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001AEE36FE0, partial apply for closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:), v3, AuthTokenResponse);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.getAuthToken(input:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVs5Error_pGMd, &_sScCy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v19[1] = (*(a5 + 40))(a3, a4, a5);
  v13 = *(v10 + 16);
  v13(v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v10 + 32);
  v16(v15 + v14, v12, v9);
  v13(v12, v19[0], v9);
  v17 = swift_allocObject();
  v16(v17 + v14, v12, v9);
  specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:), v15, partial apply for closure #2 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:), v17);
}

uint64_t closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMd, &_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v19[1] = (*(a5 + 48))(a3, a4, a5);
  v13 = *(v10 + 16);
  v13(v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = *(v10 + 32);
  v16(v15 + v14, v12, v9);
  v13(v12, v19[0], v9);
  v17 = swift_allocObject();
  v16(v17 + v14, v12, v9);
  specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:), v15, partial apply for closure #2 in closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:), v17);
}

uint64_t closure #1 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = a3(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(a1, &v13 - v11, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  type metadata accessor for PluginRpcError(0);
  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError, &protocol conformance descriptor for PluginRpcError);
  swift_allocError();
  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(a1, v7, type metadata accessor for PluginRpcError);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.CreateTopic.unsafeMutableAddressor()
{
  if (one-time initialization token for CreateTopic != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.CreateTopic;
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.SubscribeToTopic.unsafeMutableAddressor()
{
  if (one-time initialization token for SubscribeToTopic != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.SubscribeToTopic;
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.GetAuthToken.unsafeMutableAddressor()
{
  if (one-time initialization token for GetAuthToken != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.GetAuthToken;
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.UpdateAttachment.unsafeMutableAddressor()
{
  if (one-time initialization token for UpdateAttachment != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.UpdateAttachment;
}

uint64_t PluginAttachmentLedgerServiceProvider.createTopic(input:)(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  MEMORY[0x1EEE9AC00](TopicRequest);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMR);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v43 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.attachmentLedgerService);
  v46 = *(v10 + 16);
  v46(v13, v15, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v5;
    v22 = v21;
    v55[0] = v21;
    *v20 = 136315138;
    v23 = UUID.uuidString.getter();
    v44 = v2;
    v25 = v24;
    v26 = *(v10 + 8);
    v47 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v26;
    v26(v13, v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v55);
    v2 = v44;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Creating CreateTopic RPC request, traceID=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v28 = v22;
    v5 = v45;
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v20;
    v15 = v43;
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    v30 = *(v10 + 8);
    v47 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v30;
    v30(v13, v9);
  }

  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(v53, v49, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v31 = v50;
  v32 = TopicRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Just<AttachmentLedger_CreateTopicRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMR, MEMORY[0x1E695C008]);
  v33 = v52;
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v51 + 8))(v31, v33);
  v35 = *(v2 + 16);
  v55[0] = 0xD00000000000002ELL;
  v55[1] = 0x80000001AEE37000;
  v46(v5, v15, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v36 = *(*v35 + 272);
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  v38 = v15;
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest, &protocol conformance descriptor for AttachmentLedger_CreateTopicRequest);
  v40 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse);
  v41 = v36(v55, v34, v5, v32, TopicResponse, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v40);

  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v48(v38, v9);
  return v41;
}

uint64_t PluginAttachmentLedgerServiceProvider.subscribe(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.attachmentLedgerService);
  v42 = *(v7 + 16);
  v42(v10, v12, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v12;
    v19 = v18;
    v46[0] = v18;
    *v17 = 136315138;
    v20 = UUID.uuidString.getter();
    v39 = v2;
    v22 = v21;
    v23 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v23;
    v23(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v46);
    v2 = v39;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Creating SubscribeToTopic RPC request, traceID=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    v12 = v40;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v17;
    a1 = v41;
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v27 = *(v7 + 8);
    v43 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = v27;
    v27(v10, v6);
  }

  v28 = *(v2 + 16);
  v46[0] = 0xD000000000000033;
  v46[1] = 0x80000001AEE37030;
  v29 = v45;
  v42(v45, v12, v6);
  (*(v7 + 56))(v29, 0, 1, v6);
  v30 = *(*v28 + 272);
  v31 = v12;
  v32 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v33 = type metadata accessor for AttachmentLedger_SubscribeResponse(0);
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);
  v35 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse);
  v36 = v30(v46, a1, v29, v32, v33, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v35);
  outlined destroy of NSObject?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v44(v31, v6);
  return v36;
}

uint64_t PluginAttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  MEMORY[0x1EEE9AC00](AuthTokenRequest);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMd, &_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMR);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v43 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.attachmentLedgerService);
  v46 = *(v10 + 16);
  v46(v13, v15, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v5;
    v22 = v21;
    v55[0] = v21;
    *v20 = 136315138;
    v23 = UUID.uuidString.getter();
    v44 = v2;
    v25 = v24;
    v26 = *(v10 + 8);
    v47 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v26;
    v26(v13, v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v55);
    v2 = v44;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Creating GetAuthToken RPC request, traceID=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v28 = v22;
    v5 = v45;
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v20;
    v15 = v43;
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    v30 = *(v10 + 8);
    v47 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v30;
    v30(v13, v9);
  }

  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(v53, v49, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v31 = v50;
  v32 = AuthTokenRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Just<AttachmentLedger_GetAuthTokenRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMd, &_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMR, MEMORY[0x1E695C008]);
  v33 = v52;
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v51 + 8))(v31, v33);
  v35 = *(v2 + 16);
  v55[0] = 0xD00000000000002FLL;
  v55[1] = 0x80000001AEE37070;
  v46(v5, v15, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v36 = *(*v35 + 272);
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v38 = v15;
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);
  v40 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenResponse);
  v41 = v36(v55, v34, v5, v32, AuthTokenResponse, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v40);

  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v48(v38, v9);
  return v41;
}

uint64_t PluginAttachmentLedgerServiceProvider.updateAttachment(input:)(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMd, &_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMR);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v43 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.attachmentLedgerService);
  v46 = *(v10 + 16);
  v46(v13, v15, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v5;
    v22 = v21;
    v55[0] = v21;
    *v20 = 136315138;
    v23 = UUID.uuidString.getter();
    v44 = v2;
    v25 = v24;
    v26 = *(v10 + 8);
    v47 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v26;
    v26(v13, v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v55);
    v2 = v44;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Creating UpdateAttachment RPC request, traceID=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v28 = v22;
    v5 = v45;
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v20;
    v15 = v43;
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    v30 = *(v10 + 8);
    v47 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = v30;
    v30(v13, v9);
  }

  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(v53, v49, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v31 = v50;
  v32 = updated;
  Just.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Just<AttachmentLedger_UpdateAttachmentRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMd, &_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMR, MEMORY[0x1E695C008]);
  v33 = v52;
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v51 + 8))(v31, v33);
  v35 = *(v2 + 16);
  v55[0] = 0xD000000000000033;
  v55[1] = 0x80000001AEE370A0;
  v46(v5, v15, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  v36 = *(*v35 + 272);
  v37 = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v38 = v15;
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);
  v40 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentResponse);
  v41 = v36(v55, v34, v5, v32, v37, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v40);

  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v48(v38, v9);
  return v41;
}

uint64_t PluginAttachmentLedgerServiceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of Subscribers.Completion<PluginRpcError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PluginRpcError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginRpcError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PluginRpcError(uint64_t a1)
{
  v2 = type metadata accessor for PluginRpcError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized closure #1 in Publisher.sinkOnce(_:onError:)(void **a1, uint64_t a2, void (*a3)(void **))
{
  v3 = *a1;
  if (*a1)
  {
    v6 = *a1;
    v5 = v3;
    if (OneShotCancellationBox.cancel()())
    {
      a3(&v6);
    }
  }
}

uint64_t specialized closure #2 in Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  result = OneShotCancellationBox.cancel()();
  if (result)
  {
    return a3(v8);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in Publisher.sinkOnce(_:onError:)(uint64_t a1)
{
  return specialized closure #2 in Publisher.sinkOnce(_:onError:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v3 = *(v1 + 24);
  result = OneShotCancellationBox.cancel()();
  if (result)
  {
    return v3(a1);
  }

  return result;
}

char *ActivitySessionHostConnection.__allocating_init(connection:queue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[direct field offset for ActivitySessionHostConnection.__isAppProcess];
  *v6 = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  *(v6 + 1) = 0;
  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

uint64_t ActivitySessionHostConnection.isAppProcess.getter()
{
  v1 = (v0 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v6[0] = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier);
  v6[1] = v3;

  v2(&v5, v6);

  return v5;
}

char *specialized XPCHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  v3[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  *&v3[direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks] = MEMORY[0x1E69E7CD0];
  *&v3[direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier] = MEMORY[0x1E69E7CC8];
  v75 = direct field offset for XPCHostConnection.connection;
  *&v3[direct field offset for XPCHostConnection.connection] = a1;
  v7 = direct field offset for XPCHostConnection.queue;
  *&v3[direct field offset for XPCHostConnection.queue] = a2;
  v8 = a1;
  v9 = a2;
  v10 = NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = v8;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Denying connection %@ because it does not have a valid bundle identifier.", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);

LABEL_73:
      v72 = type metadata accessor for UUID();
      (*(*(v72 - 8) + 8))(&v3[v6], v72);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMR);
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_72:

    goto LABEL_73;
  }

  v12 = v10;
  v13 = v11;
  v14 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v14 == 2)
  {
    v15 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = v14;
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v24)
    {
      goto LABEL_15;
    }
  }

  if (v16 != 2 && (v16 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v25)
  {
    goto LABEL_15;
  }

  v66 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v66 == 2)
  {
    if ((v25[1] & 1) == 0)
    {
LABEL_68:

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Log.host);
      v18 = v8;
      v19 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v18;
        *v70 = v18;
        v71 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v68, "Denying connection %@ because it does not have valid entitlements.", v69, 0xCu);
        outlined destroy of NSObject?(v70);
        MEMORY[0x1B27120C0](v70, -1, -1);
        MEMORY[0x1B27120C0](v69, -1, -1);

        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((v66 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_15:
  v26 = &v3[direct field offset for XPCHostConnection.bundleIdentifier];
  *v26 = v12;
  v26[1] = v13;
  v27 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v27 == 2)
  {
    v28 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v28 = v27;
  }

  v29 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
  if (v28 & 1) != 0 || v29 != 2 && (v29)
  {
    v30 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v30 = *v31;
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePublicAPI] = v30;
  v32 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v32 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v32 = *(v33 + 1);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] = v32 & 1;
  v34 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(6);
  if (v34 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v34 = *(v35 + 24);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessAllSessions] = v34 & 1;
  v36 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(7);
  if (v36 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *(v37 + 25);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToForWebFallback] = v36 & 1;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(8);
  if (!v38)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers] = v38;
  v39 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(9);
  if (!v39)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedAccessActivityIdentifiers] = v39;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(10);
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 48);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers] = v40 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToUseGameCenter] = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(12);
  v74 = v9;
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 50);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint] = v42 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction] = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(15) & 1;
  v82.receiver = v3;
  v82.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMR);
  v44 = objc_msgSendSuper2(&v82, sel_init);
  v45 = direct field offset for XPCHostConnection.connection;
  v46 = *&v44[direct field offset for XPCHostConnection.connection];
  v47 = v44;
  [v46 setExportedObject_];
  v48 = one-time initialization token for hostObjectInterface;
  v49 = *&v44[v45];
  if (v48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v49 setExportedInterface_];

  v50 = one-time initialization token for clientObjectInterface;
  v51 = *&v44[v45];
  if (v50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v51 setRemoteObjectInterface_];

  [*&v44[v45] _setQueue_];
  v52 = *&v44[v45];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v81 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_195;
  v54 = _Block_copy(&aBlock);
  v55 = v52;

  [v55 setInterruptionHandler_];
  _Block_release(v54);

  v56 = *&v44[v45];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v81 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_199;
  v58 = _Block_copy(&aBlock);
  v59 = v47;
  v60 = v56;

  [v60 setInvalidationHandler_];
  _Block_release(v58);

  [*&v44[v45] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.host);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v44;
    _os_log_impl(&dword_1AEB26000, v62, v63, "Created %@", v64, 0xCu);
    outlined destroy of NSObject?(v65);
    MEMORY[0x1B27120C0](v65, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);
  }

  else
  {
  }

  return v44;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  v3[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  *&v3[direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks] = MEMORY[0x1E69E7CD0];
  *&v3[direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier] = MEMORY[0x1E69E7CC8];
  v75 = direct field offset for XPCHostConnection.connection;
  *&v3[direct field offset for XPCHostConnection.connection] = a1;
  v7 = direct field offset for XPCHostConnection.queue;
  *&v3[direct field offset for XPCHostConnection.queue] = a2;
  v8 = a1;
  v9 = a2;
  v10 = NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = v8;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Denying connection %@ because it does not have a valid bundle identifier.", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);

LABEL_73:
      v72 = type metadata accessor for UUID();
      (*(*(v72 - 8) + 8))(&v3[v6], v72);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMR);
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_72:

    goto LABEL_73;
  }

  v12 = v10;
  v13 = v11;
  v14 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v14 == 2)
  {
    v15 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = v14;
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v24)
    {
      goto LABEL_15;
    }
  }

  if (v16 != 2 && (v16 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v25)
  {
    goto LABEL_15;
  }

  v66 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v66 == 2)
  {
    if ((v25[1] & 1) == 0)
    {
LABEL_68:

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Log.host);
      v18 = v8;
      v19 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v18;
        *v70 = v18;
        v71 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v68, "Denying connection %@ because it does not have valid entitlements.", v69, 0xCu);
        outlined destroy of NSObject?(v70);
        MEMORY[0x1B27120C0](v70, -1, -1);
        MEMORY[0x1B27120C0](v69, -1, -1);

        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((v66 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_15:
  v26 = &v3[direct field offset for XPCHostConnection.bundleIdentifier];
  *v26 = v12;
  v26[1] = v13;
  v27 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v27 == 2)
  {
    v28 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v28 = v27;
  }

  v29 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
  if (v28 & 1) != 0 || v29 != 2 && (v29)
  {
    v30 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v30 = *v31;
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePublicAPI] = v30;
  v32 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v32 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v32 = *(v33 + 1);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] = v32 & 1;
  v34 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(6);
  if (v34 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v34 = *(v35 + 24);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessAllSessions] = v34 & 1;
  v36 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(7);
  if (v36 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *(v37 + 25);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToForWebFallback] = v36 & 1;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(8);
  if (!v38)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers] = v38;
  v39 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(9);
  if (!v39)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedAccessActivityIdentifiers] = v39;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(10);
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 48);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers] = v40 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToUseGameCenter] = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(12);
  v74 = v9;
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 50);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint] = v42 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction] = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(15) & 1;
  v82.receiver = v3;
  v82.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMR);
  v44 = objc_msgSendSuper2(&v82, sel_init);
  v45 = direct field offset for XPCHostConnection.connection;
  v46 = *&v44[direct field offset for XPCHostConnection.connection];
  v47 = v44;
  [v46 setExportedObject_];
  v48 = one-time initialization token for hostObjectInterface;
  v49 = *&v44[v45];
  if (v48 != -1)
  {
    swift_once();
  }

  [v49 setExportedInterface_];

  v50 = one-time initialization token for clientObjectInterface;
  v51 = *&v44[v45];
  if (v50 != -1)
  {
    swift_once();
  }

  [v51 setRemoteObjectInterface_];

  [*&v44[v45] _setQueue_];
  v52 = *&v44[v45];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v81 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_185;
  v54 = _Block_copy(&aBlock);
  v55 = v52;

  [v55 setInterruptionHandler_];
  _Block_release(v54);

  v56 = *&v44[v45];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v81 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_189_0;
  v58 = _Block_copy(&aBlock);
  v59 = v47;
  v60 = v56;

  [v60 setInvalidationHandler_];
  _Block_release(v58);

  [*&v44[v45] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.host);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v44;
    _os_log_impl(&dword_1AEB26000, v62, v63, "Created %@", v64, 0xCu);
    outlined destroy of NSObject?(v65);
    MEMORY[0x1B27120C0](v65, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);
  }

  else
  {
  }

  return v44;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  v3[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  *&v3[direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks] = MEMORY[0x1E69E7CD0];
  *&v3[direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier] = MEMORY[0x1E69E7CC8];
  v75 = direct field offset for XPCHostConnection.connection;
  *&v3[direct field offset for XPCHostConnection.connection] = a1;
  v7 = direct field offset for XPCHostConnection.queue;
  *&v3[direct field offset for XPCHostConnection.queue] = a2;
  v8 = a1;
  v9 = a2;
  v10 = NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = v8;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Denying connection %@ because it does not have a valid bundle identifier.", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);

LABEL_73:
      v72 = type metadata accessor for UUID();
      (*(*(v72 - 8) + 8))(&v3[v6], v72);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMR);
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_72:

    goto LABEL_73;
  }

  v12 = v10;
  v13 = v11;
  v14 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v14 == 2)
  {
    v15 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = v14;
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v24)
    {
      goto LABEL_15;
    }
  }

  if (v16 != 2 && (v16 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v25)
  {
    goto LABEL_15;
  }

  v66 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v66 == 2)
  {
    if ((v25[1] & 1) == 0)
    {
LABEL_68:

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Log.host);
      v18 = v8;
      v19 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v18;
        *v70 = v18;
        v71 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v68, "Denying connection %@ because it does not have valid entitlements.", v69, 0xCu);
        outlined destroy of NSObject?(v70);
        MEMORY[0x1B27120C0](v70, -1, -1);
        MEMORY[0x1B27120C0](v69, -1, -1);

        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((v66 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_15:
  v26 = &v3[direct field offset for XPCHostConnection.bundleIdentifier];
  *v26 = v12;
  v26[1] = v13;
  v27 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v27 == 2)
  {
    v28 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v28 = v27;
  }

  v29 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
  if (v28 & 1) != 0 || v29 != 2 && (v29)
  {
    v30 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v30 = *v31;
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePublicAPI] = v30;
  v32 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v32 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v32 = *(v33 + 1);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] = v32 & 1;
  v34 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(6);
  if (v34 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v34 = *(v35 + 24);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessAllSessions] = v34 & 1;
  v36 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(7);
  if (v36 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *(v37 + 25);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToForWebFallback] = v36 & 1;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(8);
  if (!v38)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers] = v38;
  v39 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(9);
  if (!v39)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedAccessActivityIdentifiers] = v39;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(10);
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 48);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers] = v40 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToUseGameCenter] = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(12);
  v74 = v9;
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 50);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint] = v42 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction] = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(15) & 1;
  v82.receiver = v3;
  v82.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMR);
  v44 = objc_msgSendSuper2(&v82, sel_init);
  v45 = direct field offset for XPCHostConnection.connection;
  v46 = *&v44[direct field offset for XPCHostConnection.connection];
  v47 = v44;
  [v46 setExportedObject_];
  v48 = one-time initialization token for hostObjectInterface;
  v49 = *&v44[v45];
  if (v48 != -1)
  {
    swift_once();
  }

  [v49 setExportedInterface_];

  v50 = one-time initialization token for clientObjectInterface;
  v51 = *&v44[v45];
  if (v50 != -1)
  {
    swift_once();
  }

  [v51 setRemoteObjectInterface_];

  [*&v44[v45] _setQueue_];
  v52 = *&v44[v45];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v81 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_152;
  v54 = _Block_copy(&aBlock);
  v55 = v52;

  [v55 setInterruptionHandler_];
  _Block_release(v54);

  v56 = *&v44[v45];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v81 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_156;
  v58 = _Block_copy(&aBlock);
  v59 = v47;
  v60 = v56;

  [v60 setInvalidationHandler_];
  _Block_release(v58);

  [*&v44[v45] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.host);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v44;
    _os_log_impl(&dword_1AEB26000, v62, v63, "Created %@", v64, 0xCu);
    outlined destroy of NSObject?(v65);
    MEMORY[0x1B27120C0](v65, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);
  }

  else
  {
  }

  return v44;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  v3[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  *&v3[direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks] = MEMORY[0x1E69E7CD0];
  *&v3[direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier] = MEMORY[0x1E69E7CC8];
  v75 = direct field offset for XPCHostConnection.connection;
  *&v3[direct field offset for XPCHostConnection.connection] = a1;
  v7 = direct field offset for XPCHostConnection.queue;
  *&v3[direct field offset for XPCHostConnection.queue] = a2;
  v8 = a1;
  v9 = a2;
  v10 = NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = v8;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Denying connection %@ because it does not have a valid bundle identifier.", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);

LABEL_73:
      v72 = type metadata accessor for UUID();
      (*(*(v72 - 8) + 8))(&v3[v6], v72);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMR);
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_72:

    goto LABEL_73;
  }

  v12 = v10;
  v13 = v11;
  v14 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v14 == 2)
  {
    v15 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = v14;
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v24)
    {
      goto LABEL_15;
    }
  }

  if (v16 != 2 && (v16 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v25)
  {
    goto LABEL_15;
  }

  v66 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v66 == 2)
  {
    if ((v25[1] & 1) == 0)
    {
LABEL_68:

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Log.host);
      v18 = v8;
      v19 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v18;
        *v70 = v18;
        v71 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v68, "Denying connection %@ because it does not have valid entitlements.", v69, 0xCu);
        outlined destroy of NSObject?(v70);
        MEMORY[0x1B27120C0](v70, -1, -1);
        MEMORY[0x1B27120C0](v69, -1, -1);

        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((v66 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_15:
  v26 = &v3[direct field offset for XPCHostConnection.bundleIdentifier];
  *v26 = v12;
  v26[1] = v13;
  v27 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v27 == 2)
  {
    v28 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v28 = v27;
  }

  v29 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
  if (v28 & 1) != 0 || v29 != 2 && (v29)
  {
    v30 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v30 = *v31;
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePublicAPI] = v30;
  v32 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v32 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v32 = *(v33 + 1);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] = v32 & 1;
  v34 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(6);
  if (v34 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v34 = *(v35 + 24);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessAllSessions] = v34 & 1;
  v36 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(7);
  if (v36 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *(v37 + 25);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToForWebFallback] = v36 & 1;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(8);
  if (!v38)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers] = v38;
  v39 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(9);
  if (!v39)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedAccessActivityIdentifiers] = v39;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(10);
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 48);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers] = v40 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToUseGameCenter] = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(12);
  v74 = v9;
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 50);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint] = v42 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction] = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(15) & 1;
  v82.receiver = v3;
  v82.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMR);
  v44 = objc_msgSendSuper2(&v82, sel_init);
  v45 = direct field offset for XPCHostConnection.connection;
  v46 = *&v44[direct field offset for XPCHostConnection.connection];
  v47 = v44;
  [v46 setExportedObject_];
  v48 = one-time initialization token for hostObjectInterface;
  v49 = *&v44[v45];
  if (v48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v49 setExportedInterface_];

  v50 = one-time initialization token for clientObjectInterface;
  v51 = *&v44[v45];
  if (v50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v51 setRemoteObjectInterface_];

  [*&v44[v45] _setQueue_];
  v52 = *&v44[v45];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v81 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_162;
  v54 = _Block_copy(&aBlock);
  v55 = v52;

  [v55 setInterruptionHandler_];
  _Block_release(v54);

  v56 = *&v44[v45];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v81 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_166_0;
  v58 = _Block_copy(&aBlock);
  v59 = v47;
  v60 = v56;

  [v60 setInvalidationHandler_];
  _Block_release(v58);

  [*&v44[v45] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.host);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v44;
    _os_log_impl(&dword_1AEB26000, v62, v63, "Created %@", v64, 0xCu);
    outlined destroy of NSObject?(v65);
    MEMORY[0x1B27120C0](v65, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);
  }

  else
  {
  }

  return v44;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  v3[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  *&v3[direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks] = MEMORY[0x1E69E7CD0];
  *&v3[direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier] = MEMORY[0x1E69E7CC8];
  v75 = direct field offset for XPCHostConnection.connection;
  *&v3[direct field offset for XPCHostConnection.connection] = a1;
  v7 = direct field offset for XPCHostConnection.queue;
  *&v3[direct field offset for XPCHostConnection.queue] = a2;
  v8 = a1;
  v9 = a2;
  v10 = NSXPCConnection.bundleIdentifier.getter();
  if (!v11)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.host);
    v18 = v8;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Denying connection %@ because it does not have a valid bundle identifier.", v21, 0xCu);
      outlined destroy of NSObject?(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);

LABEL_73:
      v72 = type metadata accessor for UUID();
      (*(*(v72 - 8) + 8))(&v3[v6], v72);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMR);
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_72:

    goto LABEL_73;
  }

  v12 = v10;
  v13 = v11;
  v14 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v14 == 2)
  {
    v15 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = v14;
    v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
    if (v24)
    {
      goto LABEL_15;
    }
  }

  if (v16 != 2 && (v16 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v25)
  {
    goto LABEL_15;
  }

  v66 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v66 == 2)
  {
    if ((v25[1] & 1) == 0)
    {
LABEL_68:

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Log.host);
      v18 = v8;
      v19 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v18;
        *v70 = v18;
        v71 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v68, "Denying connection %@ because it does not have valid entitlements.", v69, 0xCu);
        outlined destroy of NSObject?(v70);
        MEMORY[0x1B27120C0](v70, -1, -1);
        MEMORY[0x1B27120C0](v69, -1, -1);

        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if ((v66 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_15:
  v26 = &v3[direct field offset for XPCHostConnection.bundleIdentifier];
  *v26 = v12;
  v26[1] = v13;
  v27 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(4);
  if (v27 == 2)
  {
    v28 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v28 = v27;
  }

  v29 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(3);
  if (v28 & 1) != 0 || v29 != 2 && (v29)
  {
    v30 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v30 = *v31;
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePublicAPI] = v30;
  v32 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v32 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v32 = *(v33 + 1);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] = v32 & 1;
  v34 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(6);
  if (v34 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v34 = *(v35 + 24);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessAllSessions] = v34 & 1;
  v36 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(7);
  if (v36 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *(v37 + 25);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToForWebFallback] = v36 & 1;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(8);
  if (!v38)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers] = v38;
  v39 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5(9);
  if (!v39)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  *&v3[direct field offset for XPCHostConnection.definedAccessActivityIdentifiers] = v39;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(10);
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 48);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers] = v40 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToUseGameCenter] = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(12);
  v74 = v9;
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 50);
  }

  v3[direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint] = v42 & 1;
  v3[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction] = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(15) & 1;
  v82.receiver = v3;
  v82.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMR);
  v44 = objc_msgSendSuper2(&v82, sel_init);
  v45 = direct field offset for XPCHostConnection.connection;
  v46 = *&v44[direct field offset for XPCHostConnection.connection];
  v47 = v44;
  [v46 setExportedObject_];
  v48 = one-time initialization token for hostObjectInterface;
  v49 = *&v44[v45];
  if (v48 != -1)
  {
    swift_once();
  }

  [v49 setExportedInterface_];

  v50 = one-time initialization token for clientObjectInterface;
  v51 = *&v44[v45];
  if (v50 != -1)
  {
    swift_once();
  }

  [v51 setRemoteObjectInterface_];

  [*&v44[v45] _setQueue_];
  v52 = *&v44[v45];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v81 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_142;
  v54 = _Block_copy(&aBlock);
  v55 = v52;

  [v55 setInterruptionHandler_];
  _Block_release(v54);

  v56 = *&v44[v45];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v81 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v79 = &block_descriptor_146_0;
  v58 = _Block_copy(&aBlock);
  v59 = v47;
  v60 = v56;

  [v60 setInvalidationHandler_];
  _Block_release(v58);

  [*&v44[v45] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.host);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v59;
    *v65 = v44;
    _os_log_impl(&dword_1AEB26000, v62, v63, "Created %@", v64, 0xCu);
    outlined destroy of NSObject?(v65);
    MEMORY[0x1B27120C0](v65, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);
  }

  else
  {
  }

  return v44;
}

void specialized closure #1 in XPCHostConnection.init(connection:queue:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.host);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v2;
      v9 = v4;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Connection interrupted for host connection: %@", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    [*&v4[direct field offset for XPCHostConnection.connection] invalidate];
  }
}

void specialized closure #2 in XPCHostConnection.init(connection:queue:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.host);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v2;
      *(v7 + 12) = 2112;
      v9 = *(v4 + direct field offset for XPCHostConnection.queue);
      *(v7 + 14) = v9;
      v8[1] = v9;
      v10 = v4;
      v11 = v9;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Connection invalidated for host connection: %@ on queue = %@", v7, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x140))();
  }
}

void ActivitySessionHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ActivitySessionHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for ActivitySessionHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ActivitySessionHostConnection.delegate.modify;
}

void ActivitySessionHostConnection.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall ActivitySessionHostConnection.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1AEB26000, v3, v4, "activitySessionHostConnectionInvalidated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong resetSession];
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v11 = [v10 sharePlayCanEndWhenInitiatorLeaves];

  if (v11)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      (*((*MEMORY[0x1E69E7D40] & *v12) + 0x4A0))();
    }
  }
}

uint64_t (*ActivitySessionHostConnection._isAppProcess.getter())(uint64_t a1, uint64_t a2)
{
  v1 = (v0 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool);
}

void specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  *a2 = 1;
}

uint64_t key path setter for ActivitySessionHostConnection._isAppProcess : ActivitySessionHostConnection(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  specialized ActivitySessionHostConnection._isAppProcess.setter(thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool)partial apply, v3);
}

uint64_t ActivitySessionHostConnection._isAppProcess.setter(uint64_t a1, uint64_t a2)
{
  specialized ActivitySessionHostConnection._isAppProcess.setter(a1, a2);
}

void (*ActivitySessionHostConnection._isAppProcess.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for ActivitySessionHostConnection.__isAppProcess;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v4 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool)partial apply;
  *(v4 + 32) = v9;

  return ActivitySessionHostConnection._isAppProcess.modify;
}

void ActivitySessionHostConnection._isAppProcess.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v4;

    v12 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v13 = NSClassFromString(v12);

    if (v13 || (v14 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v15 = NSClassFromString(v14), v14, v15))
    {
      v16 = (v2[5] + v2[6]);
      *v16 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)partial apply;
      v16[1] = v11;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (!v7)
  {
    v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v9 = NSClassFromString(v8);

    if (!v9)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v10 = (v2[5] + v2[6]);
  *v10 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  v10[1] = v5;

LABEL_8:
  swift_endAccess();

  free(v2);
}

char *ActivitySessionHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = (v2 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  *v5 = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  v5[1] = 0;

  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

uint64_t ActivitySessionHostConnection.__ivar_destroyer()
{
  MEMORY[0x1B27121C0](v0 + direct field offset for ActivitySessionHostConnection.delegate);
}

id ActivitySessionHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ActivitySessionHostConnection.__ivar_destroyer(uint64_t a1)
{
  MEMORY[0x1B27121C0](a1 + direct field offset for ActivitySessionHostConnection.delegate);
}

uint64_t ActivitySessionHostConnection.join(audioSessionID:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:)(void *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ request to join", v12, 0xCu);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x430))(0x100000000, a3, a4);
  }

  else
  {
    lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:)();
    v17 = swift_allocError();
    *v18 = 1;
    swift_willThrow();
    v19 = v17;
    a3(0, v17);
  }
}

uint64_t ActivitySessionHostConnection.leave(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.leave(completion:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20_0;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in ActivitySessionHostConnection.leave(completion:)(void *a1, uint64_t (*a2)(void))
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ request to leave", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x438))();
  }

  return a2(0);
}

void closure #1 in ActivitySessionHostConnection.end()(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1AEB26000, v4, v5, "activitySessionHostConnection %@ request to end", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  }
}

void closure #1 in ActivitySessionHostConnection.postEvent(event:)(void *a1, void *a2)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v5;
    v10[1] = v6;
    v11 = v5;
    v12 = v6;
    _os_log_impl(&dword_1AEB26000, v7, v8, "activitySessionHostConnection: %@ postEvent: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  if (*&v6[OBJC_IVAR___CPActivitySessionEvent_type] == 99)
  {
    v13 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
    if (v13 == 2)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v14 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      if ((*(v14 + 1) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v13 & 1) == 0)
    {
LABEL_10:
      v15 = v5;
      v16 = v6;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412546;
        *(v19 + 4) = v15;
        *(v19 + 12) = 2112;
        *(v19 + 14) = v16;
        *v20 = v15;
        v20[1] = v16;
        v21 = v15;
        v22 = v16;
        _os_log_impl(&dword_1AEB26000, v17, v18, "activitySessionHostConnection: %@ is not entitled to post event %@", v19, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v20, -1, -1);
        MEMORY[0x1B27120C0](v19, -1, -1);
      }

      goto LABEL_15;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  (*((*MEMORY[0x1E69E7D40] & Strong->isa) + 0x458))(v6);
LABEL_15:
}

uint64_t ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_38;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void closure #1 in ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v18);
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ logAttachmentEvent: %s", v12, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))(a4, a2, a3);
  }
}

Swift::Void __swiftcall ActivitySessionHostConnection.requestEncryptionKeys(for:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = rawValue;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.requestEncryptionKeys(for:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v12 = _Block_copy(aBlock);

  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v14[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void closure #1 in ActivitySessionHostConnection.requestEncryptionKeys(for:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);

  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    if (a2)
    {
      v12 = MEMORY[0x1B2710180](a2, MEMORY[0x1E69E76D8]);
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ requestEncryptionKeys participants: %s", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x460))(a2);
  }
}

uint64_t ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50_1;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v8);
  if (one-time initialization token for host == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.host);
    v10 = a1;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v72 = a3;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock = v70;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2080;
      type metadata accessor for ParticipantTranslationRequest();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest, MEMORY[0x1E69E81B8]);
      v15 = a4;
      v16 = v10;
      v17 = Set.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &aBlock);

      *(v13 + 14) = v19;
      a4 = v15;
      _os_log_impl(&dword_1AEB26000, v11, v12, "[Translation] activitySessionHostConnection: %@ translationRequests: %s", v13, 0x16u);
      outlined destroy of NSObject?(v14);
      MEMORY[0x1B27120C0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x1B27120C0](v70, -1, -1);
      v20 = v13;
      a3 = v72;
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v21 = [objc_allocWithZone(CPFeatureFlags) init];
    v22 = [v21 gameCenterFastSyncTransport];

    if (v22)
    {
      v22 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    }

    v23 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
    if (v23 == 2)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v24 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      v23 = *(v24 + 1);
    }

    v25 = v23 | v22;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = v10;
      v28 = Strong;
      v29 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x3D8))(Strong);
      v31 = v30;

      if (v29)
      {
        ObjectType = swift_getObjectType();
        v33 = (*(v31 + 40))(ObjectType, v31);
        swift_unknownObjectRelease();
        LODWORD(v29) = [v33 nearbyFaceTimeEnabled];
        swift_unknownObjectRelease();
      }

      v10 = v27;
      if (((v25 | v29) & 1) == 0)
      {
LABEL_18:
        v42 = v10;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          *(v45 + 4) = v42;
          *v46 = v42;
          v47 = v42;
          v48 = "[Translation] activitySessionHostConnection: Skipping translation. %@ is not allowed to request translated participants.";
          goto LABEL_22;
        }

LABEL_23:

        if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore30ParticipantTranslationResponseC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v51 = v65;
        }

        else
        {
          v51 = MEMORY[0x1E69E7CD0];
        }

        a3(v51);

        return;
      }
    }

    else
    {
      LOBYTE(v29) = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v67 = v29;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      v49 = v10;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v49;
        *v46 = v49;
        v50 = v49;
        v48 = "[Translation] activitySessionHostConnection: %@ No session exists";
LABEL_22:
        _os_log_impl(&dword_1AEB26000, v43, v44, v48, v45, 0xCu);
        outlined destroy of NSObject?(v46);
        MEMORY[0x1B27120C0](v46, -1, -1);
        MEMORY[0x1B27120C0](v45, -1, -1);
      }

      goto LABEL_23;
    }

    v35 = v34;
    v71 = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShy14CopresenceCore30ParticipantTranslationResponseCGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShy14CopresenceCore30ParticipantTranslationResponseCGSo16os_unfair_lock_sVGMR);
    v36 = swift_allocObject();
    *(v36 + 24) = 0;
    *(v36 + 16) = MEMORY[0x1E69E7CD0];
    v37 = swift_allocObject();
    v37[2] = a2;
    v37[3] = v36;
    v37[4] = a3;
    v37[5] = a4;
    v82 = partial apply for closure #1 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:);
    v83 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v81 = &block_descriptor_172;
    _Block_copy(&aBlock);
    v77 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    v69 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    v73 = v35;
    v68 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x480))(v38);
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ParticipantTranslationRequest();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      a2 = aBlock;
      v39 = v79;
      a1 = v80;
      v40 = v81;
      v41 = v82;
    }

    else
    {
      v52 = -1 << *(a2 + 32);
      v39 = a2 + 56;
      a1 = ~v52;
      v53 = -v52;
      v54 = v53 < 64 ? ~(-1 << v53) : -1;
      v41 = v54 & *(a2 + 56);

      v40 = 0;
    }

    v55 = (a1 + 64) >> 6;
    v66 = v25 & 1;
    v74 = a2;
    if (a2 < 0)
    {
      break;
    }

    while (1)
    {
      v59 = v40;
      v60 = v41;
      v57 = v40;
      if (!v41)
      {
        break;
      }

LABEL_38:
      v58 = (v60 - 1) & v60;
      v56 = *(*(a2 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v60)))));
      if (!v56)
      {
        goto LABEL_41;
      }

LABEL_39:
      dispatch_group_enter(v71);
      v75 = *&v56[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier];
      v61 = swift_allocObject();
      v76 = v58;
      a4 = v73;
      *(v61 + 16) = v71;
      *(v61 + 24) = v67;
      *(v61 + 32) = v56;
      *(v61 + 40) = v68;
      *(v61 + 48) = v66;
      *(v61 + 56) = v69;
      a3 = *((*MEMORY[0x1E69E7D40] & *v73) + 0x478);

      v62 = v71;
      v63 = v56;
      v64 = v68;
      a1 = v73;
      (a3)(v75, 0, partial apply for closure #1 in closure #2 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:), v61);

      a2 = v74;

      v40 = v57;
      v41 = v76;
      if (v74 < 0)
      {
        goto LABEL_31;
      }
    }

    while (1)
    {
      v57 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        goto LABEL_41;
      }

      v60 = *(v39 + 8 * v57);
      ++v59;
      if (v60)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

LABEL_31:
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for ParticipantTranslationRequest();
    swift_dynamicCast();
    v56 = v77;
    v57 = v40;
    v58 = v41;
    if (v77)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  outlined consume of Set<String>.Iterator._Variant(a2);
  OS_dispatch_group.notify(queue:work:)();
}

uint64_t closure #1 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ParticipantTranslationRequest();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest, MEMORY[0x1E69E81B8]);
    v10 = Set.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[Translation] Retrieved all translations for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  os_unfair_lock_lock((a2 + 24));
  v13 = *(a2 + 16);

  os_unfair_lock_unlock((a2 + 24));
  a3(v13);
}

void closure #1 in closure #2 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(void *a1, NSObject *a2, char a3, uint64_t a4, void *a5, char a6, os_unfair_lock_s *a7)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((*(a4 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant) & 1) == 0)
  {
    if (a5)
    {
      v10 = a6;
      v11 = a1;
      v12 = a4;
      v13 = a5;
      if ([v13 type] == 1 && (v14 = objc_msgSend(v11, sel_cluster)) != 0)
      {
        v15 = v14;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantCluster, 0x1E69D8B98);
        v9 = static NSObject.== infix(_:_:)();

        v13 = v15;
      }

      else
      {
        v9 = 0;
      }

      a4 = v12;
      a1 = v11;
      a6 = v10;
      if (v11)
      {
        goto LABEL_11;
      }

LABEL_4:
      if ((a6 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_10:
    v9 = 0;
    if (a1)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v9 = 1;
  if (!a1)
  {
    goto LABEL_4;
  }

LABEL_11:
  if ((a6 & 1) == 0)
  {
LABEL_16:
    v33 = *(a4 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
    v34 = type metadata accessor for ParticipantTranslationResponse();
    v35 = objc_allocWithZone(v34);
    *&v35[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v33;
    v36 = &v35[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
    *v36 = 0;
    v36[8] = 1;
    v37 = &v35[OBJC_IVAR___CPParticipantTranslation_handle];
    *v37 = 0;
    v37[1] = 0;
    v38 = &v35[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
    *v38 = 0;
    v38[1] = 0;
    v35[OBJC_IVAR___CPParticipantTranslation_isNearby] = v9 & 1;
    v48.receiver = v35;
    v48.super_class = v34;
    v32 = objc_msgSendSuper2(&v48, sel_init);
    goto LABEL_18;
  }

  if (*(a4 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified) != 1)
  {
LABEL_17:
    v39 = *(a4 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
    v40 = type metadata accessor for ParticipantTranslationResponse();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v39;
    v42 = &v41[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
    *v42 = 0;
    v42[8] = 1;
    v43 = &v41[OBJC_IVAR___CPParticipantTranslation_handle];
    *v43 = 0;
    v43[1] = 0;
    v44 = &v41[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
    *v44 = 0;
    v44[1] = 0;
    v41[OBJC_IVAR___CPParticipantTranslation_isNearby] = v9 & 1;
    v47.receiver = v41;
    v47.super_class = v40;
    v32 = objc_msgSendSuper2(&v47, sel_init);
    goto LABEL_18;
  }

  v16 = a4;
  v17 = a1;
  v18 = [v17 handle];
  v19 = [v18 normalizedValue];

  if (!v19)
  {
    v20 = [v17 handle];
    v19 = [v20 value];
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = *(v16 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
  v25 = [v17 identifier];
  v26 = type metadata accessor for ParticipantTranslationResponse();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v24;
  v28 = &v27[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
  *v28 = v25;
  v28[8] = 0;
  v29 = &v27[OBJC_IVAR___CPParticipantTranslation_handle];
  *v29 = v21;
  v29[1] = v23;
  v30 = &v27[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v27[OBJC_IVAR___CPParticipantTranslation_isNearby] = v9 & 1;
  v46.receiver = v27;
  v46.super_class = v26;
  v31 = objc_msgSendSuper2(&v46, sel_init);

  v32 = v31;
LABEL_18:
  v45 = MEMORY[0x1EEE9AC00](v32);
  os_unfair_lock_lock(a7 + 6);
  partial apply for closure #1 in closure #1 in closure #2 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)();
  os_unfair_lock_unlock(a7 + 6);

  dispatch_group_leave(a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSSet) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ParticipantTranslationResponse();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, type metadata accessor for ParticipantTranslationResponse, MEMORY[0x1E69E81B8]);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t ActivitySessionHostConnection.postEvent(event:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v21);
}

void closure #1 in ActivitySessionHostConnection.updateActivity(activity:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v9;
    v14[1] = v10;
    v15 = v9;
    v16 = v10;
    _os_log_impl(&dword_1AEB26000, v11, v12, "activitySessionHostConnection: %@ updateActivity %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  v17 = [objc_opt_self() sharedInstance];
  if (!v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  v19 = [v17 currentServerTimeDate];

  if (!v19)
  {
LABEL_26:
    __break(1u);
    return;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v10 setTimestamp_];

  v21 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v21 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    if ((*(v22 + 1) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v23 = [v10 bundleIdentifier];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v21)
  {
    goto LABEL_13;
  }

LABEL_14:
  v24 = NSXPCConnection.bundleIdentifier.getter();
  if (v25)
  {
    v23 = MEMORY[0x1B270FF70](v24);
  }

  else
  {
    v23 = 0;
  }

  [v10 setBundleIdentifier_];
LABEL_18:

  v26 = [v10 sanitizedCopy];
  if (v26)
  {
    v27 = v26;
    [v26 setTrustedFromHandle_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      ActivitySession.updateActivity(_:)(v27);
    }
  }

  else
  {
    v30 = v10;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136315138;
      v40[3] = v30;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v35 = v30;
      v36 = String.init<A>(reflecting:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v40);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1AEB26000, v31, v32, "Dropping activity session update due to invalid activity: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B27120C0](v34, -1, -1);
      MEMORY[0x1B27120C0](v33, -1, -1);
    }
  }
}

void closure #1 in ActivitySessionHostConnection.updateParticipantsInfo(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x420))(a2);
  }
}

uint64_t ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68_1;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void closure #1 in ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ got request to present session dismissal alert", v12, 0xCu);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x488))(*&v9[direct field offset for XPCHostConnection.bundleIdentifier], *&v9[direct field offset for XPCHostConnection.bundleIdentifier + 8], a2 & 1, a3, a4);
  }
}

uint64_t ActivitySessionHostConnection.end()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  static DispatchQoS.unspecified.getter();
  v18[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

void closure #1 in ActivitySessionHostConnection.requestForegroundPresentation()(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1AEB26000, v4, v5, "activitySessionHostConnection: %@ got request to present in foreground", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4F8))();
  }
}

uint64_t ActivitySessionHostConnection.updateParticipantsInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v4;

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

void closure #1 in ActivitySessionHostConnection.setGroupActivityAssociations(_:)(void *a1, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v42 = v5;
    v40 = v15;
    v44[0] = v15;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v14 = v9;
    *(v12 + 12) = 2080;
    v16 = type metadata accessor for GroupActivityAssociation();
    v17 = v9;
    v18 = MEMORY[0x1B2710180](a2._rawValue, v16);
    rawValue = a2._rawValue;
    v21 = v8;
    v22 = v4;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v44);

    *(v12 + 14) = v23;
    v4 = v22;
    v8 = v21;
    a2._rawValue = rawValue;
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ setGroupActivityAssociations: %s", v12, 0x16u);
    outlined destroy of NSObject?(v14);
    v24 = v14;
    v7 = v41;
    MEMORY[0x1B27120C0](v24, -1, -1);
    v25 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v5 = v42;
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = *(Strong + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
    if (v28)
    {
      v29 = v28;
      ActivitySession.SceneAssociationCoordinator.setGroupActivityAssociations(_:)(a2);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, static Log.default);
      v30 = v27;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v43 = v34;
        *v33 = 136315138;
        (*(v5 + 16))(v7, v30 + OBJC_IVAR___CPActivitySession_id, v4);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v5 + 8))(v7, v4);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v43);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_1AEB26000, v31, v32, "Attempted to set group activity associations on activity %s that does not have a scene association coordinator", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1B27120C0](v34, -1, -1);
        MEMORY[0x1B27120C0](v33, -1, -1);
      }
    }
  }
}

uint64_t @objc ActivitySessionHostConnection.updateParticipantsInfo(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  a5(v7);
}

uint64_t ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v6[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v17[7] = a3;
  v18 = v23;
  v17[8] = v23;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_86;
  v19 = _Block_copy(aBlock);
  v20 = v6;
  v21 = a1;

  outlined copy of Data._Representation(a3, v18);
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v14, v19);
  _Block_release(v19);
  (*(v27 + 8))(v14, v12);
  (*(v24 + 8))(v16, v26);
}

void closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a5;
  v13 = type metadata accessor for URL();
  isa = v13[-1].isa;
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Log.host);
  v18 = a1;
  v55 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = a7;
    v53 = a6;
    v22 = a3;
    v23 = v21;
    v24 = a2;
    v25 = a4;
    v26 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v26 = v18;
    v27 = v18;
    _os_log_impl(&dword_1AEB26000, v19, v20, "activitySessionHostConnection: %@ got request to send resource", v23, 0xCu);
    outlined destroy of NSObject?(v26);
    v28 = v26;
    a4 = v25;
    a2 = v24;
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v23;
    a3 = v22;
    a7 = v52;
    a6 = v53;
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  v30 = [objc_allocWithZone(CPFeatureFlags) init];
  v31 = [v30 sharePlayInFaceTimeCanvasEnabled];

  if (v31)
  {
    v32 = *&v18[direct field offset for XPCHostConnection.connection];
    v33 = [a2 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    (*(isa + 1))(v15, v57);
    LODWORD(v32) = [v32 cp:v36 clientSandboxCanAccessFileURL:?];

    if (v32)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v38 = Strong;
        ActivitySession.sendResource(atURL:to:metadata:completion:)(a2, v54, a6, a7, a3, a4);
      }
    }

    else
    {
      v42 = v18;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = a3;
        v47 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v47 = v42;
        v48 = v42;
        _os_log_impl(&dword_1AEB26000, v43, v44, "activitySessionHostConnection: %@ client attempted to send a resource it does not have access to", v45, 0xCu);
        outlined destroy of NSObject?(v47);
        v49 = v47;
        a3 = v46;
        MEMORY[0x1B27120C0](v49, -1, -1);
        MEMORY[0x1B27120C0](v45, -1, -1);
      }

      lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)();
      v50 = swift_allocError();
      a3();
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, static Log.default);
    v57 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1AEB26000, v57, v39, "Not allowing resource send due to FeatureFlag being disabled.", v40, 2u);
      MEMORY[0x1B27120C0](v40, -1, -1);
    }

    v41 = v57;
  }
}

uint64_t ActivitySessionHostConnection.requestEndpoint(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[direct field offset for XPCHostConnection.queue];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.requestEndpoint(with:completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_92_0;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void closure #1 in ActivitySessionHostConnection.requestEndpoint(with:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v20);
    _os_log_impl(&dword_1AEB26000, v12, v13, "activitySessionHostConnection: %@ got request for endpoint with identifier %s", v14, 0x16u);
    outlined destroy of NSObject?(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    ActivitySession.requestEndpoint(with:completion:)(a2, a3, a4, a5);
  }
}

Swift::Void __swiftcall ActivitySessionHostConnection.updateCapabilities(capabilities:)(Swift::Int capabilities)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = capabilities;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.updateCapabilities(capabilities:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_98_0;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v14[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void closure #1 in ActivitySessionHostConnection.updateCapabilities(capabilities:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ got request to update capabilities to: %ld", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = a2;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C8))(&v13);
  }
}

void closure #1 in ActivitySessionHostConnection.addAnalyticsReport(_:)(void *a1, Swift::OpaquePointer a2)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    v12 = Dictionary.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v21);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ got request to add report dictionary: %s", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v15 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(5);
  if (v15 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v16 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    if ((*(v16 + 1) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v15 & 1) == 0)
  {
LABEL_9:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Missing entitlement to call addAnalyticsReport(_:) API", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  ActivitySession.addAnalyticsReport(_:)(a2);
LABEL_14:
}

void specialized ActivitySessionHostConnection._isAppProcess.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = (v2 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();

  v7 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v8 = NSClassFromString(v7);

  if (v8 || (v9 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v10 = NSClassFromString(v9), v9, v10))
  {
    *v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)partial apply;
    v6[1] = v5;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_40Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t type metadata accessor for ActivitySessionHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivitySessionHostConnection;
  if (!type metadata singleton initialization cache for ActivitySessionHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)()
{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:)()
{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:));
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t DG_Datagram.sequenceNumber.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for DG_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v8 + 28), v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    *v7 = 0;
    v7[1] = 0;
    UnknownStorage.init()();
    if (v9(v3, 1, v4) != 1)
    {
      outlined destroy of NSObject?(v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v3, v7, type metadata accessor for DG_SequenceNumber);
  }

  v10 = v7[1];
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v7, type metadata accessor for DG_SequenceNumber);
  return v10;
}

uint64_t DG_Datagram.senderParticipantID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for DG_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v8 + 28), v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    *v7 = 0;
    v7[1] = 0;
    UnknownStorage.init()();
    if (v9(v3, 1, v4) != 1)
    {
      outlined destroy of NSObject?(v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v3, v7, type metadata accessor for DG_SequenceNumber);
  }

  v10 = *v7;
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v7, type metadata accessor for DG_SequenceNumber);
  return v10;
}

uint64_t DG_Datagram.encryptionIDBytes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for DG_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v8 + 32), v3, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    *v7 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v9(v3, 1, v4) != 1)
    {
      outlined destroy of NSObject?(v3, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v3, v7, type metadata accessor for DG_EncryptionID);
  }

  v10 = *v7;
  outlined copy of Data._Representation(*v7, *(v7 + 1));
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v7, type metadata accessor for DG_EncryptionID);
  return v10;
}

uint64_t protocol witness for AnyRawIngressDatagram.sequenceNumber.getter in conformance DG_Datagram(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for DG_SequenceNumber(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(a1 + 28), v5, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    *v9 = 0;
    v9[1] = 0;
    UnknownStorage.init()();
    if (v10(v5, 1, v6) != 1)
    {
      outlined destroy of NSObject?(v5, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v5, v9, type metadata accessor for DG_SequenceNumber);
  }

  v11 = v9[1];
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v9, type metadata accessor for DG_SequenceNumber);
  return v11;
}

uint64_t protocol witness for AnyRawIngressDatagram.senderParticipantID.getter in conformance DG_Datagram(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for DG_SequenceNumber(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(a1 + 28), v5, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    *v9 = 0;
    v9[1] = 0;
    UnknownStorage.init()();
    if (v10(v5, 1, v6) != 1)
    {
      outlined destroy of NSObject?(v5, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v5, v9, type metadata accessor for DG_SequenceNumber);
  }

  v11 = *v9;
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v9, type metadata accessor for DG_SequenceNumber);
  return v11;
}

uint64_t protocol witness for AnyRawIngressDatagram.encryptionIDBytes.getter in conformance DG_Datagram(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for DG_EncryptionID(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(a1 + 32), v5, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    *v9 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v10(v5, 1, v6) != 1)
    {
      outlined destroy of NSObject?(v5, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v5, v9, type metadata accessor for DG_EncryptionID);
  }

  v11 = *v9;
  outlined copy of Data._Representation(*v9, *(v9 + 1));
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v9, type metadata accessor for DG_EncryptionID);
  return v11;
}

void *DatagramClient.ChannelDefinition.Multicast.unsafeMutableAddressor()
{
  if (one-time initialization token for Multicast != -1)
  {
    swift_once();
  }

  return &static DatagramClient.ChannelDefinition.Multicast;
}

uint64_t DatagramClient.unreliableChannel(topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v57 = a4;
  v50 = a3;
  v55 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMR);
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMR);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v42 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  UUID.init()();
  if (one-time initialization token for unreliableMessenger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.unreliableMessenger);
  v18 = *(v11 + 16);
  v53 = v16;
  v18(v14, v16, v10);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v46 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v59 = v23;
    *v22 = 136315138;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v27 = *(v11 + 8);
    v43 = v6;
    v44 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v27;
    v27(v14, v10);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v59);
    v6 = v43;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Creating unreliable-channel stream traceId=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {

    v29 = *(v11 + 8);
    v44 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v29;
    v29(v14, v10);
  }

  v59 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  v30 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AnyRawEgressDatagram, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMR, MEMORY[0x1E695BED8]);
  v31 = v51;
  Publisher.map<A>(_:)();
  v32 = MEMORY[0x1E695BD60];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AnyRawEgressDatagram, Never>, EgressMessage<DG_Datagram>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMR, MEMORY[0x1E695BD60]);
  Publisher.eraseToAnyPublisher()();
  (*(v52 + 8))(v31, v6);
  v33 = v54;
  v34 = v46;
  (*(v11 + 56))(v54, 1, 1, v46);
  v35 = *(*v47 + 224);
  type metadata accessor for DG_Datagram(0);
  v41 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram();
  v36 = v35(v41, v55);

  outlined destroy of NSObject?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v59 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21AnyRawIngressDatagram_pMd, &_s14CopresenceCore21AnyRawIngressDatagram_pMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<DG_Datagram, DatagramChannelError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMR, v30);
  v37 = v58;
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<DG_Datagram, DatagramChannelError>, AnyRawIngressDatagram> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMR, v32);
  v38 = v49;
  v39 = Publisher.eraseToAnyPublisher()();
  (*(v48 + 8))(v37, v38);
  v45(v53, v34);
  return v39;
}

uint64_t closure #1 in DatagramClient.unreliableChannel(topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1)
{
  outlined init with copy of UserNotificationCenter(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20AnyRawEgressDatagram_pMd, &_s14CopresenceCore20AnyRawEgressDatagram_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  return swift_dynamicCast();
}

uint64_t closure #2 in DatagramClient.unreliableChannel(topic:input:inputBufferMaxQueueSize:traceId:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for DG_Datagram(0);
  a2[4] = &protocol witness table for DG_Datagram;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return outlined init with copy of DG_Datagram(a1, boxed_opaque_existential_1);
}

uint64_t _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CopresenceCore17DG_SequenceNumberVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram()
{
  result = lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram;
  if (!lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram)
  {
    type metadata accessor for DG_Datagram(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram);
  }

  return result;
}

uint64_t outlined init with copy of DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_Datagram(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t Log.sceneAssociation.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t one-time initialization function for attachmentLedgerService()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerService);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerService);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for unreliableMessenger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.unreliableMessenger);
  __swift_project_value_buffer(v0, static Log.unreliableMessenger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.runtimeIssues);
  __swift_project_value_buffer(v0, static Log.runtimeIssues);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for suspensionController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.suspensionController);
  __swift_project_value_buffer(v0, static Log.suspensionController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachmentLedgerTopic()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerTopic);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerTopic);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachment()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachment);
  __swift_project_value_buffer(v0, static Log.attachment);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for applicationManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.applicationManager);
  __swift_project_value_buffer(v0, static Log.applicationManager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for sceneAssociation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.sceneAssociation);
  __swift_project_value_buffer(v0, static Log.sceneAssociation);
  return Logger.init(subsystem:category:)();
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

CopresenceCore::Entitlement_optional __swiftcall Entitlement.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Entitlement.init(rawValue:), v3);

  v7 = 16;
  if (v5 < 0x10)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Entitlement()
{
  v0 = Entitlement.rawValue.getter();
  v2 = v1;
  if (v0 == Entitlement.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type Entitlement and conformance Entitlement()
{
  result = lazy protocol witness table cache variable for type Entitlement and conformance Entitlement;
  if (!lazy protocol witness table cache variable for type Entitlement and conformance Entitlement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entitlement and conformance Entitlement);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Entitlement()
{
  Hasher.init(_seed:)();
  Entitlement.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Entitlement(uint64_t a1)
{
  Entitlement.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entitlement(uint64_t a1)
{
  Hasher.init(_seed:)();
  Entitlement.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Entitlement@<X0>(unint64_t *a1@<X8>)
{
  result = Entitlement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static PresenceSessionInterface.identity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PresenceSessionInterface.identity;
  return result;
}

uint64_t static PresenceSessionInterface.identity.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PresenceSessionInterface.identity = v1;
  return result;
}

id closure #1 in variable initialization expression of static PresenceSessionInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateMembers_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t (*static PresenceSessionInterface.hostObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

id closure #1 in variable initialization expression of static PresenceSessionInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(inited + 40) = type metadata accessor for PresenceSessionParticipant();
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updatePresentDevicesWithDevices_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t (*static PresenceSessionInterface.clientObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.terminatingHandle.modify;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance PresenceSessionInterface@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PresenceSessionInterface.identity;
  return result;
}

void PresenceSessionHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*PresenceSessionHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for PresenceSessionHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ActivitySessionHostConnection.delegate.modify;
}

Swift::Void __swiftcall PresenceSessionHostConnection.handleHostConnectionInvalidated()()
{
  swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20[-1] - v2;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v8 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "%s handleHostConnectionInvalidated: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in PresenceHostSession.resetSession(), v18);
  }
}

char *PresenceSessionHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = (v2 + direct field offset for PresenceSessionHostConnection.abcReporter);
  v6 = type metadata accessor for ABCReporter();
  v7 = swift_allocObject();
  v7[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v7[3] = 0x636E795374736146;
  v7[4] = 0xE800000000000000;
  v7[5] = 0x65636E6573657250;
  v7[6] = 0xEF6E6F6973736553;
  v5[3] = v6;
  v5[4] = &protocol witness table for ABCReporter;
  *v5 = v7;

  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

id PresenceSessionHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int PresenceSessionHostConnection.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1 & 1);
  return Hasher._finalize()();
}

void closure #1 in PresenceSessionHostConnection.join(completion:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1AEB26000, v11, v12, "PresenceSessionHostConnection: %@ request to join", v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = type metadata accessor for TaskPriority();
    v19 = *(*(v18 - 8) + 56);
    v19(v8, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v17;
    v20[5] = a2;
    v20[6] = a3;
    v29 = v17;

    v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:), v20);
    v22 = direct field offset for PresenceSessionHostConnection.abcReporter;
    v23 = *&v10[direct field offset for XPCHostConnection.bundleIdentifier];
    v24 = *&v10[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v19(v8, 1, 1, v18);
    outlined init with copy of UserNotificationCenter(&v10[v22], v30);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v21;
    v25[5] = 0xD000000000000011;
    v25[6] = 0x80000001AEE37310;
    v25[7] = v23;
    v25[8] = v24;
    outlined init with take of ContiguousBytes(v30, (v25 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v25);

    outlined destroy of NSObject?(v8, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
    v26 = swift_allocError();
    *v27 = 0;
    swift_willThrow();
    v28 = v26;
    a2(v26);
  }
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:);

  return PresenceHostSession.join()();
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:);
  }

  else
  {
    v2 = closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t PresenceSessionHostConnection.join(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[direct field offset for XPCHostConnection.queue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);
  v18 = v5;

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void closure #1 in PresenceSessionHostConnection.leave(completion:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1AEB26000, v11, v12, "PresenceSessionHostConnection: %@ request to leave", v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = type metadata accessor for TaskPriority();
    v19 = *(*(v18 - 8) + 56);
    v19(v8, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v17;
    v20[5] = a2;
    v20[6] = a3;
    v29 = v17;

    v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:), v20);
    v22 = direct field offset for PresenceSessionHostConnection.abcReporter;
    v23 = *&v10[direct field offset for XPCHostConnection.bundleIdentifier];
    v24 = *&v10[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v19(v8, 1, 1, v18);
    outlined init with copy of UserNotificationCenter(&v10[v22], v30);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v21;
    v25[5] = 0xD000000000000012;
    v25[6] = 0x80000001AEE372F0;
    v25[7] = v23;
    v25[8] = v24;
    outlined init with take of ContiguousBytes(v30, (v25 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v25);

    outlined destroy of NSObject?(v8, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
    v26 = swift_allocError();
    *v27 = 0;
    swift_willThrow();
    v28 = v26;
    a2(v26);
  }
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:);

  return PresenceHostSession.leave()();
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:);
  }

  else
  {
    v2 = closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t @objc PresenceSessionHostConnection.join(completion:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t PresenceSessionHostConnection.updateMembers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_16_2;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(void *a1, uint64_t a2, void (*a3)(void), id a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = a4;
    *&v42[0] = v18;
    v19 = v18;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v17 = v12;
    *(v15 + 12) = 2080;
    type metadata accessor for TUHandle();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle, MEMORY[0x1E69E81B8]);
    v20 = v12;
    v21 = Set.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v42);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v13, v14, "PresenceSessionHostConnection: %@ request to update members to: %s", v15, 0x16u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = v17;
    a3 = v40;
    MEMORY[0x1B27120C0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v25 = v19;
    a4 = v41;
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = type metadata accessor for TaskPriority();
    v29 = *(*(v28 - 8) + 56);
    v29(v10, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a2;
    v30[5] = a3;
    v30[6] = a4;
    v30[7] = v27;

    v41 = v27;
    v31 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:), v30);
    v32 = direct field offset for PresenceSessionHostConnection.abcReporter;
    v33 = *&v12[direct field offset for XPCHostConnection.bundleIdentifier];
    v34 = *&v12[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v29(v10, 1, 1, v28);
    outlined init with copy of UserNotificationCenter(&v12[v32], v42);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v31;
    v35[5] = 0xD00000000000001CLL;
    v35[6] = 0x80000001AEE372D0;
    v35[7] = v33;
    v35[8] = v34;
    outlined init with take of ContiguousBytes(v42, (v35 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v35);

    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
    v36 = swift_allocError();
    *v37 = 0;
    swift_willThrow();
    v38 = v36;
    a3(v36);
  }
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)()
{
  v26 = v0;
  v1 = specialized Sequence.compactMap<A>(_:)(v0[2]);
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v1);
  v0[6] = v2;

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v3 == __CocoaSet.count.getter())
    {
LABEL_6:
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);

      return PresenceHostSession.updateMembers(_:)(v2);
    }
  }

  else if (v3 == *(v4 + 16))
  {
    goto LABEL_6;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315394;
    type metadata accessor for AddressableMember();
    v12 = MEMORY[0x1E69E81B8];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    v13 = Set.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v25);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    type metadata accessor for TUHandle();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle, v12);
    v17 = Set.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v25);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v8, v9, "Lost members in conversion. convertedMembers %s vs members: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[3];
  lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
  v21 = swift_allocError();
  *v22 = 1;
  v20();

  swift_allocError();
  *v23 = 1;
  swift_willThrow();
  v24 = v0[1];

  return v24();
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
  }

  else
  {
    v2 = closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v1;
  v2(v1);

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t objectdestroy_3Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors()
{
  result = lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors);
  }

  return result;
}

uint64_t type metadata accessor for PresenceSessionHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for PresenceSessionHostConnection;
  if (!type metadata singleton initialization cache for PresenceSessionHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(uint64_t a1)
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
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_50Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t PeoplePickerConfiguration.shareSheetSessionID.getter()
{
  v1 = (v0 + OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PeoplePickerConfiguration.shareSheetSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id PeoplePickerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeoplePickerConfiguration.init()()
{
  v1 = &v0[OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID];
  v2 = type metadata accessor for PeoplePickerConfiguration();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t PeoplePickerConfiguration.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v13);
  if (!v14)
  {
    outlined destroy of Any?(v13);
    goto LABEL_11;
  }

  type metadata accessor for PeoplePickerConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  v5 = v4;
  v6 = (*((*v2 & *v12) + 0x58))();
  v8 = v7;
  if (!v5)
  {

    if (!v8)
    {
LABEL_17:
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_11;
  }

  if (!v7)
  {

    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    goto LABEL_17;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v10 & 1;
}

id PeoplePickerConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized PeoplePickerConfiguration.init(coder:)();

  return v4;
}

id PeoplePickerConfiguration.init(coder:)(void *a1)
{
  v2 = specialized PeoplePickerConfiguration.init(coder:)();

  return v2;
}

Swift::Void __swiftcall PeoplePickerConfiguration.encode(with:)(NSCoder with)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  if (v4)
  {
    v5 = MEMORY[0x1B270FF70](v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B270FF70](0xD000000000000013, 0x80000001AEE37330);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id PeoplePickerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeoplePickerConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized PeoplePickerConfiguration.init(coder:)()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID];
  type metadata accessor for NSString();
  *v2 = 0;
  v2[1] = 0;
  v3 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_beginAccess();
  *v2 = v5;
  v2[1] = v7;

  v9.receiver = v1;
  v9.super_class = type metadata accessor for PeoplePickerConfiguration();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t PluginClient.Configuration.init(endpoint:connectionMaxAttempts:connectionRetryInterval:serverCertValidationEnabled:serverCertHostname:serverCertLeafMarkerOID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  outlined init with copy of PluginEndpoint(a1, a8, type metadata accessor for PluginEndpoint);
  v18 = type metadata accessor for PluginClient.Configuration(0);
  v19 = v18;
  *(a8 + v18[5]) = a2;
  *(a8 + v18[6]) = a9;
  *(a8 + v18[7]) = a3;
  v20 = 0x80000001AEE36C20;
  if (a5)
  {
    v21 = a4;
  }

  else
  {
    v21 = 0xD000000000000015;
  }

  if (a5)
  {
    v20 = a5;
  }

  v22 = (a8 + v18[8]);
  *v22 = v21;
  v22[1] = v20;
  if (!a7)
  {
    a6 = 0xD00000000000001BLL;
    a7 = 0x80000001AEE36C40;
  }

  result = outlined destroy of PluginEndpoint(a1, type metadata accessor for PluginEndpoint);
  v24 = (a8 + v19[9]);
  *v24 = a6;
  v24[1] = a7;
  return result;
}

uint64_t PluginClient.__allocating_init(config:queue:reporter:reporterTag:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PluginClient.init(config:queue:reporter:reporterTag:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t PluginClient.Configuration.serverCertHostname.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginClient.Configuration(0) + 32));

  return v1;
}

uint64_t PluginClient.Configuration.serverCertLeafMarkerOID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PluginClient.Configuration(0) + 36));

  return v1;
}

uint64_t key path setter for PluginClient.config : PluginClient(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PluginEndpoint(a1, v6, type metadata accessor for PluginClient.Configuration);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_config;
  swift_beginAccess();
  outlined assign with take of PluginClient.Configuration(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t PluginClient.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_config;
  swift_beginAccess();
  return outlined init with copy of PluginEndpoint(v1 + v3, a1, type metadata accessor for PluginClient.Configuration);
}

uint64_t PluginClient.reporterTag.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);

  return v1;
}

unint64_t PluginClient.connectionState.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState;
  swift_beginAccess();
  v2 = *(v0 + v1);
  outlined copy of ActivitySession.State(v2);
  return v2;
}

unint64_t PluginClient.connectionState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return outlined consume of ActivitySession.State(v4);
}

uint64_t PluginClient.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PluginClient.pendingDataTransferReport.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_pendingDataTransferReport;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PluginClient.localParticipantID.getter()
{
  v1 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PluginClient.Configuration(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v5);
  outlined init with copy of PluginEndpoint(v7, v3, type metadata accessor for PluginEndpoint);
  outlined destroy of PluginEndpoint(v7, type metadata accessor for PluginClient.Configuration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v3[5];
    outlined consume of Data?(v3[3], v3[4]);
  }

  else
  {
    outlined destroy of PluginEndpoint(v3, type metadata accessor for PluginEndpoint);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v0;
      v19 = v13;
      *v12 = 136315138;
      type metadata accessor for PluginClient(0);
      lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient, &protocol conformance descriptor for PluginClient);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1AEB26000, v10, v11, "%s Requested localParticipantID on a non-quickRelay endpoint.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    return 0;
  }

  return v8;
}

uint64_t PluginClient.init(config:queue:reporter:reporterTag:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a5;
  v66 = a4;
  v64 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v18 - 8);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_cancellables) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_pendingDataTransferReport) = 0;
  v67 = a1;
  outlined init with copy of PluginEndpoint(a1, v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_config, type metadata accessor for PluginClient.Configuration);
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v59[2] = type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.unspecified.getter();
    v70 = MEMORY[0x1E69E7CC0];
    v20 = lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v65 = a3;
    v59[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
    a2 = 0;
    a3 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v60 + 104))(v16, *MEMORY[0x1E69E8090], v61);
    v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue) = v19;
  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter) = a3;
  v21 = v68;
  if (v68)
  {

    v22 = a2;
    v23 = v66;
    v24 = v21;
  }

  else
  {

    v25 = a2;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v26 = v13;
    v24 = v27;
    (*(v62 + 8))(v26, v11);
  }

  v28 = (v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
  *v28 = v23;
  v28[1] = v24;
  *(v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState) = 0x8000000000000000;
  v29 = one-time initialization token for log;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, log);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v65 = a3;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v71 = v34;
    *v33 = 136315650;
    v70 = v6;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient, &protocol conformance descriptor for PluginClient);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v71);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v38 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_config;
    swift_beginAccess();
    outlined init with copy of PluginEndpoint(v6 + v38, v63, type metadata accessor for PluginClient.Configuration);
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v71);

    *(v33 + 14) = v41;
    v42 = v68;
    *(v33 + 22) = 2080;
    if (v42)
    {
      v69[0] = v66;
      v69[1] = v42;

      v43 = String.init<A>(reflecting:)();
      v45 = v44;
    }

    else
    {
      v45 = 0xE300000000000000;
      v43 = 7104878;
    }

    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v71);

    *(v33 + 24) = v57;
    _os_log_impl(&dword_1AEB26000, v31, v32, "%s init, config=%s tag=%s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v33, -1, -1);

    v21 = v68;
    if (!v65)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (!a3)
    {
LABEL_20:

      goto LABEL_21;
    }
  }

  if (v21)
  {

LABEL_21:

    goto LABEL_22;
  }

  v46 = a2;

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v69[0] = v50;
    *v49 = 136315394;
    v71 = v6;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient, &protocol conformance descriptor for PluginClient);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v69);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v54 = *(v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
    v55 = *(v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag + 8);

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v69);

    *(v49 + 14) = v56;
    _os_log_impl(&dword_1AEB26000, v47, v48, "%s initialized with a reporter, but no tag. Assigned random tag=%s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v50, -1, -1);
    MEMORY[0x1B27120C0](v49, -1, -1);
  }

LABEL_22:
  outlined destroy of PluginEndpoint(v67, type metadata accessor for PluginClient.Configuration);
  return v6;
}

uint64_t outlined init with copy of PluginEndpoint(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PluginEndpoint(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall PluginClient.updateVirtualParticipant(_:localParticipantID:)(Swift::UInt64 _, Swift::UInt64 localParticipantID)
{
  swift_beginAccess();
  PluginEndpoint.updateVirtualParticipant(_:localParticipantID:)(_, localParticipantID);
  swift_endAccess();
}

uint64_t PluginClient.deinit()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient, &protocol conformance descriptor for PluginClient);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "%s deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  (*(*v0 + 288))(v9, v10);
  outlined destroy of PluginEndpoint(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_config, type metadata accessor for PluginClient.Configuration);

  outlined consume of ActivitySession.State(*(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState));

  return v0;
}

uint64_t PluginClient.__deallocating_deinit()
{
  PluginClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t PluginClient.connectWithRetries(attempt:promise:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = (*(*v3 + 160))(v9);
  if (v12 == 0x8000000000000008)
  {
    v13 = type metadata accessor for NWError();
    (*(*(v13 - 8) + 56))(v11, 3, 3, v13);
    swift_storeEnumTagMultiPayload();
    a2(v11);
    return outlined destroy of NSObject?(v11, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }

  else
  {
    outlined consume of ActivitySession.State(v12);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, log);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Starting connection attempt #%ld", v18, 0xCu);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v24[0] = PluginClient.createQuicConnection()();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = v19;
    v20[4] = a2;
    v20[5] = a3;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a1;
    v22[4] = a2;
    v22[5] = a3;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnection, PluginConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR, MEMORY[0x1E695C038]);
    Publisher.sink(receiveCompletion:receiveValue:)();

    v23 = (*(*v4 + 200))(v24);
    AnyCancellable.store(in:)();

    return v23(v24, 0);
  }
}

uint64_t closure #1 in PluginClient.connectWithRetries(attempt:promise:)(char *a1, uint64_t a2, char *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v99 = a4;
  v100 = a5;
  v102 = a1;
  v103 = a3;
  v101 = a2;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchTime();
  v86 = *(v94 - 8);
  v7 = MEMORY[0x1EEE9AC00](v94);
  v85 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v80 - v9;
  v98 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v80 - v19;
  v21 = type metadata accessor for PluginConnectError(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v84 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v80 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v80 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v80 - v31;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v102, v20, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMR);
  v33 = *(v22 + 48);
  if (v33(v20, 1, v21) == 1)
  {
    return outlined destroy of NSObject?(v20, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMR);
  }

  v102 = v17;
  v81 = v15;
  outlined init with take of PluginConnectError(v20, v32);
  v35 = v32;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, log);
  outlined init with copy of PluginEndpoint(v32, v30, type metadata accessor for PluginConnectError);

  v80 = v37;
  v38 = Logger.logObject.getter();
  LODWORD(v37) = static os_log_type_t.error.getter();

  v82 = v37;
  v39 = v37;
  v40 = v38;
  if (os_log_type_enabled(v38, v39))
  {
    v83 = v32;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 134218498;
    v43 = v102;
    *(v41 + 4) = v101;
    *(v41 + 12) = 2080;
    outlined init with copy of PluginEndpoint(v30, v43, type metadata accessor for PluginConnectError);
    (*(v22 + 56))(v43, 0, 1, v21);
    v44 = v43;
    v45 = v81;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v44, v81, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    if (v33(v45, 1, v21) == 1)
    {
      v46 = 0xE300000000000000;
      v47 = 7104878;
    }

    else
    {
      outlined init with take of PluginConnectError(v45, v27);
      outlined init with copy of PluginEndpoint(v27, v84, type metadata accessor for PluginConnectError);
      v47 = String.init<A>(reflecting:)();
      v46 = v50;
      outlined destroy of PluginEndpoint(v27, type metadata accessor for PluginConnectError);
    }

    outlined destroy of NSObject?(v102, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    outlined destroy of PluginEndpoint(v30, type metadata accessor for PluginConnectError);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, aBlock);

    *(v41 + 14) = v51;
    *(v41 + 22) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v49 = v97;
    if (Strong)
    {
      aBlock[6] = Strong;
      type metadata accessor for PluginClient(0);
      v53 = String.init<A>(reflecting:)();
      v55 = v54;
      v48 = v98;
    }

    else
    {
      v55 = 0xE300000000000000;
      v48 = v98;
      v53 = 7104878;
    }

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, aBlock);

    *(v41 + 24) = v56;
    _os_log_impl(&dword_1AEB26000, v40, v82, "Connection attempt #%ld failed: %s on client: %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v41, -1, -1);

    v35 = v83;
  }

  else
  {

    outlined destroy of PluginEndpoint(v30, type metadata accessor for PluginConnectError);
    v48 = v98;
    v49 = v97;
  }

  swift_beginAccess();
  v57 = swift_weakLoadStrong();
  if (v57)
  {
    v58 = v57;
    v59 = *(*v57 + 136);
    v59();
    v60 = *(v49 + *(v48 + 20));
    outlined destroy of PluginEndpoint(v49, type metadata accessor for PluginClient.Configuration);
    if (v60 == v101)
    {
      v61 = v96;
      outlined init with copy of PluginEndpoint(v35, v96, type metadata accessor for PluginConnectError);
      swift_storeEnumTagMultiPayload();
      v99(v61);
      outlined destroy of NSObject?(v61, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      (*(*v58 + 168))(0x8000000000000008);

      return outlined destroy of PluginEndpoint(v35, type metadata accessor for PluginConnectError);
    }

    else
    {
      v83 = v35;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        v59();
        v67 = *(v49 + *(v48 + 24));
        outlined destroy of PluginEndpoint(v49, type metadata accessor for PluginClient.Configuration);
        *(v66 + 4) = v67;
        _os_log_impl(&dword_1AEB26000, v64, v65, "Will retry connecting in %f seconds", v66, 0xCu);
        MEMORY[0x1B27120C0](v66, -1, -1);
      }

      v68 = v85;
      v69 = static DispatchTime.now()();
      (v59)(v69);
      outlined destroy of PluginEndpoint(v49, type metadata accessor for PluginClient.Configuration);
      + infix(_:_:)();
      v103 = *(v86 + 8);
      (v103)(v68, v94);
      v102 = *(v58 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
      v70 = swift_allocObject();
      swift_weakInit();
      v71 = swift_allocObject();
      v72 = v99;
      v73 = v100;
      v71[2] = v70;
      v71[3] = v72;
      v74 = v101;
      v71[4] = v73;
      v71[5] = v74;
      aBlock[4] = partial apply for closure #1 in closure #1 in PluginClient.connectWithRetries(attempt:promise:);
      aBlock[5] = v71;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_47_0;
      v75 = _Block_copy(aBlock);

      v76 = v87;
      static DispatchQoS.unspecified.getter();
      v104 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      v77 = v89;
      v78 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v79 = v93;
      MEMORY[0x1B2710670](v93, v76, v77, v75);
      _Block_release(v75);
      (*(v91 + 8))(v77, v78);
      (*(v88 + 8))(v76, v90);
      (v103)(v79, v94);
      outlined destroy of PluginEndpoint(v83, type metadata accessor for PluginConnectError);
    }
  }

  else
  {
    v62 = type metadata accessor for NWError();
    v63 = v96;
    (*(*(v62 - 8) + 56))(v96, 3, 3, v62);
    swift_storeEnumTagMultiPayload();
    v99(v63);
    outlined destroy of NSObject?(v63, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    return outlined destroy of PluginEndpoint(v35, type metadata accessor for PluginConnectError);
  }
}

uint64_t closure #1 in closure #1 in PluginClient.connectWithRetries(attempt:promise:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    result = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
    }

    else
    {
      PluginClient.connectWithRetries(attempt:promise:)(result, a2, a3);
    }
  }

  else
  {
    v11 = type metadata accessor for NWError();
    (*(*(v11 - 8) + 56))(v9, 3, 3, v11);
    swift_storeEnumTagMultiPayload();
    a2(v9);
    return outlined destroy of NSObject?(v9, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }

  return result;
}

void closure #2 in PluginClient.connectWithRetries(attempt:promise:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v33 - v10);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*(*Strong + 160))();
    outlined consume of ActivitySession.State(v15);
    if (v15 >> 62 == 1)
    {
      v33[1] = a5;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v34 = a4;
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, log);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v35 = v14;
        v36 = v20;
        *v19 = 134218242;
        *(v19 + 4) = a3;
        *(v19 + 12) = 2080;
        type metadata accessor for PluginClient(0);
        lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient, &protocol conformance descriptor for PluginClient);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v36);

        *(v19 + 14) = v23;
        _os_log_impl(&dword_1AEB26000, v17, v18, "Connection attempt #%ld succeeded on client: %s", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1B27120C0](v20, -1, -1);
        MEMORY[0x1B27120C0](v19, -1, -1);
      }

      v24 = *(*v14 + 168);

      v24(v25);
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;

      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in closure #2 in PluginClient.connectWithRetries(attempt:promise:), v28);
      NWConnection.stateUpdateHandler.setter();

      *v11 = v12;
      swift_storeEnumTagMultiPayload();

      v34(v11);

      outlined destroy of NSObject?(v11, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, log);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = a3;
      _os_log_impl(&dword_1AEB26000, v30, v31, "Client was deinit'd when we received the connection on attempt #%ld", v32, 0xCu);
      MEMORY[0x1B27120C0](v32, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #2 in PluginClient.connectWithRetries(attempt:promise:)(char *a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v56 - v6;
  v7 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NWConnection.State();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NWError();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v65 = &v56 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v69 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      (*(v14 + 16))(v16, v68, v13);
      if ((*(v14 + 88))(v16, v13) == *MEMORY[0x1E6977C10])
      {
        (*(v14 + 96))(v16, v13);
        v30 = v18;
        v31 = v17;
        v61 = *(v18 + 32);
        v62 = v18 + 32;
        v61(v26, v16, v17);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, log);
        v33 = *(v18 + 16);
        v68 = v26;
        v63 = v33;
        v33(v69, v26, v17);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        v36 = v30;
        if (os_log_type_enabled(v34, v35))
        {
          v58 = v35;
          v60 = v34;
          v37 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v70 = v56;
          *v37 = 136315394;
          v38 = *v29;
          v59 = v29 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
          (*(v38 + 136))();
          outlined init with copy of PluginEndpoint(v9, v12, type metadata accessor for PluginEndpoint);
          outlined destroy of PluginEndpoint(v9, type metadata accessor for PluginClient.Configuration);
          v39 = PluginEndpoint.description.getter();
          v41 = v40;
          outlined destroy of PluginEndpoint(v12, type metadata accessor for PluginEndpoint);
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v70);

          *(v37 + 4) = v42;
          v57 = v37;
          *(v37 + 12) = 2080;
          v43 = v67;
          v44 = v63;
          v63(v67, v69, v31);
          (*(v36 + 56))(v43, 0, 1, v31);
          v45 = v66;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v43, v66, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
          if ((*(v36 + 48))(v45, 1, v31) == 1)
          {
            v46 = 0xE300000000000000;
            v47 = 7104878;
          }

          else
          {
            v50 = v65;
            v61(v65, v45, v31);
            v44(v64, v50, v31);
            v47 = String.init<A>(reflecting:)();
            v46 = v51;
            (*(v36 + 8))(v50, v31);
          }

          v49 = v68;
          outlined destroy of NSObject?(v43, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
          v48 = *(v36 + 8);
          v48(v69, v31);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v70);

          v53 = v57;
          *(v57 + 14) = v52;
          v54 = v60;
          _os_log_impl(&dword_1AEB26000, v60, v58, "PluginClient %s disconnected due to network failure: %s", v53, 0x16u);
          v55 = v56;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v55, -1, -1);
          MEMORY[0x1B27120C0](v53, -1, -1);
        }

        else
        {

          v48 = *(v30 + 8);
          v48(v69, v31);
          v49 = v68;
        }

        (*(*v29 + 168))(0x8000000000000000);
        NWConnection.cancel()();

        return (v48)(v49, v31);
      }

      else
      {

        return (*(v14 + 8))(v16, v13);
      }
    }

    else
    {
    }
  }

  return result;
}

unint64_t PluginClient.connectionFuture()()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21[-v8];
  v10 = (*(*v0 + 160))(v7);
  v11 = v10;
  if (v10 >> 62)
  {
    if (v10 >> 62 == 1)
    {
      return v10 & 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v10 != 0x8000000000000000)
    {
      goto LABEL_5;
    }
  }

  else
  {
    NWConnection.state.getter();
    (*(v3 + 104))(v6, *MEMORY[0x1E6977C00], v2);
    v13 = MEMORY[0x1B270F7E0](v9, v6);
    v14 = *(v3 + 8);
    v14(v6, v2);
    v14(v9, v2);
    if (v13)
    {
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      swift_allocObject();
      return Future.init(_:)();
    }

    outlined consume of ActivitySession.State(v11);
  }

  v15 = (*(*v1 + 200))(v21);
  v17 = v16;

  *v17 = MEMORY[0x1E69E7CD0];
  v15(v21, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  swift_allocObject();

  v18 = Future.init(_:)();
  v19 = *(*v1 + 168);

  v19(v20 | 0x4000000000000000);
  return v18;
}

uint64_t closure #1 in PluginClient.connectionFuture()(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  *(&v9 - v6) = a3;
  swift_storeEnumTagMultiPayload();

  a1(v7);
  return outlined destroy of NSObject?(v7, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
}

uint64_t closure #3 in PluginClient.connectionFuture()(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = type metadata accessor for NWError();
  (*(*(v5 - 8) + 56))(v4, 3, 3, v5);
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return outlined destroy of NSObject?(v4, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
}

uint64_t PluginClient.call<A, B>(rpc:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7)
{
  v8 = v7;
  v30 = a3;
  v31 = a7;
  v28 = a5;
  v29 = a6;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v19 = *a1;
  v20 = a1[1];
  aBlock = a4;
  v38 = v28;
  v39 = v29;
  v40 = v31;
  v31 = type metadata accessor for PluginRpcStream(0, &aBlock);
  aBlock = v19;
  v38 = v20;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v30, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v21 = specialized PluginRpcStream.__allocating_init(definition:input:traceId:)(&aBlock, a2, v18);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v8;
  v41 = partial apply for closure #1 in PluginClient.call<A, B>(rpc:input:traceId:);
  v42 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v40 = &block_descriptor_34;
  v23 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v24 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v13, v23);
  _Block_release(v23);
  (*(v35 + 8))(v13, v24);
  (*(v32 + 8))(v15, v34);

  aBlock = v21;
  swift_getWitnessTable();
  v25 = Publisher.eraseToAnyPublisher()();

  return v25;
}

uint64_t closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMR);
  v3 = *(v2 - 8);
  v16 = v2;
  v17 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMR);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v15 = v14 - v8;
  v20 = PluginClient.connectionFuture()();
  swift_allocObject();
  swift_weakInit();
  v14[1] = static Subscribers.Demand.unlimited.getter();
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  type metadata accessor for NWConnection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnection, PluginConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR, MEMORY[0x1E695C038]);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<NWConnection, PluginConnectError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR, MEMORY[0x1E695BED8]);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  type metadata accessor for PluginRpcError(0);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<AnyPublisher<NWConnection, PluginConnectError>, Future<NWConnection, PluginConnectError>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMR, MEMORY[0x1E695BE40]);
  lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError, &protocol conformance descriptor for PluginRpcError);
  v9 = v15;
  v10 = v16;
  Publisher.mapError<A>(_:)();
  (*(v17 + 8))(v5, v10);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MapError<Publishers.FlatMap<AnyPublisher<NWConnection, PluginConnectError>, Future<NWConnection, PluginConnectError>>, PluginRpcError> and conformance Publishers.MapError<A, B>, &_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMR, MEMORY[0x1E695BE58]);
  swift_retain_n();
  v11 = v18;
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v19 + 8))(v9, v11);
  return (*(*a1 + 168))(v12);
}

uint64_t closure #1 in closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for PluginConnectError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = PluginClient.createQuicStream(quicConnection:)(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnection, PluginConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR, MEMORY[0x1E695C038]);
    v13 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v15 = type metadata accessor for NWError();
    (*(*(v15 - 8) + 56))(v7, 3, 3, v15);
    type metadata accessor for NWConnection();
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginConnectError and conformance PluginConnectError, type metadata accessor for PluginConnectError, &protocol conformance descriptor for PluginConnectError);
    Fail.init(error:)();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Fail<NWConnection, PluginConnectError> and conformance Fail<A, B>, &_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR, MEMORY[0x1E695BFF8]);
    v13 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *a3 = v13;
  return result;
}

uint64_t closure #2 in closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PluginEndpoint(a1, a2, type metadata accessor for PluginConnectError);
  type metadata accessor for PluginRpcError(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #3 in closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v8 - v3, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v5 = type metadata accessor for PluginRpcError(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  result = outlined destroy of NSObject?(v4, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if (v6 != 1)
  {
    return PassthroughSubject.send(completion:)();
  }

  return result;
}

Swift::Void __swiftcall PluginClient.close()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in PluginClient.close();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_6;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v11 + 8))(v3, v1);
  (*(v4 + 8))(v6, v10);
}

uint64_t closure #1 in PluginClient.close()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 288))(result);
  }

  return result;
}

Swift::Void __swiftcall PluginClient._close()()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient, &protocol conformance descriptor for PluginClient);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%s Closing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter);
  if (v11)
  {
    v12 = *(*v0 + 208);

    if (v12(v13))
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1AEB26000, v14, v15, "Data-transfer report triggered", v16, 2u);
        MEMORY[0x1B27120C0](v16, -1, -1);
      }

      v18 = *(v1 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
      v17 = *(v1 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag + 8);
      v19 = *(v11 + 16);
      v20 = swift_allocObject();
      v20[2] = v11;
      v20[3] = v18;
      v20[4] = v17;

      v21 = v19;
      dispatch thunk of NWConnection.PendingDataTransferReport.collect(queue:completion:)();
    }
  }

  v22 = (*(*v1 + 160))(v10);
  if (!(v22 >> 62))
  {
    NWConnection.cancel()();
  }

  outlined consume of ActivitySession.State(v22);
  (*(*v1 + 168))(0x8000000000000008);
}

uint64_t PluginClient.description.getter()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE37370);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginClient()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE37370);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

uint64_t lazy protocol witness table accessor for type PluginClient and conformance PluginClient(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for PluginClient(uint64_t a1)
{
  result = type metadata accessor for PluginClient.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PluginClient.Configuration(uint64_t a1)
{
  result = type metadata accessor for PluginEndpoint(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_14CopresenceCore12PluginClientC15ConnectionStateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t outlined init with take of PluginConnectError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginConnectError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t outlined assign with take of PluginClient.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginClient.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall LSPropertyList.containsAnyGameCenterEntitlements()()
{
  LOBYTE(v9[0]) = 11;
  if (LSPropertyList.contains(entitlement:)(v9))
  {
    return 1;
  }

  v2 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v4 = [v0 objectForKey:v2 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v5 = *(v6 + 16);

      return v5 != 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

void CPApplicationController.registerObserver(observer:)(uint64_t a1)
{
  swift_getObjectType();

  specialized CPApplicationController.registerObserver(observer:)(a1, v1);
}

uint64_t CPApplicationControllerProtocol.isActivitySupported(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    LOBYTE(v7) = (*(a3 + 8))(v8, v10, a2, a3);

    return v7 & 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v18 = v13;
      v19 = String.init<A>(reflecting:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Missing bundle identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    return 0;
  }
}

Swift::Bool __swiftcall CPApplicationController.isBundleIdentifierSupported(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
  v8 = objc_allocWithZone(v7);
  v9 = MEMORY[0x1E69E7D40];
  v10 = &v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x68)];
  *v10 = countAndFlagsBits;
  v10[1] = object;
  v30.receiver = v8;
  v30.super_class = v7;

  v11 = v6;
  v12 = objc_msgSendSuper2(&v30, sel_init);
  v13 = [v11 objectForKey_];

  if (v13)
  {
    v14 = *(v13 + *((*v9 & *v13) + 0x68));
  }

  else
  {

    v14 = (*((*v9 & *v2) + 0x108))(countAndFlagsBits, object);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.default);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v29);
      *(v18 + 12) = 1024;
      *(v18 + 14) = v14 & 1;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Caching value for %s: %{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      v20 = v18;
      v9 = MEMORY[0x1E69E7D40];
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    swift_beginAccess();
    v21 = *(v2 + v5);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMR);
    v23 = objc_allocWithZone(v22);
    v23[*((*v9 & *v23) + 0x68)] = v14 & 1;
    v28.receiver = v23;
    v28.super_class = v22;

    v11 = objc_msgSendSuper2(&v28, sel_init);
    v24 = objc_allocWithZone(v7);
    v25 = &v24[*((*v9 & *v24) + 0x68)];
    *v25 = countAndFlagsBits;
    v25[1] = object;
    v27.receiver = v24;
    v27.super_class = v7;
    v13 = objc_msgSendSuper2(&v27, sel_init);
    [v21 setObject:v11 forKey:v13];
    swift_endAccess();
  }

  return v14 & 1;
}

uint64_t CPApplicationController.featureFlags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationController_featureFlags;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t CPApplicationController.protectedAppsObserver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPApplicationController_protectedAppsObserver;
  swift_beginAccess();
  return outlined init with copy of ProtectedAppsObserverProtocol?(v1 + v3, a1);
}

uint64_t CPApplicationController.protectedAppsObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationController_protectedAppsObserver;
  swift_beginAccess();
  outlined assign with take of ProtectedAppsObserverProtocol?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t one-time initialization function for systemBundleIdentifiers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEE07B10;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  static CPApplicationController.systemBundleIdentifiers = v0;
  return result;
}

id CPApplicationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CPApplicationController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
  v3 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v0[v2] = v3;
  [v3 setCountLimit_];
  v4 = OBJC_IVAR___CPApplicationController_definedSystemActivityIdentifiersCache;
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v0[v4] = v5;
  [v5 setCountLimit_];
  v6 = OBJC_IVAR___CPApplicationController_lock;
  type metadata accessor for Lock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *&v0[v6] = v7;
  v9 = OBJC_IVAR___CPApplicationController_observers;
  *&v0[v9] = [objc_opt_self() weakObjectsHashTable];
  v10 = OBJC_IVAR___CPApplicationController_featureFlags;
  *&v0[v10] = [objc_allocWithZone(CPFeatureFlags) init];
  v11 = &v0[OBJC_IVAR___CPApplicationController_protectedAppsObserver];
  v12 = type metadata accessor for CPApplicationController();
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v38.receiver = v0;
  v38.super_class = v12;
  v13 = objc_msgSendSuper2(&v38, sel_init);
  v14 = one-time initialization token for default;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Initialized %@", v19, 0xCu);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v23 = result;
    [result addObserver_];

    v24 = OBJC_IVAR___CPApplicationController_featureFlags;
    swift_beginAccess();
    if ([*&v15[v24] appProtectionEnabled])
    {
      v35 = type metadata accessor for ProtectedAppsObserver();
      v36 = &protocol witness table for ProtectedAppsObserver;
      aBlock[0] = [objc_allocWithZone(v35) init];
      v25 = &v15[OBJC_IVAR___CPApplicationController_protectedAppsObserver];
      swift_beginAccess();
      outlined assign with take of ProtectedAppsObserverProtocol?(aBlock, v25);
      swift_endAccess();
      swift_beginAccess();
      v26 = *(v25 + 24);
      if (v26)
      {
        v27 = *(v25 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v25, *(v25 + 24));
        v28 = *(v27 + 16);
        v29 = v15;
        v28(v15, &protocol witness table for CPApplicationController, v26, v27);
      }

      swift_endAccess();
    }

    if ([*&v15[v24] autoGameCenterEnabled])
    {
      v30 = [objc_opt_self() shared];
      v31 = swift_allocObject();
      *(v31 + 16) = v15;
      *(v31 + 24) = ObjectType;
      v36 = partial apply for closure #1 in CPApplicationController.init();
      v37 = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Any], @guaranteed Error?) -> ();
      v35 = &block_descriptor_35;
      v32 = _Block_copy(aBlock);
      v33 = v15;

      [v30 fetchOnDeviceMultiplayerBundleIDsWithHandler_];
      _Block_release(v32);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}