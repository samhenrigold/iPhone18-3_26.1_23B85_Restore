id Participant.scaParticipant.getter()
{
  result = *(v0 + *(type metadata accessor for Participant(0) + 28));
  if (result)
  {
    v2 = [result value];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    Participant.contactDetails.getter();

    Participant.name(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA940;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    v14 = objc_allocWithZone(MEMORY[0x1E697B648]);
    return @nonobjc SCAParticipant.init(displayName:handles:)();
  }

  return result;
}

void SensitiveContentController.overrideParticipantStreamSettings(for:analysis:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 shouldInterruptVideo];
    v5 = [v3 shouldMuteAudio];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | v4;
  }

  else
  {
    v7 = 0;
  }

  ConversationController.setStreamSettings(_:for:)(v7, a1);
}

void closure #1 in SensitiveContentController.configureShield(for:analysis:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0(a2 + 16, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    OUTLINED_FUNCTION_46();
    ConversationController.updateParticipant(for:withAnalysis:)();
  }
}

void SensitiveContentController.configureShieldForJoiningParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v85 - v6;
  v94 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30_12();
  v91 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v85 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - v19;
  v87 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v85 - v23;
  v25 = *(type metadata accessor for Participant(0) + 20);
  v96 = v13;
  v28 = *(v13 + 16);
  v26 = v13 + 16;
  v27 = v28;
  v28(v24, (v3 + v25), v11);
  if (one-time initialization token for sensitiveContentController != -1)
  {
    OUTLINED_FUNCTION_0_82(&one-time initialization token for sensitiveContentController);
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.sensitiveContentController);
  v92 = v27;
  v93 = v26;
  v27(v20, v24, v11);
  v90 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_42();
    v86 = v24;
    v95 = v11;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_23();
    v85 = v1;
    v36 = v35;
    v99[0] = v35;
    *v34 = 136315138;
    OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v10;
    v39 = v3;
    v41 = v40;
    v42 = *(v96 + 8);
    v42(v20, v95);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v41, v99);
    v3 = v39;
    v10 = v38;

    *(v34 + 4) = v43;
    _os_log_impl(&dword_1BBC58000, v31, v32, "Shield Configuring for %s with videoCallWasJoined kind", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v1 = v85;
    OUTLINED_FUNCTION_27();
    v11 = v95;
    v24 = v86;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v42 = *(v96 + 8);
    v42(v20, v11);
  }

  OUTLINED_FUNCTION_4_53();
  _s15ConversationKit11ParticipantVWOcTm_4(v3, v10, v44);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    OUTLINED_FUNCTION_3_71();
    _s15ConversationKit11ParticipantVWOhTm_6(v10, v56);
LABEL_14:
    v57 = v91;
    v92(v91, v24, v11);
    v58 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_42();
      v61 = OUTLINED_FUNCTION_23();
      v99[0] = v61;
      *v60 = 136315138;
      OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v57;
      v64 = v42;
      v65 = v24;
      v67 = v66;
      v64(v63, v11);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v67, v99);

      *(v60 + 4) = v68;
      _os_log_impl(&dword_1BBC58000, v58, v1, "Shield not configured for %s due to non join state", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      v64(v65, v11);
    }

    else
    {

      v42(v57, v11);
      v69 = OUTLINED_FUNCTION_21_20();
      (v42)(v69);
    }

    goto LABEL_19;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
  v46 = *(v45 + 48);
  OUTLINED_FUNCTION_37((v10 + *(v45 + 64)));
  outlined destroy of Participant.MediaInfo(v10 + v46);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_15_1();
  (*(v47 + 8))(v10);
  v48 = Participant.scaParticipant.getter();
  if (!v48)
  {
    goto LABEL_14;
  }

  v49 = v48;
  OUTLINED_FUNCTION_16_33(v48, v99);
  if ((static SensitiveContentController.shieldState & 1) == 0)
  {
    ConversationController.setStreamSettings(_:for:)(257, v24);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCAnalysisHistory, 0x1E697B650);
  if ([swift_getObjCClassFromMetadata() respondsToSelector_])
  {
    swift_beginAccess();
    v50 = specialized Dictionary.subscript.getter(v24, *(v1 + 32));
    v52 = v51;
    v53 = v1;
    v54 = ~v51;
    swift_endAccess();
    if (v54)
    {

      outlined consume of SensitiveContentController.HistoryCheckStatus?(v50, v52);
      v55 = OUTLINED_FUNCTION_21_20();
      (v42)(v55);
    }

    else
    {
      OUTLINED_FUNCTION_30_2(v53 + 32, &v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *(v53 + 32);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, 2, v24, isUniquelyReferenced_nonNull_native, v72, v73, v74, v75, v85, v86, v87, v88);
      *(v53 + 32) = v97;
      swift_endAccess();
      v76 = type metadata accessor for TaskPriority();
      v95 = v42;
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v76);
      v77 = v88;
      v92(v88, v24, v11);
      type metadata accessor for MainActor();
      v78 = v49;

      v79 = static MainActor.shared.getter();
      v80 = v96;
      v81 = (*(v96 + 80) + 48) & ~*(v96 + 80);
      v82 = swift_allocObject();
      v83 = MEMORY[0x1E69E85E0];
      *(v82 + 2) = v79;
      *(v82 + 3) = v83;
      *(v82 + 4) = v78;
      *(v82 + 5) = v53;
      (*(v80 + 32))(&v82[v81], v77, v11);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      v84 = OUTLINED_FUNCTION_21_20();
      v95(v84);
    }
  }

  else
  {
    v70 = OUTLINED_FUNCTION_21_20();
    (v42)(v70);
  }

LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.setStreamSettings(_:for:)(__int16 a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  swift_beginAccess();
  v9 = type metadata accessor for Participant(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  v10 = static UUID.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    if (a1)
    {
      ConversationController.stopLocalVideo()();
    }

    else
    {
      ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
    }

    ConversationController.setLocalAudio(muted:bluetoothAudioFormat:)();
  }

  else
  {
    ConversationController.setDownlinkMuted(_:)(a1 & 0x100);
  }
}

uint64_t closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v7 = type metadata accessor for UUID();
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v6[33] = *(v8 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v9 = type metadata accessor for SCUISensitiveContentOverlayView.Kind();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[39] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[40] = v11;
  v6[41] = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:), v11, v10);
}

uint64_t closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)()
{
  v1 = v0[28];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BAC30;
  *(v3 + 32) = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCAParticipant, 0x1E697B648);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[42] = isa;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14SCAParticipantCSo21SCSensitivityAnalysisCGs5Error_pGMd, &_sSccySDySo14SCAParticipantCSo21SCSensitivityAnalysisCGs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> () with result type [SCAParticipant : SCSensitivityAnalysis];
  v0[13] = &block_descriptor_27;
  v0[14] = v6;
  [v2 analysesForInterventionOnOutgoingCallToParticipants:isa callType:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
  }

  else
  {
    v5 = closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v59 = v0;
  v1 = v0[42];

  v2 = specialized Collection.first.getter(v0[27]);

  if (v2)
  {
    v3 = v0[38];
    v55 = v0[36];
    v44 = v0[35];
    v4 = v0[32];
    v49 = v0[33];
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[29];
    v51 = v0[28];
    v53 = v0[37];
    OUTLINED_FUNCTION_30_2(v7 + 32, (v0 + 24));
    v54 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v7 + 32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, 0, v6, isUniquelyReferenced_nonNull_native, v9, v10, v11, v12, v44, v46, v49, v51);
    *(v7 + 32) = v58;
    swift_endAccess();
    v47 = SensitiveContentController.shield.getter();
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    swift_weakInit();
    v56 = *(v4 + 16);
    v56(v45, v6, v5);
    v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v4 + 32))(v15 + v14, v45, v5);
    *v3 = v52;
    v3[1] = v2;
    v3[2] = partial apply for closure #1 in closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
    v3[3] = v15;
    (*(v53 + 104))(v3, *MEMORY[0x1E69CA8C0], v55);
    v16 = v52;
    v17 = v54;

    SCUISensitiveContentOverlayView.configure(_:)();

    (*(v53 + 8))(v3, v55);

    if (one-time initialization token for sensitiveContentController != -1)
    {
      OUTLINED_FUNCTION_0_82(&one-time initialization token for sensitiveContentController);
    }

    v18 = v0[34];
    v20 = v0[30];
    v19 = v0[31];
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.sensitiveContentController);
    v56(v18, v20, v19);
    v22 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_28_1();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[34];
    v27 = v0[31];
    v26 = v0[32];
    if (v24)
    {
      v28 = OUTLINED_FUNCTION_42();
      v57 = v17;
      v58 = OUTLINED_FUNCTION_23();
      v29 = v58;
      *v28 = 136315138;
      OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v26 + 8))(v25, v27);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v58);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1BBC58000, v22, v20, "Shield Configured for %s with videoCallWasJoined kind", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }
  }

  else
  {
    v35 = v0[29];
    v34 = v0[30];
    OUTLINED_FUNCTION_30_2(v35 + 32, (v0 + 21));
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v35 + 32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, 2, v34, v36, v37, v38, v39, v40, v43, v46, v48, v50);
    *(v35 + 32) = v58;
    swift_endAccess();
  }

  v41 = v0[1];

  return v41();
}

{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[29];
  v3 = v0[30];

  swift_willThrow();

  OUTLINED_FUNCTION_30_2(v4 + 32, (v0 + 18));
  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 1, v3, isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v13, *(v4 + 32), v15, v16);
  *(v4 + 32) = v14;
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

void SensitiveContentController.configureShieldforLeavingParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v78 = v0;
  v2 = v1;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - v10;
  v12 = type metadata accessor for SCUISensitiveContentOverlayView.Kind();
  OUTLINED_FUNCTION_1();
  v77 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = (v16 - v15);
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_4_53();
  _s15ConversationKit11ParticipantVWOcTm_4(v2, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = v3;
    v76 = v5;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v23 + 8))(v21);
    v24 = type metadata accessor for Participant(0);
    v25 = *(v2 + *(v24 + 28));
    if (v25)
    {
      v26 = [v25 value];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v28;
      v73 = v27;

      Participant.contactDetails.getter();
      v29 = v85[0];

      Participant.name(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BA940;
      v31 = v72;
      *(inited + 32) = v73;
      *(inited + 40) = v31;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited, v32, v33, v34, v35, v36, v37, v38, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5]);
      v39 = objc_allocWithZone(MEMORY[0x1E697B648]);
      OUTLINED_FUNCTION_46();
      v40 = @nonobjc SCAParticipant.init(displayName:handles:)();
      if (v40)
      {
        v41 = v40;
        v70 = v12;
        v42 = v11;
        v69 = v11;
        v43 = *(v24 + 20);
        v71 = SensitiveContentController.shield.getter();
        OUTLINED_FUNCTION_20();
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = v76;
        v46 = v42;
        v47 = v75;
        v72 = *(v76 + 16);
        v73 = v76 + 16;
        v72(v46, v2 + v43, v75);
        v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = v44;
        (*(v45 + 32))(v49 + v48, v69, v47);
        *v17 = v41;
        v17[1] = 0;
        v17[2] = partial apply for closure #1 in SensitiveContentController.configureShieldforLeavingParticipant(_:);
        v17[3] = v49;
        (*(v77 + 104))(v17, *MEMORY[0x1E69CA8C0], v70);
        v50 = v41;

        v51 = v71;
        SCUISensitiveContentOverlayView.configure(_:)();

        v52 = OUTLINED_FUNCTION_21_20();
        v53(v52);

        OUTLINED_FUNCTION_30_2(v78 + 48, v85);
        v54 = specialized Dictionary._Variant.removeValue(forKey:)(v2 + v43, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo21SCSensitivityAnalysisCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo21SCSensitivityAnalysisCGMR, &lazy cache variable for type metadata for SCSensitivityAnalysis, 0x1E697B670);
        swift_endAccess();

        if (one-time initialization token for sensitiveContentController != -1)
        {
          OUTLINED_FUNCTION_0_82(&one-time initialization token for sensitiveContentController);
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Logger.sensitiveContentController);
        v72(v74, v2 + v43, v47);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_42();
          v59 = OUTLINED_FUNCTION_23();
          v85[0] = v59;
          *v58 = 136315138;
          OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
          dispatch thunk of CustomStringConvertible.description.getter();
          v60 = OUTLINED_FUNCTION_33_18();
          v61(v60);
          v62 = OUTLINED_FUNCTION_46();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);

          *(v58 + 4) = v65;
          _os_log_impl(&dword_1BBC58000, v56, v57, "Shield Configured for %s with videoCallWasJoined left", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        else
        {

          v67 = OUTLINED_FUNCTION_33_18();
          v68(v67);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_71();
    _s15ConversationKit11ParticipantVWOhTm_6(v21, v66);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (result = [a1 shouldInterruptVideo], (result & 1) == 0))
  {
    OUTLINED_FUNCTION_4_0(a2 + 16, v15);
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = result;
      OUTLINED_FUNCTION_30_2(result + 32, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, 2, a3, isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, *(v6 + 32), v14[0], v14[1]);
      *(v6 + 32) = v13;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t SensitiveContentController.StreamSettings.Reason.init(rawValue:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SensitiveContentController.StreamSettings.Reason@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SensitiveContentController.StreamSettings.Reason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SensitiveContentController.StreamSettings.Reason@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentController.StreamSettings.Reason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SensitiveContentController.StreamSettings(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static SensitiveContentController.StreamSettings.== infix(_:_:)(v3 | *a1 | v2, v5 | *a2 | v4);
}

Swift::Void __swiftcall SensitiveContentController.setLocalStreamSettingsBeforeBackgroundedPause()()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_16_33(v8, v17);
  if (static SensitiveContentController.shieldState == 1)
  {
    v9 = *(v0 + 16) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_4_0(v9, v16);
    v10 = type metadata accessor for Participant(0);
    (*(v3 + 16))(v7, v9 + *(v10 + 20), v1);
    v11 = ConversationController.streamSettings(for:reason:)(v7, 1);
    SensitiveContentController.setStreamSettingsToRestore(for:streamSettings:)(v7, v11 & 0x10101);
    if (one-time initialization token for sensitiveContentController != -1)
    {
      OUTLINED_FUNCTION_0_82(&one-time initialization token for sensitiveContentController);
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sensitiveContentController);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BBC58000, v13, v14, "Saved stream settings before background video pause", v15, 2u);
      OUTLINED_FUNCTION_27();
    }

    (*(v3 + 8))(v7, v1);
  }
}

uint64_t ConversationController.streamSettings(for:reason:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  swift_beginAccess();
  v9 = type metadata accessor for Participant(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  v10 = static UUID.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v11 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v12 = (*(v11 + 16) >> 7) ^ 1;
    v13 = (*v11 & 1) << 8;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return v13 & 0xFFFEFFFF | ((a2 & 1) << 16) | v12;
}

void SensitiveContentController.setStreamSettingsToRestore(for:streamSettings:)(uint64_t a1, int a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 40);
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(), (v11 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  v12 = (*(v9 + 56) + 3 * v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  swift_endAccess();
  if (v13 == (a2 & 1) && ((v14 ^ ((a2 & 0x100) >> 8)) & 1) == 0 && v15 == (a2 & 0x10000u) >> 16)
  {
    return;
  }

  if ((((a2 & 0x10000) == 0) & v15) == 0)
  {
LABEL_12:
    SensitiveContentController.setStreamSetting(for:streamSettings:)(a1, a2 & 0x101);
    return;
  }

  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.sensitiveContentController);
  (*(v6 + 16))(v8, a1, v5);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v26);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Not overwriting stream settings due to lower priority settings for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t SensitiveContentController.setStreamSetting(for:streamSettings:)(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sensitiveContentController);
  (*(v7 + 16))(v9, a1, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a1;
    v14 = v13;
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v14 = 136315650;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = a2 & 0x100;
    v16 = v3;
    v17 = a2;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v19, v28);
    LOBYTE(v19) = v17;
    v3 = v16;
    LODWORD(v16) = v25;

    *(v14 + 4) = v20;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v19 & 1;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v16 >> 8;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Setting new stream settings for %s with stopView = %{BOOL}d and stopAudio = %{BOOL}d", v14, 0x18u);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 40);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  *(v3 + 40) = v27;
  return swift_endAccess();
}

uint64_t SensitiveContentController.saveStreamSettingsForRestore(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = *(type metadata accessor for Participant(0) + 20);
  v11 = (*(v5 + 16))(v9, a1 + v10, v3);
  OUTLINED_FUNCTION_16_33(v11, v17);
  if (static SensitiveContentController.shieldState == 1)
  {
    v12 = ConversationController.streamSettings(for:reason:)(v9, 0);
    v13 = a1 + v10;
    v14 = v12 & 0x10101;
LABEL_7:
    SensitiveContentController.setStreamSettingsToRestore(for:streamSettings:)(v13, v14);
    return (*(v5 + 8))(v9, v3);
  }

  swift_beginAccess();
  if (!*(*(v1 + 40) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(), (v15 & 1) == 0))
  {
    swift_endAccess();
    v13 = a1 + v10;
    v14 = 0;
    goto LABEL_7;
  }

  swift_endAccess();
  return (*(v5 + 8))(v9, v3);
}

id static SCSensitivityAnalysis.decoded(from:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis, 0x1E697B670);
  v3 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v2)
  {
    return v3;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E697B670]);
  v5 = OUTLINED_FUNCTION_309();
  outlined copy of Data._Representation(v5, v6);
  v7 = OUTLINED_FUNCTION_309();
  v9 = @nonobjc SCSensitivityAnalysis.init(dataRepresentation:)(v7, v8);

  return v9;
}

id @nonobjc SCAParticipant.init(displayName:handles:)()
{
  v1 = MEMORY[0x1BFB209B0]();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithDisplayName:v1 handles:isa];

  return v3;
}

id @nonobjc SCSensitivityAnalysis.init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[0] = 0;
  v7 = [v3 initWithDataRepresentation:isa error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  outlined consume of Data._Representation(a1, a2);
  return v7;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_27_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAC4DateVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAC4DateVGMR);
    OUTLINED_FUNCTION_130_0();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v2, v3);
    v8 = *(v18 + 48);
    v9 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v10 + 8))(v8 + *(v10 + 72) * v7, v9);
    v11 = *(v18 + 56);
    v12 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 32))(a1, v11 + *(v13 + 72) * v7, v12);
    OUTLINED_FUNCTION_10_32(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    _NativeDictionary._delete(at:)();
    *v1 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = type metadata accessor for Date();
    v14 = a1;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v6 = v5;
  if (v5)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMd, &_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMR);
    OUTLINED_FUNCTION_130_0();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
    outlined init with take of ScreenSharingStateMonitor.Observation(*(v10 + 56) + 8 * v7, a2);
    result = _NativeDictionary._delete(at:)();
    *v2 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v6 & 1) == 0;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMR, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView, 0x1E6993838);
}

{
  v4 = v1;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_27_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeVGMd, &_ss17_NativeDictionaryVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeVGMR);
  OUTLINED_FUNCTION_130_0();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(v2, v3);
  v8 = *(*(v10 + 56) + 16 * v7);
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition();
  _NativeDictionary._delete(at:)();
  *v4 = v10;
  return v8;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v10 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v5;
  v15 = *(*v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_130_0();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
  v16 = *(v21 + 48);
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v18 + 8))(v16 + *(v18 + 72) * v13, v17);
  v19 = *(*(v21 + 56) + 8 * v13);
  type metadata accessor for NSObject(0, a4, a5);
  OUTLINED_FUNCTION_10_32(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  _NativeDictionary._delete(at:)();
  *v10 = v21;
  return v19;
}

uint64_t partial apply for closure #1 in SensitiveContentController.configureShield(for:analysis:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, unint64_t))
{
  v6 = a2(0);
  OUTLINED_FUNCTION_22(v6);
  return a3(a1, *(v3 + 16), v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)));
}

uint64_t partial apply for closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(uint64_t a1)
{
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(a1, v7, v8, v9, v10, v1 + v6);
}

void outlined consume of SensitiveContentController.HistoryCheckStatus?(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of SensitiveContentController.HistoryCheckStatus(a1, a2);
  }
}

unint64_t lazy protocol witness table accessor for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState()
{
  result = lazy protocol witness table cache variable for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState;
  if (!lazy protocol witness table cache variable for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContentController.StreamSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SensitiveContentController.StreamSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit26SensitiveContentControllerC18HistoryCheckStatus33_063DB4DC5BD342763B5D5395B1DD5E15LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

unint64_t lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition()
{
  result = lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition;
  if (!lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition;
  if (!lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition);
  }

  return result;
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type SCAParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type SCAParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SCAParticipant and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for SCAParticipant, 0x1E697B648);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SCAParticipant and conformance NSObject);
  }

  return result;
}

uint64_t block_copy_helper_40_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for SensitiveContentController.ShieldState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason()
{
  result = lazy protocol witness table cache variable for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason;
  if (!lazy protocol witness table cache variable for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason);
  }

  return result;
}

uint64_t AnsweringConditionTimer.shouldAnswer@Sendable (_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *v0;
  v1[4] = *v0;
  v4 = *(v3 + 80);
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.shouldAnswer@Sendable (_:), v6, v5);
}

{
  v48 = v0;
  if ((*(v0[3] + 16))(v0[2]))
  {
    v1 = v0[10];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[2];
    (*(v0[3] + 32))(v4);
    v0[14] = direct field offset for AnsweringConditionTimer.logger;
    v5 = *(v3 + 16);
    v0[15] = v5;
    v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = v0[9];
      v45 = v7;
      v12 = v0[5];
      v11 = v0[6];
      v13 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v13 = 136446466;
      v14 = Duration.description.getter();
      log = v6;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v47);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v5(v10, v9, v12);
      v17 = *(v11 + 8);
      v17(v9, v12);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v17(v10, v12);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v47);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1BBC58000, log, v45, "Should Answer timer started with timeToWait %{public}s for: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      v17 = *(v0[6] + 8);
      v17(v0[10], v0[5]);
    }

    v0[17] = v17;
    v41 = swift_task_alloc();
    v0[18] = v41;
    *v41 = v0;
    v41[1] = AnsweringConditionTimer.shouldAnswer@Sendable (_:);

    return AsyncCancellableTimer.wait(with:)();
  }

  else
  {
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    v25 = v0[2];

    v28 = *(v23 + 16);
    v26 = v23 + 16;
    v27 = v28;
    (v28)(v22, v25, v24);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[6];
      v32 = v0[7];
      v33 = v0[5];
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      v35 = OUTLINED_FUNCTION_2_74(4.8751e-34);
      v27(v35);
      v36 = *(v31 + 8);
      v36(v32, v33);
      dispatch thunk of CustomStringConvertible.description.getter();
      v37 = OUTLINED_FUNCTION_3_72();
      (v36)(v37);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v26, &v47);

      *(v34 + 4) = v38;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v39, v40, "Should Answer timer returning early as NO for: %{public}s because we can no longer screen the call.");
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
    }

    v43 = v0[1];

    return v43(0);
  }
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  else
  {
    v5 = AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v20 = v0;

  if (static Task<>.isCancelled.getter())
  {
    (*(v0 + 120))(*(v0 + 64), *(v0 + 16), *(v0 + 40));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 136);
    if (v3)
    {
      v5 = *(v0 + 64);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      v17 = *(v0 + 120);
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      v9 = OUTLINED_FUNCTION_2_74(4.8751e-34);
      v17(v9);
      v4(v5, v6);
      dispatch thunk of CustomStringConvertible.description.getter();
      v10 = OUTLINED_FUNCTION_3_72();
      (v4)(v10);
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v19);

      *(v8 + 4) = v11;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v12, v13, "Should Answer timer canceled for: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      v4(*(v0 + 64), *(v0 + 40));
    }

    v14 = 0;
  }

  else
  {
    v14 = (*(*(v0 + 24) + 16))(*(v0 + 16));
  }

  v15 = *(v0 + 8);

  return v15(v14 & 1);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t AnsweringConditionTimer.__allocating_init(logger:timeToWaitForCall:callIsScreenable:)()
{
  OUTLINED_FUNCTION_3_1();
  v0 = swift_allocObject();
  AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)();
  return v0;
}

char *AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)()
{
  OUTLINED_FUNCTION_3_1();
  v6 = direct field offset for AnsweringConditionTimer.timer;
  type metadata accessor for AsyncCancellableTimer();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  *&v1[v6] = v7;
  *(v1 + 4) = v4;
  *(v1 + 5) = v3;
  v8 = direct field offset for AnsweringConditionTimer.logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 32))(&v1[v8], v5, v9);
  *(v1 + 2) = v2;
  *(v1 + 3) = v0;
  return v1;
}

uint64_t AnsweringConditionTimer.cancel()()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.cancel(), v3, v2);
}

{
  v1 = *(*(v0 + 16) + direct field offset for AnsweringConditionTimer.timer);
  *(v0 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.cancel(), v1, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  AsyncCancellableTimer.cancel()();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.cancel(), v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnsweringConditionTimer.deinit()
{

  v1 = direct field offset for AnsweringConditionTimer.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AnsweringConditionTimer.__deallocating_deinit()
{
  AnsweringConditionTimer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for AnsweringConditionTimer(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void RecentsCollectionViewCell.configure(with:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {
    v4[3] = type metadata accessor for RecentsCallItem(0);
    v4[4] = lazy protocol witness table accessor for type RecentsCallItem and conformance RecentsCallItem();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
    _s15ConversationKit15RecentsCallItemVWOcTm_1(result, boxed_opaque_existential_1, type metadata accessor for RecentsCallItem);

    dispatch thunk of RecentsListItemViewHelper.configure(with:)();

    __swift_destroy_boxed_opaque_existential_1(v4);
    RecentsCollectionViewCell.configureMultiselectEditAccessory(for:)(result);
    RecentsCollectionViewCell.configureTrailingAccessory(for:)(result);
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type RecentsCallItem and conformance RecentsCallItem()
{
  result = lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem;
  if (!lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem)
  {
    type metadata accessor for RecentsCallItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem);
  }

  return result;
}

void RecentsCollectionViewCell.messageTapHandler.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    v5 = dispatch thunk of RecentsListItemViewHelper.messageIndicatorView.getter();

    if (v5)
    {
      dispatch thunk of MessageIndicatorView.tapHandler.setter();
    }

    else
    {

      outlined consume of (@escaping @callee_guaranteed () -> ())?(a1, a2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for RecentsCollectionViewCell.avatarViewController : RecentsCollectionViewCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCell.avatarViewController : RecentsCollectionViewCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

void RecentsCollectionViewCell.avatarViewController.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    v1 = dispatch thunk of RecentsListItemViewHelper.avatarViewController.getter();

    if (v1)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *RecentsCollectionViewCell.avatarViewController.setter(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {
    v2 = result;
    if (result)
    {
      lazy protocol witness table accessor for type CNAvatarViewController and conformance CNAvatarViewController();
    }

    v3 = v2;

    OUTLINED_FUNCTION_44_0();
    dispatch thunk of RecentsListItemViewHelper.avatarViewController.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*RecentsCollectionViewCell.avatarViewController.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  RecentsCollectionViewCell.avatarViewController.getter();
  *a1 = v3;
  return RecentsCollectionViewCell.avatarViewController.modify;
}

void RecentsCollectionViewCell.avatarViewController.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    RecentsCollectionViewCell.avatarViewController.setter(v2);
  }

  else
  {
    RecentsCollectionViewCell.avatarViewController.setter(*a1);
  }
}

uint64_t key path getter for RecentsCollectionViewCell.joinButton : RecentsCollectionViewCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCell.joinButton : RecentsCollectionViewCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *RecentsCollectionViewCell.joinButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RecentsCollectionViewCell.joinButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void RecentsCollectionViewCell.detailAccessoryButton.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    dispatch thunk of RecentsListItemViewHelper.detailAccessoryButton.getter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for RecentsCollectionViewCell.doubleTapHandler : RecentsCollectionViewCell@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCell.doubleTapHandler : RecentsCollectionViewCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t RecentsCollectionViewCell.doubleTapHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t RecentsCollectionViewCell.doubleTapHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

id RecentsCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *RecentsCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for RecentsListItemLocation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton) = 0;
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  v6 = type metadata accessor for RecentsCollectionViewCell();
  *v5 = 0;
  v5[1] = 0;
  v13[0] = v0;
  v13[1] = v6;
  v7 = OUTLINED_FUNCTION_18_1();
  v10 = objc_msgSendSuper2(v8, v9, v7);
  v11 = [v10 contentView];
  (*(v2 + 104))(v4, *MEMORY[0x1E69D8950], v1);
  type metadata accessor for RecentsListItemViewHelper();
  swift_allocObject();
  *&v10[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper] = RecentsListItemViewHelper.init(parentView:location:)();

  RecentsCollectionViewCell.configureRootView()();

  return v10;
}

void RecentsCollectionViewCell.configureRootView()()
{
  v1 = [objc_opt_self() secondarySystemFillColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  [v0 setOpaque_];
  RecentsCollectionViewCell.configureSelectedBackgroundView()();
}

id RecentsCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RecentsCollectionViewCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall RecentsCollectionViewCell.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsCollectionViewCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  if (*&v0[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper])
  {

    [v0 isEditing];
    v1 = [v0 trailingAccessoryView];
    dispatch thunk of RecentsListItemViewHelper.layout(shouldHideTrailingAccessoryView:trailingAccessoryView:)();
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall RecentsCollectionViewCell.sizeThatFits(_:)(CGSize result)
{
  if (*&v1[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper])
  {

    [v1 isEditing];
    v2 = [v1 trailingAccessoryView];
    dispatch thunk of RecentsListItemViewHelper.sizeThatFits(_:shouldHideTrailingAccessoryView:trailingAccessoryView:)();
    v4 = v3;
    v6 = v5;

    result.width = v4;
    result.height = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall RecentsCollectionViewCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecentsCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  if (*&v1[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper])
  {

    dispatch thunk of RecentsListItemViewHelper.updateForParentTraitCollectionDidChange()();
  }

  else
  {
    __break(1u);
  }
}

id RecentsCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecentsCollectionViewCell.configureMultiselectEditAccessory(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit15RecentsCallItemVWOcTm_1(a1, v15, type metadata accessor for RecentsCallItemType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    UICollectionViewListCell.accessories.setter();
    return outlined destroy of RecentOngoingConversationMetadata(v15, type metadata accessor for RecentsCallItemType);
  }

  else
  {
    outlined destroy of RecentOngoingConversationMetadata(v15, type metadata accessor for RecentsCallItemType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1BC4BA940;
    (*(v10 + 104))(v12, *MEMORY[0x1E69DBF18], v9);
    v17 = type metadata accessor for UICellAccessory.LayoutDimension();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    return UICollectionViewListCell.accessories.setter();
  }
}

void RecentsCollectionViewCell.configureTrailingAccessory(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd, &_s15ConversationKit013RecentOngoingA8MetadataVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit15RecentsCallItemVWOcTm_1(a1, v12, type metadata accessor for RecentsCallItemType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of RecentOngoingConversationMetadata(v12, v9);
    v13 = *&v9[*(v7 + 24)];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *static RestrictedConversationChecker.shared) + 0x80))(v13))
    {
      RecentsCollectionViewCell.configureDetailAccessory()();
    }

    else
    {
      v15 = (*((*v14 & *v2) + 0x98))();
      if (!v15)
      {
        v15 = [objc_allocWithZone(type metadata accessor for RecentsJoinButton(0)) init];
      }

      v16 = v15;
      _s15ConversationKit15RecentsCallItemVWOcTm_1(v9, v6, type metadata accessor for RecentOngoingConversationMetadata);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      (*((*v14 & *v16) + 0x60))(v6);
      [v2 _setPopupMenuButton_];
      [v2 addSubview_];
      v17 = *((*v14 & *v2) + 0xA0);
      v18 = v16;
      v19 = v17(v16);
      v20 = (*((*v14 & *v2) + 0xB0))(v19);
      [v20 removeFromSuperview];
    }

    outlined destroy of RecentOngoingConversationMetadata(v9, type metadata accessor for RecentOngoingConversationMetadata);
  }

  else
  {
    outlined destroy of RecentOngoingConversationMetadata(v12, type metadata accessor for RecentsCallItemType);
    RecentsCollectionViewCell.configureDetailAccessory()();
  }
}

unint64_t lazy protocol witness table accessor for type CNAvatarViewController and conformance CNAvatarViewController()
{
  result = lazy protocol witness table cache variable for type CNAvatarViewController and conformance CNAvatarViewController;
  if (!lazy protocol witness table cache variable for type CNAvatarViewController and conformance CNAvatarViewController)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CNAvatarViewController, 0x1E695D0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CNAvatarViewController and conformance CNAvatarViewController);
  }

  return result;
}

void RecentsCollectionViewCell.messageTapHandler.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    v1 = dispatch thunk of RecentsListItemViewHelper.messageIndicatorView.getter();

    if (v1)
    {
      dispatch thunk of MessageIndicatorView.tapHandler.getter();
    }

    OUTLINED_FUNCTION_44_0();
  }

  else
  {
    __break(1u);
  }
}

void key path getter for RecentsCollectionViewCell.messageTapHandler : RecentsCollectionViewCell(uint64_t (**a1)()@<X8>)
{
  RecentsCollectionViewCell.messageTapHandler.getter();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v2 = swift_allocObject();
    *(v2 + 16) = v4;
    *(v2 + 24) = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = v2;
}

void key path setter for RecentsCollectionViewCell.messageTapHandler : RecentsCollectionViewCell(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1, v2);
  RecentsCollectionViewCell.messageTapHandler.setter(v4, v3);
}

void (*RecentsCollectionViewCell.messageTapHandler.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  RecentsCollectionViewCell.messageTapHandler.getter();
  *a1 = v3;
  a1[1] = v4;
  return RecentsCollectionViewCell.messageTapHandler.modify;
}

void RecentsCollectionViewCell.messageTapHandler.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_44_0();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2, v3);
    v4 = OUTLINED_FUNCTION_44_0();
    RecentsCollectionViewCell.messageTapHandler.setter(v4, v5);
    v6 = OUTLINED_FUNCTION_44_0();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_0();
    RecentsCollectionViewCell.messageTapHandler.setter(v8, v9);
  }
}

void (*RecentsCollectionViewCell.didDoubleTap(gesture:)(uint64_t a1))(uint64_t)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result(a1);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }

  return result;
}

Swift::Void __swiftcall RecentsCollectionViewCell.configureSelectedBackgroundView()()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.607843137 green:0.607843137 blue:0.607843137 alpha:0.72];
  [v11 setBackgroundColor_];

  [v11 _setDrawsAsBackdropOverlayWithBlendMode_];
  [v0 setSelectedBackgroundView_];
}

Swift::Void __swiftcall RecentsCollectionViewCell.configureDetailAccessory()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  [v0 addSubview_];

  v3 = (*((*v1 & *v0) + 0x98))([v0 _setPopupMenuButton_]);
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }
}

void *RecentsCollectionViewCell.trailingAccessoryView.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 superview];
    if (v4)
    {

      return v3;
    }
  }

  v6 = *((*v1 & *v0) + 0xB0);

  return v6();
}

uint64_t @nonobjc CNAvatarViewController.contacts.getter()
{
  v1 = [v0 contacts];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact, 0x1E695CD58);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t outlined init with take of RecentOngoingConversationMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RecentOngoingConversationMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double CGPoint.rounded(_:toScaleOf:)()
{
  OUTLINED_FUNCTION_0_83();
  v3 = [v2 traitCollection];
  [v3 displayScale];
  v5.n128_f64[0] = CGFloat.rounded(_:toScale:)(v0, v4, v1);
  OUTLINED_FUNCTION_1_77(v5, v6);

  return v1;
}

{
  OUTLINED_FUNCTION_0_83();
  [v2 displayScale];
  v4.n128_f64[0] = CGFloat.rounded(_:toScale:)(v0, v3, v1);
  OUTLINED_FUNCTION_1_77(v4, v5);
  return v1;
}

double CGPoint.rounded(_:toScale:)(uint64_t a1, __n128 a2, __n128 a3, double a4)
{
  v5 = a2.n128_f64[0];
  v7 = CGFloat.rounded(_:toScale:)(a1, a2.n128_f64[0], a3.n128_f64[0]);
  CGFloat.rounded(_:toScale:)(a1, v5, a4);
  return v7;
}

double CGPoint.rounded(_:toScaleOf:)(uint64_t a1, void *a2, double a3, double a4)
{
  swift_getObjectType();

  return specialized CGPoint.rounded(_:toScaleOf:)(a1, a2, a3, a4);
}

double specialized CGPoint.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  v9 = v8;
  v10 = CGFloat.rounded(_:toScale:)(a1, v8, a3);
  CGFloat.rounded(_:toScale:)(a1, v9, a4);

  return v10;
}

uint64_t IDSCapabilitiesChecker.Capabilities.init(faceTimeAudio:faceTimeVideo:faceTimeMultiway:videoMessaging:)(char a1, char a2, char a3, char a4)
{
  v4 = 256;
  if ((a1 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if ((a2 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = 0x1000000;
  if ((a3 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if ((a4 & 1) == 0)
  {
    v8 = 0;
  }

  return v6 | v7 | v8;
}

unint64_t IDSCapabilitiesChecker.Capabilities.faceTimeAudio.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 8) & 1;
  }
}

unint64_t IDSCapabilitiesChecker.Capabilities.faceTimeVideo.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 16) & 1;
  }
}

unint64_t IDSCapabilitiesChecker.Capabilities.faceTimeMultiway.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 24) & 1;
  }
}

unint64_t IDSCapabilitiesChecker.Capabilities.videoMessaging.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 40) & 1;
  }
}

unint64_t static IDSCapabilitiesChecker.Capabilities.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = vdupq_n_s64(a1);
  v4 = vdupq_n_s64(a2);
  *v3.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v3, xmmword_1BC4C74D0)), vceqzq_s64(vandq_s8(v3, xmmword_1BC4C74E0))), vuzp1q_s32(vceqzq_s64(vandq_s8(v4, xmmword_1BC4C74D0)), vceqzq_s64(vandq_s8(v4, xmmword_1BC4C74E0)))))), 0xFuLL));
  v3.i16[0] = vminv_u16(*v3.i8);
  return v3.i32[0] & ~(a2 ^ a1) & ((a1 >> 40) & 1 ^ ((a2 & 0x10000000000) == 0));
}

double key path setter for IDSCapabilitiesChecker.participantCapabilities : IDSCapabilitiesChecker(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

uint64_t key path setter for IDSCapabilitiesChecker.delegate : IDSCapabilitiesChecker(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 176);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*IDSCapabilitiesChecker.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return IDSCapabilitiesChecker.delegate.modify;
}

void IDSCapabilitiesChecker.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *IDSCapabilitiesChecker.__allocating_init(participants:lookupManager:)(uint64_t a1, void *a2)
{
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_29_6();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_23_24();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_21_21(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_26_19();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void *IDSCapabilitiesChecker.init(participants:lookupManager:)(uint64_t a1, void *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_23_24();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_21_21(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_26_19();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_5_52(a1, a7 + 8 * (a1 >> 6));
  v9 = v8[6] + 32 * result;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  *(v9 + 24) = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v5, v10);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  outlined init with take of ScreenSharingStateMonitor.Observation(v8, *(v6 + 56) + 8 * v5);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  OUTLINED_FUNCTION_29_16(v4, v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v8, v9);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  outlined init with take of Any(v10, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_8_51();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7;
  outlined init with take of TapInteractionHandler(v8, *(v6 + 56) + 40 * v5);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(v5[6] + 4 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v5, v10);
  }
}

{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(v5[6] + v4) = v6 & 1;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v5, v10);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  memcpy((*(v6 + 56) + 72 * v5), v8, 0x41uLL);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  v8 = v7 + 6 * v5;
  *(v8 + 4) = v9;
  *v8 = v10;
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v13);
  }
}

{
  v6 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  outlined init with take of Any(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

{
  v5 = OUTLINED_FUNCTION_5_52(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v13);
  }
}

{
  v5 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v11);
  }
}

{
  v5 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v13);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_5_52(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 22) = v11;
  *(v8 + 20) = v12;
  *(v8 + 16) = v13;
  *(v7[7] + 8 * result) = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5_52(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(a3 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  outlined init with take of Any(a2, (*(a3 + 56) + 32 * a1));
  OUTLINED_FUNCTION_8_51();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v4;
  }
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_52(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v12 + 32))(v11 + *(v12 + 72) * a1, a2);
  v13 = *(a5 + 56) + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  OUTLINED_FUNCTION_8_51();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }
}

void specialized _NativeDictionary._insert(at:key:value:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v7, v8, v9, v10);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v11 = OUTLINED_FUNCTION_17_31();
  v12(v11);
  v13 = (*(a4 + 56) + 3 * v4);
  *v13 = a3 & 1;
  v13[1] = BYTE1(a3) & 1;
  v13[2] = BYTE2(a3) & 1;
  OUTLINED_FUNCTION_8_51();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_5_52(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + result) = v5;
  v6 = (v4[7] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  v9 = v4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v11;
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5_52(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * result) = v5;
  v6 = (v4[7] + 32 * result);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v11 = v4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v13;
  }

  return result;
}

void *specialized IDSCapabilitiesChecker.init(participants:lookupManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12[3] = a4;
  v12[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 32))();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v8 = MEMORY[0x1E69E7CC0];
  a3[2] = Dictionary.init(dictionaryLiteral:)();
  a3[3] = Dictionary.init(dictionaryLiteral:)();
  a3[5] = 0;
  swift_unknownObjectWeakInit();
  a3[6] = v8;
  outlined init with copy of IDSLookupManager(v12, (a3 + 7));
  if (a1)
  {
    (*(*a3 + 232))(a1);
  }

  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x1E69D8FA0];

  [v9 addObserver:a3 selector:sel_handleLookupManagerDidChangeNotification_ name:v10 object:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a3;
}

uint64_t outlined destroy of IDSCapabilitiesChecker.ParticipantDestination?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22IDSCapabilitiesCheckerC22ParticipantDestination33_CDCD3D0B33FE10A11E29AF4D631CB8CALLVSgMd, &_s15ConversationKit22IDSCapabilitiesCheckerC22ParticipantDestination33_CDCD3D0B33FE10A11E29AF4D631CB8CALLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destructiveInjectEnumTag for IDSCapabilitiesChecker.Capabilities(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t outlined init with take of (key: UUID, value: IDSCapabilitiesChecker.Capabilities)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_20_3();
  (*(v6 + 32))(a2, a1);
  return a2;
}

id ConversationControlsLagunaMenuButtonProvider.activity.getter()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = [v1 activity];
    if (v2)
    {
      return v2;
    }
  }

  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x988))();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v3 = [v4 activity];

  if (v3)
  {
    v6 = [v3 metadata];
    if (!v6 || (v7 = v6, v8 = [v6 supportsContinuationOnTV], v7, (v8 & 1) == 0))
    {

      return 0;
    }
  }

  return v3;
}

id ConversationControlsLagunaMenuButtonProvider.__allocating_init(controlsManager:context:menuHostViewController:suggestion:isInSecondaryBanner:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a6;
  swift_allocObject();
  return ConversationControlsLagunaMenuButtonProvider.init(controlsManager:context:menuHostViewController:suggestion:isInSecondaryBanner:)(a1, a2, a3, a4, a5, v6);
}

id ConversationControlsLagunaMenuButtonProvider.init(controlsManager:context:menuHostViewController:suggestion:isInSecondaryBanner:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  *(v6 + 184) = 0;
  *(v6 + 193) = 0;
  *(v6 + 200) = 0;
  *(v6 + 208) = MEMORY[0x1BFB209B0](0xD00000000000001BLL, 0x80000001BC4FDE00);
  *(v6 + 216) = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC4FDE20);
  v11 = *(v6 + 184);
  *(v6 + 184) = a5;
  v12 = a5;

  *(v6 + 192) = a6;
  v13 = a3;
  v14 = a1;
  v15 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
  v16 = *(v15 + 192);
  v17 = objc_opt_self();
  v18 = v17;
  if (v16 != 1)
  {

    ControlsButtonProvider.backgroundStyle.setter([v18 systemGreenColor], 0, 64);
    v23 = ControlsButtonProvider.prominentTitleFont.getter();
    ControlsButtonProvider.titleFont.setter(v23, v24);
    goto LABEL_5;
  }

  ControlsButtonProvider.backgroundStyle.setter([v17 whiteColor], 0, 64);
  v19 = [v18 systemBlackColor];
  ControlsButtonProvider.foregroundColor.setter(v19, v20);
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    ControlsButtonProvider.titleFont.setter(result, v22);

LABEL_5:
    v25 = objc_opt_self();

    v26 = [v25 conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_14_2();
    v27.super.isa = v26;
    v30 = OUTLINED_FUNCTION_17_0(1163284301, 0xE400000000000000, v28, v29, v27);
    v32 = v31;

    swift_beginAccess();
    *(v15 + 120) = v30;
    *(v15 + 128) = v32;

    ControlsButtonProvider.title.didset(v34, v33);

    return v15;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationControlsLagunaMenuButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()();
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC4FDE40, v2);
    [v2 addTarget:v0 action:sel_lagunaHandoffButtonTapped forControlEvents:0x2000];
  }
}

void ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 193);
    v4 = [Strong titleLabel];
    if (v4)
    {
      v5 = v4;
      v6 = 1.0;
      if (v3)
      {
        v6 = 0.0;
      }

      [v4 setAlpha_];
    }
  }
}

uint64_t ConversationControlsLagunaMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC568], v2);
  return UIButton.Configuration.buttonSize.setter();
}

Swift::Bool __swiftcall ConversationControlsLagunaMenuButtonProvider.shouldEnableMenu()()
{
  v1 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
  if (v1)
  {

    v2 = *(v0 + 193) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id ConversationControlsLagunaMenuButtonProvider.spinnerView.getter()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityIndicatorView, 0x1E69DC638);
    UIActivityIndicatorView.init(style:size:)(v4, ConversationKit_PlatformActivityIndicatorStyle_spinner, ConversationKit_PlatformActivityIndicatorSize_medium);
    v5 = *(v0 + 200);
    *(v3 + 200) = v6;
    v2 = v6;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

Swift::Void __swiftcall ConversationControlsLagunaMenuButtonProvider.lagunaHandoffButtonTapped()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if ((*(v0 + 193) & 1) == 0 && !ConversationControlsLagunaMenuButtonProvider.shouldEnableMenu()())
    {
      v2 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
      ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(0, v2);
    }
  }
}

void ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if ((*(v2 + 193) & 1) == 0)
    {
      *(v2 + 193) = 1;
      ConversationControlsLagunaMenuButtonProvider.showLoading()();
      ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
      v6 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 160)) + 0x578))();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        swift_weakInit();

        ConduitLagunaNoticeManager.pushSession(lightweightHandoff:selectedActivity:completion:)(a1 & 1, a2, partial apply for closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:), v8);
      }
    }
  }
}

void ConversationControlsLagunaMenuButtonProvider.showLoading()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = ConversationControlsLagunaMenuButtonProvider.spinnerView.getter();
    v4 = [v3 superview];

    if (v4)
    {

      v2 = v4;
    }

    else
    {
      [v2 intrinsicContentSize];
      v6 = v5;
      v8 = v7;
      ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()();
      v9 = *(v0 + 200);
      v10 = *(v0 + 192);
      v11 = objc_opt_self();
      v12 = v9;
      v13 = &selRef_systemGrayColor;
      if (!v10)
      {
        v13 = &selRef_whiteColor;
      }

      v14 = [v11 *v13];
      [v12 setColor_];

      [*(v0 + 200) setTranslatesAutoresizingMaskIntoConstraints_];
      [v2 addSubview_];
      v15 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC4BA7F0;
      v17 = [*(v0 + 200) centerYAnchor];
      v18 = [v2 centerYAnchor];
      v19 = [v17 constraintEqualToAnchor_];

      *(v16 + 32) = v19;
      v20 = [*(v0 + 200) centerXAnchor];
      v21 = [v2 centerXAnchor];
      v22 = [v20 constraintEqualToAnchor_];

      *(v16 + 40) = v22;
      v23 = [*(v0 + 200) widthAnchor];
      v24 = [v23 constraintEqualToConstant_];

      *(v16 + 48) = v24;
      v25 = [*(v0 + 200) heightAnchor];
      v26 = [v25 constraintEqualToConstant_];

      *(v16 + 56) = v26;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 activateConstraints_];

      [*(v0 + 200) startAnimating];
    }
  }
}

uint64_t closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v12 = static OS_dispatch_queue.main.getter();
    v15 = v6;
    v13 = v12;
    aBlock[4] = partial apply for closure #1 in closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_28;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v15);
  }

  return result;
}

void closure #1 in closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(uint64_t a1)
{
  *(a1 + 193) = 0;
  ConversationControlsLagunaMenuButtonProvider.hideLoading()();
  v1._countAndFlagsBits = 0x6D6F432068737550;
  v1._object = 0xED00006574656C70;
  ConversationControlsMenuButtonProvider.dismissMenu(context:)(v1);
}

void ConversationControlsLagunaMenuButtonProvider.hideLoading()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = ConversationControlsLagunaMenuButtonProvider.spinnerView.getter();
    [v2 stopAnimating];

    [*(v0 + 200) removeFromSuperview];
    ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()();
  }
}

Class ConversationControlsLagunaMenuButtonProvider.menu(for:)()
{
  v2 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 616))() & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Displaying Laguna menu", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  OUTLINED_FUNCTION_306();

  v7 = v2[20];
  v66 = MEMORY[0x1E69E7CC0];
  v8 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v11.super.isa = v10;
    OUTLINED_FUNCTION_17_0(0x454D495445434146, 0xEF40255F444E415FLL, v1, 0xEF74694B6E6F6974, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = [v9 concatenatedDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    static String.localizedStringWithFormat(_:_:)();
    OUTLINED_FUNCTION_306();
  }

  else
  {
    v9 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v18.super.isa = v9;
    OUTLINED_FUNCTION_17_0(0x454D495445434146, 0xE800000000000000, v1, 0xEF74694B6E6F6974, v18);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x380))())
  {

    preferredElementSize = MEMORY[0x1E69E7CC0];
    v20 = &off_1E7FE9000;
    v21 = MEMORY[0x1E69E6158];
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
    v22 = @nonobjc UIImage.__allocating_init(systemName:)(0x6F65646976, 0xE500000000000000);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
    v23 = v2[27];
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v7;
    v26 = v22;
    v27 = v23;
    v28 = v7;
    v59._rawValue = 0;
    OUTLINED_FUNCTION_3_0();
    v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x1BFB20CC0](v29);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    preferredElementSize = v66;

    v21 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_306();
    v20 = &off_1E7FE9000;
  }

  v30 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
  if (v30)
  {
    v31 = v30;
    v32 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV0B8ControlsO_Tt0g5();
    v33 = v21;
    v34 = [objc_opt_self() labelColor];
    v35 = [v32 imageWithTintColor_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
    v36 = [objc_opt_self() v20[465]];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_14_2();
    v37.super.isa = v36;
    OUTLINED_FUNCTION_17_0(v38, v39, v40, v41, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BC4BA940;
    v43 = [v31 concatenatedDescription];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v42 + 56) = v33;
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    static String.localizedStringWithFormat(_:_:)();

    v47 = v2[26];
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v31;
    v50 = v35;
    v51 = v47;
    v52 = v31;
    v59._rawValue = 0;
    OUTLINED_FUNCTION_3_0();
    v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x1BFB20CC0](v53);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    preferredElementSize = v66;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v54 = *MEMORY[0x1E69DDDC8];
  v60[64] = 0;
  v67[0] = 0xD000000000000017;
  v67[1] = 0x80000001BC4FDE60;
  v67[2] = 2;
  v67[3] = v54;
  v68 = 0;
  v69 = 4;
  v70 = 0;
  v71 = 0;
  v61[0] = 0xD000000000000017;
  v61[1] = 0x80000001BC4FDE60;
  v61[2] = 2;
  v61[3] = v54;
  v62 = 0;
  v63 = 4;
  v64 = 0;
  v65 = 0;
  v55 = v54;
  outlined init with copy of SymbolImageDescription(v67, v60);
  outlined destroy of SymbolImageDescription(v61);
  v56 = static UIImage.symbolImage(for:)(v67);
  outlined destroy of SymbolImageDescription(v67);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  OUTLINED_FUNCTION_3_0();
  v72.value.super.isa = v56;
  v72.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v57, v58, v72, 33, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v59).super.super.isa;
}

void closure #1 in ConversationControlsLagunaMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6 && (v6, (*(v5 + 193) & 1) == 0))
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, &static Logger.conversationControls);
      v8 = a3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;
        if ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x2C0))())
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
          v13 = String.init<A>(reflecting:)();
          v15 = v14;
        }

        else
        {
          v15 = 0xE300000000000000;
          v13 = 7104878;
        }

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_1BBC58000, v9, v10, "Laguna start handoff of facetime: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
        MEMORY[0x1BFB23DF0](v11, -1, -1);
      }

      v17 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
      ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(0, v17);
    }

    else
    {
    }
  }
}

uint64_t closure #2 in ConversationControlsLagunaMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if ((*(v5 + 193) & 1) == 0)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, &static Logger.conversationControls);
        v8 = a3;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v17 = v12;
          *v11 = 136315138;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
          v13 = v8;
          v14 = String.init<A>(reflecting:)();
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

          *(v11 + 4) = v16;
          _os_log_impl(&dword_1BBC58000, v9, v10, "Laguna start handoff of activity: %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1BFB23DF0](v12, -1, -1);
          MEMORY[0x1BFB23DF0](v11, -1, -1);
        }

        ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(1, v8);
      }
    }
  }

  return result;
}

void ConversationControlsLagunaMenuButtonProvider.__ivar_destroyer()
{
  v1 = *(v0 + 216);
}

id *ConversationControlsLagunaMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsLagunaMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsLagunaMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnsweringMachineStatusService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnsweringMachineStatusService(0) + 20);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnsweringMachineStatusService.isInSupportedEnvirement.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnsweringMachineStatusService(0) + 24));

  return v1;
}

uint64_t AnsweringMachineStatusService.init(logger:isInSupportedEnvirement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = type metadata accessor for AnsweringMachineStatusService(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Logger();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a1, v10);
  v12 = &a4[*(v8 + 24)];
  *v12 = a2;
  *(v12 + 1) = a3;
  return result;
}

unint64_t type metadata completion function for AnsweringMachineStatusService(uint64_t a1)
{
  result = type metadata accessor for TUFeatureFlags();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for TUFeatureFlags()
{
  result = lazy cache variable for type metadata for TUFeatureFlags;
  if (!lazy cache variable for type metadata for TUFeatureFlags)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUFeatureFlags);
  }

  return result;
}

BOOL specialized Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

Swift::Int ShareActivitiesMoreMenuViewModel.MenuType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t ShareActivitiesMoreMenuViewModel.__allocating_init(call:controlsManager:menuType:callCenter:)(void *a1, void *a2, char *a3, void *a4)
{
  v8 = swift_allocObject();
  ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(a1, a2, a3, a4);
  return v8;
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ShareActivitiesMoreMenuViewModel.stopAction()();
  }

  return result;
}

Swift::Void __swiftcall ShareActivitiesMoreMenuViewModel.stopAction()()
{
  if (*(v0 + 40))
  {
    ShareActivitiesMoreMenuViewModel.stopSharePlay()();
  }

  else
  {
    ShareActivitiesMoreMenuViewModel.stopScreenShare()();
  }
}

uint64_t closure #2 in ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v1 = ShareActivitiesMoreMenuViewModel.secondaryView()();

  return v1;
}

uint64_t ShareActivitiesMoreMenuViewModel.secondaryView()()
{
  if (*(v0 + 40))
  {
    return ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView()();
  }

  ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()();
  return 0;
}

uint64_t ShareActivitiesMoreMenuViewModel.createMenuItem()()
{
  if (!ShareActivitiesMoreMenuViewModel.canShowSharePlay()())
  {
    return 0;
  }

  v1 = *(v0 + 56);
  dispatch thunk of FTMenuItem.dismissOnTap.setter();
  if (*(v0 + 40))
  {
    v2 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
    if (v2)
    {
    }

    dispatch thunk of FTMenuItem.isSessionActive.setter();
    closure #2 in ShareActivitiesMoreMenuViewModel.createMenuItem()(v3);
  }

  else
  {
    ShareActivitiesMoreMenuViewModel.isScreenShareActive()();
    dispatch thunk of FTMenuItem.isSessionActive.setter();
    closure #1 in ShareActivitiesMoreMenuViewModel.createMenuItem()(v0);
  }

  dispatch thunk of FTMenuItem.subtitle.setter();

  return v1;
}

Swift::Bool __swiftcall ShareActivitiesMoreMenuViewModel.canShowSharePlay()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v3 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v6))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v7, v8, "canShowSharePlay - call is nil or not connected");
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_19;
  }

  v3 = Strong;
  if (![Strong isConnected])
  {

    goto LABEL_7;
  }

  if (([v3 isEmergency]& 1) != 0)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v5))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v9 = [*(v0 + 32) conversationManager];
  v10 = [v9 isSharePlayAvailable];

  if (!v10)
  {
    v4 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v22))
    {
LABEL_17:
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v23);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_18();
    }

LABEL_18:

LABEL_19:
    return 0;
  }

  if (![*(v1 + 48) sharePlayInCallsEnabled])
  {
    v30 = [v3 provider];
    v31 = [v30 isFaceTimeProvider];

    if (!v31 || ([v3 isConversation]& 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  if (![v3 isSharePlayCapable])
  {
    v4 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_163(v32))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = [v3 provider];
  v12 = [v11 isFaceTimeProvider];

  if (!v12)
  {
    v33 = [v3 provider];
    v34 = [v33 isTelephonyProvider];

    if (!v34)
    {
      v4 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_163(v46))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (!ShareActivitiesMoreMenuViewModel.isScreenShareActive()())
    {
      v35 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
      if (!v35)
      {
        v36 = 0;
        goto LABEL_30;
      }
    }

    v36 = 1;
LABEL_30:
    v37 = v3;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109376;
      *(v40 + 4) = v36;
      *(v40 + 8) = 1024;
      *(v40 + 10) = [v37 isConferenced];

      OUTLINED_FUNCTION_219();
      _os_log_impl(v41, v42, v43, v44, v45, 0xEu);
      OUTLINED_FUNCTION_18();
    }

    else
    {

      v38 = v37;
    }

    if (v36)
    {

      return 1;
    }

    else
    {
      v47 = [v37 isConferenced];

      return v47 ^ 1;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v15 = 136315138;
    v17 = ShareActivitiesMoreMenuViewModel.conversation.getter();
    if (v17)
    {
      v18 = v17;
      [v17 state];

      type metadata accessor for TUConversationState(0);
      v19 = String.init<A>(reflecting:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v52);

    *(v15 + 4) = v48;
    _os_log_impl(&dword_1BBC58000, v13, v14, "canShowSharePlay - conversation state is %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

LABEL_41:
  v49 = ShareActivitiesMoreMenuViewModel.conversation.getter();
  if (!v49)
  {
    goto LABEL_19;
  }

  v50 = v49;
  v51 = [v49 state];

  return v51 == 3;
}

Swift::Bool __swiftcall ShareActivitiesMoreMenuViewModel.isScreenShareActive()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong isSharingScreen];

  return v2;
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.createMenuItem()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v55 = String.init(_localized:table:comment:)();
  v56 = v10;
  lazy protocol witness table accessor for type String and conformance String();
  v11 = Text.init<A>(_:)();
  v53 = v12;
  v52 = v13;
  v15 = v14;
  if (!ShareActivitiesMoreMenuViewModel.isScreenShareActive()())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return v11;
    }

    v20 = Strong;
    v21 = v11;
    v22 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x980))(&v55);

    v23 = v57;
    if (v57)
    {
      v24 = v58;
      __swift_project_boxed_opaque_existential_1(&v55, v57);
      v25 = (*(v24 + 104))(v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      if (v25)
      {
        v26 = [v25 activity];
        v27 = [v26 originator];

        if (v27)
        {
          v28 = [v25 activity];
          v29 = [v28 isScreenSharingActivity];

          if (v29)
          {
            if ((*((*v22 & **(a1 + 64)) + 0x128))() == 3 || (v40 = outlined bridged method (ob) of @objc CNContact.displayName.getter([objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_]), !v41))
            {
              String.LocalizationValue.init(stringLiteral:)();
              v55 = String.init(_localized:table:comment:)();
              v56 = v48;
            }

            else
            {
              v42 = v40;
              v43 = v41;
              String.LocalizationValue.init(stringLiteral:)();
              String.init(_localized:table:comment:)();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1BC4BA940;
              *(v44 + 56) = MEMORY[0x1E69E6158];
              *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v44 + 32) = v42;
              *(v44 + 40) = v43;
              v45 = String.init(format:_:)();
              v47 = v46;

              v55 = v45;
              v56 = v47;
            }

            v11 = Text.init<A>(_:)();
            outlined consume of Text.Storage(v21, v53, v52 & 1);

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of CallControlsService?(&v55, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    }

    return v21;
  }

  v50 = v11;
  v51 = v15;
  v16 = *(a1 + 64);
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x178))(&v55);
  v18 = v55;
  v54 = v55;
  RemoteControlState.associatedParticipant.getter(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of CallControlsService?(v4, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    outlined consume of RemoteControlState(v18);
LABEL_15:
    String.LocalizationValue.init(stringLiteral:)();
    v55 = String.init(_localized:table:comment:)();
    v56 = v38;
    v11 = Text.init<A>(_:)();
    outlined consume of Text.Storage(v50, v53, v52 & 1);

    return v11;
  }

  (*(v6 + 32))(v8, v4, v5);
  v30 = outlined consume of RemoteControlState(v18);
  if ((*((*v17 & *v16) + 0x128))(v30) != 2)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  String.LocalizationValue.init(stringLiteral:)();
  String.init(_localized:table:comment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  v32 = Participant.displayName.getter();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = String.init(format:_:)();
  v37 = v36;

  v55 = v35;
  v56 = v37;
  v11 = Text.init<A>(_:)();
  outlined consume of Text.Storage(v50, v53, v52 & 1);

  (*(v6 + 8))(v8, v5);
  return v11;
}

Swift::Bool __swiftcall ShareActivitiesMoreMenuViewModel.isSharePlayActive()()
{
  v0 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t closure #2 in ShareActivitiesMoreMenuViewModel.createMenuItem()(double a1)
{
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_localized:table:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v7 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
  if (v7)
  {
    v8 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_localized:table:comment:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA940;
    v10 = TUConversationActivitySession.concatenatedDescription.getter();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    String.init(format:_:)();

    v13 = Text.init<A>(_:)();
    outlined consume of Text.Storage(v2, v4, v6 & 1);

    return v13;
  }

  return v2;
}

void *ShareActivitiesMoreMenuViewModel.sharePlayActivity()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x998))();

  if (v2)
  {
    v3 = [v2 activity];
    v4 = [v3 isScreenSharingActivity];

    if (v4)
    {

      return 0;
    }
  }

  return v2;
}

Swift::Void __swiftcall ShareActivitiesMoreMenuViewModel.stopScreenShare()()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v1))
  {
    v2 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v2);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    ConversationControlsManager.stopScreenShare()();
  }
}

Swift::Void __swiftcall ShareActivitiesMoreMenuViewModel.stopSharePlay()()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  v10 = ShareActivitiesMoreMenuViewModel.conversation.getter();
  if (v10)
  {
    v11 = v10;
    v12 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
    if (v12)
    {
      v13 = v12;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136315138;
        v18 = TUConversationActivitySession.uniqueIdentifier.getter();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v24);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1BBC58000, v14, v15, "End share play session: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      oslog = [*(v1 + 32) conversationManager];
      [oslog presentDismissalAlertForActivitySession:v13 onConversation:v11];

      goto LABEL_11;
    }
  }

  oslog = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = OUTLINED_FUNCTION_33();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v21, "Not able to find session", v22, 2u);
    OUTLINED_FUNCTION_27();
  }

LABEL_11:
}

uint64_t ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()()
{
  v1 = v0;
  v165 = type metadata accessor for FTMenuContextMenuView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v164 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v157 - v7;
  v170 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v184 = v12 - v11;
  v180 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v190 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v157 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v179 = &v157 - v25;
  v183 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v157 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMR);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v157 - v32;
  v166 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem();
  OUTLINED_FUNCTION_1();
  v168 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v162 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v185 = &v157 - v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_33();
    *v40 = 0;
    _os_log_impl(&dword_1BBC58000, v38, v39, "Open context menu for Screen Share", v40, 2u);
    OUTLINED_FUNCTION_27();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v176 = v9;
    v41 = type metadata accessor for FTMenuItem();
    v173 = objc_opt_self();
    v42 = [v173 conversationKit];
    v43.super.isa = v42;
    OUTLINED_FUNCTION_17_0(0x794D206572616853, 0xEF6E656572635320, 0x61737265766E6F43, 0xEF74694B6E6F6974, v43);

    type metadata accessor for FTMenuItem.IconType();
    v44 = OUTLINED_FUNCTION_16_34();
    v181 = v45;
    __swift_storeEnumTagSinglePayload(v44, v46, v47, v45);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();

    v182 = v41;
    static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)();

    outlined destroy of CallControlsService?(0x61737265766E6F43, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMR);

    v48 = v185;
    FTMenuContextMenuView.ContextMenuItem.init(primary:nested:)();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v50 = v49;
    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    v53 = v52 + 1;
    v186 = v1;
    if (v52 >= v51 >> 1)
    {
LABEL_65:
      OUTLINED_FUNCTION_59_3(v51);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v50 = v155;
    }

    v54 = Strong;
    *(v50 + 16) = v53;
    v55 = *(v168 + 32);
    v56 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v163 = v50;
    v159 = v56;
    v158 = *(v168 + 72);
    v168 += 32;
    v160 = v55;
    v57 = (v55)(v50 + v56 + v158 * v52, v48, v166);
    v52 = (*((*MEMORY[0x1E69E7D40] & *v54) + 0x9D8))(v57);
    v58 = 0;
    v48 = *(v52 + 16);
    v185 = MEMORY[0x1E69E7CC0];
    while (v48 != v58)
    {
      v51 = *(v52 + 16);
      if (v58 >= v51)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v59 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v53 = *(v18 + 72);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_6(v60, v29, v61);
      _s15ConversationKit11ParticipantVWOcTm_6(v29, v16, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v64 = *(v63 + 48);
          v65 = (v16 + *(v63 + 64));
          outlined consume of Participant.CopresenceInfo?(*v65, v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7]);
          outlined destroy of Participant.MediaInfo(v16 + v64);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v66 + 8))(v16);
          outlined init with take of Participant(v29, v179);
          v67 = v185;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v191 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v67 = v191;
          }

          v70 = *(v67 + 2);
          v69 = *(v67 + 3);
          v71 = (v70 + 1);
          if (v70 >= v69 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v69);
            v185 = v72;
            v178 = v73;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v71 = v185;
            v70 = v178;
            v67 = v191;
          }

          ++v58;
          *(v67 + 2) = v71;
          v185 = v67;
          outlined init with take of Participant(v179, &v67[v59 + v70 * v53]);
          break;
        case 6u:
          outlined destroy of Participant(v29);
          goto LABEL_10;
        default:
          outlined destroy of Participant(v29);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v62 + 8))(v16);
LABEL_10:
          ++v58;
          break;
      }
    }

    v53 = Strong;
    v75 = MEMORY[0x1E69E7D40];
    v76 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x2A0);
    v76(v74);
    v78 = v77;
    ObjectType = swift_getObjectType();
    v80 = (*(v78 + 192))(ObjectType, v78);
    v81 = swift_unknownObjectRelease();
    v76(v81);
    v83 = v82;
    v84 = swift_getObjectType();
    LOBYTE(v83) = (*(v83 + 160))(v84, v83);
    v85 = swift_unknownObjectRelease();
    if (v83)
    {
      v161 = (*((*v75 & *v53) + 0x380))(v85) ^ 1;
    }

    else
    {
      v161 = 0;
    }

    v29 = v185;
    v16 = v186;
    v52 = MEMORY[0x1E69E7CC0];
    v180 = *(v185 + 2);
    if (v180 >= 2)
    {
      v157 = v80;
      v48 = 0;
      v174 = &v23[v190[9]];
      v90 = *(v18 + 80);
      v178 = &v185[(v90 + 32) & ~v90];
      v195 = MEMORY[0x1E69E7CC0];
      v177 = v190[7];
      v167 = (v176 + 8);
      v172 = "voiceOverUpdateHandler";
      v176 = v190[11];
      v179 = v90;
      v175 = (v90 + 24) & ~v90;
      v171 = xmmword_1BC4BA940;
      v91 = v184;
      while (1)
      {
        v51 = *(v29 + 2);
        if (v48 >= v51)
        {
          goto LABEL_64;
        }

        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_6(v92, v23, v93);
        v94 = *&v23[v177];
        if (!v94)
        {
          goto LABEL_34;
        }

        v95 = v94;
        v96 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v95);
        if (!v97)
        {
          break;
        }

        v98 = v96;
        v99 = v97;
        if (([v95 shouldHideContact] & 1) == 0)
        {

          goto LABEL_34;
        }

        PersonNameComponents.init()();
        PersonNameComponents.givenName.setter();
        PersonNameComponents.familyName.setter();
        if (one-time initialization token for initials != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v100 = static NSPersonNameComponentsFormatter.initials;
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v102 = [v100 stringFromPersonNameComponents_];

        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v104;

        (*v167)(v91, v170);
        v191 = v103;
        v192 = v105;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.localizedUppercase.getter();

        v53 = 0;
        v16 = v99;
LABEL_35:
        ++v48;

        v108 = 0;
        v109 = *&v23[v176];
        v110 = 1 << *(v109 + 32);
        v111 = (v110 + 63) >> 6;
        v112 = 56;
        if (!v111)
        {
          goto LABEL_40;
        }

        while (1)
        {
          v113 = *(v109 + v112);
          if (v113)
          {
            break;
          }

          v108 -= 64;
          --v111;
          v112 += 8;
          if (!v111)
          {
            goto LABEL_40;
          }
        }

        v114 = __clz(__rbit64(v113));
        if (v114 - v110 != v108)
        {
          specialized Set.subscript.getter(v114 - v108);
          v116 = 0;
          v115 = 1;
        }

        else
        {
LABEL_40:
          v115 = 0;
          v116 = 1;
        }

        v117 = v188;
        __swift_storeEnumTagSinglePayload(v188, v116, 1, v190);
        outlined destroy of CallControlsService?(v117, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        if ((v115 & 1) == 0 && *(v174 + 1))
        {
          v118 = [v173 conversationKit];
          OUTLINED_FUNCTION_5_5();
          v119.super.isa = v118;
          OUTLINED_FUNCTION_17_0(v120, v121, v122, v123, v119);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v124 = swift_allocObject();
          *(v124 + 16) = v171;
          v191 = v98;
          v192 = v16;
          v53 = MEMORY[0x1E69E6158];
          v125 = String.init<A>(_:)();
          v127 = v126;
          *(v124 + 56) = v53;
          *(v124 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v124 + 32) = v125;
          *(v124 + 40) = v127;
          String.init(format:_:)();
          v16 = v128;
        }

        v129 = OUTLINED_FUNCTION_16_34();
        __swift_storeEnumTagSinglePayload(v129, v130, v131, v181);
        OUTLINED_FUNCTION_7_5();
        v132 = v189;
        _s15ConversationKit11ParticipantVWOcTm_6(v23, v189, v133);
        v134 = v175;
        v135 = swift_allocObject();
        *(v135 + 16) = v186;
        outlined init with take of Participant(v132, v135 + v134);

        v52 = static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)();

        outlined destroy of CallControlsService?(v53, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMR);
        v136 = outlined destroy of Participant(v23);
        MEMORY[0x1BFB20CC0](v136);
        v137 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v195 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v137 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v137);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v91 = v184;
        v29 = v185;
        if (v48 == v180)
        {
          v53 = Strong;
          v80 = v157;
          goto LABEL_49;
        }
      }

LABEL_34:
      OUTLINED_FUNCTION_7_5();
      v106 = v189;
      _s15ConversationKit11ParticipantVWOcTm_6(v23, v189, v107);
      ParticipantContactDetailsCache.contactDetails(for:)();
      outlined destroy of Participant(v106);
      v53 = v191;
      v98 = v193;
      v16 = v194;
      goto LABEL_35;
    }

LABEL_49:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*(*static Defaults.shared + 168))() & 1) != 0 && (v161)
    {
      v138 = *(v29 + 2);

      if (v138)
      {

LABEL_58:
        v140 = [v173 conversationKit];
        OUTLINED_FUNCTION_5_5();
        v141.super.isa = v140;
        OUTLINED_FUNCTION_17_0(v142, v143, v144, v145, v141);

        v146 = v187;
        __swift_storeEnumTagSinglePayload(v187, 1, 1, v181);
        OUTLINED_FUNCTION_20();
        v147 = swift_allocObject();
        swift_weakInit();
        v148 = swift_allocObject();
        *(v148 + 16) = v147;
        *(v148 + 24) = v53;

        v149 = v53;
        static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)();

        outlined destroy of CallControlsService?(v146, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMR);

        v150 = v162;
        FTMenuContextMenuView.ContextMenuItem.init(primary:nested:)();
        v151 = v163;
        v153 = *(v163 + 16);
        v152 = *(v163 + 24);
        if (v153 >= v152 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v152);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v151 = v156;
        }

        *(v151 + 16) = v153 + 1;
        v163 = v151;
        v160(v151 + v159 + v153 * v158, v150, v166);
        goto LABEL_61;
      }

      v139 = specialized Set.isEmpty.getter(v80);

      if (!v139)
      {
        goto LABEL_58;
      }
    }

    else
    {
    }

LABEL_61:
    FTMenuContextMenuView.init(menuItems:)();
    lazy protocol witness table accessor for type FTMenuContextMenuView and conformance FTMenuContextMenuView();
    AnyView.init<A>(_:)();

    return 0;
  }

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v86, v87))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v88, v89, "Not able to find controls manager");
    OUTLINED_FUNCTION_27();
  }

  dispatch thunk of FTMenuItem.dismiss()();
  return 0;
}

uint64_t ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView()()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v1))
  {
    v2 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v2);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = (*((*MEMORY[0x1E69E7D40] & *static SharePlayDiscoverabilityAppsController.shared) + 0x98))();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong provider];

    LODWORD(v10) = [v11 isTelephonyProvider];
    v12 = v10 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  swift_weakInit();

  static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(v8, v12, partial apply for closure #1 in ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView(), v13, v14);

  v15 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v16.super.isa = v15;
  v20 = OUTLINED_FUNCTION_17_0(v17, 0xE900000000000059, v18, v19, v16);

  return v20;
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Platform.current.getter() == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = ShareActivitiesMoreMenuViewModel.conversation.getter();

      if (v8)
      {

        goto LABEL_15;
      }
    }

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_15;
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      goto LABEL_15;
    }

    v18 = [Strong callUUID];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.init(uuidString:)();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      outlined destroy of CallControlsService?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_15:
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_19;
      }

      v10 = swift_unknownObjectWeakLoadStrong();

      if (!v10)
      {
        goto LABEL_19;
      }

      ConversationControlsManager.requestScreenSharingPicker(with:)();
      goto LABEL_18;
    }

    (*(v5 + 32))(v7, v3, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v20 = swift_unknownObjectWeakLoadStrong();

      if (v20)
      {
        ConversationControlsManager.requestScreenSharingPicker(forCall:with:)();
      }
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        ConversationControlsManager.showHUD()();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        ConversationControlsManager.startScreenShareWithCountdown(completion:)(TPNumberPadCharacter.rawValue.getter, 0, v11, v12, v13, v14, v15, v16, v21[0], v21[1], v21[2], v22[0], v22[1], v22[2], v23[0], v23[1], v23[2], v24[0]);
LABEL_18:
      }
    }
  }

LABEL_19:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of FTMenuItem.dismiss()();
  }

  return result;
}

id ShareActivitiesMoreMenuViewModel.conversation.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [*(v0 + 32) activeConversationForCall_];

  return v3;
}

void closure #1 in closure #3 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for Participant(0) + 28));
  v4 = v2;
  if (v2)
  {
    v3 = v2;
    v2 = v4;
  }

  ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(v2);
}

void ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v64 = a1;
    v8 = ShareActivitiesMoreMenuViewModel.conversation.getter();
    if (!v8 || (v8, (v9 = ShareActivitiesMoreMenuViewModel.conversation.getter()) != 0) && (v10 = v9, v11 = [v9 provider], v10, LODWORD(v10) = objc_msgSend(v11, sel_isTelephonyWithSharePlayProvider), v11, v10))
    {
      dispatch thunk of FTMenuItem.dismiss()();
      if ([*(v2 + 48) sharePlayInCallsEnabled])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          if ([Strong isSharePlayCapable])
          {
            v14 = [objc_opt_self() remoteMembersForCall_];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
            lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
            static Set._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest, 0x1E69D8C10);
            v15 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
            v16 = [v13 uniqueProxyIdentifierUUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v5 + 8))(v7, v4);
            [v15 setUUID_];

            [v15 setRequestToShareScreen_];
            v18 = [objc_opt_self() telephonyWithSharePlayProvider];
            [v15 setProvider_];

            v19 = [*(v2 + 32) conversationManager];
            [v19 joinConversationWithRequest_];

LABEL_39:
            return;
          }
        }
      }

      goto LABEL_41;
    }

    v23 = ShareActivitiesMoreMenuViewModel.conversation.getter();
    if (v23)
    {
      v24 = v23;
      v25 = [v23 mergedActiveRemoteParticipants];

      v26 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = specialized Set.count.getter();

      if (!v27)
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1BBC58000, v37, v38, "Cannot request to screen share with no participants", v39, 2u);
          MEMORY[0x1BFB23DF0](v39, -1, -1);
        }

        dispatch thunk of FTMenuItem.dismiss()();
LABEL_41:
        v55 = v64;

        return;
      }

      v28 = ShareActivitiesMoreMenuViewModel.conversation.getter();
      if (!v28)
      {
        goto LABEL_48;
      }

      v29 = v28;
      v62 = v2;
      v30 = [v28 mergedActiveRemoteParticipants];

      v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v26;
      v61 = v31;
      if ((v31 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v33 = v67;
        v32 = v68;
        v34 = v69;
        v35 = v70;
        v36 = v71;
      }

      else
      {
        v40 = -1 << *(v31 + 32);
        v32 = v31 + 56;
        v34 = ~v40;
        v41 = -v40;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        else
        {
          v42 = -1;
        }

        v36 = v42 & *(v31 + 56);

        v35 = 0;
        v33 = v31;
      }

      v60 = v34;
      v43 = (v34 + 64) >> 6;
      if (v33 < 0)
      {
        goto LABEL_31;
      }

LABEL_25:
      v44 = v35;
      v45 = v36;
      v46 = v35;
      if (v36)
      {
LABEL_29:
        v47 = (v45 - 1) & v45;
        v48 = *(*(v33 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));
        if (!v48)
        {
LABEL_36:
          outlined consume of Set<TUHandle>.Iterator._Variant(v33);

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_1BBC58000, v52, v53, "Couldn't find participant for request to screen share", v54, 2u);
            MEMORY[0x1BFB23DF0](v54, -1, -1);
          }

          dispatch thunk of FTMenuItem.dismiss()();
          goto LABEL_39;
        }

        while (1)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
          v50 = [v48 handle];
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v35 = v46;
          v36 = v47;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_31:
          v49 = __CocoaSet.Iterator.next()();
          if (v49)
          {
            v65 = v49;
            swift_dynamicCast();
            v48 = v66;
            v46 = v35;
            v47 = v36;
            if (v66)
            {
              continue;
            }
          }

          goto LABEL_36;
        }

        outlined consume of Set<TUHandle>.Iterator._Variant(v33);

        v56 = v62;
        dispatch thunk of FTMenuItem.dismiss()();
        v57 = [*(v56 + 32) conversationManager];
        v58 = ShareActivitiesMoreMenuViewModel.conversation.getter();
        if (v58)
        {
          v59 = v58;
          [v57 requestParticipantToShareScreen:v48 forConversation:v58];

          return;
        }

        goto LABEL_49;
      }

      while (1)
      {
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          goto LABEL_36;
        }

        v45 = *(v32 + 8 * v46);
        ++v44;
        if (v45)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, v20, v21, "Cannot request to screen share without a handle", v22, 2u);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
  }

  dispatch thunk of FTMenuItem.dismiss()();
}

void closure #4 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v6 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v52 = v5;
    v53 = v9;
    v55 = Strong;
    v51 = v12;
    v19 = a2;
    v20 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x9D8))();
    v21 = 0;
    v22 = *(v20 + 16);
    v56 = MEMORY[0x1E69E7CC0];
    while (v22 != v21)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        return;
      }

      v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v24 = *(v10 + 72);
      _s15ConversationKit11ParticipantVWOcTm_6(v20 + v23 + v24 * v21, v17, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v17, v8, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v50 = v19;
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v27 = *(v26 + 48);
          v28 = &v8[*(v26 + 64)];
          outlined consume of Participant.CopresenceInfo?(*v28, v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7]);
          outlined destroy of Participant.MediaInfo(&v8[v27]);
          v29 = type metadata accessor for Date();
          (*(*(v29 - 8) + 8))(v8, v29);
          outlined init with take of Participant(v17, v54);
          v30 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v30 = v57;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          v34 = v33 + 1;
          v35 = v30;
          v19 = v50;
          if (v33 >= v32 >> 1)
          {
            v56 = v33 + 1;
            v49 = v33;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v34 = v56;
            v35 = v57;
            v33 = v49;
            v19 = v50;
          }

          ++v21;
          *(v35 + 16) = v34;
          v56 = v35;
          outlined init with take of Participant(v54, v35 + v23 + v33 * v24);
          break;
        case 6u:
          goto LABEL_7;
        default:
          v25 = type metadata accessor for Date();
          (*(*(v25 - 8) + 8))(v8, v25);
LABEL_7:
          outlined destroy of Participant(v17);
          ++v21;
          break;
      }
    }

    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x2A0))(v36);
    v38 = v37;
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 192))(ObjectType, v38);
    swift_unknownObjectRelease();
    v41 = v56;
    if (*(v56 + 16))
    {

      v42 = v52;
      specialized Collection.first.getter(v41, v52);
      v43 = v53;
      if (__swift_getEnumTagSinglePayload(v42, 1, v53) == 1)
      {

        outlined destroy of CallControlsService?(v42, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        v45 = v51;
        outlined init with take of Participant(v42, v51);
        v46 = *(v41 + 16);

        if (v46 == 1)
        {
          if ((Participant.isRequestToScreenShareAvailable.getter() & 1) != 0 && (Participant.screenState.getter() == 2 || (Participant.isReceivingScreenFrames.getter() & 1) == 0) && Participant.screenState.getter() == 2)
          {
            v47 = *(v45 + *(v43 + 28));
            if (v47)
            {
              v48 = v47;
            }

            ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(v47);
          }

          outlined destroy of Participant(v45);
        }

        else
        {
          outlined destroy of Participant(v45);
        }
      }
    }

    else
    {

      v44 = specialized Collection.first.getter(v40);

      ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(v44);
    }
  }
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of FTMenuItem.dismiss()();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CNContact.displayName.getter(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type FTMenuContextMenuView and conformance FTMenuContextMenuView()
{
  result = lazy protocol witness table cache variable for type FTMenuContextMenuView and conformance FTMenuContextMenuView;
  if (!lazy protocol witness table cache variable for type FTMenuContextMenuView and conformance FTMenuContextMenuView)
  {
    type metadata accessor for FTMenuContextMenuView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FTMenuContextMenuView and conformance FTMenuContextMenuView);
  }

  return result;
}

void partial apply for closure #1 in closure #3 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()()
{
  v1 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  closure #1 in closure #3 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(v3, v4);
}

unint64_t lazy protocol witness table accessor for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType()
{
  result = lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType;
  if (!lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType);
  }

  return result;
}

uint64_t type metadata completion function for ShareActivitiesMoreMenuViewModel(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

_BYTE *storeEnumTagSinglePayload for ShareActivitiesMoreMenuViewModel.MenuType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ReactionsViewConstraintManager.__allocating_init(localParticipantView:reactionsView:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ReactionsViewConstraintManager.init(localParticipantView:reactionsView:)(a1, a2);
  return v4;
}

void *ReactionsViewConstraintManager.init(localParticipantView:reactionsView:)(void *a1, id a2)
{
  v2[6] = MEMORY[0x1E69E7CC0];
  v5 = [a2 topAnchor];
  v6 = [a1 bottomAnchor];
  v7 = OUTLINED_FUNCTION_0_85(v6, sel_constraintGreaterThanOrEqualToAnchor_constant_);

  v2[2] = v7;
  v8 = [a2 bottomAnchor];
  v9 = [a1 topAnchor];
  v10 = OUTLINED_FUNCTION_0_85(v9, sel_constraintGreaterThanOrEqualToAnchor_constant_);

  v2[3] = v10;
  v11 = [a2 leadingAnchor];
  v12 = [a1 leadingAnchor];
  v13 = OUTLINED_FUNCTION_0_85(v12, sel_constraintEqualToAnchor_constant_);

  v2[4] = v13;
  v14 = [a2 trailingAnchor];
  v15 = [a1 trailingAnchor];
  v16 = OUTLINED_FUNCTION_0_85(v15, sel_constraintEqualToAnchor_constant_);

  v2[5] = v16;
  return v2;
}

double ReactionsViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 17);
  swift_beginAccess();
  v2[6] = MEMORY[0x1E69E7CC0];

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      goto LABEL_12;
    }

    v3 &= 0x3Fu;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  switch(v3)
  {
    case 1u:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[2];
      goto LABEL_10;
    case 2u:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[3];
      goto LABEL_7;
    case 3u:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[3];
LABEL_10:
      *(inited + 32) = v6;
      v7 = v2[5];
      goto LABEL_11;
    default:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[2];
LABEL_7:
      *(inited + 32) = v6;
      v7 = v2[4];
LABEL_11:
      *(inited + 40) = v7;
      swift_beginAccess();
      v8 = v6;
      v9 = v7;
      specialized Array.append<A>(contentsOf:)(v5);
      swift_endAccess();
      break;
  }

LABEL_12:

  return result;
}

uint64_t ReactionsViewConstraintManager.__deallocating_deinit()
{
  ReactionsViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

id BrandedIconView.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

id BrandedIconView.init(coder:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v6 = [v5 layer];
  [v6 setMasksToBounds_];

  [v5 setContentMode_];
  [v5 setAutoresizingMask_];
  v7 = [v5 layer];

  [v7 setCornerRadius_];
  *&v2[v4] = v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Unavailable initializer used.", v11, 2u);
    OUTLINED_FUNCTION_27();
  }

  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, v0);

  if (v12)
  {
  }

  return v12;
}

char *BrandedIconView.__allocating_init(telephonyCall:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  ObjectType = swift_getObjectType();
  v14 = (*(a2 + 184))(ObjectType, a2);
  v15 = [v14 isTelephonyProvider];

  if (v15)
  {
    (*(a2 + 88))(ObjectType, a2);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      outlined destroy of URL?(v5);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      type metadata accessor for UIImage();
      v26._countAndFlagsBits = URL.path.getter();
      if (UIImage.__allocating_init(contentsOfFile:)(v26))
      {
        v27 = objc_allocWithZone(v48);
        v24 = BrandedIconView.init(image:)();
        swift_unknownObjectRelease();
        v28 = OUTLINED_FUNCTION_1_5();
        v29(v28);
        return v24;
      }

      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, &static Logger.conversationControls);
      (*(v7 + 16))(v9, v12, v6);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v33 = 136446466;
        v34 = _typeName(_:qualified:)();
        v48 = v31;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v49);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL();
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        v40 = *(v7 + 8);
        v40(v9, v6);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v49);

        *(v33 + 14) = v41;
        v42 = v48;
        _os_log_impl(&dword_1BBC58000, v48, v32, "[%{public}s] Failed to load branded call image from file %s. ", v33, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
        swift_unknownObjectRelease();

        v43 = OUTLINED_FUNCTION_1_5();
        (v40)(v43);
      }

      else
      {
        swift_unknownObjectRelease();

        v44 = *(v7 + 8);
        v44(v9, v6);
        v45 = OUTLINED_FUNCTION_1_5();
        (v44)(v45);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.conversationControls);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v19 = 136446210;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v49);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v17, v18, "[%{public}s] Non-telephony call passed into telephony initalizer", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

UIImage_optional __swiftcall UIImage.__allocating_init(contentsOfFile:)(Swift::String contentsOfFile)
{
  object = contentsOfFile._object;
  countAndFlagsBits = contentsOfFile._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

  v5 = [v3 initWithContentsOfFile_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

char *BrandedIconView.init(image:)()
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v5 = [v4 layer];
  [v5 setMasksToBounds_];

  [v4 setContentMode_];
  [v4 setAutoresizingMask_];
  v6 = [v4 layer];

  [v6 setCornerRadius_];
  *(v1 + v3) = v4;
  v7 = OUTLINED_FUNCTION_1_78();
  v10 = objc_msgSendSuper2(v8, v9, v7, v1, ObjectType);
  v11 = OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon;
  v12 = *&v10[OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon];
  v13 = v10;
  [v12 setImage_];
  [v13 addSubview_];

  return v13;
}

Swift::Void __swiftcall BrandedIconView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon];
  [v0 bounds];
  [v1 setFrame_];
}

CGSize __swiftcall BrandedIconView.sizeThatFits(_:)(CGSize a1)
{
  [*(v1 + OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

objc_super *IncomingCallCombinedSubtitleBadgeView.init(brandedIcon:multiSimBadge:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *(v3 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing) = 0x4010000000000000;
  *(v3 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_brandedIcon) = a1;
  *(v3 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_multiSimBadge) = a2;
  v14 = v3;
  v15 = ObjectType;
  v7 = a1;
  v8 = a2;
  v9 = OUTLINED_FUNCTION_1_78();
  v11 = [(objc_super *)v10 initWithFrame:v9, v14, v15];
  [(objc_super *)v11 addSubview:v7];
  if (a2)
  {
    [(objc_super *)v11 addSubview:v8];

    v12 = v11;
  }

  else
  {
    v12 = v7;
    v7 = v11;
  }

  return v11;
}

void IncomingCallCombinedSubtitleBadgeView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing) = 0x4010000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CGSize __swiftcall IncomingCallCombinedSubtitleBadgeView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = IncomingCallCombinedSubtitleBadgeView.badgeSizeFitting(_:)();
  v6 = v5;
  if (v4 <= 2.22507386e-308)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing);
  }

  if (v6 < 14.0)
  {
    v6 = 14.0;
  }

  v8 = v4 + v7 + 14.0;
  if (v8 > width || v6 > height)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v13 = 136446466;
      type metadata accessor for CGSize(0);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Returning a size %{public}s that is larger than the fitting size %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  v20 = v8;
  v21 = v6;
  result.height = v21;
  result.width = v20;
  return result;
}

double IncomingCallCombinedSubtitleBadgeView.badgeSizeFitting(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_multiSimBadge);
  if (!v1)
  {
    return 0.0;
  }

  [v1 systemLayoutSizeFittingSize_];
  return result;
}

Swift::Void __swiftcall IncomingCallCombinedSubtitleBadgeView.layoutSubviews()()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_brandedIcon];
  [v2 setBounds_];
  [v0 bounds];
  [v2 setCenter_];
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_multiSimBadge];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    v5 = IncomingCallCombinedSubtitleBadgeView.badgeSizeFitting(_:)();
    v7 = v6;
    v8 = v4;
    [v8 setBounds_];
    [v2 frame];
    v9 = CGRectGetMaxX(v31) + *&v1[OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing];
    [v8 frame];
    v11 = v9 + v10 * 0.5;
    [v1 bounds];
    [v8 setCenter_];
  }

  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    *(inited + 32) = v2;
    *(inited + 40) = v3;
    v13 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v14 = v3;
    v15 = v2;
    for (i = 0; i != 2; ++i)
    {
      v17 = *(inited + 8 * i + 32);
      if (v17)
      {
        v18 = v17;
        MEMORY[0x1BFB20CC0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_1_5();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v28;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v19 = specialized Array.count.getter();
    for (j = 0; ; ++j)
    {
      if (v19 == j)
      {

        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB22010](j, v13);
      }

      else
      {
        if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v21 = *(v13 + 8 * j + 32);
      }

      v22 = v21;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v1 bounds];
      Width = CGRectGetWidth(v33);
      OUTLINED_FUNCTION_5_53();
      v25 = Width - v24;
      OUTLINED_FUNCTION_5_53();
      v26 = v25 - CGRectGetMinX(v34);
      OUTLINED_FUNCTION_5_53();
      MinY = CGRectGetMinY(v35);
      OUTLINED_FUNCTION_5_53();
      [v22 setFrame_];
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

id BrandedIconView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

double GradientView.colors.getter()
{
  swift_beginAccess();

  return result;
}

double key path getter for GradientView.colors : GradientView@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

void *GradientView.colors.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return GradientView.updateGradient()();
}

void *GradientView.updateGradient()()
{
  v1 = v0;
  v2 = GradientView.gradientLayer.getter();
  v3 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = specialized Array.count.getter();
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_11:
    outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(v6, v2);

    return [v1 setNeedsDisplay];
  }

  v7 = v5;
  v19 = MEMORY[0x1E69E7CC0];
  v8 = v5 & ~(v5 >> 63);

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v6 = v19;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v10, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 CGColor];
      type metadata accessor for CGColorRef(0);
      v18 = v14;

      *&v17 = v13;
      v19 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v19;
      }

      ++v10;
      *(v6 + 16) = v16 + 1;
      outlined init with take of Any(&v17, (v6 + 32 * v16 + 32));
    }

    while (v7 != v10);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t (*GradientView.colors.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return GradientView.colors.modify;
}

void *GradientView.colors.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return GradientView.updateGradient()();
  }

  return result;
}

uint64_t GradientView.interpolations.getter()
{
  v0 = GradientView.gradientLayer.getter();

  return outlined bridged method (ob) of @objc CAGradientLayer.interpolations.getter(v0);
}

void GradientView.interpolations.setter(uint64_t a1)
{
  v2 = GradientView.gradientLayer.getter();
  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setInterpolations_];
}

uint64_t GradientView.gradientLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*GradientView.interpolations.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = GradientView.gradientLayer.getter();
  *a1 = outlined bridged method (ob) of @objc CAGradientLayer.interpolations.getter(v3);
  return GradientView.interpolations.modify;
}

void GradientView.interpolations.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    GradientView.interpolations.setter(v2);
  }

  else
  {
    GradientView.interpolations.setter(*a1);
  }
}

void (*GradientView.startPoint.modify(void *a1))(double *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = GradientView.gradientLayer.getter();
  [v3 startPoint];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return GradientView.startPoint.modify;
}

double GradientView.startPoint.getter(SEL *a1)
{
  v2 = GradientView.gradientLayer.getter();
  [v2 *a1];
  v4 = v3;

  return v4;
}

void GradientView.startPoint.setter(SEL *a1, double a2, double a3)
{
  v6 = GradientView.gradientLayer.getter();
  [v6 *a1];
}

void (*GradientView.endPoint.modify(void *a1))(double *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = GradientView.gradientLayer.getter();
  [v3 endPoint];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return GradientView.endPoint.modify;
}

void GradientView.startPoint.modify(double *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = GradientView.gradientLayer.getter();
  [v6 *a3];
}

id GradientView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GradientView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id GradientView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit12GradientView_colors) = MEMORY[0x1E69E7CC0];
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  GradientView.updateGradient()();

  return v5;
}

id GradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GradientView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit12GradientView_colors) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined bridged method (ob) of @objc CAGradientLayer.interpolations.getter(void *a1)
{
  v2 = [a1 interpolations];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x1E69793D0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t ConversationLocalParticipantStateProvider.localParticipantPublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, v6, &_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMR, v7);
  Publisher.removeDuplicates(by:)();

  v8 = OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Participant, Never>> and conformance Publishers.RemoveDuplicates<A>);
  v9 = OUTLINED_FUNCTION_7_15(v8);
  (*(v3 + 8))(v1, v0);
  return v9;
}

uint64_t *ConversationLocalParticipantStateProvider.cameraEffectsStatePublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2, &_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMR, v3);
  lazy protocol witness table accessor for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  v4 = OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<LocalParticipantCameraEffectsState, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15(v4);
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return &_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMd;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState()
{
  result = lazy protocol witness table cache variable for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState;
  if (!lazy protocol witness table cache variable for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState);
  }

  return result;
}

void *ConversationLocalParticipantStateProvider.mutedTalkingPublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR, v3);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  v4 = OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15(v4);
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd;
}

void *ConversationLocalParticipantStateProvider.reactingStatePublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR, v3);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  v4 = OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15(v4);
  v5 = OUTLINED_FUNCTION_5_54();
  v6(v5);
  return &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd;
}

uint64_t key path getter for ConversationLocalParticipantStateProvider.stateManager : ConversationLocalParticipantStateProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationLocalParticipantStateProvider.stateManager : ConversationLocalParticipantStateProvider(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationLocalParticipantStateProvider.stateManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationLocalParticipantStateProvider.stateManager.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return ConversationLocalParticipantStateProvider.stateManager.modify;
}

void ConversationLocalParticipantStateProvider.stateManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ConversationLocalParticipantStateProvider.__allocating_init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = swift_allocObject();
  ConversationLocalParticipantStateProvider.init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(a1, a2, v5, v4);
  return v8;
}

void *ConversationLocalParticipantStateProvider.init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(uint64_t a1, int *a2, char a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5[7] = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of Participant(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMR);
  swift_allocObject();
  v5[2] = CurrentValueSubject.init(_:)();
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMR);
  swift_allocObject();
  v5[3] = CurrentValueSubject.init(_:)();
  v15[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  swift_allocObject();
  v5[4] = CurrentValueSubject.init(_:)();
  v15[10] = a4;
  swift_allocObject();
  v13 = CurrentValueSubject.init(_:)();
  outlined destroy of Participant(a1);
  v5[5] = v13;
  return v5;
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleCinematicFramingEffectState()()
{
  OUTLINED_FUNCTION_4_55(v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_17_33(Strong);
    OUTLINED_FUNCTION_11_39();
    v2();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleCameraBlurEffectState()()
{
  OUTLINED_FUNCTION_4_55(v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_17_33(Strong);
    OUTLINED_FUNCTION_11_39();
    v2();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleStudioLightEffectState()()
{
  OUTLINED_FUNCTION_4_55(v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_17_33(Strong);
    OUTLINED_FUNCTION_11_39();
    v2();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleReactionsEffectState()()
{
  OUTLINED_FUNCTION_4_55(v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_17_33(Strong);
    OUTLINED_FUNCTION_11_39();
    v2();
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationLocalParticipantStateProvider.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 48);
  return v0;
}

uint64_t ConversationLocalParticipantStateProvider.__deallocating_deinit()
{
  ConversationLocalParticipantStateProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t ConversationLocalParticipantStateProvider.onLocalParticipantChanged(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  outlined init with copy of Participant(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v10))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_23();
    v20 = v12;
    *v11 = 136315138;
    outlined init with copy of Participant(v7, v4);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    specialized >> prefix<A>(_:)();
    v14 = v13;
    v16 = v15;
    outlined destroy of Participant?(v4);
    outlined destroy of Participant(v7);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v9, v10, "[LocalParticipantStateProvider] onLocalParticipantChanged: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of Participant(v7);
  }

  return CurrentValueSubject.send(_:)();
}

uint64_t ConversationLocalParticipantStateProvider.onCameraEffectsStateChanged(_:)(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v14 = v9;
    *v8 = 136315138;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[LocalParticipantStateProvider] onCameraEffectsStateChanged: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  LOBYTE(v14) = v1;
  BYTE1(v14) = v2;
  BYTE2(v14) = v3;
  BYTE3(v14) = v4;
  return CurrentValueSubject.send(_:)();
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.onMutedTalkingStateChanged(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v13 = v6;
    *v5 = 136315138;
    v7 = a1;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_12_37(&dword_1BBC58000, v11, v12, "[LocalParticipantStateProvider] onMutedTalkingStateChanged: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v7 = a1;
  }

  v14 = v7;
  CurrentValueSubject.send(_:)();
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.onReactingStateChanged(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v13 = v6;
    *v5 = 136315138;
    v7 = a1;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_12_37(&dword_1BBC58000, v11, v12, "[LocalParticipantStateProvider] onReactingStateChanged: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v7 = a1;
  }

  v14 = v7;
  CurrentValueSubject.send(_:)();
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.withPriority(_:)(__C::UILayoutPriority a1)
{
  [v1 setPriority_];

  return v3;
}

void NSLayoutConstraint.setConstant(_:scaledToFont:)(void *a1, double a2)
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v6 scaledValueForValue_];
      v8 = v7;

      [v2 setConstant_];
      return;
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  [v2 setConstant_];
}

uint64_t key path getter for MoreMenuViewModel.presentAddParticipantSheet : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 104))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.presentAddParticipantSheet : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 112);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.toggleLiveCaptions : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 128))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.toggleLiveCaptions : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 136);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.startScreenSharing : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 152))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.startScreenSharing : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 160);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.stopScreenSharing : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 176))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.stopScreenSharing : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 184);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.startWaitOnHold : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 200))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.startWaitOnHold : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 208);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path setter for MoreMenuViewModel.presentSharePlaySheet : MoreMenuViewModel(uint64_t a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for MoreMenuViewModel + 232);

  return v2(v3);
}

uint64_t MoreMenuViewModel.presentSharePlaySheet.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t MoreMenuViewModel.presentSharePlaySheet.setter(uint64_t a1)
{
  v3 = direct field offset for MoreMenuViewModel.presentSharePlaySheet;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for MoreMenuViewModel.presentSharePlayDismissalAlert : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 248))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.presentSharePlayDismissalAlert : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 256);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.presentContactCard : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 272))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.presentContactCard : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 280);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t MoreMenuViewModel.presentAddParticipantSheet.getter(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t MoreMenuViewModel.presentAddParticipantSheet.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_38(a1, a2, a3, a4);
  *v5 = v6;
  v5[1] = v4;
}

uint64_t key path getter for MoreMenuViewModel.startCallRecording : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + class metadata base offset for MoreMenuViewModel + 296))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.startCallRecording : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + class metadata base offset for MoreMenuViewModel + 304);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t key path getter for MoreMenuViewModel.stopCallRecording : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + class metadata base offset for MoreMenuViewModel + 320))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.stopCallRecording : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + class metadata base offset for MoreMenuViewModel + 328);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return v7(v6, v5);
}

uint64_t MoreMenuViewModel.startCallRecording.getter(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v2, v2[1]);
  return v3;
}

uint64_t MoreMenuViewModel.startCallRecording.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_38(a1, a2, a3, a4);
  v7 = *v5;
  v8 = v5[1];
  *v5 = v6;
  v5[1] = v4;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
}

uint64_t MoreMenuViewModel.__allocating_init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  OUTLINED_FUNCTION_14_26();
  __swift_mutable_project_boxed_opaque_existential_1(v26, *(v26 + 24));
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  (*(v31 + 16))(v29 - v28);
  v32 = OUTLINED_FUNCTION_7_50();
  v33 = a22(v30, a2, a3, a4, a5, a6, a7, a8, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v33;
}

uint64_t closure #1 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MoreMenuViewModel.generateRows()();
  }

  return result;
}

uint64_t closure #2 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MoreMenuViewModel.generateRows()();
  }

  return result;
}

uint64_t MoreMenuViewModel.generateRows()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v63 - v3;
  v5 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_2_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = (v14 - v13);
  type metadata accessor for OS_dispatch_queue();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8020], v9);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  v66 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.punchOutProvider.getter();
  if (v65)
  {
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v18 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
    v19 = __swift_destroy_boxed_opaque_existential_1(v64);
    if (v18)
    {
      MEMORY[0x1BFB20CC0](v19);
      OUTLINED_FUNCTION_0_87();
      if (v20)
      {
        OUTLINED_FUNCTION_1_27();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_9_40();
  if (dispatch thunk of FTMenuItemStateProviding.addPeopleAllowed.getter())
  {
    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_20();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_21_22(v21);

    static FTMenuItem.addPeopleRow(subtitle:rowAction:)();

    MEMORY[0x1BFB20CC0](v22);
    OUTLINED_FUNCTION_5_55();
    v24 = *(v23 + 16);
    v17 = *(v23 + 24);
    if (v24 < v17 >> 1)
    {
LABEL_10:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_11;
    }

LABEL_84:
    OUTLINED_FUNCTION_59_3(v17);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_9_40();
  if (dispatch thunk of FTMenuItemStateProviding.isGroupOrConferenceCall.getter())
  {
    OUTLINED_FUNCTION_10_34();
    FTMenuItemProviderContainer.splitCalls.getter();
    if (v65)
    {
      __swift_project_boxed_opaque_existential_1(v64, v65);
      OUTLINED_FUNCTION_9_40();
      v25 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
      v26 = __swift_destroy_boxed_opaque_existential_1(v64);
      if (v25)
      {
        MEMORY[0x1BFB20CC0](v26);
        OUTLINED_FUNCTION_0_87();
        if (v20)
        {
          OUTLINED_FUNCTION_1_27();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
    }

    v27 = FTMenuItemProviderContainer.conferenceParticipants.getter();
    if (v27)
    {
      v63[1] = v8;
      v63[2] = v1;
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + 32;
        do
        {
          outlined init with copy of IDSLookupManager(v29, v64);
          __swift_project_boxed_opaque_existential_1(v64, v65);
          v30 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
          __swift_destroy_boxed_opaque_existential_1(v64);
          if (v30)
          {

            MEMORY[0x1BFB20CC0](v31);
            OUTLINED_FUNCTION_0_87();
            if (v20)
            {
              OUTLINED_FUNCTION_1_27();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          v29 += 40;
          --v28;
        }

        while (v28);
      }
    }
  }

  OUTLINED_FUNCTION_4_56();
  if (dispatch thunk of FTMenuItemStateProviding.viewContactCardAllowed.getter())
  {
    OUTLINED_FUNCTION_4_56();
    dispatch thunk of FTMenuItemStateProviding.shouldViewCallDetails.getter();
    String.LocalizationValue.init(stringLiteral:)();
    OUTLINED_FUNCTION_3_0();
    String.init(_localized:table:comment:)();
    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_19_19();
    OUTLINED_FUNCTION_9_40();
    dispatch thunk of FTMenuItemStateProviding.viewContactCardIcon.getter();
    OUTLINED_FUNCTION_20();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_21_22(v32);

    static FTMenuItem.addViewContactRow(title:iconType:rowAction:)();

    outlined destroy of TapInteractionHandler?(v4, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMR);

    MEMORY[0x1BFB20CC0](v33);
    OUTLINED_FUNCTION_5_55();
    v36 = *(v34 + 16);
    v35 = *(v34 + 24);
    if (v36 >= v35 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v35);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.callRecording.getter();
  if (v65)
  {
    OUTLINED_FUNCTION_2_76();
    v37 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v37);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
    OUTLINED_FUNCTION_4_56();
    if ((dispatch thunk of FTMenuItemStateProviding.callRecordingAllowed.getter() & 1) == 0)
    {
      goto LABEL_39;
    }

    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_4_56();
    dispatch thunk of FTMenuItemStateProviding.isCallRecordingActive.getter();
    OUTLINED_FUNCTION_20();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_21_22(v38);
    OUTLINED_FUNCTION_20();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_21_22(v39);

    static FTMenuItem.callRecordingRow(isSessionActive:dismissOnTap:rowAction:stopAction:)();

    MEMORY[0x1BFB20CC0](v40);
    OUTLINED_FUNCTION_5_55();
    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    if (v43 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v42);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_39:
  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.deskView.getter();
  if (v65)
  {
    OUTLINED_FUNCTION_2_76();
    v44 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v44);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.routes.getter();
  if (v65)
  {
    OUTLINED_FUNCTION_2_76();
    v45 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v45);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.liveCaptions.getter();
  if (v65)
  {
    OUTLINED_FUNCTION_2_76();
    v46 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v46);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.liveTranslation.getter();
  if (v65)
  {
    OUTLINED_FUNCTION_2_76();
    v47 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v47);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  OUTLINED_FUNCTION_4_56();
  if (dispatch thunk of FTMenuItemStateProviding.waitOnHoldAllowed.getter())
  {
    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_20();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_21_22(v48);

    static FTMenuItem.holdThisCallRow(rowAction:stopAction:)();

    MEMORY[0x1BFB20CC0](v49);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.screenShare.getter();
  if (v65)
  {
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v50 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
    v51 = __swift_destroy_boxed_opaque_existential_1(v64);
    if (v50)
    {
      MEMORY[0x1BFB20CC0](v51);
      OUTLINED_FUNCTION_0_87();
      if (v20)
      {
        OUTLINED_FUNCTION_1_27();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.sharePlay.getter();
  if (v65)
  {
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v52 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
    v53 = __swift_destroy_boxed_opaque_existential_1(v64);
    if (v52)
    {
      MEMORY[0x1BFB20CC0](v53);
      OUTLINED_FUNCTION_5_55();
      v56 = *(v54 + 16);
      v55 = *(v54 + 24);
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v55);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v64, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMR);
  }

  if (!specialized Array.count.getter())
  {
    v57 = one-time initialization token for conversationKit;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.conversationKit);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;

      _os_log_impl(&dword_1BBC58000, v59, v60, "No rows generated for MoreMenuViewModel", v61, 2u);
      MEMORY[0x1BFB23DF0](v61, -1, -1);
    }

    else
    {
    }
  }

  return dispatch thunk of FTMenuViewModel.items.setter();
}

void *closure #1 in MoreMenuViewModel.generateRows()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (*(*result + class metadata base offset for MoreMenuViewModel + 104))();

    v2(v3);
  }

  return result;
}

void *closure #2 in MoreMenuViewModel.generateRows()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (*(*result + class metadata base offset for MoreMenuViewModel + 272))();

    v2(v3);
  }

  return result;
}

void *closure #3 in MoreMenuViewModel.generateRows()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    __swift_project_boxed_opaque_existential_1((result + direct field offset for MoreMenuViewModel.provider), *(result + direct field offset for MoreMenuViewModel.provider + 24));
    if ((dispatch thunk of FTMenuItemStateProviding.isCallRecordingActive.getter() & 1) == 0)
    {
      v3 = (*(*v2 + class metadata base offset for MoreMenuViewModel + 296))();
      if (v3)
      {
        v5 = v3;
        v6 = v4;
        v3();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
      }
    }
  }

  return result;
}

void *closure #4 in MoreMenuViewModel.generateRows()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (*(*result + class metadata base offset for MoreMenuViewModel + 320))();
    v4 = v3;

    if (v2)
    {
      v2(result);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2, v4);
    }
  }

  return result;
}

void *closure #5 in MoreMenuViewModel.generateRows()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = (*(*result + class metadata base offset for MoreMenuViewModel + 200))();

    v2(v3);
  }

  return result;
}

uint64_t MoreMenuViewModel.__ivar_destroyer()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();

  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.startCallRecording), *(v0 + direct field offset for MoreMenuViewModel.startCallRecording + 8));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.stopCallRecording), *(v0 + direct field offset for MoreMenuViewModel.stopCallRecording + 8));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for MoreMenuViewModel.provider));
}

uint64_t MoreMenuViewModel.deinit()
{
  v0 = FTMenuViewModel.deinit();

  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();

  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.startCallRecording), *(v0 + direct field offset for MoreMenuViewModel.startCallRecording + 8));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.stopCallRecording), *(v0 + direct field offset for MoreMenuViewModel.stopCallRecording + 8));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for MoreMenuViewModel.provider));

  return v0;
}

uint64_t MoreMenuViewModel.__deallocating_deinit()
{
  MoreMenuViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized MoreMenuViewModel.__allocating_init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, void (*a3)(), void (*a4)(), void (*a5)(), void (*a6)(), void (*a7)(), void (*a8)(), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_26();
  OUTLINED_FUNCTION_2_7();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v33 = v32 - v31;
  type metadata accessor for MoreMenuViewModel(0);
  v34 = swift_allocObject();
  (*(v29 + 16))(v33, a1, a23);
  OUTLINED_FUNCTION_7_50();
  v35 = specialized MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(v33, a2, a3, a4, a5, a6, a7, a8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, a21, v34, a23, a24);
  (*(v29 + 8))(a1, a23);
  return v35;
}

uint64_t specialized MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, void (*a3)(), void (*a4)(), void (*a5)(), void (*a6)(), void (*a7)(), void (*a8)(), void (*a9)(), void (*a10)(), uint64_t a11, void (*a12)(), uint64_t a13, void (*a14)(), void (*a15)(), void (*a16)(), void (*a17)(), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v137 = a8;
  v138 = a4;
  v109 = a5;
  v110 = a7;
  v139 = a6;
  v108 = a3;
  v125 = a2;
  v127 = a20;
  v129 = a19;
  v128 = a18;
  v132 = a17;
  v124 = a16;
  v134 = a15;
  v123 = a14;
  v133 = a13;
  v135 = a12;
  v112 = a11;
  v136 = a10;
  v111 = a9;
  v126 = a21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v121 = &v106 - v26;
  v140 = type metadata accessor for NSNotificationCenter.Publisher();
  v142 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v115 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v106 - v29;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v141 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v114 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v116 = &v106 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v131 = &v106 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v117 = &v106 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v118 = &v106 - v38;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMR);
  v122 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v106 - v39;
  v144[3] = a23;
  v144[4] = a24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v144);
  (*(*(a23 - 8) + 32))(boxed_opaque_existential_1, a1, a23);
  v41 = (a22 + direct field offset for MoreMenuViewModel.presentAddParticipantSheet);
  *v41 = TPNumberPadCharacter.rawValue.getter;
  v41[1] = 0;
  v42 = (a22 + direct field offset for MoreMenuViewModel.toggleLiveCaptions);
  *v42 = TPNumberPadCharacter.rawValue.getter;
  v42[1] = 0;
  v43 = (a22 + direct field offset for MoreMenuViewModel.startScreenSharing);
  *v43 = TPNumberPadCharacter.rawValue.getter;
  v43[1] = 0;
  v44 = (a22 + direct field offset for MoreMenuViewModel.stopScreenSharing);
  *v44 = TPNumberPadCharacter.rawValue.getter;
  v44[1] = 0;
  v45 = (a22 + direct field offset for MoreMenuViewModel.startWaitOnHold);
  *v45 = TPNumberPadCharacter.rawValue.getter;
  v45[1] = 0;
  v46 = (a22 + direct field offset for MoreMenuViewModel.presentSharePlayDismissalAlert);
  *v46 = TPNumberPadCharacter.rawValue.getter;
  v46[1] = 0;
  v47 = (a22 + direct field offset for MoreMenuViewModel.presentContactCard);
  *v47 = TPNumberPadCharacter.rawValue.getter;
  v47[1] = 0;
  v106 = a22;
  v48 = (a22 + direct field offset for MoreMenuViewModel.startCallRecording);
  *v48 = 0;
  v48[1] = 0;
  v49 = (a22 + direct field offset for MoreMenuViewModel.stopCallRecording);
  v107 = v49;
  *v49 = 0;
  v49[1] = 0;
  *(a22 + direct field offset for MoreMenuViewModel.cancellable) = MEMORY[0x1E69E7CD0];
  outlined init with copy of IDSLookupManager(v144, a22 + direct field offset for MoreMenuViewModel.provider);
  swift_beginAccess();
  v50 = v138;
  *v41 = v108;
  v41[1] = v50;
  swift_beginAccess();
  v51 = v139;
  *v42 = v109;
  v42[1] = v51;

  swift_beginAccess();
  v52 = v137;
  *v43 = v110;
  v43[1] = v52;

  swift_beginAccess();
  v53 = v136;
  *v44 = v111;
  v44[1] = v53;

  swift_beginAccess();
  v54 = v135;
  *v45 = v112;
  v45[1] = v54;

  v55 = v106;
  *(v106 + direct field offset for MoreMenuViewModel.presentSharePlaySheet) = v133;
  swift_beginAccess();
  v56 = v134;
  *v46 = v123;
  v46[1] = v56;

  swift_beginAccess();
  v57 = v132;
  *v47 = v124;
  v47[1] = v57;

  swift_beginAccess();
  v58 = *v48;
  v59 = v48[1];
  v60 = v128;
  v61 = v129;
  *v48 = v128;
  v48[1] = v61;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v60, v61);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v58, v59);
  v62 = v107;
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  v66 = v126;
  v65 = v127;
  *v62 = v127;
  v62[1] = v66;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v65, v66);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v63, v64);
  *(v55 + direct field offset for MoreMenuViewModel.container) = v125;

  v67 = FTMenuViewModel.init()();
  v68 = swift_allocObject();
  v112 = v67;
  swift_weakInit();
  v143[4] = partial apply for closure #1 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:);
  v143[5] = v68;
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 1107296256;
  v143[2] = thunk for @escaping @callee_guaranteed () -> ();
  v143[3] = &block_descriptor_29;
  v69 = _Block_copy(v143);
  swift_retain_n();

  TUDispatchMainIfNecessary();
  _Block_release(v69);
  v70 = objc_opt_self();
  v71 = [v70 defaultCenter];
  v72 = v113;
  NSNotificationCenter.publisher(for:object:)();

  v123 = v70;
  v73 = [v70 &off_1E7FE9380 + 5];
  v74 = v115;
  NSNotificationCenter.publisher(for:object:)();

  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v75 = v114;
  v76 = v140;
  Publisher.merge(with:)();
  v78 = v142 + 8;
  v77 = *(v142 + 8);
  v77(v74, v76);
  v77(v72, v76);
  v79 = v77;
  v124 = v77;
  v80 = [v70 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v81 = v116;
  v82 = v130;
  v83 = v75;
  Publishers.MergeMany.merge(with:)();
  v84 = v72;
  v79(v72, v76);
  v85 = *(v141 + 8);
  v141 += 8;
  v142 = v78;
  v86 = v82;
  v85(v83, v82);
  v87 = v123;
  v88 = [v123 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v89 = v81;
  Publishers.MergeMany.merge(with:)();
  v90 = v140;
  v91 = v124;
  (v124)(v72, v140);
  v85(v89, v86);
  v92 = [v87 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v93 = v117;
  v95 = v130;
  v94 = v131;
  Publishers.MergeMany.merge(with:)();
  (v91)(v84, v90);
  v85(v94, v95);
  v96 = [v123 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v97 = v118;
  Publishers.MergeMany.merge(with:)();
  (v124)(v84, v140);
  v85(v93, v95);
  v98 = v85;
  type metadata accessor for OS_dispatch_queue();
  v99 = static OS_dispatch_queue.main.getter();
  v143[0] = v99;
  v100 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v101 = v121;
  __swift_storeEnumTagSinglePayload(v121, 1, 1, v100);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<NSNotificationCenter.Publisher> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR, MEMORY[0x1E695BE80]);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  v102 = v119;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v101, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v98(v97, v95);

  swift_allocObject();
  v103 = v112;
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.MergeMany<NSNotificationCenter.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v104 = v120;
  Publisher<>.sink(receiveValue:)();

  (*(v122 + 8))(v102, v104);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v127, v126);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v128, v129);

  __swift_destroy_boxed_opaque_existential_1(v144);
  return v103;
}

uint64_t type metadata accessor for MoreMenuViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MoreMenuViewModel;
  if (!type metadata singleton initialization cache for MoreMenuViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreeningTranscriptLabel.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ScreeningTranscriptLabel.lowConfidenceText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScreeningTranscriptLabel(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v5 - 8);
  ScreeningTranscriptLabel.attributedString.getter(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = Text.init(_:)();
  v28 = v8;
  v29 = v7;
  v10 = v9;
  v27 = v11;
  KeyPath = swift_getKeyPath();
  v32 = v10 & 1;
  v31 = 1;
  v12 = *v1;
  v25 = Font.init(_:)();
  v13 = swift_getKeyPath();
  v14 = v32;
  v15 = v31;
  v16 = static Alignment.center.getter();
  v18 = v17;
  outlined init with copy of ScreeningTranscriptLabel(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  result = outlined init with take of ScreeningTranscriptLabel(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v22 = v28;
  *a1 = v29;
  *(a1 + 8) = v22;
  *(a1 + 16) = v14;
  v23 = KeyPath;
  *(a1 + 24) = v27;
  *(a1 + 32) = closure #1 in ScreeningTranscriptLabel.body.getter;
  *(a1 + 40) = 0;
  *(a1 + 48) = v23;
  *(a1 + 56) = 0;
  *(a1 + 64) = v15;
  v24 = v25;
  *(a1 + 72) = v13;
  *(a1 + 80) = v24;
  *(a1 + 88) = partial apply for closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter;
  *(a1 + 96) = v20;
  *(a1 + 104) = v16;
  *(a1 + 112) = v18;
  return result;
}

uint64_t type metadata accessor for ScreeningTranscriptLabel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScreeningTranscriptLabel;
  if (!type metadata singleton initialization cache for ScreeningTranscriptLabel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreeningTranscriptLabel.attributedString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Text.LineStyle.Pattern();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v53 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v53 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v53 - v12;
  v13 = type metadata accessor for AttributedString.Index();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v53 - v19;
  v20 = type metadata accessor for RedactionReasons();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v53 - v24;
  v55 = type metadata accessor for AttributedString.CharacterView();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v70 = *(v1 + 8);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v69 = a1;
  AttributedString.characters.getter();
  type metadata accessor for ScreeningTranscriptLabel(0);
  v70 = v1;
  v28 = v71;
  specialized Environment.wrappedValue.getter(v71);
  v29 = MEMORY[0x1E697EA58];
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  v30 = v72;
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v29, MEMORY[0x1E697EA60]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v21 + 8);
  v32(v30, v20);
  v32(v28, v20);
  if ((v31 & 1) == 0)
  {
    return (*(v54 + 8))(v26, v55);
  }

  v33 = *(v70 + 40);
  v34 = *(v33 + 16);
  if (!v34)
  {
    return (*(v54 + 8))(v26, v55);
  }

  v59 = (v56 + 2);
  v58 = (v56 + 4);
  v57 = *(v70 + 48);
  ++v56;
  v35 = (v33 + 40);
  v60 = v26;
  v61 = v17;
  while (1)
  {
    v36 = *(v35 - 1);
    v37 = *v35;
    AttributedString.CharacterView.startIndex.getter();
    result = AttributedString.CharacterView._index(_:offsetBy:)();
    if (__OFADD__(v36, v37))
    {
      break;
    }

    AttributedString.CharacterView._index(_:offsetBy:)();
    lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }

    v72 = (v35 + 2);
    v39 = *v59;
    v40 = v64;
    (*v59)(v64, v17, v13);
    v41 = v65;
    v39((v40 + *(v65 + 48)), v74, v13);
    v42 = v13;
    v71 = v34;
    v43 = v62;
    outlined init with copy of Conversation?(v40, v62, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
    v44 = *(v41 + 48);
    v45 = *v58;
    v46 = v73;
    (*v58)(v73, v43, v42);
    v47 = *v56;
    (*v56)(v43 + v44, v42);
    outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v40, v43);
    v45(&v46[*(v63 + 36)], v43 + *(v41 + 48), v42);
    v48 = v71;
    v47(v43, v42);
    static Text.LineStyle.Pattern.solid.getter();

    v49 = v66;
    Text.LineStyle.init(pattern:color:)();
    v50 = type metadata accessor for Text.LineStyle();
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR, MEMORY[0x1E69E66D8]);
    v51 = v73;
    v70 = AttributedString.subscript.modify();
    outlined init with copy of Conversation?(v49, v67, &_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
    v17 = v61;
    AttributedSubstring.subscript.setter();
    v52 = v49;
    v26 = v60;
    outlined destroy of CallControlsService?(v52, &_s7SwiftUI4TextV9LineStyleVSgMd, &_s7SwiftUI4TextV9LineStyleVSgMR);
    (v70)(v76, 0);
    outlined destroy of CallControlsService?(v51, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    v47(v74, v42);
    v47(v17, v42);
    v13 = v42;
    v47(v75, v42);
    v35 = v72;
    v34 = v48 - 1;
    if (!v34)
    {
      return (*(v54 + 8))(v26, v55);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[2] = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScreeningTranscriptLabel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v16[3] = *(a2 + 40);
  v16[1] = swift_getKeyPath();
  outlined init with copy of ScreeningTranscriptLabel(a2, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (v11 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  outlined init with take of ScreeningTranscriptLabel(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  (*(v6 + 32))(v14 + v13, v8, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8_NSRangeVGMd, &_sSaySo8_NSRangeVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [_NSRange] and conformance [A], &_sSaySo8_NSRangeVGMd, &_sSaySo8_NSRangeVGMR, MEMORY[0x1E69E6338]);
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type _NSRange and conformance _NSRange, type metadata accessor for _NSRange, MEMORY[0x1E6969FA0]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(Swift::Int *a1@<X0>, Class *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = type metadata accessor for BorderlessButtonMenuStyle();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMR);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v11 = *a1;
  v10 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = a2[1];
  v12 = a2[2];
  v14.super.isa = *a2;
  v15 = a2[5];
  GeometryProxy.size.getter();
  v16.location = v11;
  v16.length = v10;
  v17._countAndFlagsBits = v13;
  v17._object = v12;
  v44 = TextLayoutEngine.frame(for:text:font:lowConfidenceRanges:viewSize:)(v16, v17, v14, v15, __PAIR128__(v19, v18));
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  MEMORY[0x1EEE9AC00](v24);
  *(&v35 - 2) = a2;
  Menu.init(content:label:)();
  v25 = v37;
  BorderlessButtonMenuStyle.init()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<Color, Text> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMR, MEMORY[0x1E697CD28]);
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, MEMORY[0x1E697C9A8], MEMORY[0x1E697C9A0]);
  v27 = v39;
  v26 = v40;
  v28 = v36;
  View.menuStyle<A>(_:)();
  (*(v38 + 8))(v25, v27);
  (*(v35 + 8))(v9, v28);
  KeyPath = swift_getKeyPath();
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGMR) + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 2;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  CGRectGetWidth(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  CGRectGetHeight(v46);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGMR) + 36));
  v32 = v42;
  *v31 = v41;
  v31[1] = v32;
  v31[2] = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMR);
  v34 = (v26 + *(result + 36));
  *v34 = x;
  v34[1] = y;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a2@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t *a2@<X8>)
{
  result = static Color.clear.getter();
  *a2 = result;
  return result;
}

uint64_t ScreeningTranscriptLabel.init(font:text:lowConfidenceText:lowConfidenceRanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  static Color.white.getter();
  v8 = Color.opacity(_:)();

  a7[6] = v8;
  v9 = type metadata accessor for ScreeningTranscriptLabel(0);
  v10 = *(v9 + 36);
  *(a7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v11 = *(v9 + 40);
  *(a7 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ScreeningTranscriptLabel_Previews.previews.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UIFont();
  v2 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*MEMORY[0x1E69DDDB8], 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  *(v3 + 32) = xmmword_1BC4C7B00;
  *a1 = v2;
  a1[1] = 0xD000000000000024;
  a1[2] = 0x80000001BC4FE750;
  a1[3] = 0xD000000000000018;
  a1[4] = 0x80000001BC4FE780;
  a1[5] = v3;
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  a1[6] = v4;
  v5 = type metadata accessor for ScreeningTranscriptLabel(0);
  v6 = *(v5 + 36);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 40);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance ScreeningTranscriptLabel_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance ScreeningTranscriptLabel_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t outlined init with copy of ScreeningTranscriptLabel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreeningTranscriptLabel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ScreeningTranscriptLabel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreeningTranscriptLabel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreeningTranscriptLabel(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews()
{
  result = lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews;
  if (!lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews;
  if (!lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews);
  }

  return result;
}

void type metadata completion function for ScreeningTranscriptLabel(uint64_t a1)
{
  type metadata accessor for UIFont();
  if (v1 <= 0x3F)
  {
    _sSaySo8_NSRangeVGMaTm_0(319, &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      _sSaySo8_NSRangeVGMaTm_0(319, &lazy cache variable for type metadata for Environment<RedactionReasons>, MEMORY[0x1E697EA58], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        _sSaySo8_NSRangeVGMaTm_0(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _sSaySo8_NSRangeVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGAJyAA4FontVSgGGAA08_OverlayG0VyAA14GeometryReaderVyAA7ForEachVySaySo8_NSRangeVGAzCyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuT0Rd__lFQOyAA0U0VyAA5ColorVAEG_AA016BorderlessButtonuT0VQo_AJyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGGGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGAJyAA4FontVSgGGAA08_OverlayG0VyAA14GeometryReaderVyAA7ForEachVySaySo8_NSRangeVGAzCyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuT0Rd__lFQOyAA0U0VyAA5ColorVAEG_AA016BorderlessButtonuT0VQo_AJyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA7ForEachVySaySo8_NSRangeVGAiA15ModifiedContentVyALyALyAA4ViewPAAE9menuStyleyQrqd__AA04MenuN0Rd__lFQOyAA0O0VyAA5ColorVAA4TextVG_AA016BorderlessButtonoN0VQo_AA022_EnvironmentKeyWritingD0VyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGGGGMd, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA7ForEachVySaySo8_NSRangeVGAiA15ModifiedContentVyALyALyAA4ViewPAAE9menuStyleyQrqd__AA04MenuN0Rd__lFQOyAA0O0VyAA5ColorVAA4TextVG_AA016BorderlessButtonoN0VQo_AA022_EnvironmentKeyWritingD0VyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGGGGMR, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGAJyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGAJyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA20_TransactionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA20_TransactionModifierVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreeningTranscriptLabel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  type metadata accessor for GeometryProxy();

  return closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter(a1, (v2 + v6), a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMR);
    type metadata accessor for BorderlessButtonMenuStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<Color, Text> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMR, MEMORY[0x1E697CD28]);
    lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, MEMORY[0x1E697C9A8], MEMORY[0x1E697C9A0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t key path getter for InCallControlsIgnoreLMIRequestsCell.delegate : InCallControlsIgnoreLMIRequestsCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsIgnoreLMIRequestsCell.delegate : InCallControlsIgnoreLMIRequestsCell(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsIgnoreLMIRequestsCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsIgnoreLMIRequestsCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

id InCallControlsIgnoreLMIRequestsCell.ignoreLMIRequestsSwitch.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v4 addTarget:v0 action:sel_didToggleMuteState_ forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of Participant?(v7, v8, v9, &_s5UIKit15UICellAccessoryVSgMR);
  v10 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
    closure #1 in InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter(a1);
    OUTLINED_FUNCTION_71();
    (*(v11 + 16))(v1, a1, v10);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_10_35();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v13();
  }
}

uint64_t closure #1 in InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  InCallControlsIgnoreLMIRequestsCell.ignoreLMIRequestsSwitch.getter();
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v13 = *MEMORY[0x1E69DBF28];
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  *v12 = OUTLINED_FUNCTION_14_0;
  v12[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of Participant?(v8, v9, v10, &_s5UIKit26UIListContentConfigurationVSgMR);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
    closure #1 in InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter(v1);
    OUTLINED_FUNCTION_71();
    (*(v12 + 16))(v2, a1, v11);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_10_35();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v14();
  }
}

uint64_t closure #1 in InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter(void *a1)
{
  MEMORY[0x1BFB21750]();
  v2 = [objc_opt_self() conversationKit];
  v17._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4FE8B0;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v17);

  UIListContentConfiguration.text.setter();
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = [v6 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v9(v16, 0);
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v10 = static Colors.InCallControls.tableViewCellTitleLabel;
  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v11(v16, 0);
  v12 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v12(v16, 0);
  v13 = [v6 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsIgnoreLMIRequestsCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  [a1 effectiveUserInterfaceLayoutDirection];
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsIgnoreLMIRequestsCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsIgnoreLMIRequestsCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch) = 0;
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v2);
  v8 = type metadata accessor for InCallControlsIgnoreLMIRequestsCell(0);
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v8);
  InCallControlsIgnoreLMIRequestsCell.configureContent()();

  return v6;
}

uint64_t type metadata accessor for InCallControlsIgnoreLMIRequestsCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsIgnoreLMIRequestsCell;
  if (!type metadata singleton initialization cache for InCallControlsIgnoreLMIRequestsCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InCallControlsIgnoreLMIRequestsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsIgnoreLMIRequestsCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch) = 0;
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsIgnoreLMIRequestsCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v11[3] = type metadata accessor for UIListContentConfiguration();
  v11[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
  v6 = *(type metadata accessor for UICellAccessory() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter(v8 + v7);
  return UICollectionViewListCell.accessories.setter();
}

Swift::Void __swiftcall InCallControlsIgnoreLMIRequestsCell.configure(with:)(ConversationKit::InCallControlsIgnoreLMIRequestsCell::ViewModel with)
{
  v2 = InCallControlsIgnoreLMIRequestsCell.ignoreLMIRequestsSwitch.getter();
  [v2 setOn:with.ignoreLMIRequests animated:0];
}

double InCallControlsIgnoreLMIRequestsCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

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

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd, &_sypSgMR);
  }

  return a2;
}

uint64_t InCallControlsIgnoreLMIRequestsCell.didToggleMuteState(_:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id InCallControlsIgnoreLMIRequestsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsIgnoreLMIRequestsCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsIgnoreLMIRequestsCell(uint64_t a1)
{
  type metadata accessor for UICellAccessory?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UICellAccessory?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UICellAccessory?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InCallControlsIgnoreLMIRequestsCell.ViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InCallControlsIgnoreLMIRequestsCell.ViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
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

void UIControl.addAction(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for UIAction();

  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v4 addAction:v8 forControlEvents:{a1, 0, 0, 0, a2, a3}];
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x1BFB23DF0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void Lock.withLock<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t String.localizedCallRecording.getter()
{
  v1 = [objc_opt_self() conversationKit];
  v2 = OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_74(v2, v3, 25, v4);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t *LocalizationSource.conversationControls.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_5_56(&one-time initialization token for conversationControls);
  }

  return &static LocalizationSource.conversationControls;
}

uint64_t String.deviceAdjustedLocalizedKey(forDeviceFamily:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a2 & 1) != 0 || a1 != 4)
  {
    goto LABEL_39;
  }

  v6 = a3 == 0x535F4E4545524353 && a4 == 0xEE00474E49524148;
  if (!v6 && (OUTLINED_FUNCTION_6_53(0x535F4E4545524353, 0xEE00474E49524148) & 1) == 0)
  {
    OUTLINED_FUNCTION_11();
    v8 = v5 == 0xD000000000000011 && v7 == a4;
    if (v8 || (OUTLINED_FUNCTION_6_53(0xD000000000000011, v7) & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD000000000000025;
    }

    v9 = v5 == 0x20676E6972616853 && a4 == 0xEE006E6565726353;
    if (v9 || (OUTLINED_FUNCTION_6_53(0x20676E6972616853, 0xEE006E6565726353) & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD000000000000022;
    }

    OUTLINED_FUNCTION_11();
    v11 = v5 == 0xD000000000000018 && v10 == a4;
    if (v11 || (OUTLINED_FUNCTION_6_53(0xD000000000000018, v10) & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD00000000000001BLL;
    }

    OUTLINED_FUNCTION_11();
    v13 = v5 == 0xD000000000000028 && v12 == a4;
    if (v13 || (OUTLINED_FUNCTION_6_53(0xD000000000000028, v12) & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD000000000000051;
    }

    OUTLINED_FUNCTION_11();
    v15 = v5 == 0xD000000000000026 && v14 == a4;
    if (v15 || (OUTLINED_FUNCTION_6_53(0xD000000000000026, v14) & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD00000000000004FLL;
    }

LABEL_39:

    return v5;
  }

  OUTLINED_FUNCTION_27_4();
  return 0xD000000000000037;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = MEMORY[0x1BFB20A90](a1, a2, a3);

  return v4;
}

Swift::String __swiftcall String.localizedWithComment(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_12_39();
  v3 = [objc_opt_self() conversationKit];
  v11._object = v1;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_10_36();
  v11._countAndFlagsBits = v2;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v6, v7, v11);
  OUTLINED_FUNCTION_305();

  v8 = OUTLINED_FUNCTION_46();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall String.localizedWithNumber(_:)(Swift::Int a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() conversationKit];
  v27._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_10_36();
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v9, v10, v27);

  v11 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v11 setLocale_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v14 = [v11 stringFromNumber_];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v26[1] = a1;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA940;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = v15;
  *(v19 + 40) = v17;
  v20 = String.init(format:_:)();
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t String.localizedHidden.getter()
{
  v1 = [objc_opt_self() conversationKit];
  v2 = OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_74(v2, v3, 20, v4);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t String.localizedAlerts.getter()
{
  v1 = [objc_opt_self() conversationKit];
  v2 = OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_74(v2, v3, 18, v4);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

Swift::tuple_title_String_subtitle_String_optional __swiftcall String.splitForTitleAndSubtitle()()
{
  v0 = lazy protocol witness table accessor for type String and conformance String();
  v1 = MEMORY[0x1BFB21D70](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v0);
  if (*(v1 + 16))
  {

    v2 = OUTLINED_FUNCTION_46();
    MEMORY[0x1BFB20A90](v2);
    OUTLINED_FUNCTION_305();
  }

  v3 = specialized BidirectionalCollection.last.getter(v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    v10 = MEMORY[0x1BFB20A90](v3, v5, v7, v9);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = OUTLINED_FUNCTION_46();
  v15 = v10;
  v16 = v12;
  result.subtitle.value._object = v16;
  result.subtitle.value._countAndFlagsBits = v15;
  result.title._object = v14;
  result.title._countAndFlagsBits = v13;
  return result;
}