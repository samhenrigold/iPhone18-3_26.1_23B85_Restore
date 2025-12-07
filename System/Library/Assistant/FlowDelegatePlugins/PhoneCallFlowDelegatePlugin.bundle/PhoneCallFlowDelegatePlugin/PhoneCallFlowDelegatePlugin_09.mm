uint64_t closure #1 in closure #4 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_124();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), 0, 0);
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  v21 = *(v20 + 40);
  v22 = swift_task_alloc();
  *(v20 + 48) = v22;
  *(v22 + 16) = *(v20 + 24);
  *(v22 + 32) = v21;
  v23 = swift_task_alloc();
  *(v20 + 56) = v23;
  type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_63_0();
  *v23 = v24;
  v23[1] = implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v5 = *(v36 - 8);
  v35 = *(v5 + 64);
  __chkstk_darwin(v36);
  v34 = &v27 - v6;
  v7 = type metadata accessor for ParameterIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = &v27 - v11;
  dispatch thunk of RCHFlowDelegate.makeDialogTemplating()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v31 = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v12 = ParameterIdentifier.name.getter();
  v29 = v13;
  v30 = v12;
  (*(v8 + 8))(v10, v7);
  v28 = ParameterResolutionRecord.result.getter();
  v15 = a2[6];
  v14 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v15);
  (*(v14 + 8))(v40, v15, v14);
  v16 = v41;
  v17 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  DeviceState.isAuthenticatedForPhone.getter(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v18 = ParameterResolutionRecord.intent.getter();
  v19 = v34;
  v20 = v36;
  (*(v5 + 16))(v34, v37, v36);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v19, v20);
  v26 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v23 = v28;
  v24 = v33;
  dispatch thunk of DialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)();

  return (*(v38 + 8))(v24, v26);
}

uint64_t closure #1 in closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v6);
  v8 = (v10 - v7);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a1, v10 - v7, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()()
{
  v1 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyArrayStorage;

  *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  return result;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 168) = v21;
  *(v1 + 176) = v0;
  *(v1 + 152) = v20;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 112) = v6;
  *(v1 + 184) = *v0;
  v7 = type metadata accessor for PhoneError(0);
  *(v1 + 192) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 200) = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ContactResolutionPatternID();
  *(v1 + 208) = v8;
  OUTLINED_FUNCTION_13_2(v8);
  *(v1 + 216) = v9;
  *(v1 + 224) = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  *(v1 + 232) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 240) = OUTLINED_FUNCTION_62_4();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 272) = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v12);
  *(v1 + 280) = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 288) = v13;
  OUTLINED_FUNCTION_13_2(v13);
  *(v1 + 296) = v14;
  *(v1 + 304) = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, _BYTE *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_101();
  App.appIdentifier.getter();
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  if (App.isFirstParty()())
  {
    v25 = *(v22 + 152);
    swift_getAssociatedTypeWitness();
    v26 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v27 = *(v26 + 8);
    v28 = swift_checkMetadataState();
    v29 = v27(v28, v26);
    static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(v29, v25);
    v31 = v30;

    v24 = v31;
  }

  *(v22 + 312) = v24;
  v32 = *(v22 + 272);
  v34 = *(v22 + 160);
  v33 = *(v22 + 168);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v34, v32, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v33, v22 + 56, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  if (*(v22 + 80))
  {
    outlined init with take of SPHConversation((v22 + 56), v22 + 16);
  }

  else
  {
    type metadata accessor for CATGlobals();

    CATGlobals.__allocating_init()();
    OUTLINED_FUNCTION_88();
    v35 = type metadata accessor for ContactResolutionSnippetGenerator();
    swift_allocObject();
    v36 = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
    *(v22 + 40) = v35;
    *(v22 + 48) = &protocol witness table for ContactResolutionSnippetGenerator;
    *(v22 + 16) = v36;
    if (*(v22 + 80))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22 + 56, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    }
  }

  v141 = v24;
  v37 = *(v22 + 264);
  v38 = *(v22 + 232);
  v39 = *(v38 + 48);
  *v37 = static ContactResolutionHelper.nullHandleLabelHelper(contacts:)() & 1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v40 = *(v22 + 256);
  v41 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
  OUTLINED_FUNCTION_124();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v42, v43, v44, v45);
  OUTLINED_FUNCTION_124();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v46, v47, v48, v49);
  v50 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  v52 = os_log_type_enabled(v50, v51);
  v54 = *(v22 + 248);
  v53 = *(v22 + 256);
  if (v52)
  {
    v55 = v38;
    a9 = v38;
    v56 = *(v22 + 240);
    v136 = v39;
    v57 = *(v22 + 216);
    a10 = *(v22 + 208);
    v138 = v37;
    v58 = swift_slowAlloc();
    v142 = OUTLINED_FUNCTION_36();
    *v58 = 136315394;
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v53, v56, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    v59 = *(v55 + 48);
    v60 = ContactResolutionPatternID.rawValue.getter();
    HIDWORD(a11) = v40;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    v61 = *(v57 + 8);
    v61(&v56[v59], a10);
    v62 = OUTLINED_FUNCTION_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);
    OUTLINED_FUNCTION_40_0();

    *(v58 + 4) = v60;
    *(v58 + 12) = 1024;
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v54, v56, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    v65 = *v56;
    v61(&v56[*(a9 + 48)], a10);
    v39 = v136;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    *(v58 + 14) = v65;
    _os_log_impl(&dword_0, v50, BYTE4(a11), "#CallingIntentContactNeedsDisambiguationFlowStrategy ContactResolutionHelper.NullLabelHelper results - Pattern: %s NeedsAuth: %{BOOL}d", v58, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v142);
    OUTLINED_FUNCTION_26_0(v142);
    v66 = v58;
    v37 = v138;
    OUTLINED_FUNCTION_26_0(v66);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v22 + 248), &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  }

  v67 = *(v22 + 216);
  v68 = *(v22 + 224);
  v69 = *(v22 + 208);
  (*(v67 + 16))(v68, &v37[v39], v69);
  v70 = (*(v67 + 88))(v68, v69);
  if (v70 == enum case for ContactResolutionPatternID.detailedDisambiguationContactNames(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 384) = v71;
    *v71 = v72;
    OUTLINED_FUNCTION_8_23(v71);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v73, v74, v75, v76, v77, v78);
  }

  else if (v70 == enum case for ContactResolutionPatternID.simpleDisambiguationUniqueLabels(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 320) = v80;
    *v80 = v81;
    OUTLINED_FUNCTION_8_23(v80);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v82, v83, v84, v85, v86, v87);
  }

  else if (v70 == enum case for ContactResolutionPatternID.simpleDisambiguationMixedLabels(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 352) = v88;
    *v88 = v89;
    OUTLINED_FUNCTION_8_23(v88);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v90, v91, v92, v93, v94, v95);
  }

  else if (v70 == enum case for ContactResolutionPatternID.detailedDisambiguationMixedLabelsNoWindowing(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 368) = v96;
    *v96 = v97;
    OUTLINED_FUNCTION_8_23(v96);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v98, v99, v100, v101, v102, v103);
  }

  else if (v70 == enum case for ContactResolutionPatternID.detailedDisambiguationMultipleHandlesSameLabelNoWindowing(_:))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v22 + 336) = v104;
    *v104 = v105;
    OUTLINED_FUNCTION_8_23(v104);
    OUTLINED_FUNCTION_42_5();

    return CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(v106, v107, v108, v109, v110, v111);
  }

  else
  {
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v113))
    {
      v114 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v114);
      OUTLINED_FUNCTION_14_1(&dword_0, v115, v116, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: chose ContactResolutionPattern that is not supported");
      OUTLINED_FUNCTION_12_3();
    }

    v117 = *(v22 + 296);
    v137 = *(v22 + 288);
    v139 = *(v22 + 304);
    v135 = *(v22 + 264);
    v118 = *(v22 + 216);
    v140 = *(v22 + 224);
    v119 = *(v22 + 200);
    v120 = *(v22 + 208);

    _StringGuts.grow(_:)(23);
    *(v22 + 96) = 0;
    *(v22 + 104) = 0xE000000000000000;
    v121._object = 0x8000000000458C50;
    v121._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v121);
    _print_unlocked<A, B>(_:_:)();
    v122 = *(v22 + 104);
    *v119 = *(v22 + 96);
    v119[1] = v122;
    v119[2] = 0xD000000000000055;
    v119[3] = 0x8000000000458C70;
    v119[4] = 0xD00000000000009CLL;
    v119[5] = 0x8000000000458CD0;
    v119[6] = 366;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_21();
    lazy protocol witness table accessor for type Input and conformance Input(v123, v124, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v125);
    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v119, v126);
    swift_willThrow();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v135, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
    (*(v117 + 8))(v139, v137);
    __swift_destroy_boxed_opaque_existential_1((v22 + 16));
    (*(v118 + 8))(v140, v120);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_5();

    return v128(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, v135, v137, v139, v140, v141, 0, 0xE000000000000000, a19, a20, a21, a22);
  }
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v15 = v14[33];
  v27 = v14[28];
  v28 = v14[25];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v16 = OUTLINED_FUNCTION_0();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1(v14 + 2);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_15_11();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_73_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMd, &_sSb19needsAuthentication_17SiriInferenceFlow26ContactResolutionPatternIDO9patternIdtMR);
  v14 = OUTLINED_FUNCTION_41_6();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v13 + 16));
  OUTLINED_FUNCTION_16_20();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForNeedsDisambiguationOutput(app:persons:intent:parameterName:intentResolutionResult:responseGenerator:device:nlContextUpdate:crrOutputGenerator:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationUniqueLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating simple disambiguation for unique labels by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_28_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_15(v7);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)(v9);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMultipleHandlesSameLabel(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating detailed disambiguation for multiple handles with the same label by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_28_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_15(v7);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)(v9);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating simple disambiguation for 2 or 3 mixed handles by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_28_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_15(v7);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v9);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating detailed disambiguation for more than 3 mixed handles by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_28_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_15(v7);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating contact name disambiguation by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_28_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_15(v7);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)(v9);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for PhoneError(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[8] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[9] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v1[10] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_62_4();
  v1[13] = swift_task_alloc();
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v10);
  v1[14] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_24_1();
  v62 = v0;
  OUTLINED_FUNCTION_2_0();
  v2 += 40;
  v3 = *v2;
  v4._rawValue = (*v2)();
  v5.value = EmergencyType.init(for:)(v4).value;
  *(v0 + 216) = v5;
  if (v5.value == PhoneCallFlowDelegatePlugin_EmergencyType_unknownDefault)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 48);
    if (v9)
    {
      OUTLINED_FUNCTION_42();
      v11 = OUTLINED_FUNCTION_83();
      v61[0] = v11;
      *v1 = 136315138;
      (v3)(v11);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v12 = Array.description.getter();
      v14 = v13;

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v61);
      OUTLINED_FUNCTION_109();

      *(v1 + 4) = v10;
      _os_log_impl(&dword_0, v7, v8, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForEmergencyNeedsDisambiguation called for neither a foreign or a local emergency. %s", v1, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    else
    {
    }

    v37 = *(v0 + 64);
    OUTLINED_FUNCTION_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_21();
    lazy protocol witness table accessor for type Input and conformance Input(v38, v39, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v40);
    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v37, v41);
    swift_willThrow();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  value = v5.value;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v16 = type metadata accessor for Logger();
  *(v0 + 144) = __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v18))
  {
    OUTLINED_FUNCTION_42();
    v61[0] = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    v19 = EmergencyType.description.getter(value);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v61);

    *(v1 + 4) = v21;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v27 = *(*(v0 + 32) + 16);
  *(v0 + 160) = 0;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 152) = v27;
  if (v27)
  {
    v28 = type metadata accessor for SiriKitDisambiguationItemPair();
    OUTLINED_FUNCTION_21(v28);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 176) = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_39_10(v29);
    OUTLINED_FUNCTION_98_0();

    return closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(v31, v32, v33, v34);
  }

  else
  {
    v44 = *(v0 + 216);
    v45 = *(v0 + 40);
    static DialogPhase.clarification.getter();
    *(swift_task_alloc() + 16) = v45;
    OUTLINED_FUNCTION_50_6();
    OutputGenerationManifest.init(dialogPhase:_:)();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    v48 = OUTLINED_FUNCTION_8_0(v47);
    if (v44)
    {
      if (v48)
      {
        v49 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v49);
        OUTLINED_FUNCTION_14_1(&dword_0, v50, v51, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForEmergencyNeedsDisambiguation for local emergency");
        OUTLINED_FUNCTION_12_3();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 200) = v52;
      *v52 = v53;
      OUTLINED_FUNCTION_40_8(v52);
      OUTLINED_FUNCTION_98_0();

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)();
    }

    else
    {
      if (v48)
      {
        v55 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v55);
        OUTLINED_FUNCTION_14_1(&dword_0, v56, v57, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForEmergencyNeedsDisambiguation for foreign emergency");
        OUTLINED_FUNCTION_12_3();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 184) = v58;
      *v58 = v59;
      OUTLINED_FUNCTION_38_7(v58);
      OUTLINED_FUNCTION_98_0();

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)();
    }
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 72);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 80)) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
    v2 = *(v0 + 168);
  }

  else
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    OUTLINED_FUNCTION_3_26();
    outlined init with take of PhoneRRTarget(v1, v3);
    outlined init with copy of LocalEmergencyCallDisambiguationModel(v3, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v43;
    }

    v6 = *(v2 + 16);
    if (v6 >= *(v2 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v44;
    }

    v7 = *(v0 + 96);
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(*(v0 + 104), type metadata accessor for DisambiguationItemWithDirectInvocationModel);
    *(v2 + 16) = v6 + 1;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_3_26();
    outlined init with take of PhoneRRTarget(v7, v8);
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 160) + 1;
  *(v0 + 160) = v10;
  *(v0 + 168) = v2;
  if (v10 == v9)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 40);
    static DialogPhase.clarification.getter();
    *(swift_task_alloc() + 16) = v12;
    OUTLINED_FUNCTION_50_6();
    OutputGenerationManifest.init(dialogPhase:_:)();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = OUTLINED_FUNCTION_51_0(v14);
    if (v11)
    {
      if (v15)
      {
        v16 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v16);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v17, v18, v19, v20, v21, 2u);
        OUTLINED_FUNCTION_35();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 200) = v22;
      *v22 = v23;
      OUTLINED_FUNCTION_40_8(v22);

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)();
    }

    else
    {
      if (v15)
      {
        v35 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v35);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v36, v37, v38, v39, v40, 2u);
        OUTLINED_FUNCTION_35();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 184) = v41;
      *v41 = v42;
      OUTLINED_FUNCTION_38_7(v41);

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)();
    }
  }

  else
  {
    v25 = *(v0 + 32);
    v26 = type metadata accessor for SiriKitDisambiguationItemPair();
    OUTLINED_FUNCTION_13_2(v26);
    v29 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v28 + 72) * v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 176) = v30;
    *v30 = v31;
    v32 = OUTLINED_FUNCTION_39_10(v30);

    return closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(v32, v29, v33, v34);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_145();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_23_0();
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_145();

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = a4;
  *(v4 + 401) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for SiriKitDisambiguationItemPair();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  *(v4 + 264) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 272) = v6;
  *(v4 + 280) = *(v6 - 8);
  *(v4 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *(v4 + 296) = swift_task_alloc();

  return _swift_task_switch(closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:), 0, 0);
}

void closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(uint64_t a1)
{
  SiriKitDisambiguationItemPair.rawItem.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v23);
      OUTLINED_FUNCTION_14_1(&dword_0, v24, v25, "#CallingIntentContactNeedsDisambiguationFlowStrategy rawItem is of wrong type. Skipping.");
      OUTLINED_FUNCTION_12_3();
    }

    goto LABEL_45;
  }

  v2 = *(v1 + 184);
  *(v1 + 304) = v2;
  SiriKitDisambiguationItemPair.formattedItem.getter();
  v3 = SiriKitDisambiguationItem.directInvocation.getter();
  *(v1 + 312) = v3;

  if (!v3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v27))
    {
      v28 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v28);
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_35();
    }

LABEL_44:

LABEL_45:
    goto LABEL_46;
  }

  v4 = [v2 personHandle];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 value];

    if (v6)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        goto LABEL_11;
      }
    }

    v5 = 0;
  }

  v8 = 0;
LABEL_11:
  *(v1 + 320) = v5;
  *(v1 + 328) = v8;
  SiriKitDisambiguationItemPair.formattedItem.getter();
  v10 = SiriKitDisambiguationItem.components.getter();

  v11 = specialized Array.count.getter(v10);

  SiriKitDisambiguationItemPair.formattedItem.getter();
  v12 = SiriKitDisambiguationItem.components.getter();

  if (v11 > 1)
  {
    OUTLINED_FUNCTION_82_0();
    if ((v12 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
    }

    else
    {
    }

    v15 = SiriKitDisambiguationItemComponent.print.getter();
    v19 = v34;

    SiriKitDisambiguationItemPair.formattedItem.getter();
    v35 = SiriKitDisambiguationItem.components.getter();

    OUTLINED_FUNCTION_82_0();
    if ((v35 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
    }

    else
    {
    }

    v17 = SiriKitDisambiguationItemComponent.speak.getter();
    v18 = v36;

    SiriKitDisambiguationItemPair.formattedItem.getter();
    v37 = SiriKitDisambiguationItem.components.getter();

    OUTLINED_FUNCTION_82_0();
    if ((v37 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
    }

    else
    {
    }

    v16 = SiriKitDisambiguationItemComponent.printBlue.getter();

    SiriKitDisambiguationItemPair.formattedItem.getter();
    v38 = SiriKitDisambiguationItem.components.getter();

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v38 & 0xC000000000000001) == 0, v38);
    if ((v38 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

LABEL_32:
    *(v1 + 352) = v15;
    *(v1 + 360) = v19;
    *(v1 + 336) = v17;
    *(v1 + 344) = v18;
    *(v1 + 402) = v16 & 1;
    v39 = *(v1 + 401);

    v40 = SiriKitDisambiguationItemComponent.print.getter();
    v42 = v41;

    *(v1 + 368) = v42;
    *(v1 + 376) = v40;
    if (v39)
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        v109 = *(v1 + 352);
        HIDWORD(v110) = *(v1 + 402);
        v44 = *(v1 + 312);
        v45 = *(v1 + 280);
        v46 = *(v1 + 264);
        v106 = *(v1 + 288);
        v107 = *(v1 + 272);
        v116 = *(v1 + 256);
        v119 = *(v1 + 360);
        v111 = *(v1 + 248);
        v112 = *(v1 + 240);
        v113 = *(v1 + 344);
        v47 = *(v1 + 208);
        v48 = objc_opt_self();
        __swift_project_boxed_opaque_existential_1((v47 + 24), *(v47 + 48));
        OUTLINED_FUNCTION_93_1();
        v49 = OUTLINED_FUNCTION_129();
        v50(v49);
        __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
        OUTLINED_FUNCTION_0();
        v51 = DeviceState.asInvocationContext.getter();
        v108 = [v48 runSiriKitExecutorCommandWithContext:v51 payload:v44];

        __swift_destroy_boxed_opaque_existential_1((v1 + 16));
        UUID.init()();
        v52 = *(v116 + 20);
        *(v1 + 88) = 0;
        *(v1 + 96) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        Loggable.init(wrappedValue:)();
        v105 = *(v116 + 32);
        *(v1 + 104) = 0;
        *(v1 + 112) = 0;
        Loggable.init(wrappedValue:)();
        (*(v45 + 16))(v46, v106, v107);

        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_23_1();
        v55 = *(v54 + 8);
        v55(v46 + v52, v53);
        *(v1 + 120) = v109;
        *(v1 + 128) = v119;
        Loggable.init(wrappedValue:)();
        *(v1 + 400) = BYTE4(v110);
        Loggable.init(wrappedValue:)();
        v55(v46 + v105, v53);
        *(v1 + 136) = v40;
        *(v1 + 144) = v42;
        Loggable.init(wrappedValue:)();
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
        v117 = v108;
        CodableAceObject.init(wrappedValue:)();
        Loggable.init(wrappedValue:)();
        if (v113)
        {
          v56 = *(v1 + 344);

          v57 = *(v1 + 336);
        }

        else
        {
          v87 = *(v1 + 360);
          v88 = v87 == 0;
          if (v87)
          {
            v57 = *(v1 + 352);
          }

          else
          {
            v57 = 0;
          }

          if (v88)
          {
            v56 = 0xE000000000000000;
          }

          else
          {
            v56 = v119;
          }
        }

        v90 = *(v1 + 320);
        v89 = *(v1 + 328);
        v91 = *(v1 + 304);
        v92 = *(v1 + 312);
        v115 = *(v1 + 288);
        v93 = *(v1 + 264);
        v121 = *(v1 + 192);
        *(v1 + 152) = v57;
        *(v1 + 160) = v56;
        Loggable.init(wrappedValue:)();
        *(v1 + 168) = v90;
        *(v1 + 176) = v89;
        Loggable.init(wrappedValue:)();

        v102 = OUTLINED_FUNCTION_94_1(v94, v95, v96, v97, v98, v99, v100, v101, v104, v105, v106, v107, v108, v109, v110, v111, v112, v115);
        v103(v102);
        OUTLINED_FUNCTION_3_26();
        outlined init with take of PhoneRRTarget(v93, v121);
LABEL_46:
        v82 = OUTLINED_FUNCTION_37_10();
        __swift_storeEnumTagSinglePayload(v82, v83, 1, v84);

        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_138();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
    }

    String.toSpeakableString.getter();
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    OUTLINED_FUNCTION_24_5();
    v62 = swift_task_alloc();
    *(v1 + 384) = v62;
    *v62 = v1;
    v62[1] = closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:);
    OUTLINED_FUNCTION_138();

    __asm { BRAA            X1, X16 }
  }

  v13 = specialized Array.count.getter(v12);

  if (v13 >= 1)
  {
    v14 = SiriKitDisambiguationItemPair.formattedItem.getter();
    SiriKitDisambiguationItem.components.getter();
    OUTLINED_FUNCTION_40_0();

    v15 = v14 & 0xC000000000000001;
    OUTLINED_FUNCTION_82_0();
    if ((v14 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v15 = 0;
    }

    else
    {

      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_32;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v66 = *(v1 + 224);
  v65 = *(v1 + 232);
  v67 = *(v1 + 216);
  v68 = *(v1 + 200);
  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.siriPhone);
  (*(v66 + 16))(v65, v68, v67);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  v72 = os_log_type_enabled(v70, v71);
  v74 = *(v1 + 224);
  v73 = *(v1 + 232);
  v75 = *(v1 + 216);
  if (!v72)
  {

    (*(v74 + 8))(v73, v75);
    goto LABEL_46;
  }

  v76 = OUTLINED_FUNCTION_42();
  v120 = OUTLINED_FUNCTION_36();
  v122 = v120;
  *v76 = 136315138;
  v118 = v70;
  v77 = SiriKitDisambiguationItemPair.formattedItem.getter();
  SiriKitDisambiguationItem.description.getter();
  v114 = v78;
  v80 = v79;

  (*(v74 + 8))(v73, v75);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v80, &v122);
  OUTLINED_FUNCTION_109();

  *(v76 + 4) = v77;
  v21 = v118;
  __swift_destroy_boxed_opaque_existential_1(v120);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_26_0(v76);

  goto LABEL_44;
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v5 + 296);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v10 = *(v5 + 296);
    *(v5 + 392) = v3;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResponseMode();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for ResponseType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a2, v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v5 + 104))(v7, enum case for ResponseType.disambiguation(_:), v4);
  OutputGenerationManifest.responseType.setter();
  static ResponseMode.voiceForward.getter();
  return OutputGenerationManifest.responseMode.setter();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = type metadata accessor for PhoneError(0);
  v1[16] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[17] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[18] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[19] = v7;
  v1[20] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[21] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[22] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v1[23] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[24] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for Locale();
  v1[25] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[26] = v11;
  v1[27] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v4;
  *(v2 + 264) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 288) = v0;

  if (!v0)
  {

    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v33 = v0[32];
  v34 = v0[37];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v32 = v0[18];
  v6 = v0[15];
  v30 = v0[21];
  v31 = v0[14];
  specialized BidirectionalCollection.last.getter(v0[13], v2);
  specialized Collection.first.getter();
  v7 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  v8 = OUTLINED_FUNCTION_109();
  v10 = *v9(v8, v7);
  v11 = (*(v10 + 272))();

  v12 = (v2 + v1[8]);
  *v12 = 0xD00000000000001ELL;
  v12[1] = 0x8000000000456AC0;
  v13 = (v2 + v1[6]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v2 + v1[7]) = v11 & 1;
  outlined init with copy of LocalEmergencyCallDisambiguationModel(v2, v3);
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v4, v31, v32);
  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  __swift_project_boxed_opaque_existential_1(v6 + 23, v6[26]);
  v0[10] = v30;
  OUTLINED_FUNCTION_52_5();
  v0[11] = lazy protocol witness table accessor for type Input and conformance Input(v14, v15, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_53_9(boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  v0[38] = v17;
  *(v17 + 16) = xmmword_427BB0;
  *(v17 + 32) = v33;
  *(v17 + 40) = v34;
  v18 = v33;
  v19 = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v20;
  *v20 = v21;
  v20[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:);
  OUTLINED_FUNCTION_31_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 224);

  OUTLINED_FUNCTION_111();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);

  OUTLINED_FUNCTION_111();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_136();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = v28[15];
  OUTLINED_FUNCTION_2_0();
  v75 = v31;
  v33 = (*(v32 + 320))();
  v34 = specialized Array.count.getter(v33);
  for (i = 0; v34 != i; ++i)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    v37 = v36;
    v28[28] = v36;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v38 = [v36 personHandle];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 emergencyType];

      if (v40 == &dword_0 + 2)
      {
        v62 = v28[15];

        type metadata accessor for SirikitDeviceState();
        (*(*v62 + 208))(&a12);
        v28[29] = SirikitDeviceState.__allocating_init(from:)();
        v28[30] = v62[14];
        OUTLINED_FUNCTION_2_0();
        v74 = v63 + class metadata base offset for StartCallCATsSimple + 816;
        OUTLINED_FUNCTION_24_5();
        v76 = v64 + *v64;
        v65 = swift_task_alloc();
        v28[31] = v65;
        *v65 = v28;
        v65[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:);
        OUTLINED_FUNCTION_21_7();

        return v66(v66, v67, v68, v69, v70, v71, v72, v73, a9, v74, v76, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }
    }
  }

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_12;
  }

LABEL_22:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_12:
  v41 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_8_0(v43))
  {
    v44 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v44);
    OUTLINED_FUNCTION_14_1(&dword_0, v45, v46, "#CallingIntentContactNeedsDisambiguationFlowStrategy Foreign emergency check should guarantee the presence of a nonLocal emergencyType INPerson");
    OUTLINED_FUNCTION_12_3();
  }

  v47 = v28[17];

  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_6_21();
  v50 = lazy protocol witness table accessor for type Input and conformance Input(v48, v49, &protocol conformance descriptor for PhoneError);
  OUTLINED_FUNCTION_147(v50);
  PhoneError.logged()(v51);
  OUTLINED_FUNCTION_2_32();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v47, v52);
  swift_willThrow();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_21_7();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, v75, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v15 = v14[30];
  v17 = v14[27];
  v16 = v14[28];
  v18 = v14[26];
  v32 = v14[25];
  v34 = v14[29];
  type metadata accessor for PhonePerson(0);

  v19 = v16;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  OUTLINED_FUNCTION_129();
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v14 + 2);
  v14[34] = static PhonePerson.make(phonePerson:options:locale:)(v16, 0, v17);

  (*(v18 + 8))(v17, v32);
  v31 = *v15 + class metadata base offset for StartCallCATsSimple + 160;
  OUTLINED_FUNCTION_24_5();
  v33 = v20 + *v20;
  v21 = swift_task_alloc();
  v14[35] = v21;
  *v21 = v14;
  v21[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:);
  OUTLINED_FUNCTION_15_11();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v34, a12, a13, a14);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 256);
  v14 = *(v12 + 224);
  v15 = *(v12 + 192);
  v16 = *(v12 + 176);
  v29 = *(v12 + 136);

  v17 = OUTLINED_FUNCTION_123();
  v18(v17);
  OUTLINED_FUNCTION_12_21();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v16, v19);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v15, type metadata accessor for ForeignEmergencyCallDisambiguationModel);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  v1[227] = v0;
  v1[221] = v2;
  v1[215] = v3;
  v1[209] = v4;
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[228] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[229] = v6;
  v1[230] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[231] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[232] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v1[233] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[234] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[227];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = OUTLINED_FUNCTION_5();
  v4(v3, v2);
  v0[201] = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v0 + 167);
  v0[202] = v5;
  v0[235] = v5;
  __swift_destroy_boxed_opaque_existential_1(v0 + 167);

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v6 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_get_throwing(v6, v7, v8, v0 + 162);
}

{
  v1[236] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
  }

  v1[237] = v1[201];
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_101();
  v22 = *(v0 + 1880);
  v23 = *(v0 + 1896);
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v25 = *(v0 + 1856);
  v26 = *(v0 + 1848);
  v29 = *(v0 + 1840);
  v30 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v27 = *(v0 + 1832);
  v28 = *(v0 + 1768);
  v21 = *(v0 + 1720);
  v24 = *(v0 + 1576);
  v4 = *(v0 + 1584);
  v6 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  v7 = *(v5 + 56);

  v8 = *v7(v6, v5);
  LOBYTE(v6) = (*(v8 + 272))();

  v9 = (v1 + *(v2 + 36));
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x8000000000456AE0;
  *v1 = v23;
  *(v1 + 8) = v22;
  *(v1 + 16) = v21;
  *(v1 + 24) = v6 & 1;

  UUID.init()();
  *(v0 + 1592) = v24;
  *(v0 + 1600) = v4;
  Loggable.init(wrappedValue:)();
  outlined init with copy of LocalEmergencyCallDisambiguationModel(v1, v25);
  swift_storeEnumTagMultiPayload();
  (*(v27 + 16))(v29, v28, v30);
  OutputGenerationManifest.responseViewId.setter();
  outlined init with copy of SignalProviding((v3 + 23), v0 + 1416);
  v10 = *(v0 + 1440);
  *(v0 + 1904) = v10;
  *(v0 + 1920) = __swift_project_boxed_opaque_existential_1((v0 + 1416), v10);
  *(v0 + 1520) = v26;
  OUTLINED_FUNCTION_52_5();
  *(v0 + 1528) = lazy protocol witness table accessor for type Input and conformance Input(v11, v12, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1496));
  OUTLINED_FUNCTION_53_9(boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v0 + 1928) = v14;
  *(v14 + 16) = xmmword_426260;
  OUTLINED_FUNCTION_42_5();

  return _swift_asyncLet_get_throwing(v15, v16, v17, v18);
}

{
  *(v1 + 1936) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[203];
  *(v0[241] + 32) = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[243] = v3;
  *v3 = v4;
  v3[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:);
  v5 = v0[241];
  v6 = v0[239];
  v7 = v0[238];
  v8 = v0[230];
  v9 = v0[209];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v9, v0 + 187, v5, v8, v7, v6);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 1496));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[234];
  v2 = v0[232];
  v3 = OUTLINED_FUNCTION_119_0();
  v4(v3);
  OUTLINED_FUNCTION_12_21();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v2, v5);
  OUTLINED_FUNCTION_49_4();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v1, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  v7 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_finish(v7, v8, v9, v0 + 216);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1624, CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), v0 + 1776);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_8_1();

  return v0();
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1376);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return OUTLINED_FUNCTION_70_2(v0 + 16, v0 + 1624, CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112_0();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[241];
  v2 = v0[234];
  v3 = v0[232];
  v4 = OUTLINED_FUNCTION_119_0();
  v5(v4);
  OUTLINED_FUNCTION_12_21();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v3, v6);
  OUTLINED_FUNCTION_49_4();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v2, v7);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 187);
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  v8 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_finish(v8, v9, v10, v0 + 204);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1624, CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), v0 + 1680);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112_0();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for Locale();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), 0, 0);
}

id implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_136();
  v21 = v20[10];
  v42 = *(v20[8] + 112);
  OUTLINED_FUNCTION_2_0();
  v23 = (*(v22 + 320))();
  result = specialized Array.count.getter(v23);
  v45 = result;
  v25 = 0;
  v43 = v23 & 0xC000000000000001;
LABEL_2:
  v20[12] = _swiftEmptyArrayStorage;
  while (v45 != v25)
  {
    if (v43)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      result = *(v23 + 8 * v25 + 32);
    }

    v26 = result;
    v27 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v28 = v20[11];
    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v20 + 2, v20[5]);
    OUTLINED_FUNCTION_5();
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v20 + 2);
    v29 = static PhonePerson.make(phonePerson:options:locale:)(v26, 0, v28);

    v30 = OUTLINED_FUNCTION_129();
    result = v31(v30);
    ++v25;
    if (v29)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 = v27;
      goto LABEL_2;
    }
  }

  v44 = *v42 + class metadata base offset for StartCallCATsSimple + 192;
  OUTLINED_FUNCTION_24_5();
  v46 = v32 + *v32;
  v33 = swift_task_alloc();
  v20[13] = v33;
  *v33 = v20;
  v33[1] = implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:);
  OUTLINED_FUNCTION_21_7();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v42, _swiftEmptyArrayStorage, v21 + 8, v23 & 0xFFFFFFFFFFFFFF8, v43, v44, v46, _swiftEmptyArrayStorage, a18, a19, a20);
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {

    *(v5 + 120) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  **(v0 + 56) = *(v0 + 120);

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), 0, 0);
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_5();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:);

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    OUTLINED_FUNCTION_91_1();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *v1 = v2;
  v1[1] = v4;
  OUTLINED_FUNCTION_8_1();

  return v5();
}

void *CallingIntentContactNeedsDisambiguationFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_130_0();
  return CallingIntentContactNeedsDisambiguationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v17, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *CallingIntentContactNeedsDisambiguationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = _swiftEmptyArrayStorage;
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson) = 0;
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  outlined init with copy of SignalProviding(a3, v26);
  outlined init with copy of SignalProviding(a7, v25);
  outlined init with copy of SignalProviding(a9, v24);
  outlined init with copy of SignalProviding(a10, v23);
  outlined init with copy of SignalProviding(a11, v22);
  v17 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v26, a4, a5, a6, v25, a8, v24, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

void CallingIntentContactNeedsDisambiguationFlowStrategy.__ivar_destroyer()
{

  v1 = *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a2 + 264), *(a2 + 272), a4);

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v6, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(**v2 + 440) + **(**v2 + 440));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>;

  return v7(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 448) + **(**v4 + 448));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 456) + **(**v3 + 456));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a4 + 264), *(a4 + 272), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a4 + 264), *(a4 + 272), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a2 + 264), *(a2 + 272), a4);

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v6, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a5 + 264), *(a5 + 272), v14);
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy(0, *(a6 + 264), *(a6 + 272), v16);
  *v15 = v7;
  v15[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v17, a7);
}

void outlined consume of ContactDisambiguationPromptResponse?(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of ContactDisambiguationPromptResponse(a1, a2);
  }
}

void outlined consume of ContactDisambiguationPromptResponse(id a1, unsigned __int8 a2)
{
  if ((a2 | 2) == 3)
  {
  }
}

id outlined copy of ContactDisambiguationPromptResponse(id result, unsigned __int8 a2)
{
  if ((a2 | 2) == 3)
  {
    return result;
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(void *a1, uint8_t *a2, void *a3, void *a4, uint64_t a5)
{
  type metadata accessor for AppResolver();
  OUTLINED_FUNCTION_7();
  v58 = v10;
  v59 = v9;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v60 = static AppSelectionSignalsGatheringHelper.getShowedForcedAppDisambiguationList(sharedGlobals:)(a1);
  v61 = a1;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    outlined init with copy of SignalProviding(a1, v62);
    v15 = [objc_opt_self() clientWithIdentifier:112];
    OUTLINED_FUNCTION_88();
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v16 = swift_allocObject();
    *(v16 + 16) = v5;
    type metadata accessor for DiagnosticLogPermission();
    swift_allocObject();
    OUTLINED_FUNCTION_88();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v14 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(v62, v16, v5);
  }

  outlined init with copy of SignalProviding(a1, &v75);
  type metadata accessor for AppUsageProvider();
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  v17 = swift_allocObject();

  AppResolver.init(appResolutionRules:)();
  v18 = type metadata accessor for PhoneAppResolutionHelper(0);
  v19 = swift_allocObject();
  v20 = type metadata accessor for EligibleAppFinder();
  v72[3] = v20;
  v72[4] = &protocol witness table for EligibleAppFinder;
  v72[0] = a5;
  v21 = (v19 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
  *v21 = v18;
  v21[1] = &outlined read-only object #0 of specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:);
  v21[2] = 0;
  v21[3] = 0;
  outlined init with copy of SignalProviding(&v75, v19 + 56);
  outlined init with copy of SignalProviding(v72, v19 + 16);
  (*(v58 + 16))(v19 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver, v13, v59);
  *(v19 + 144) = v17;
  *(v19 + 96) = v14;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v73, &v69, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (v70)
  {
    v22 = *(v58 + 8);

    v22(v13, v59);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v75);
    __swift_destroy_boxed_opaque_existential_1(v72);
    outlined init with take of SPHConversation(&v69, v62);
    outlined init with take of SPHConversation(v62, v19 + 104);
    v23 = v14;
  }

  else
  {
    v55 = v14;

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v69, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(&v75, v66);
    v24 = [objc_opt_self() sharedAnalytics];
    v54 = [v24 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
    }

    v64 = v20;
    v65 = &protocol witness table for EligibleAppFinder;
    *&v63 = static EligibleAppFinder.instance;
    v70 = &type metadata for PhoneAppResolutionLogger;
    v71 = &protocol witness table for PhoneAppResolutionLogger;
    v25 = swift_allocObject();
    *&v69 = v25;
    v26 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v27 = *(v26 + 112);

    v28 = OUTLINED_FUNCTION_130_0();
    if (v27(v28))
    {
      v29 = CurrentRequest.executionRequestId.getter();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    *&v62[0] = v29;
    *(&v62[0] + 1) = v31;
    *&v62[1] = v54;
    outlined init with copy of SignalProviding(v66, &v62[1] + 8);
    v32 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v33 = OUTLINED_FUNCTION_5();
    v34(v33, v32);
    outlined init with take of SPHConversation(&v63, &v62[6] + 8);
    memcpy((v25 + 16), v62, 0x90uLL);

    v23 = v55;

    (*(v58 + 8))(v13, v59);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v75);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v66);
    outlined init with take of SPHConversation(&v69, v19 + 104);
  }

  v35 = v61;
  if (v60[2])
  {
    v36 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v37 = OUTLINED_FUNCTION_5();
    v38(v37, v36);
    v39 = v77;
    __swift_project_boxed_opaque_existential_1(&v75, v76);
    v40 = OUTLINED_FUNCTION_5();
    v41(v40, v39);
    if (*&v62[0])
    {
      v42 = *(&v62[0] + 1);
      v43 = *(&v62[2] + 1);
      v44 = LOBYTE(v62[2]);
      __swift_destroy_boxed_opaque_existential_1(&v75);
      if (v44 == 4)
      {
        v45 = App.appIdentifier.getter();
        if (v46)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0;
        }

        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = 0xE000000000000000;
        }

        static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(v61, a2, a3, v19, v60, v47, v48);

        v72[0] = v42;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_sShySSGMd, &_sShySSGMR);
        v75 = v62[1];
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v75, &_sSSSgMd, &_sSSSgMR);
        *&v73[0] = v43;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_sShySSGMd, &_sShySSGMR);
      }

      v72[0] = v42;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_sShySSGMd, &_sShySSGMR);
      v75 = v62[1];
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v75, &_sSSSgMd, &_sSSSgMR);
      *&v73[0] = v43;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_sShySSGMd, &_sShySSGMR);
      v35 = v61;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v75);
    }
  }

  else
  {
  }

  v50 = a3[4];
  v51 = OUTLINED_FUNCTION_86(a3);
  PhoneCallNLIntent.applicationId.getter(v51, v50);
  if (v52)
  {

    if ((*(*v23 + 128))(v53))
    {
      static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(v35, a2, a3, v19);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EmergencyType and conformance EmergencyType()
{
  result = lazy protocol witness table cache variable for type EmergencyType and conformance EmergencyType;
  if (!lazy protocol witness table cache variable for type EmergencyType and conformance EmergencyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyType and conformance EmergencyType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EmergencyType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(v3, v4);
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of PhoneRRTarget(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88();
  v4(v3);
  OUTLINED_FUNCTION_23_1();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for PhoneRRTarget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LocalEmergencyCallDisambiguationModel(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88();
  v4(v3);
  OUTLINED_FUNCTION_23_1();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t partial apply for implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_22_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  OUTLINED_FUNCTION_21(v6);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v0 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(v4, v9, v0 + v8);
}

uint64_t partial apply for implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_22_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  OUTLINED_FUNCTION_13_2(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_65_1();

  return implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_21(v2);

  return closure #1 in closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  OUTLINED_FUNCTION_21(v4);

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(a1, a2 & 1);
}

uint64_t objectdestroy_93Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_23_1();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return _swift_deallocObject(v2, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21(v4);
  return closure #1 in closure #4 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(a1);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_1();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_133();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_133();
  type metadata accessor for DisambiguationResult();
  v0 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_21(v0);
  v1 = OUTLINED_FUNCTION_108_0();

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(v1, v2);
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  OUTLINED_FUNCTION_21(v0);
  v1 = OUTLINED_FUNCTION_108_0();

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(v1, v2);
}

uint64_t OUTLINED_FUNCTION_51_8@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 152) = a1;
  result = v1 + 152;
  *(v1 + 160) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_9(uint64_t a1)
{

  return outlined init with copy of LocalEmergencyCallDisambiguationModel(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73_2()
{
}

void OUTLINED_FUNCTION_77_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_78_1()
{
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v3, v1);
}

void OUTLINED_FUNCTION_97()
{
}

uint64_t OUTLINED_FUNCTION_111()
{
}

uint64_t OUTLINED_FUNCTION_112_0()
{
}

uint64_t OUTLINED_FUNCTION_114_1(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_115(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  *(v0 + 168) = v2;
  result = v0 + 168;
  *(v0 + 176) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1)
{
  *(v1 + 384) = a1;

  return ParameterResolutionRecord.parameter.getter();
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1)
{
  *(v1 + 344) = a1;

  return PaginatedItemContainer.items.getter();
}

uint64_t OUTLINED_FUNCTION_142()
{
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1)
{

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_144()
{
}

uint64_t OUTLINED_FUNCTION_145()
{
}

uint64_t OUTLINED_FUNCTION_148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return IntentPromptAnswer.init(answeredValue:updatedIntent:)();
}

uint64_t OUTLINED_FUNCTION_150()
{
}

uint64_t OUTLINED_FUNCTION_151()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t CallingIntentContinueInAppFlow.rchRecord.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_47_0();
  v4 = *(v3 + 112);
  type metadata accessor for IntentResolutionRecord();
  OUTLINED_FUNCTION_23_1();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t CallingIntentContinueInAppFlow.__allocating_init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)()
{
  OUTLINED_FUNCTION_24_8();
  v0 = swift_allocObject();
  CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)();
  return v0;
}

uint64_t CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)()
{
  OUTLINED_FUNCTION_24_8();
  *(v1 + 16) = v5;
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for IntentResolutionRecord();
  OUTLINED_FUNCTION_23_1();
  (*(v8 + 32))(v1 + v7, v4);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of SPHConversation(v3, v1 + *(v9 + 120));
  OUTLINED_FUNCTION_2_0();
  *(v1 + *(v10 + 128)) = v2;
  OUTLINED_FUNCTION_2_0();
  outlined init with take of SPHConversation(v0, v1 + *(v11 + 136));
  return v1;
}

uint64_t (*static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:)(uint64_t a1))()
{
  outlined init with copy of SignalProviding(a1, v4);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 96);
  outlined init with take of SPHConversation(v4, v2 + 24);
  return partial apply for closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:);
}

uint64_t closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + class metadata base offset for RCHChildFlowFactory);
  v8 = *(*a1 + class metadata base offset for RCHChildFlowFactory + 8);
  v9 = type metadata accessor for IntentResolutionRecord();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  type metadata accessor for CallingIntentContinueInAppFlow(0, v7, v8, a4);
  (*(v10 + 16))(v12, a2, v9);
  outlined init with copy of SignalProviding(a3, v16);

  default argument 3 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)();
  default argument 4 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)(v7, v8, a4);
  v16[0] = CallingIntentContinueInAppFlow.__allocating_init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)();
  swift_getWitnessTable();
  v13 = Flow.eraseToAnyFlow()();

  return v13;
}

uint64_t CallingIntentContinueInAppFlow.execute()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  return OUTLINED_FUNCTION_0_1(CallingIntentContinueInAppFlow.execute());
}

uint64_t CallingIntentContinueInAppFlow.execute()()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = &v1[*(*v1 + 120)];
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);
  v6 = *(v0 + 48);
  v36 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
  v7 = v2[10];
  v8 = v2[11];
  v9 = v2[12];
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, v7, v8, v9);
  outlined init with copy of SignalProviding(v3, v0 + 56);
  v11 = default argument 1 of CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(v7, v8, v9);
  v12 = default argument 2 of CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(v7, v8, v9);
  *(v0 + 96) = CallingIntentContinueInAppStrategy.__allocating_init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)((v0 + 56), v11, v12);
  v34 = *(v1 + 2);
  v13 = *(*v1 + 112);
  v35 = *(v6 + 32);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 152) = v35(v0 + 96, v34, &v1[v13], v10, WitnessTable, v36, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  type metadata accessor for IntentResolutionRecord();
  v15 = IntentResolutionRecord.intent.getter();
  v16 = *(v9 + 16);
  v17 = v16(v7, v9);

  if (v17 == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_65_0();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#CallingIntentContinueInAppFlow emergency call, skipping auth flows", v21, 2u);
      OUTLINED_FUNCTION_26_0(v21);
    }

    goto LABEL_7;
  }

  IntentResolutionRecord.intent.getter();
  v24 = OUTLINED_FUNCTION_4_3();
  v25 = (v16)(v24);

  if (v25 != 4)
  {
    IntentResolutionRecord.intent.getter();
    v26 = OUTLINED_FUNCTION_4_3();
    v27 = (v16)(v26);

    if (v27 != 5)
    {
LABEL_7:
      static ExecuteResponse.complete(next:)();

      v22 = *(v0 + 8);

      return v22();
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v28 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v31);
    OUTLINED_FUNCTION_20_14(&dword_0, v32, v30, "#CallingIntentContinueInAppFlow Pushing redial/callback punchout flow guarded by auth flows");
    OUTLINED_FUNCTION_12_3();
  }

  v33 = swift_task_alloc();
  *(v0 + 160) = v33;
  *v33 = v0;
  v33[1] = CallingIntentContinueInAppFlow.execute();

  return CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow()();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = v0[21];
  v0[13] = v0[19];
  v0[14] = v1;
  type metadata accessor for AnyFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR, &protocol conformance descriptor for AnyValueFlow<A>);
  v0[15] = Flow.guarded<A>(by:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyypGMd, &_s11SiriKitFlow011ConditionalC0CyypGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type ConditionalFlow<Any> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyypGMd, &_s11SiriKitFlow011ConditionalC0CyypGMR, &protocol conformance descriptor for ConditionalFlow<A>);
  static ExecuteResponse.complete<A>(next:)();

  v2 = v0[1];

  return v2();
}

uint64_t CallingIntentContinueInAppFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for CallingIntentContinueInAppFlow(0, v3, v4, *(v2 + 96));
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v0;
  OUTLINED_FUNCTION_2_0();
  v1[8] = v2;
  v3 = type metadata accessor for UnlockDevicePolicy();
  v1[9] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[10] = v4;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for CommonFlowGuard();
  v1[12] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[13] = v6;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v1;
  v7[1] = CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow();

  return CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback()();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  if (*(v0 + 168) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v4);
      OUTLINED_FUNCTION_20_14(&dword_0, v5, v3, "#CallingIntentContinueInAppFlow Adding device unlock guard for redial/callback");
      OUTLINED_FUNCTION_12_3();
    }

    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);

    static UnlockDevicePolicy.default.getter();
    static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
    (*(v7 + 8))(v6, v8);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v9;
    if (v9[2] >= v9[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v30;
    }

    v11 = OUTLINED_FUNCTION_5_22(*(v0 + 104));
    v12(v11);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  *(v0 + 136) = v10;
  OUTLINED_FUNCTION_2_0();
  type metadata accessor for IntentResolutionRecord();
  v13 = IntentResolutionRecord.intent.getter();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 callRecordToCallBack];

    if (v15)
    {
      v16 = [v15 providerBundleId];

      if (v16)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        *(v0 + 144) = v17;
        *(v0 + 152) = v19;
        v20 = swift_task_alloc();
        *(v0 + 160) = v20;
        *v20 = v0;
        v20[1] = CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow();

        return CallingIntentContinueInAppFlow.requiresProtectedAppsUnlock()();
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_18();
  __swift_project_boxed_opaque_existential_1((v23 + *(v22 + 120)), *(v23 + *(v22 + 120) + 24));
  v24 = OUTLINED_FUNCTION_8_24();
  v25(v24);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v26 = OUTLINED_FUNCTION_10_22();
  v28 = v27(v26);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_17_5();

  return v29(v28);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 169) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v25 = v0;
  if (*(v0 + 169) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 144);
      v4 = *(v0 + 152);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v24);
      OUTLINED_FUNCTION_25_8(&dword_0, v8, v9, "#CallingIntentContinueInAppFlow Adding protected app guard for redial/callback using %s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_26_0(v7);
      OUTLINED_FUNCTION_26_0(v6);
    }

    static CommonFlowGuard.ensuringUnlockedApp(_:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v23;
    }

    if (*(v11 + 16) >= *(v11 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v12 = OUTLINED_FUNCTION_5_22(*(v0 + 104));
    v13(v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_18();
  __swift_project_boxed_opaque_existential_1((v15 + *(v14 + 120)), *(v15 + *(v14 + 120) + 24));
  v16 = OUTLINED_FUNCTION_8_24();
  v17(v16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v18 = OUTLINED_FUNCTION_10_22();
  v20 = v19(v18);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_17_5();

  return v21(v20);
}

uint64_t CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for UnlockDevicePolicy();
  v1[9] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[10] = v3;
  v1[11] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  OUTLINED_FUNCTION_14_18();
  v6 = (v5 + *(v4 + 120));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  static UnlockDevicePolicy.default.getter();
  v9 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v9)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v12))
    {
      goto LABEL_20;
    }

    v13 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v13);
    v15 = "#CallingIntentContinueInAppFlow device isn't locked, returning requiresUnlock = false";
LABEL_19:
    OUTLINED_FUNCTION_20_14(&dword_0, v14, v3, v15);
    OUTLINED_FUNCTION_12_3();
LABEL_20:

    OUTLINED_FUNCTION_17_5();

    return v32((v9 & 1) == 0);
  }

  OUTLINED_FUNCTION_2_0();
  type metadata accessor for IntentResolutionRecord();
  v16 = IntentResolutionRecord.intent.getter();
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_15:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v30))
    {
      goto LABEL_20;
    }

    v31 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v31);
    v15 = "#CallingIntentContinueInAppFlow couldn't determine a providerBundleId to redial or call back, assuming requiresUnlock = true";
    goto LABEL_19;
  }

  v18 = [v17 callRecordToCallBack];

  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = [v18 providerBundleId];

  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v0[7];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v0[12] = v22;
  v23 = (v20 + *(*v20 + 136));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  if ((*(v25 + 8))(v24, v25))
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v27))
    {
      goto LABEL_20;
    }

    v28 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v28);
    v15 = "#CallingIntentContinueInAppFlow allow ReturnMissedCalls is disabled; authentication is required for returning missed calls, assuming requiresUnlock = true";
    goto LABEL_19;
  }

  v34 = swift_task_alloc();
  v0[13] = v34;
  *v34 = v0;
  v34[1] = CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback();

  return CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:)(v3, v22);
}

uint64_t CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback()(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_1(CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:));
}

uint64_t CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:)()
{
  v1 = *(v0[21] + *(*v0[21] + 128));
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGSgs5NeverOGMd, &_sSccySaySSGSgs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A, B>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [String]?;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:), 0, 0);
}

{
  v24 = v0;
  if (v0[18])
  {
    v0[10] = v0[19];
    v0[11] = v0[20];
    *(swift_task_alloc() + 16) = v0 + 10;
    v1 = specialized Sequence.contains(where:)();

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[19];
      v5 = v0[20];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v23);
      *(v7 + 12) = 2080;
      if (v1)
      {
        v9 = 6648417;
      }

      else
      {
        v9 = 0x746F6E20657261;
      }

      if (v1)
      {
        v10 = 0xE300000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v23);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_0, v3, v4, "#CallingIntentContinueInAppFlow Notification previews for %s %s restricted.", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v8);
      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[19];
      v15 = v0[20];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v23);
      OUTLINED_FUNCTION_25_8(&dword_0, v19, v20, "#CallingIntentContinueInAppFlow Got nil when fetching restricted apps, assume previews restricted for app: %s");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_26_0(v18);
      OUTLINED_FUNCTION_26_0(v17);
    }

    v1 = 1;
  }

  OUTLINED_FUNCTION_17_5();

  return v21(v1);
}

uint64_t @objc completion handler block implementation for <A, B>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [String]?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for INIntentResponse();
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v4, v5);
}

uint64_t CallingIntentContinueInAppFlow.requiresProtectedAppsUnlock()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_1(CallingIntentContinueInAppFlow.requiresProtectedAppsUnlock());
}

{
  v1 = (*(v0 + 16) + *(**(v0 + 16) + 120));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = OUTLINED_FUNCTION_4_3();
  v4 = *v3(v2);
  v5 = (*(v4 + 264))();

  OUTLINED_FUNCTION_17_5();

  return v6(v5 & 1);
}

char *CallingIntentContinueInAppFlow.deinit()
{

  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 112);
  type metadata accessor for IntentResolutionRecord();
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v4 + 120)));
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v6 + 136)));
  return v0;
}

uint64_t CallingIntentContinueInAppFlow.__deallocating_deinit()
{
  CallingIntentContinueInAppFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17_5();

  return v5(v2);
}

uint64_t protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CallingIntentContinueInAppFlow<A, B>(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for CallingIntentContinueInAppFlow(0, a1[10], a1[11], a1[12]);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t type metadata completion function for CallingIntentContinueInAppFlow(uint64_t a1)
{
  result = type metadata accessor for IntentResolutionRecord();
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

unint64_t type metadata accessor for INIntentResponse()
{
  result = lazy cache variable for type metadata for INIntentResponse;
  if (!lazy cache variable for type metadata for INIntentResponse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntentResponse);
  }

  return result;
}

uint64_t CallingIntentContinueInAppStrategy.__allocating_init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(a1, a2, a3);
  return v6;
}

uint64_t CallingIntentContinueInAppStrategy.deviceState.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_1_1();
  return v2(v1);
}

uint64_t CallingIntentContinueInAppStrategy.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t key path setter for CallingIntentContinueInAppStrategy.additionalCommands : <A, B>CallingIntentContinueInAppStrategy<A, B>(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t CallingIntentContinueInAppStrategy.additionalCommands.setter(uint64_t a1)
{
  v3 = direct field offset for CallingIntentContinueInAppStrategy.additionalCommands;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  static UnlockDevicePolicy.default.getter();
  *(v3 + direct field offset for CallingIntentContinueInAppStrategy.additionalCommands) = _swiftEmptyArrayStorage;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t CallingIntentContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_2_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_8(v1);

  return v4(v3);
}

uint64_t CallingIntentContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_2_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_8(v1);

  return v4(v3);
}

uint64_t CallingIntentContinueInAppStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[14] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for TemplatingText();
  v1[15] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for TemplatingSection();
  v1[18] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[19] = v7;
  v1[20] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for TemplatingResult();
  v1[21] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[22] = v9;
  v1[23] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_31_4(v0[13]);
  v1 = OUTLINED_FUNCTION_4_3();
  v2(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = CallingIntentContinueInAppStrategy.makePromptForDeviceUnlock();
  v5 = v0[23];

  return static ResponseTemplates.unlockDeviceSegue(deviceState:)(v5, v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 200) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3 + 16, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIAddDialogs, SAUIAddDialogs_ptr);
  result = TemplatingResult.sections.getter();
  if (*(result + 16))
  {
    v17 = *(v0 + 184);
    v2 = *(v0 + 160);
    v18 = *(v0 + 176);
    v19 = *(v0 + 168);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    (*(v3 + 16))(v2, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    TemplatingSection.content.getter();
    (*(v3 + 8))(v2, v4);
    v10 = TemplatingText.text.getter();
    v12 = v11;
    (*(v6 + 8))(v5, v8);
    TemplatingResult.templateIdentifier.getter();
    v13 = SAUIAddDialogs.init(dialogString:templateIdentifier:)(v10, v12);
    v14 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
    v15 = type metadata accessor for AceOutput();
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    v9[3] = v15;
    v9[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v9);
    static AceOutputHelper.makeAceOutput(addDialogs:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v18 + 8))(v17, v19);

    OUTLINED_FUNCTION_11();

    return v16();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_27();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[85] = v2;
  v3[84] = a2;
  v3[83] = a1;
  OUTLINED_FUNCTION_2_0();
  v3[86] = v5;
  v6 = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_21(v6);
  v3[87] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for Locale();
  v3[88] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v3[89] = v8;
  v3[90] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v10);
  v3[94] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for OutputGenerationManifest();
  v3[95] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v3[96] = v12;
  v3[97] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_24_5();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v3[98] = v14;
  *v14 = v3;
  v14[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);

  return (v16)(a2, 0);
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = v12;
  OUTLINED_FUNCTION_28();
  v15 = v14;
  OUTLINED_FUNCTION_13_1();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_4_2();
  *v18 = v17;

  if (v10)
  {

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_60();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    *(v15 + 792) = v13;
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_60();

    return _swift_task_switch(v28, v29, v30);
  }
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 776);
  OUTLINED_FUNCTION_0_32();
  (*(v12 + 8))(v11);
  __swift_destroy_boxed_opaque_existential_1((v10 + 168));

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[100];
  (*(v10[96] + 8))(v10[97], v10[95]);
  *(v11 + 16) = 0;

  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1)
{
  v2 = v1[99];
  v3 = v1[86];
  v4 = v1[85];
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v2;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v5 = *(v3 + 80);
  type metadata accessor for IntentResolutionRecord();
  v6 = IntentResolutionRecord.intent.getter();
  v7 = *(v3 + 96);
  v8 = (*(v7 + 64))(v5, v7);
  v10 = v9;

  v11 = specialized Optional<A>.isNilOrEmpty.getter(v8, v10);

  v12 = v4[5];
  v13 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  if ((*(v13 + 112))(v12, v13))
  {
    v14 = v4[5];
    v15 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v14);
    (*(v15 + 8))(v14, v15);

    __swift_destroy_boxed_opaque_existential_1(v1 + 66);
  }

  if (!v11)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_78;
    }

    goto LABEL_7;
  }

  v16 = v1[89];
  v143 = v1[90];
  v145 = v1[88];
  v17 = v1[85];
  v18 = v7;
  v19 = type metadata accessor for PhoneStartCallIntent(0);
  v20 = IntentResolutionRecord.intent.getter();
  v135 = v18;
  v138 = v5;
  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v20, 0, v19, v5, v18);
  v134 = v21;
  v1[104] = v21;
  outlined init with copy of SignalProviding((v4 + 2), (v1 + 16));
  *(v1 + 104) = 1;
  v1[14] = 0xD000000000000013;
  v1[15] = 0x8000000000455210;
  v1[105] = specialized SiriPhoneHintGenerator.generateHint()();
  v1[106] = v22;
  v1[107] = v23;
  v1[108] = v24;
  outlined destroy of HangUpTipGenerator((v1 + 13));
  v25 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v26 = OUTLINED_FUNCTION_5();
  v27(v26, v25);
  v28 = v1[29];
  v29 = v1[30];
  __swift_project_boxed_opaque_existential_1(v1 + 26, v28);
  v30 = IntentResolutionRecord.app.getter();
  v31 = *(*v17 + 144);
  v32 = *v17 + 144;
  v1[109] = v31;
  v1[110] = v32 & 0xFFFFFFFFFFFFLL | 0xFEF0000000000000;
  v140 = v31;
  v31();
  __swift_project_boxed_opaque_existential_1(v1 + 31, v1[34]);
  v33 = v143;
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v29 + 16))(v30, v143, v28, v29);
  v35 = v34;

  v144 = *(v16 + 8);
  v144(v33, v145);
  __swift_destroy_boxed_opaque_existential_1(v1 + 31);
  if (v35)
  {
    SpeakableString.init(print:speak:)();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v47 = v1[93];
  v48 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v47, v36, 1, v48);
  __swift_destroy_boxed_opaque_existential_1(v1 + 26);
  IntentResolutionRecord.app.getter();
  v49 = App.appIdentifier.getter();
  v51 = v50;

  if (v51)
  {
    if (v49 != 0xD000000000000010 || v51 != 0x8000000000458F10)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v1[111] = type metadata accessor for SirikitDeviceState();
  (v140)(&v146);
  v1[112] = SirikitDeviceState.__allocating_init(from:)();
  v53 = IntentResolutionRecord.intent.getter();
  v1[113] = v53;
  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (v54)
  {
    v55 = v54;
    v56 = IntentResolutionRecord.intentResponse.getter();
    v1[114] = v56;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v57 = v56;
      v58 = OUTLINED_FUNCTION_20_15();
      if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v58, v59))
      {
        OUTLINED_FUNCTION_32_7();
        v60 = OUTLINED_FUNCTION_4_3();
        v61(v60);
        OUTLINED_FUNCTION_24_2();
        v63 = (*(v62 + 120))(1);
        *(v1 + 1048) = v63 & 1;

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Logger.siriPhone);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 67109120;
          *(v67 + 4) = v63 & 1;
          _os_log_impl(&dword_0, v65, v66, "#CallingIntentContinueInAppStrategy is emergency confirmation reprompt: %{BOOL}d", v67, 8u);
          OUTLINED_FUNCTION_26_0(v67);
        }

        v68 = v1[85];

        v1[115] = *(v68 + 56);
        v140();
        v69 = OUTLINED_FUNCTION_20_15();
        if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v69, v70))
        {
          static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(v55);
        }

        __swift_destroy_boxed_opaque_existential_1(v1 + 56);

        v106 = swift_task_alloc();
        v1[116] = v106;
        *v106 = v1;
        v106[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
        OUTLINED_FUNCTION_41_7();

        __asm { BRAA            X5, X16 }
      }
    }

    else
    {
      v57 = v53;
    }
  }

  else
  {
    v56 = v53;
  }

  OUTLINED_FUNCTION_32_7();
  v71 = OUTLINED_FUNCTION_4_3();
  v72(v71);
  __swift_project_boxed_opaque_existential_1(v1 + 36, v1[39]);
  v73 = OUTLINED_FUNCTION_14_7();
  v75 = DeviceState.isAuthenticatedForPhone.getter(v73, v74);
  __swift_destroy_boxed_opaque_existential_1(v1 + 36);
  if (v75)
  {
    v76 = IntentResolutionRecord.intent.getter();
    v77 = (*(*(*(v135 + 8) + 8) + 8))(v138);

    if (v77)
    {
      v139 = v1;
      v146 = _swiftEmptyArrayStorage;
      v141 = specialized Array.count.getter(v77);
      v78 = 0;
      v133 = _swiftEmptyArrayStorage;
      while (v141 != v78)
      {
        if ((v77 & 0xC000000000000001) != 0)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v78 >= *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_75;
          }

          v79 = *(v77 + 8 * v78 + 32);
        }

        v80 = v79;
        if (__OFADD__(v78, 1))
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_7:
          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, static Logger.siriPhone);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            OUTLINED_FUNCTION_14_1(&dword_0, v41, v42, "#CallingIntentContinueInAppStrategy: Calling intentHandledResponseWithFaceTimeLink");
            OUTLINED_FUNCTION_26_0(v40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v43 = swift_allocObject();
          v1[100] = v43;
          *(v43 + 16) = xmmword_426260;
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_24_5();
          v44 = swift_task_alloc();
          v1[101] = v44;
          *v44 = v1;
          v44[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
          OUTLINED_FUNCTION_41_7();

          __asm { BRAA            X0, X16 }
        }

        v136 = v78 + 1;
        v1 = v139;
        v81 = v139[90];
        v82 = v139[88];
        type metadata accessor for PhonePerson(0);
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v1 + 51, v1[54]);
        OUTLINED_FUNCTION_45_6();
        __swift_destroy_boxed_opaque_existential_1(v139 + 51);
        v83 = static PhonePerson.make(phonePerson:options:locale:)(v80, 0, v81);

        v144(v81, v82);
        ++v78;
        if (v83)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          OUTLINED_FUNCTION_36_10();
          if (v84)
          {
            OUTLINED_FUNCTION_30_10();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v133 = v146;
          v78 = v136;
        }
      }

      v1 = v139;
      v96 = v133;
    }

    else
    {
      v96 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for PhonePersonList.Builder();
    v98 = swift_allocObject();
    *(v98 + 16) = _swiftEmptyArrayStorage;
    v99 = (v98 + 16);
    swift_beginAccess();
    *v99 = v96;
    type metadata accessor for PhonePersonList();
    swift_allocObject();
    v100 = OUTLINED_FUNCTION_25_9();
    v101 = PhonePersonList.init(builder:)(v100);

    v102 = v134;
LABEL_71:
    v1[119] = v102;
    v1[118] = v101;
    v1[120] = *(v1[85] + 56);

    IntentResolutionRecord.app.getter();
    App.isFirstParty()();

    OUTLINED_FUNCTION_24_5();
    v130 = swift_task_alloc();
    v1[121] = v130;
    *v130 = v1;
    v130[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
    OUTLINED_FUNCTION_41_7();

    __asm { BRAA            X7, X16 }
  }

  OUTLINED_FUNCTION_32_7();
  v85 = OUTLINED_FUNCTION_4_3();
  v86(v85);
  OUTLINED_FUNCTION_24_2();
  (*(v87 + 216))();

  if (v1[6])
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>((v1 + 8), (v1 + 41), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult((v1 + 2));
    if (v1[44])
    {
      __swift_project_boxed_opaque_existential_1(v1 + 41, v1[44]);
      OUTLINED_FUNCTION_14_7();
      v88 = PhoneCallNLIntent.getPersons()();
      __swift_destroy_boxed_opaque_existential_1(v1 + 41);
      v146 = _swiftEmptyArrayStorage;
      v142 = specialized Array.count.getter(v88);
      v89 = 0;
      v137 = _swiftEmptyArrayStorage;
      while (v142 != v89)
      {
        if ((v88 & 0xC000000000000001) != 0)
        {
          v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v89 >= *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_77;
          }

          v90 = *(v88 + 8 * v89 + 32);
        }

        v91 = v90;
        v92 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_76;
        }

        v93 = v1[90];
        v94 = v1[88];
        type metadata accessor for PhonePerson(0);
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v1 + 46, v1[49]);
        OUTLINED_FUNCTION_45_6();
        __swift_destroy_boxed_opaque_existential_1(v1 + 46);
        v95 = static PhonePerson.make(phonePerson:options:locale:)(v91, 0, v93);

        v144(v93, v94);
        ++v89;
        if (v95)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          OUTLINED_FUNCTION_36_10();
          if (v84)
          {
            OUTLINED_FUNCTION_30_10();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v137 = v146;
          v89 = v92;
        }
      }

      v97 = v137;
      goto LABEL_70;
    }

    v103 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd;
    v104 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR;
    v105 = (v1 + 41);
  }

  else
  {
    v103 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd;
    v104 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR;
    v105 = (v1 + 2);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v105, v103, v104);
  v97 = _swiftEmptyArrayStorage;
LABEL_70:
  v109 = v1[92];
  type metadata accessor for PhonePersonList.Builder();
  v110 = swift_allocObject();
  *(v110 + 16) = _swiftEmptyArrayStorage;
  v111 = (v110 + 16);
  swift_beginAccess();
  *v111 = v97;
  type metadata accessor for PhonePersonList();
  swift_allocObject();
  v112 = OUTLINED_FUNCTION_25_9();
  v101 = PhonePersonList.init(builder:)(v112);
  type metadata accessor for PhoneStartCallIntent.Builder(0);
  swift_allocObject();
  PhoneStartCallIntent.Builder.init()();
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability);
  OUTLINED_FUNCTION_35_0();
  v114 = *(v113 + 288);
  swift_retain_n();
  v114(v109);

  v115 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v115, v116, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute);
  OUTLINED_FUNCTION_37();
  (*(v117 + 304))(v109);

  v118 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v118, v119, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider);
  OUTLINED_FUNCTION_35_0();
  (*(v120 + 320))(v109);

  v121 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v121, v122, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType);
  OUTLINED_FUNCTION_37();
  (*(v123 + 336))(v109);

  v124 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v124, v125, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_35_0();
  v127 = (*(v126 + 352))(v101);

  v128 = *(*v127 + 368);

  v128(v129);
  OUTLINED_FUNCTION_5();

  swift_allocObject();
  OUTLINED_FUNCTION_25_9();
  v102 = PhoneStartCallIntent.init(builder:)();

  goto LABEL_71;
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 816) = v0;

  if (!v0)
  {
    *(v5 + 824) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  *(v0[100] + 32) = v0[103];
  v0[129] = v0[100];
  v1 = v0[85];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = OUTLINED_FUNCTION_5();
  v4(v3, v2);
  __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[130] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_22(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[77] = v1;
  v2[78] = v4;
  v2[79] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 936) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_39_4();
  if (*(v0 + 1048) == 1)
  {
    OUTLINED_FUNCTION_31_4(*(v0 + 680));
    v1 = OUTLINED_FUNCTION_4_3();
    v2(v1);
    OUTLINED_FUNCTION_24_2();
    (*(v3 + 128))();
  }

  OUTLINED_FUNCTION_31_4(*(v0 + 680));
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);
  __swift_project_boxed_opaque_existential_1((v0 + 488), *(v0 + 512));
  v6 = OUTLINED_FUNCTION_14_7();
  v8 = DeviceState.isPrimaryDisplayDisabled.getter(v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 488));
  v9 = *(v0 + 912);
  v10 = *(v0 + 904);
  if (v8)
  {
    static ResponseMode.voiceOnly.getter();
    OutputGenerationManifest.responseMode.setter();
  }

  OUTLINED_FUNCTION_17_10(*(v0 + 624));
  v11();
  *(v0 + 1000) = SirikitDeviceState.__allocating_init(from:)();
  if (v10)
  {
    OUTLINED_FUNCTION_47_8();
    String.toSpeakableString.getter();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v0 + 728);
  v14 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v13, v12, 1, v14);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_24_5();
  v15 = swift_task_alloc();
  *(v0 + 1008) = v15;
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_8_25(v15);

  return v17(v16);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[80] = v1;
  v2[81] = v4;
  v2[82] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 976) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_39_4();

  OUTLINED_FUNCTION_17_10(v0[81]);
  v2();
  v0[125] = SirikitDeviceState.__allocating_init(from:)();
  if (v1)
  {
    OUTLINED_FUNCTION_47_8();
    String.toSpeakableString.getter();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[91];
  v5 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v4, v3, 1, v5);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_24_5();
  v6 = swift_task_alloc();
  v0[126] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_8_25(v6);

  return v8(v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 728);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 1016) = v8;
  *(v9 + 1024) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_19();
  v1 = v0[106];
  if (v1)
  {
    v2 = v0[127];
    v3 = v0[107];
    v4 = v0[105];

    HintInstance.updateHintHistory(_:)(v2, v4, v1, v3);

    v25 = v0[106];
  }

  else
  {
    v25 = 0;
  }

  v5 = v0[127];
  v6 = v0[124];
  v7 = v0[105];
  v8 = v0[93];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_427BB0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;

  outlined consume of HintInstance?(v7, v25);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v0[129] = v9;
  v10 = v0[85];
  v11 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  v12 = OUTLINED_FUNCTION_5();
  v13(v12, v11);
  __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[130] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_6_22(v14);
  OUTLINED_FUNCTION_16();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20, v21, v22, v23);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

void CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_39_4();
  v1 = v0[114];
  OUTLINED_FUNCTION_26_12();
  v2 = v0[96];
  v7 = v0[95];
  v8 = v0[97];
  v3 = v0[93];

  OUTLINED_FUNCTION_48_7();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v2 + 8))(v8, v7);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  v13 = v12[106];
  v14 = v12[105];
  v27 = v12[97];
  v15 = v12[96];
  v16 = v12[95];
  v17 = v12[93];

  outlined consume of HintInstance?(v14, v13);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v15 + 8))(v27, v16);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  v13 = v12[124];
  OUTLINED_FUNCTION_26_12();
  v26 = v12[97];
  v14 = v12[96];
  v15 = v12[95];
  v16 = v12[93];

  OUTLINED_FUNCTION_48_7();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v14 + 8))(v26, v15);
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t closure #1 in CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  return OutputGenerationManifest.additionalCommands.setter();
}

unint64_t specialized SiriPhoneHintGenerator.generateHint()()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 3, *(v0 + 6));
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  OUTLINED_FUNCTION_1_1();
  v4 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v1 + 3, *(v1 + 6));
  v5 = OUTLINED_FUNCTION_1_1();
  v6(v5);
  v7 = *(&v21 + 1);
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  v9 = *v1;
  v24 = Dictionary.init(dictionaryLiteral:)();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMd, &_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMR);
  v11 = lazy protocol witness table accessor for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(v9, &v24, v7, v10, v8, v11, &v25);

  __swift_destroy_boxed_opaque_existential_1(&v20);
  v12 = v25;
  v13 = specialized OneTimeHintGenerator<>.chooseHintIdentifier(history:)(v25);
  if (v14)
  {
    v15 = v13;
    outlined init with copy of HangUpTipGenerator(v1, &v20);
    v16 = swift_allocObject();
    v17 = v21;
    *(v16 + 16) = v20;
    *(v16 + 32) = v17;
    v18 = v23;
    *(v16 + 48) = v22;
    *(v16 + 64) = v18;
    *(v16 + 80) = v12;
  }

  else
  {

    return 0;
  }

  return v15;
}

uint64_t CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[6] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for IntentResolutionRecord();
  v1[7] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v1[11] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39_4();
  v73 = v20;
  v20[2] = _swiftEmptyArrayStorage;
  v21 = *(v20[8] + 16);
  v21(v20[10], v20[4], v20[7]);
  if (!swift_dynamicCast())
  {
    v45 = v20[6];
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v20[11]);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v46 = v20[9];
    v47 = v20[7];
    v48 = v20[4];
    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.siriPhone);
    v21(v46, v48, v47);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v20[8];
    v53 = v20[9];
    v55 = v20[7];
    if (v52)
    {
      v71 = v51;
      v56 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = v70;
      *v56 = 136315138;
      v57 = IntentResolutionRecord.intent.getter();
      v58 = [v57 typeName];

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      (*(v54 + 8))(v53, v55);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v72);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_0, v50, v71, "#CallingIntentContinueInAppStrategy: Building launch app command for %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_26_0(v70);
      OUTLINED_FUNCTION_26_0(v56);
    }

    else
    {

      (*(v54 + 8))(v53, v55);
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    IntentResolutionRecord.app.getter();
    v63 = IntentResolutionRecord.intent.getter();
    v64 = IntentResolutionRecord.intentResponse.getter();
    v65 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

    v66 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v20[2] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20[2] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X2, X16 }
  }

  v23 = v20[12];
  v22 = v20[13];
  v24 = v20[11];
  v25 = v20[6];
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  (*(v23 + 32))(v22, v25, v24);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.siriPhone);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v30, v31, "#CallingIntentContinueInAppStrategy: Building launch app command for INStartCallIntent");
    OUTLINED_FUNCTION_26_0(v29);
  }

  v32 = v20[13];
  v33 = v20[5];

  v34 = swift_task_alloc();
  v20[14] = v34;
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  v35 = swift_task_alloc();
  v20[15] = v35;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  *v35 = v20;
  v35[1] = CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_15_11();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 104);
  v12 = *(v10 + 88);
  v13 = *(*(v10 + 96) + 8);
  v14 = *(v10 + 24);
  v13(v11, v12);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v10 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v10 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_60();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t closure #1 in CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.app.getter();
  v9 = IntentResolutionRecord.intent.getter();
  v10 = IntentResolutionRecord.intentResponse.getter();
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  type metadata accessor for UnsupportedFlowCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin05Startb7RCHFlowD0C29makeLaunchAppCommandForHandle3app13sharedGlobals6intent0Q8Response16biomeEventSender011unsupportedC4Cats_y04SiriJ10Resolution0J0C_AA06SharedP9Providing_pSo07INStartB6IntentCSo07INStartb6IntentR0CSgAA05BiomeT7Sending_pAA011UnsupportedC4CATsCys6ResultOySo013SAIntentGroupiJ10WithIntentCs5Error_pGctFZTf4nnnnennn_nAA05BiometU0V_Tt6g5();
}

uint64_t _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentContinueInAppStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t CallingIntentContinueInAppStrategy.__deallocating_deinit()
{
  CallingIntentContinueInAppStrategy.deinit();
  OUTLINED_FUNCTION_35_0();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 192) + **(**v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 200) + **(**v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.authenticationPolicy.getter in conformance CallingIntentContinueInAppStrategy<A, B>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 216) + **(**v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CallingIntentContinueInAppStrategy(0, a3[10], a3[11], a3[12]);
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

uint64_t specialized updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()(uint64_t a1, void *a2, uint64_t a3)
{
  v16[2] = a2;
  result = specialized Sequence.first(where:)(partial apply for specialized closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint(), v16, a1);
  if (v6)
  {
    v7 = specialized OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(result, v6, a3);

    v20 = v7;
    v8 = a2[6];
    v9 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v8);
    (*(v9 + 64))(v17, v8, v9);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = *(v11 + 16);
    v13 = *a2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMd, &_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMR);
    v15 = lazy protocol witness table accessor for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>();
    v12(v13, &v20, v14, v15, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

uint64_t specialized closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  return BidirectionalCollection<>.starts<A>(with:)() & 1;
}

uint64_t outlined consume of HintInstance?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata completion function for CallingIntentContinueInAppStrategy(uint64_t a1)
{
  result = type metadata accessor for UnlockDevicePolicy();
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

uint64_t _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_TA(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  OUTLINED_FUNCTION_21(v4);

  return _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_(a1, a2 & 1);
}

unint64_t lazy protocol witness table accessor for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>()
{
  result = lazy protocol witness table cache variable for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>;
  if (!lazy protocol witness table cache variable for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMd, &_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>);
  }

  return result;
}

void *OUTLINED_FUNCTION_31_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 40);

  return __swift_project_boxed_opaque_existential_1((a1 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return dispatch thunk of DeviceState.siriLocale.getter();
}

uint64_t OUTLINED_FUNCTION_47_8()
{
}

void CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_65_0();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#CallingIntentHandleIntentFlowStrategy makeFailureHandlingIntentResponse", v17, 2u);
    OUTLINED_FUNCTION_26_0(v17);
  }

  type metadata accessor for TaskPriority();
  v18 = OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;
  v21[5] = v11;
  v21[6] = v9;
  v21[7] = v7;
  v21[8] = v5;
  v21[9] = v3;

  v22 = v9;
  v23 = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v17;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v8[26] = type metadata accessor for PhoneError(0);
  v8[27] = swift_task_alloc();
  v15 = (*(*a4 + 344) + **(*a4 + 344));
  v13 = swift_task_alloc();
  v8[28] = v13;
  *v13 = v8;
  v13[1] = closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);

  return v15(v8 + 14, a5, a6, a7);
}

uint64_t closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 192);
  outlined init with copy of SignalProviding(v0 + 112, v0 + 64);
  *(v0 + 104) = 0;
  v1(v0 + 64);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 64, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  *(v0 + 152) = *(v0 + 232);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_19_0();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 216);
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      OUTLINED_FUNCTION_5_23();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v1, v2);
      CallingIntentHandleIntentFlowStrategy.makeLegacyFailureHandlingIntentOutput(app:intent:intentResponse:_:)();

      goto LABEL_6;
    }

    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v1, type metadata accessor for PhoneError);
  }

  v3 = *(v0 + 232);
  v4 = *(v0 + 192);

  *(v0 + 16) = v3;
  *(v0 + 56) = 1;
  swift_errorRetain();
  v4(v0 + 16);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
LABEL_6:

  OUTLINED_FUNCTION_11();

  return v5();
}

void CallingIntentHandleIntentFlowStrategy.makeLegacyFailureHandlingIntentOutput(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v107 = v1;
  v108 = v2;
  v4 = v3;
  v6 = v5;
  v109 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  v106 = &v91 - v10;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v104 = v12;
  v105 = v11;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = type metadata accessor for CATOption();
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v6;
    v22 = OUTLINED_FUNCTION_65_0();
    *v22 = 0;
    _os_log_impl(&dword_0, v19, v20, "#CallingIntentHandleIntentFlowStrategy makeLegacyFailureHandlingIntentOutput ", v22, 2u);
    v23 = v22;
    v6 = v21;
    OUTLINED_FUNCTION_26_0(v23);
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    objc_opt_self();
    OUTLINED_FUNCTION_74();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v100 = v0;
      v101 = v26;
      outlined init with copy of SignalProviding(v0 + 24, v119);
      type metadata accessor for StartCallCATs(0);
      v99 = v4;
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_49_5();
      v27 = CATWrapper.__allocating_init(options:globals:)();
      v28 = type metadata accessor for PhoneCallDisplayTextCATs(0);
      OUTLINED_FUNCTION_99(v28);
      OUTLINED_FUNCTION_49_5();
      v103 = CATWrapper.__allocating_init(options:globals:)();
      v29 = type metadata accessor for PhoneCallCommonCATs(0);
      OUTLINED_FUNCTION_99(v29);
      OUTLINED_FUNCTION_49_5();
      v102 = CATWrapper.__allocating_init(options:globals:)();
      v30 = type metadata accessor for UnsupportedFlowCATs(0);
      OUTLINED_FUNCTION_99(v30);
      OUTLINED_FUNCTION_49_5();
      v31 = CATWrapper.__allocating_init(options:globals:)();
      v92 = v15;
      v32 = v31;
      v33 = type metadata accessor for AppInfoBuilder();
      v34 = swift_allocObject();
      type metadata accessor for TemplatingOperationManager();
      swift_allocObject();
      v97 = v34;

      v35 = TemplatingOperationManager.init()();
      type metadata accessor for StartCallCatTemplatingService(0);
      v36 = swift_allocObject();
      v98 = v25;
      v37 = v36;
      v118[3] = v33;
      v118[4] = &protocol witness table for AppInfoBuilder;
      v118[0] = v34;
      v95 = v27;
      *(v36 + direct field offset for StartCallCatTemplatingService.startCallCatFamily) = v27;
      v93 = v35;
      v94 = v32;
      *(v36 + direct field offset for StartCallCatTemplatingService.unsupportedFlowCats) = v32;
      *(v36 + direct field offset for StartCallCatTemplatingService.operationManager) = v35;
      outlined init with copy of SignalProviding(v119, v115);
      outlined init with copy of SignalProviding(v118, v114);

      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_49_5();
      v38 = CATWrapper.__allocating_init(options:globals:)();
      v113[3] = &type metadata for LabelTemplatesProvider;
      v113[4] = &protocol witness table for LabelTemplatesProvider;
      v39 = swift_allocObject();
      v113[0] = v39;
      *(v39 + 16) = 0u;
      *(v39 + 32) = 0u;
      v40 = *v37;
      v96 = v6;
      v41 = (v37 + *(v40 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
      *v41 = 0x3D65737561705C1BLL;
      v41[1] = 0xEC0000005C303532;
      OUTLINED_FUNCTION_70_0();
      v44 = v37 + *(v43 + v42 + 56);
      *v44 = v45;
      *(v44 + 1) = v45;
      *(v44 + 4) = 0;
      OUTLINED_FUNCTION_70_0();
      outlined init with copy of SignalProviding(v115, v37 + *(v47 + v46 + 72));
      v48 = v117;
      __swift_project_boxed_opaque_existential_1(v115, v116);
      v49 = OUTLINED_FUNCTION_5();
      v50(v49, v48);
      OUTLINED_FUNCTION_70_0();
      v52 = *(v51 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
      outlined init with take of PhoneCallFeatureFlagProviding(&v112, v37 + v52);
      OUTLINED_FUNCTION_70_0();
      v54 = v102;
      *(v37 + *(v53 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v103;
      OUTLINED_FUNCTION_70_0();
      *(v37 + *(v56 + v55 + 32)) = v54;
      OUTLINED_FUNCTION_70_0();
      outlined init with copy of SignalProviding(v114, v37 + *(v58 + v57 + 48));
      OUTLINED_FUNCTION_70_0();
      outlined init with copy of SignalProviding(v113, v37 + *(v59 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
      OUTLINED_FUNCTION_70_0();
      v61 = *(v60 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80);
      v91 = v38;
      *(v37 + v61) = v38;
      outlined init with copy of SignalProviding(v37 + v52, &v112);
      OUTLINED_FUNCTION_21_9(&v112);

      v62 = v92;
      dispatch thunk of DeviceState.siriLocale.getter();
      v111[0] = Locale.identifier.getter();
      v111[1] = v63;
      v110[0] = 45;
      v110[1] = 0xE100000000000000;
      v111[5] = 95;
      v111[6] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v64 = v109;
      OUTLINED_FUNCTION_19_3();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      (*(v104 + 8))(v62, v105);

      type metadata accessor for INIntentSlotValueType(0);
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
      Dictionary.init(dictionaryLiteral:)();
      v65 = v116;
      v66 = v117;
      __swift_project_boxed_opaque_existential_1(v115, v116);
      (*(v66 + 24))(v111, v65, v66);
      outlined init with copy of SignalProviding(v37 + v52, v110);
      v67 = type metadata accessor for DucTemplatingLocalContext();
      __swift_storeEnumTagSinglePayload(v106, 1, 1, v67);
      DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

      __swift_destroy_boxed_opaque_existential_1(v119);
      __swift_destroy_boxed_opaque_existential_1(v114);
      __swift_destroy_boxed_opaque_existential_1(v118);
      __swift_destroy_boxed_opaque_existential_1(v113);
      __swift_destroy_boxed_opaque_existential_1(&v112);
      __swift_destroy_boxed_opaque_existential_1(v115);

      OUTLINED_FUNCTION_102_0();
      v68 = swift_allocObject();
      v69 = v99;
      v68[2] = v100;
      v68[3] = v64;
      v70 = v96;
      v68[4] = v96;
      v68[5] = v69;
      v71 = v108;
      v68[6] = v107;
      v68[7] = v71;
      v72 = v69;

      v73 = v70;

      dispatch thunk of DucTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)();

LABEL_15:
    }

LABEL_16:
    OUTLINED_FUNCTION_65();
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_74();
    v74 = swift_dynamicCastObjCClass();
    if (!v74)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_113(v74);
    type metadata accessor for StartCallCATs(0);
    v75 = v4;
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    v76 = type metadata accessor for PhoneCallDisplayTextCATs(0);
    OUTLINED_FUNCTION_99(v76);
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    v77 = type metadata accessor for PhoneCallCommonCATs(0);
    OUTLINED_FUNCTION_99(v77);
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for AppInfoBuilder();
    swift_allocObject();
    type metadata accessor for StartAudioCallCatTemplatingService(0);
    swift_allocObject();
    OUTLINED_FUNCTION_75_1();
    specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
    OUTLINED_FUNCTION_102_0();
    v78 = swift_allocObject();
    v79 = OUTLINED_FUNCTION_87_1(v78);

    v80 = v6;

LABEL_14:
    dispatch thunk of DucTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)();

    goto LABEL_15;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_74();
    v81 = swift_dynamicCastObjCClass();
    if (!v81)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_113(v81);
    type metadata accessor for StartCallCATs(0);
    v82 = v4;
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    v83 = type metadata accessor for PhoneCallDisplayTextCATs(0);
    OUTLINED_FUNCTION_99(v83);
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    v84 = type metadata accessor for PhoneCallCommonCATs(0);
    OUTLINED_FUNCTION_99(v84);
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for AppInfoBuilder();
    swift_allocObject();
    type metadata accessor for StartVideoCallTemplatingService(0);
    swift_allocObject();
    OUTLINED_FUNCTION_75_1();
    specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
    OUTLINED_FUNCTION_102_0();
    v85 = swift_allocObject();
    v79 = OUTLINED_FUNCTION_87_1(v85);

    v86 = v6;

    goto LABEL_14;
  }

  v109 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v109, v87))
  {
    v88 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v88);
    _os_log_impl(&dword_0, v109, v87, "#CallingIntentHandleIntentFlowStrategy makeFailureHandlingIntentLegacyOutput: intent is not a calling intent", v4, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_65();
}

void CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)()
{
  OUTLINED_FUNCTION_66();
  v57 = v1;
  v58 = v2;
  v51 = v3;
  v52 = v4;
  v49 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = OUTLINED_FUNCTION_13_2(v5);
  v53 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_91();
  v56 = v11;
  v55 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_91();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  v23 = OUTLINED_FUNCTION_55();
  outlined init with copy of ButtonConfigurationModel?(v23, v24, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*v0 + 224))(*v22, v57, v58);
  }

  else
  {
    v25 = *(v13 + 32);
    v47 = v0;
    v48 = v25;
    v46 = v19;
    v26 = v22;
    v27 = v55;
    v25(v19, v26, v55);
    v28 = *(v49 + 264);
    v45 = *(v49 + 272);
    v49 = v28;
    v29 = OUTLINED_FUNCTION_111_0();
    v30 = OUTLINED_FUNCTION_111_0();
    type metadata accessor for PhoneCallNLContextProvider(0, v29, v30, v31);
    v32 = v56;
    static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)();
    v33 = v50;
    (*(v13 + 16))(v50, v19, v27);
    v34 = v54;
    outlined init with copy of ButtonConfigurationModel?(v32, v54, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v35 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v36 = (v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (*(v53 + 80) + v36 + 8) & ~*(v53 + 80);
    v38 = swift_allocObject();
    v39 = v45;
    *(v38 + 16) = v49;
    *(v38 + 24) = v39;
    v48(v38 + v35, v33, v27);
    *(v38 + v36) = v47;
    outlined init with take of ButtonConfigurationModel?(v34, v38 + v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v40 = (v38 + ((v9 + v37 + 7) & 0xFFFFFFFFFFFFFFF8));
    v41 = v58;
    *v40 = v57;
    v40[1] = v41;

    CallingIntentHandleIntentFlowStrategy.makeUnsupportedViews(app:intent:intentResponse:_:)(v42, v43, v44, partial apply for closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:));

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v56, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v13 + 8))(v46, v27);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *))
{
  if (a2)
  {
    v11[0] = a1;
    swift_errorRetain();
  }

  else
  {

    closure #1 in closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(a4, v11);
    outlined consume of Result<[INPerson], Error>(a1, 0);
  }

  v12 = a2 & 1;
  a6(v11);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t closure #1 in closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)@<X0>(uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v7 = *(*a3 + 208);
  v8 = v7(v13);
  (v7)(v12, v8);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  a5[3] = type metadata accessor for AceOutput();
  a5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(a5);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeIntentHandledOutput(app:intent:intentResponse:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeIntentHandledOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_23_0();
  v14 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x8000000000458FC0, &v13);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_12_3();
  }

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v11();
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[26] = v5;
  v1[31] = *v0;
  v6 = type metadata accessor for PhoneError(0);
  v1[32] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[33] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ButtonConfigurationModel(0);
  v1[34] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[35] = v8;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[38] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[39] = v10;
  v1[40] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for Locale();
  v1[41] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[42] = v12;
  v1[43] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v14);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  *(v7 + 432) = v6;
  *(v7 + 440) = v0;

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 400);
  v2 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 448) = v3;
  *v3 = v4;
  v3[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
  OUTLINED_FUNCTION_19_3();

  return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v2 + 400), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[59] = v5;
  v3[60] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_65_1();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v3[61] = v10;
    *v10 = v11;
    v10[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_65_1();

    return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 496) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[65] = v5;
  v3[66] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_65_1();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v3[67] = v10;
    *v10 = v11;
    v10[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_65_1();

    return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  v3[70] = v5;
  v3[71] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_65_1();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v3[72] = v10;
    *v10 = v11;
    v10[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_65_1();

    return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 616) = v0;

  if (!v0)
  {
    *(v3 + 624) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 640) = v0;

  if (!v0)
  {
    *(v5 + 648) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 664) = v0;

  if (!v0)
  {
    *(v3 + 672) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 688) = v0;

  if (!v0)
  {
    *(v3 + 696) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 720) = v0;

  if (!v0)
  {
    *(v5 + 728) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 752) = v0;

  if (!v0)
  {
    *(v5 + 760) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

void CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)()
{
  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_8;
  }

  v2 = v1;
  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v41 = one-time initialization token for siriPhone;
    v42 = *(v0 + 224);
    if (v41 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v45))
    {
      v46 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v46);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v52 = *(v0 + 264);
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);

    OUTLINED_FUNCTION_82_1();
    _StringGuts.grow(_:)(58);
    v55._countAndFlagsBits = 0x6552746E65746E69;
    v55._object = 0xEF3D65736E6F7073;
    String.append(_:)(v55);
    *(v0 + 184) = v53;
    swift_getAssociatedTypeWitness();
    v56 = v53;
    OUTLINED_FUNCTION_54_8();
    v57._countAndFlagsBits = String.init<A>(describing:)();
    object = v57._object;
    String.append(_:)(v57);

    OUTLINED_FUNCTION_84_1();
    v59._countAndFlagsBits = object - 18;
    v59._object = (v60 | 0x8000000000000000);
    String.append(_:)(v59);
    OUTLINED_FUNCTION_69_1(v165);
    *(v52 + 48) = 103;
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_21();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(v61, v62);
    OUTLINED_FUNCTION_74();
    swift_allocError();
    PhoneError.logged()(v63);
    OUTLINED_FUNCTION_5_23();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v52, v64);
    swift_willThrow();

    goto LABEL_16;
  }

  v156 = v2;
  v161 = v3;
  v164 = v0;
  v4 = *(v0 + 392);
  v159 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 232);
  v7 = *(v0 + 224);
  v8 = type metadata accessor for SirikitDeviceState();
  v9 = *(*v5 + 208);
  v10 = v7;
  v9(&v165, v6);
  AssociatedTypeWitness = SirikitDeviceState.__allocating_init(from:)();
  *(v164 + 416) = AssociatedTypeWitness;
  v12 = v164;
  CallingIntentHandleIntentFlowStrategy.getSpeakableAppName(app:intent:)();
  *(v164 + 808) = App.isFirstParty()();
  v13 = v161;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v159);
  v14 = &unk_548000;
  v15 = [v161 code];
  switch(v15)
  {
    case 6uLL:
      __swift_project_boxed_opaque_existential_1((*(v164 + 240) + 24), *(*(v164 + 240) + 48));
      v16 = OUTLINED_FUNCTION_55();
      v17(v16);
      *(v164 + 504) = SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_24_5();
      v18 = swift_task_alloc();
      *(v164 + 512) = v18;
      *v18 = v164;
      OUTLINED_FUNCTION_56_2(v18);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }

      return;
    case 7uLL:
      OUTLINED_FUNCTION_41_8();
      OUTLINED_FUNCTION_24_5();
      v71 = swift_task_alloc();
      *(v164 + 552) = v71;
      *v71 = v164;
      OUTLINED_FUNCTION_93_2(v71);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }

      return;
    case 8uLL:
      v67 = *(v164 + 232);
      static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v156, v161);

      v68 = swift_task_alloc();
      *(v164 + 424) = v68;
      *v68 = v164;
      v68[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X2, X16 }

      return;
    case 0xAuLL:
      OUTLINED_FUNCTION_41_8();
      OUTLINED_FUNCTION_24_5();
      v74 = swift_task_alloc();
      *(v164 + 464) = v74;
      *v74 = v164;
      OUTLINED_FUNCTION_93_2(v74);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }

      return;
    default:
      if (_INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled == v15)
      {
        v77 = [v2 contacts];
        if (v77)
        {
          v78 = v77;
          v0 = *(v164 + 336);
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          OUTLINED_FUNCTION_90();
          v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v165 = _swiftEmptyArrayStorage;
          v162 = specialized Array.count.getter(v79);
          v80 = 0;
          v155 = _swiftEmptyArrayStorage;
          while (v162 != v80)
          {
            if ((v79 & 0xC000000000000001) != 0)
            {
              v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              OUTLINED_FUNCTION_95_0();
              if (v81)
              {
                goto LABEL_87;
              }

              v82 = *(v79 + 8 * v80 + 32);
            }

            v83 = v82;
            v84 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_8:
              v21 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);
              v22 = Logger.logObject.getter();
              v23 = static os_log_type_t.error.getter();
              if (OUTLINED_FUNCTION_8_0(v23))
              {
                v24 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_11_1(v24);
                OUTLINED_FUNCTION_17_4();
                _os_log_impl(v25, v26, v27, v28, v29, 2u);
                OUTLINED_FUNCTION_12_3();
              }

              v30 = *(v0 + 264);
              v31 = *(v0 + 224);

              OUTLINED_FUNCTION_82_1();
              _StringGuts.grow(_:)(42);

              v165 = 0x3D746E65746E69;
              v166 = 0xE700000000000000;
              *(v0 + 176) = v31;
              swift_getAssociatedTypeWitness();
              v32 = v31;
              OUTLINED_FUNCTION_54_8();
              v33._countAndFlagsBits = String.init<A>(describing:)();
              v34 = v33._object;
              String.append(_:)(v33);

              OUTLINED_FUNCTION_84_1();
              v35._countAndFlagsBits = v34 - 26;
              v35._object = (v36 | 0x8000000000000000);
              String.append(_:)(v35);
              OUTLINED_FUNCTION_69_1(v165);
              *(v30 + 48) = 99;
              OUTLINED_FUNCTION_55();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_16_21();
              _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(v37, v38);
              OUTLINED_FUNCTION_74();
              swift_allocError();
              PhoneError.logged()(v39);
              OUTLINED_FUNCTION_5_23();
              _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v30, v40);
              swift_willThrow();
LABEL_16:

              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_43_1();

              __asm { BRAA            X1, X16 }
            }

            OUTLINED_FUNCTION_114_2();
            static Device.current.getter();
            __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
            dispatch thunk of DeviceState.siriLocale.getter();
            __swift_destroy_boxed_opaque_existential_1((v0 + 96));
            v85 = OUTLINED_FUNCTION_115_0();

            (*(v0 + 8))(v8, v13);
            ++v80;
            if (v85)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v86 = *(&dword_18 + (v165 & 0xFFFFFFFFFFFFFF8));
              if (*(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8)) >= v86 >> 1)
              {
                OUTLINED_FUNCTION_76(v86);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v155 = v165;
              v80 = v84;
            }
          }

          v12 = v164;
          v90 = v155;
        }

        else
        {
          v90 = _swiftEmptyArrayStorage;
        }

        v94 = *(v12 + 28);
        _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
        *(v12 + 74) = v95;
        type metadata accessor for PhonePersonList.Builder();
        v96 = swift_allocObject();
        *(v96 + 16) = _swiftEmptyArrayStorage;
        v97 = (v96 + 16);
        swift_beginAccess();
        *v97 = v90;
        type metadata accessor for PhonePersonList();
        swift_allocObject();
        v98 = OUTLINED_FUNCTION_90();
        *(v12 + 75) = PhonePersonList.init(builder:)(v98);
        OUTLINED_FUNCTION_24_5();
        v99 = swift_task_alloc();
        *(v12 + 76) = v99;
        *v99 = v12;
        OUTLINED_FUNCTION_12_4(v99);
        OUTLINED_FUNCTION_43_1();

        __asm { BRAA            X2, X16 }
      }

      if (_INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled == v15)
      {
        OUTLINED_FUNCTION_41_8();
        OUTLINED_FUNCTION_24_5();
        v87 = swift_task_alloc();
        *(v164 + 632) = v87;
        *v87 = v164;
        OUTLINED_FUNCTION_12_4(v87);
        OUTLINED_FUNCTION_43_1();

        __asm { BRAA            X0, X16 }
      }

      if (v15 != (&dword_8 + 1))
      {
        if (v15 == &dword_C)
        {
          OUTLINED_FUNCTION_41_8();

          v102 = swift_task_alloc();
          *(v164 + 680) = v102;
          *v102 = v164;
          OUTLINED_FUNCTION_12_4(v102);
          OUTLINED_FUNCTION_43_1();

          __asm { BRAA            X1, X16 }
        }

        if (v15 == (&dword_8 + 3))
        {
          OUTLINED_FUNCTION_41_8();

          v91 = swift_task_alloc();
          *(v164 + 656) = v91;
          *v91 = v164;
          OUTLINED_FUNCTION_12_4(v91);
          OUTLINED_FUNCTION_43_1();

          __asm { BRAA            X1, X16 }
        }

        if ([v2 preferredCallProvider] == &dword_0 + 1)
        {
          v130 = [v2 contacts];
          if (v130)
          {
            v131 = v130;
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
            v132 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (specialized Array.count.getter(v132))
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v132 & 0xC000000000000001) == 0, v132);
              if ((v132 & 0xC000000000000001) != 0)
              {
                v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v133 = *(v132 + 32);
              }

              v134 = v133;

              v135 = [v134 personHandle];

              if (v135)
              {
                v136 = [v135 type];

                if (v136 == &dword_0 + 1)
                {
                  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                  OUTLINED_FUNCTION_55();
                  v137 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
                  v138 = *(v137 + 8);
                  v139 = swift_checkMetadataState();
                  v140 = v138(v139, v137);
                  v141 = _swiftEmptyArrayStorage;
                  if (v140)
                  {
                    v14 = v140;
                    v142 = *(v164 + 336);
                    v157 = _swiftEmptyArrayStorage;
                    v165 = _swiftEmptyArrayStorage;
                    v143 = 0;
                    v160 = v140 & 0xC000000000000001;
                    v163 = specialized Array.count.getter(v140);
                    while (v163 != v143)
                    {
                      if (v160)
                      {
                        v144 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_95_0();
                        if (v81)
                        {
                          goto LABEL_94;
                        }

                        v144 = *(v14 + v143 + 4);
                      }

                      v12 = v144;
                      v158 = v143 + 1;
                      if (__OFADD__(v143, 1))
                      {
                        __break(1u);
LABEL_94:
                        __break(1u);
LABEL_95:
                        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_60:
                        v105 = *(v12 + 29);
                        v106 = type metadata accessor for Logger();
                        OUTLINED_FUNCTION_9_0(v106, static Logger.siriPhone);
                        v107 = v105;
                        v108 = Logger.logObject.getter();
                        v109 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v108, v109))
                        {
                          v110 = swift_slowAlloc();
                          v111 = swift_slowAlloc();
                          v165 = v111;
                          *v110 = 136315138;
                          *(v164 + 200) = [v13 *(v14 + 197)];
                          type metadata accessor for INStartCallIntentResponseCode(0);
                          v112 = String.init<A>(describing:)();
                          v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v165);

                          *(v110 + 4) = v114;
                          _os_log_impl(&dword_0, v108, v109, "#CallingIntentHandleIntentFlowStrategy makeFailureHandlingIntentIntentOutput: the dialog for %s hasn't been migrated to Response Framework.", v110, 0xCu);
                          __swift_destroy_boxed_opaque_existential_1(v111);
                          v115 = v111;
                          v12 = v164;
                          OUTLINED_FUNCTION_26_0(v115);
                          OUTLINED_FUNCTION_26_0(v110);
                        }

                        v116 = *(v12 + 51);
                        v117 = *(v164 + 392);
                        v118 = *(v164 + 264);
                        v119 = *(v164 + 232);
                        v120 = *(v164 + 224);
                        OUTLINED_FUNCTION_82_1();
                        _StringGuts.grow(_:)(57);
                        v121 = v166;
                        *(v164 + 160) = v165;
                        *(v164 + 168) = v121;
                        OUTLINED_FUNCTION_84_1();
                        v122._countAndFlagsBits = AssociatedTypeWitness - 30;
                        v122._object = (v123 | 0x8000000000000000);
                        String.append(_:)(v122);
                        *(v164 + 192) = [v13 *(v14 + 197)];
                        type metadata accessor for INStartCallIntentResponseCode(0);
                        _print_unlocked<A, B>(_:_:)();
                        v124._countAndFlagsBits = AssociatedTypeWitness - 33;
                        v124._object = 0x8000000000459110;
                        String.append(_:)(v124);
                        v125 = *(v164 + 168);
                        *v118 = *(v164 + 160);
                        v118[1] = v125;
                        v118[2] = AssociatedTypeWitness + 12;
                        v118[3] = 0x8000000000459030;
                        v118[4] = AssociatedTypeWitness;
                        v118[5] = 0x8000000000459080;
                        v118[6] = 156;
                        swift_storeEnumTagMultiPayload();
                        OUTLINED_FUNCTION_16_21();
                        _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(v126, v127);
                        swift_allocError();
                        PhoneError.logged()(v128);
                        OUTLINED_FUNCTION_5_23();
                        _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v118, v129);
                        swift_willThrow();

                        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v117, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
                        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v116, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
                        goto LABEL_16;
                      }

                      OUTLINED_FUNCTION_114_2();
                      static Device.current.getter();
                      AssociatedTypeWitness = *(v14 + 10);
                      __swift_project_boxed_opaque_existential_1(v14 + 7, AssociatedTypeWitness);
                      dispatch thunk of DeviceState.siriLocale.getter();
                      __swift_destroy_boxed_opaque_existential_1(v14 + 7);
                      v145 = OUTLINED_FUNCTION_115_0();

                      (*(v142 + 8))(v8, v13);
                      ++v143;
                      if (v145)
                      {
                        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                        AssociatedTypeWitness = *(&dword_10 + (v165 & 0xFFFFFFFFFFFFFF8));
                        v146 = *(&dword_18 + (v165 & 0xFFFFFFFFFFFFFF8));
                        if (AssociatedTypeWitness >= v146 >> 1)
                        {
                          OUTLINED_FUNCTION_76(v146);
                          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        }

                        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        v157 = v165;
                        v143 = v158;
                      }
                    }

                    v12 = v164;
                    v141 = v157;
                  }

                  type metadata accessor for PhonePersonList();
                  *(v12 + 88) = PhonePersonList.__allocating_init(list:)(v141);
                  OUTLINED_FUNCTION_83_1();
                  OUTLINED_FUNCTION_24_5();
                  v152 = swift_task_alloc();
                  *(v12 + 89) = v152;
                  *v152 = v12;
                  OUTLINED_FUNCTION_56_2(v152);
                  OUTLINED_FUNCTION_43_1();

                  __asm { BRAA            X1, X16 }
                }
              }
            }

            else
            {
            }
          }
        }

        __swift_project_boxed_opaque_existential_1((*(v164 + 240) + 24), *(*(v164 + 240) + 48));
        v147 = OUTLINED_FUNCTION_55();
        v148(v147);
        *(v164 + 736) = SirikitDeviceState.__allocating_init(from:)();
        OUTLINED_FUNCTION_83_1();
        OUTLINED_FUNCTION_24_5();
        v149 = swift_task_alloc();
        *(v164 + 744) = v149;
        *v149 = v164;
        OUTLINED_FUNCTION_56_2(v149);
        OUTLINED_FUNCTION_43_1();

        __asm { BRAA            X1, X16 }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_95;
      }

      goto LABEL_60;
  }
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  OUTLINED_FUNCTION_135();
  v13 = v12[91];

  OUTLINED_FUNCTION_51_9(v12[91]);
  v15 = *(v14 + 256);
  v16 = v13;
  OUTLINED_FUNCTION_8_26();
  v15();
  v17 = OUTLINED_FUNCTION_55();
  outlined init with copy of ButtonConfigurationModel?(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_15_21(v11, 1, a10);
  if (v22)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  }

  else
  {
    outlined init with take of ButtonConfigurationModel(v21, v12[37]);
    OUTLINED_FUNCTION_1_2();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v23, v24);
  }

  __swift_project_boxed_opaque_existential_1((v12[30] + 184), *(v12[30] + 208));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = OUTLINED_FUNCTION_48_0(v25);
  v12[99] = v26;
  *(v26 + 16) = xmmword_426260;
  *(v26 + 32) = a11;
  v27 = a11;
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_17_11(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_0_33(v29);
  OUTLINED_FUNCTION_15_11();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36, v37, v38);
}

{
  OUTLINED_FUNCTION_135();
  v13 = v12[95];

  OUTLINED_FUNCTION_51_9(v12[95]);
  v15 = *(v14 + 256);
  v16 = v13;
  OUTLINED_FUNCTION_8_26();
  v15();
  v17 = OUTLINED_FUNCTION_55();
  outlined init with copy of ButtonConfigurationModel?(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_15_21(v11, 1, a10);
  if (v22)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  }

  else
  {
    outlined init with take of ButtonConfigurationModel(v21, v12[37]);
    OUTLINED_FUNCTION_1_2();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v23, v24);
  }

  __swift_project_boxed_opaque_existential_1((v12[30] + 184), *(v12[30] + 208));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = OUTLINED_FUNCTION_48_0(v25);
  v12[99] = v26;
  *(v26 + 16) = xmmword_426260;
  *(v26 + 32) = a11;
  v27 = a11;
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_17_11(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_0_33(v29);
  OUTLINED_FUNCTION_15_11();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = *(v16 + 768);
  v20 = *(v16 + 296);
  v21 = *(v16 + 232);

  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v20, v22);
  v23 = OUTLINED_FUNCTION_46_5();
  v24(v23);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = *(v16 + 768);
  v20 = *(v16 + 232);

  v21 = OUTLINED_FUNCTION_46_5();
  v22(v21);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v20 = *(v18 + 224);
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v20 = *(v18 + 224);
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v20 = *(v18 + 224);
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 408);
  v18 = *(v16 + 392);
  v20 = *(v16 + 224);
  v19 = *(v16 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v20 = *(v18 + 224);
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 408);
  v18 = *(v16 + 392);
  v19 = *(v16 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 408);
  v18 = *(v16 + 392);
  v19 = *(v16 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeUnsupportedViews(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_65_0();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#CallingIntentHandleIntentFlowStrategy makeUnsupportedViews: returning empty views", v8, 2u);
    OUTLINED_FUNCTION_26_0(v8);
  }

  return a4(_swiftEmptyArrayStorage, 0);
}

uint64_t CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 138) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for UUID();
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_13_2(v8);
  *(v1 + 72) = v9;
  *(v1 + 80) = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[4];
  if (v1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v2 = v1;
    OUTLINED_FUNCTION_74();
    v0[11] = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v3 = App.isFirstParty()();
    OUTLINED_FUNCTION_24_5();
    v19 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:);
    v6 = v0[6];

    return v19(v6, !v3);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v10))
    {
      v11 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v11);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    OUTLINED_FUNCTION_24_5();
    v20 = (v17 + *v17);
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_12_4(v18);

    return v20();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 128) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v0 = OUTLINED_FUNCTION_92();
  ButtonConfigurationModel.init(label:url:)(v0, v1, v2);
  type metadata accessor for ButtonConfigurationModel(0);
  v3 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v17))
  {
    v18 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v18);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v24 = *(v14 + 138);

  if (v24 == 1)
  {
    *(v14 + 137) = 1;
  }

  else
  {
    *(v14 + 136) = 0;
  }

  v25 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v27 = v26;
  v28 = *(v14 + 80);
  v29 = *(v14 + 64);
  v30 = *(v14 + 72);
  v47 = *(v14 + 104);
  v48 = *(v14 + 32);
  v31 = *(v14 + 16);
  v32 = *(v14 + 88);
  UUID.init()();
  *v31 = v25;
  v31[1] = v27;
  v33 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v34 = v32;
  CodableAceObject.init(wrappedValue:)();
  (*(v30 + 16))(v31 + *(v33 + 28), v28, v29);
  *(v31 + *(v33 + 32)) = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  (*(v30 + 8))(v28, v29);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, a12, a13, a14);
}

void CallingIntentHandleIntentFlowStrategy.getSpeakableAppName(app:intent:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (App.isFirstParty()())
  {
    swift_getAssociatedTypeWitness();
    v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v12 = *(v11 + 8);
    v13 = swift_checkMetadataState();
    v14 = v12(v13, v11);
    v15 = v0[6];
    v16 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v15);
    (*(v16 + 8))(v26, v15, v16);
    v2 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v2, v14, v26);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
  }

  v17 = v0[41];
  v18 = v0[42];
  __swift_project_boxed_opaque_existential_1(v0 + 38, v17);
  OUTLINED_FUNCTION_70_0();
  (*(v19 + 208))(v26);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v18 + 16))(v2, v10, v17, v18);
  v21 = v20;
  (*(v6 + 8))(v10, v4);
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (v21)
  {

    v22 = v25;
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
    v22 = v25;
  }

  v24 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3[6];
  v6 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v5);
  (*(v6 + 152))(v35, v5, v6);
  v7 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v8 = App.appIdentifier.getter();
  (*(v7 + 16))(v36, v8);

  __swift_destroy_boxed_opaque_existential_1(v35);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  CallingIntent.populateCallIntentMetadata(resolvedApp:)(v36, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v3[6];
  v12 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v11);
  v13 = (*(v12 + 56))(v11, v12);
  v14 = (*(*v13 + 120))(v13);
  v16 = v15;

  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = *(*(AssociatedConformanceWitness + 8) + 8);
  v18 = (*(v17 + 8))(AssociatedTypeWitness, v17);
  if (!v18)
  {
LABEL_13:

    goto LABEL_14;
  }

  v19 = v18;
  if (!specialized Array.count.getter(v18))
  {

    goto LABEL_13;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000001) == 0, v19);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v20 = *(v19 + 32);
  }

  v33 = v20;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v34 = a3;
  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_65_0();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "#CallingIntentHandleIntentFlowStrategy: overwriting intent before going to Intent extension", v24, 2u);
    OUTLINED_FUNCTION_26_0(v24);
  }

  isa = INPerson.mutableCopyOrCrash()().super.isa;
  v26 = objc_allocWithZone(INPersonHandle);
  v27 = @nonobjc INPersonHandle.init(value:type:)(v14, v16, 2);
  [(objc_class *)isa setPersonHandle:v27];

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = OUTLINED_FUNCTION_48_0(v28);
  *(v29 + 16) = xmmword_426260;
  *(v29 + 32) = isa;
  v30 = *(v17 + 16);
  v31 = isa;
  v30(v29, AssociatedTypeWitness, v17);

  a3 = v34;
LABEL_14:
  type metadata accessor for SiriKitIntentExecutionBehavior();
  static SiriKitIntentExecutionBehavior.standard()();
  a3();

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
}

void *CallingIntentHandleIntentFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_130_0();
  return CallingIntentHandleIntentFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v17, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *CallingIntentHandleIntentFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  *(v11 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable) = 0;
  outlined init with copy of SignalProviding(a3, v26);
  outlined init with copy of SignalProviding(a7, v25);
  outlined init with copy of SignalProviding(a9, v24);
  outlined init with copy of SignalProviding(a10, v23);
  outlined init with copy of SignalProviding(a11, v22);
  v17 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v26, a4, a5, a6, v25, a8, v24, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = type metadata accessor for CallingIntentHandleIntentFlowStrategy(0, *(a6 + 264), *(a6 + 272), a4);

  return a8(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CallingIntentHandleIntentFlowStrategy(0, *(a2 + 264), *(a2 + 272), a4);

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v6, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CallingIntentHandleIntentFlowStrategy(0, *(a3 + 264), *(a3 + 272), a4);

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CallingIntentHandleIntentFlowStrategy(0, *(a3 + 264), *(a3 + 272), a4);

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t partial apply for closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_24_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_16();

  return closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t outlined bridged method (pb) of @objc INCallGroup.groupId.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t outlined init with take of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v99 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_58_2();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_42_6(v10, v11, v12, v13, v14, v15, v16, v17, v90);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_98_1(v19, v20, v21, v22, v23, v24, v25, v26, v91);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_91();
  v93 = v28;
  if (![v2 callCapability])
  {
    v30 = 0xE700000000000000;
    v31 = 0x4E574F4E4B4E55;
    goto LABEL_10;
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v0 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      OUTLINED_FUNCTION_101_0();
      [v33 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_9;
    }

    v0 = @"AUDIO_CALL";
  }

  v32 = v0;
LABEL_9:
  v34 = v0;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v35;

LABEL_10:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v31);
  if (![v2 audioRoute])
  {
    v40 = 0xE700000000000000;
    goto LABEL_21;
  }

  v39 = INCallAudioRouteGetBackingType();
  switch(v39)
  {
    case 4:
      v30 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v30 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v30 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_101_0();
      [v42 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_20;
  }

  v41 = v30;
LABEL_20:
  v43 = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v44;

LABEL_21:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v31);
  if (![v2 preferredCallProvider])
  {
    v49 = 0xE700000000000000;
    goto LABEL_32;
  }

  v48 = INPreferredCallProviderGetBackingType();
  switch(v48)
  {
    case 4:
      v40 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v40 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v40 = @"TELEPHONY_PROVIDER";
      break;
    default:
      OUTLINED_FUNCTION_101_0();
      [v51 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_31;
  }

  v50 = v40;
LABEL_31:
  v52 = v40;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v53;

LABEL_32:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v31);
  if ([v2 destinationType])
  {
    switch(INCallDestinationTypeGetBackingType())
    {
      case 1u:
        v49 = @"NORMAL_DESTINATION";
        goto LABEL_40;
      case 2u:
        v49 = @"EMERGENCY_DESTINATION";
        goto LABEL_40;
      case 3u:
        v49 = @"VOICEMAIL_DESTINATION";
        goto LABEL_40;
      case 4u:
        v49 = @"REDIAL_DESTINATION";
        goto LABEL_40;
      case 5u:
        v49 = @"CALL_BACK_DESTINATION";
LABEL_40:
        v57 = v49;
        break;
      default:
        OUTLINED_FUNCTION_101_0();
        [v89 stringWithFormat:@"(unknown: %i)"];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_47_9();
        break;
    }

    v58 = v49;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v31);
  v62 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v2);
  v63 = _swiftEmptyArrayStorage;
  v92 = v2;
  if (v62)
  {
    v64 = v62;
    v103 = _swiftEmptyArrayStorage;
    v101 = specialized Array.count.getter(v62);
    v65 = 0;
    while (1)
    {
      if (v101 == v65)
      {

        v2 = v92;
        v63 = _swiftEmptyArrayStorage;
        goto LABEL_55;
      }

      if ((v64 & 0xC000000000000001) != 0)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        OUTLINED_FUNCTION_95_0();
        if (v66)
        {
          goto LABEL_72;
        }

        v67 = *(v64 + 8 * v65 + 32);
      }

      v68 = v67;
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v102, v102[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      OUTLINED_FUNCTION_120();
      v71 = static PhonePerson.make(phonePerson:options:locale:)(v68, v70, v97);

      (*(v4 + 8))(v97, v99);
      ++v65;
      if (v71)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v72 = *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= v72 >> 1)
        {
          OUTLINED_FUNCTION_76(v72);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v65 = v69;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  else
  {
LABEL_55:
    type metadata accessor for PhonePersonList();
    v73 = OUTLINED_FUNCTION_5();
    v74 = PhonePersonList.__allocating_init(list:)(v73);
    v75 = outlined bridged method (pb) of @objc INStartCallIntent.callGroups.getter(v2);
    if (v75)
    {
      v76 = v75;
      v98 = v74;
      v100 = _swiftEmptyArrayStorage;
      v102[0] = _swiftEmptyArrayStorage;
      v77 = specialized Array.count.getter(v75);
      v78 = 0;
      while (v77 != v78)
      {
        if ((v76 & 0xC000000000000001) != 0)
        {
          v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          OUTLINED_FUNCTION_95_0();
          if (v66)
          {
            goto LABEL_74;
          }

          v79 = *(v76 + 8 * v78 + 32);
        }

        v80 = v79;
        v81 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_73;
        }

        type metadata accessor for PhoneCallGroup(0);
        v82 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v80, &selRef_groupName);
        v84 = v83;
        v85 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v80, &selRef_groupId);
        v87 = static PhoneCallGroup.make(groupName:groupId:)(v82, v84, v85, v86);

        ++v78;
        if (v87)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v88 = *(&dword_18 + (v102[0] & 0xFFFFFFFFFFFFFF8));
          if (*(&dword_10 + (v102[0] & 0xFFFFFFFFFFFFFF8)) >= v88 >> 1)
          {
            OUTLINED_FUNCTION_76(v88);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          OUTLINED_FUNCTION_94_0();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v100 = v102[0];
          v78 = v81;
        }
      }

      v74 = v98;
      v63 = v100;
    }

    else
    {
    }

    type metadata accessor for PhoneStartCallIntent(0);
    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v93, v94, v95, v96, v74, v63);
    OUTLINED_FUNCTION_65();
  }
}

uint64_t outlined init with copy of ButtonConfigurationModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return v4;
}

uint64_t outlined init with take of ButtonConfigurationModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1();
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return v4;
}

uint64_t partial apply for closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_13_2(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_13_2(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v9 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v16 = *(v2 + v9);
  v17 = *(v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(a1, a2 & 1, v2 + v7, v16, v2 + v15, v17);
}

void _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartAudiobG0C_Tt1g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v76 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_58_2();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_42_6(v14, v15, v16, v17, v18, v19, v20, v21, v68);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_91();
  v72 = v23;
  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v0 = @"VIDEO_CALL";
    goto LABEL_5;
  }

  if (BackingType == 1)
  {
    v0 = @"AUDIO_CALL";
LABEL_5:
    v25 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_67_1();
  [v26 stringWithFormat:@"(unknown: %i)"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_47_9();
LABEL_7:
  v27 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  v28 = v72;
  OUTLINED_FUNCTION_30_11();
  v29 = type metadata accessor for SpeakableString();
  v30 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  if (![v2 audioRoute])
  {
    v34 = 0xE700000000000000;
    goto LABEL_18;
  }

  v33 = INCallAudioRouteGetBackingType();
  switch(v33)
  {
    case 4:
      v28 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v28 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v28 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v36 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_17;
  }

  v35 = v28;
LABEL_17:
  v37 = v28;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v38;

LABEL_18:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
  if (![v2 preferredCallProvider])
  {
    v43 = 0xE700000000000000;
    goto LABEL_29;
  }

  v42 = INPreferredCallProviderGetBackingType();
  switch(v42)
  {
    case 4:
      v34 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v34 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v34 = @"TELEPHONY_PROVIDER";
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v45 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_28;
  }

  v44 = v34;
LABEL_28:
  v46 = v34;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v47;

LABEL_29:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v29);
  if ([v2 destinationType])
  {
    switch(INCallDestinationTypeGetBackingType())
    {
      case 1u:
        v43 = @"NORMAL_DESTINATION";
        goto LABEL_37;
      case 2u:
        v43 = @"EMERGENCY_DESTINATION";
        goto LABEL_37;
      case 3u:
        v43 = @"VOICEMAIL_DESTINATION";
        goto LABEL_37;
      case 4u:
        v43 = @"REDIAL_DESTINATION";
        goto LABEL_37;
      case 5u:
        v43 = @"CALL_BACK_DESTINATION";
LABEL_37:
        v51 = v43;
        break;
      default:
        OUTLINED_FUNCTION_67_1();
        [v67 stringWithFormat:@"(unknown: %i)"];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_47_9();
        break;
    }

    v52 = v43;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v29);
  v56 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v2);
  v71 = _swiftEmptyArrayStorage;
  if (v56)
  {
    v57 = v56;
    v69 = v11;
    v70 = v2;
    v79 = _swiftEmptyArrayStorage;
    v77 = specialized Array.count.getter(v56);
    v58 = 0;
    v59 = (v4 + 8);
    while (1)
    {
      if (v77 == v58)
      {

        v11 = v69;
        v2 = v70;
        goto LABEL_52;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v58 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_55;
        }

        v60 = *(v57 + 8 * v58 + 32);
      }

      v61 = v60;
      v62 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v78, v78[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      OUTLINED_FUNCTION_120();
      v64 = static PhonePerson.make(phonePerson:options:locale:)(v61, v63, v75);

      (*v59)(v75, v76);
      ++v58;
      if (v64)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v65 = *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= v65 >> 1)
        {
          OUTLINED_FUNCTION_76(v65);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v71 = v79;
        v58 = v62;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
  }

  else
  {
LABEL_52:
    type metadata accessor for PhoneStartCallIntent(0);
    type metadata accessor for PhonePersonList();
    v66 = PhonePersonList.__allocating_init(list:)(v71);

    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v72, v73, v74, v11, v66, _swiftEmptyArrayStorage);
    OUTLINED_FUNCTION_65();
  }
}

void _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartVideobG0C_Tt1g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v80 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_58_2();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_42_6(v10, v11, v12, v13, v14, v15, v16, v17, v73);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_98_1(v19, v20, v21, v22, v23, v24, v25, v26, v74);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_91();
  v75 = v28;
  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v0 = @"VIDEO_CALL";
    goto LABEL_5;
  }

  if (BackingType == 1)
  {
    v0 = @"AUDIO_CALL";
LABEL_5:
    v30 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_67_1();
  [v31 stringWithFormat:@"(unknown: %i)"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_47_9();
LABEL_7:
  v32 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  v33 = v75;
  OUTLINED_FUNCTION_30_11();
  v34 = type metadata accessor for SpeakableString();
  v35 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  if (![v2 audioRoute])
  {
    v39 = 0xE700000000000000;
    goto LABEL_18;
  }

  v38 = INCallAudioRouteGetBackingType();
  switch(v38)
  {
    case 4:
      v33 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v33 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v33 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v41 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_17;
  }

  v40 = v33;
LABEL_17:
  v42 = v33;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v43;

LABEL_18:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v34);
  v47 = INPreferredCallProviderGetBackingType();
  switch(v47)
  {
    case 4:
      v39 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_24;
    case 3:
      v39 = @"FACETIME_PROVIDER";
      goto LABEL_24;
    case 2:
      v39 = @"TELEPHONY_PROVIDER";
LABEL_24:
      v48 = v39;
      goto LABEL_26;
  }

  OUTLINED_FUNCTION_67_1();
  [v49 stringWithFormat:@"(unknown: %i)"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_47_9();
LABEL_26:
  v50 = v39;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  v51 = v77;
  OUTLINED_FUNCTION_30_11();
  v52 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v34);
  switch(INCallDestinationTypeGetBackingType())
  {
    case 1u:
      v51 = @"NORMAL_DESTINATION";
      goto LABEL_32;
    case 2u:
      v51 = @"EMERGENCY_DESTINATION";
      goto LABEL_32;
    case 3u:
      v51 = @"VOICEMAIL_DESTINATION";
      goto LABEL_32;
    case 4u:
      v51 = @"REDIAL_DESTINATION";
      goto LABEL_32;
    case 5u:
      v51 = @"CALL_BACK_DESTINATION";
LABEL_32:
      v55 = v51;
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v72 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      break;
  }

  v56 = v51;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_30_11();
  v57 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v34);
  v60 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v2);
  if (v60)
  {
    v61 = v60;
    v83 = _swiftEmptyArrayStorage;
    v81 = specialized Array.count.getter(v60);
    v62 = 0;
    while (1)
    {
      if (v81 == v62)
      {

        goto LABEL_46;
      }

      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        OUTLINED_FUNCTION_95_0();
        if (v63)
        {
          goto LABEL_49;
        }

        v64 = *(v61 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      OUTLINED_FUNCTION_120();
      v68 = static PhonePerson.make(phonePerson:options:locale:)(v65, v67, v79);

      (*(v4 + 8))(v79, v80);
      ++v62;
      if (v68)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v69 = *(&dword_18 + (v83 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)) >= v69 >> 1)
        {
          OUTLINED_FUNCTION_76(v69);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v62 = v66;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_46:
    type metadata accessor for PhoneStartCallIntent(0);
    type metadata accessor for PhonePersonList();
    v70 = OUTLINED_FUNCTION_5();
    v71 = PhonePersonList.__allocating_init(list:)(v70);

    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v75, v76, v77, v78, v71, _swiftEmptyArrayStorage);
    OUTLINED_FUNCTION_65();
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_53_10()
{

  return outlined init with take of ButtonConfigurationModel?(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_54_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_77_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return outlined init with take of ButtonConfigurationModel(v2, a1 + v3);
}

uint64_t OUTLINED_FUNCTION_78_2()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_99(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_111_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1)
{
  *(v1 + 120) = a1;

  return outlined init with copy of SignalProviding(v2 + 24, v3 - 128);
}

uint64_t OUTLINED_FUNCTION_114_2()
{

  return type metadata accessor for PhonePerson(0);
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v0, 0, v1);
}

void OUTLINED_FUNCTION_116()
{
}

uint64_t *OUTLINED_FUNCTION_118_0(uint64_t a1)
{
  *(v1 + 48) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 16));
}

unint64_t OUTLINED_FUNCTION_119_1()
{

  return StackedButtonsModel.responseViewId.getter(v0, 1);
}

uint64_t CallingIntentNeedsValueFlowStrategy.rePromptCount.getter()
{
  v1 = direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallingIntentNeedsValueFlowStrategy.rePromptCount.setter(uint64_t a1)
{
  v3 = direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount;
  result = OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallingIntentNeedsValueFlowStrategy.startingOver.getter()
{
  v1 = direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallingIntentNeedsValueFlowStrategy.startingOver.setter(uint64_t a1)
{
  v2 = a1;
  v3 = direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver;
  result = OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = v2;
  return result;
}

void CallingIntentNeedsValueFlowStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v74 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v72 = v6;
  __chkstk_darwin(v7);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.siriPhone);
  v21 = *(v14 + 16);
  v73 = v3;
  v21(v18, v3, v12);
  v71 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_86_1();
    v68 = v1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v69 = v5;
    v27 = v26;
    v75[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000000458B70, v75);
    *(v25 + 12) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v14 + 8))(v18, v12);
    v28 = OUTLINED_FUNCTION_53_1();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v30);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_0, v22, v23, "#CallingIntentNeedsValueFlowStrategy %s input: %s", v25, 0x16u);
    swift_arrayDestroy();
    v32 = v27;
    v5 = v69;
    OUTLINED_FUNCTION_26_0(v32);
    v33 = v25;
    v1 = v68;
    OUTLINED_FUNCTION_26_0(v33);
  }

  else
  {

    (*(v14 + 8))(v18, v12);
  }

  outlined init with copy of SignalProviding(v1 + 24, v75);
  Input.parse.getter();
  v34 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v11, 0);
  v35 = *(v72 + 8);
  v35(v11, v74);
  outlined destroy of ContactPromptResponseParser(v75);
  if (v34 - 1 < 2)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v43))
    {
      v44 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v44);
      OUTLINED_FUNCTION_33(&dword_0, v45, v46, "#CallingIntentNeedsValueFlowStrategy Intent cancelled");
      OUTLINED_FUNCTION_26_0(v5);
    }

    static ActionForInput.cancel()();
  }

  else
  {
    if (v34 == 5)
    {
      v36 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v47))
      {
        v48 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v48);
        v41 = "#CallingIntentNeedsValueFlowStrategy unknown intent, ignore this request";
        goto LABEL_16;
      }

LABEL_17:

      static ActionForInput.ignore()();
      goto LABEL_18;
    }

    if (v34 == 6)
    {
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v37))
      {
        v38 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v38);
        v41 = "#CallingIntentNeedsValueFlowStrategy user updated app name or phone verb, ignore current request from current flow";
LABEL_16:
        OUTLINED_FUNCTION_33(&dword_0, v39, v40, v41);
        OUTLINED_FUNCTION_26_0(v5);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    Input.parse.getter();
    v49 = OUTLINED_FUNCTION_63();
    v51 = v50(v49);
    if (v51 == enum case for Parse.NLv3IntentOnly(_:) || v51 == enum case for Parse.directInvocation(_:) || v51 == enum case for Parse.NLv4IntentOnly(_:) || v51 == enum case for Parse.uso(_:))
    {
      v55 = OUTLINED_FUNCTION_63();
      (v35)(v55);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v57))
      {
        v58 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v58);
        OUTLINED_FUNCTION_33(&dword_0, v59, v60, "#CallingIntentNeedsValueFlowStrategy actionForInput: handling..");
        OUTLINED_FUNCTION_26_0(v5);
      }

      static ActionForInput.handle()();
    }

    else
    {
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v62))
      {
        v64 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v64);
        OUTLINED_FUNCTION_33(&dword_0, v65, v66, "#CallingIntentNeedsValueFlowStrategy Received unsupported parse while determining action which is not yet supported. Skipping..");
        OUTLINED_FUNCTION_26_0(v5);
      }

      static ActionForInput.ignore()();
      v67 = OUTLINED_FUNCTION_63();
      (v35)(v67);
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v5 = type metadata accessor for PhoneError(0);
  v1[43] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[44] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v1[45] = *(v6 + 272);
  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_49_1();
  v1[46] = *(v7 + 264);
  v1[47] = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for ParameterResolutionRecord();
  v1[48] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[49] = v9;
  v1[50] = *(v10 + 64);
  v1[51] = OUTLINED_FUNCTION_62_4();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v11 = type metadata accessor for Parse();
  v1[54] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[55] = v12;
  v1[56] = OUTLINED_FUNCTION_62_4();
  v1[57] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v40 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[65];
  v2 = v0[60];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = OUTLINED_FUNCTION_43_3();
  v2(v4);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[65];
    v9 = OUTLINED_FUNCTION_86_1();
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_36();
    v39[0] = v11;
    *v9 = 136315394;
    v0[38] = v8;
    v12 = v8;
    OUTLINED_FUNCTION_21_10();
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v39);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    ParameterResolutionRecord.intent.getter();
    v17 = OUTLINED_FUNCTION_67_2();
    v18(v17);
    *(v9 + 14) = v15;
    *v10 = v15;
    OUTLINED_FUNCTION_75_2(&dword_0, v19, v20, "#CallingIntentNeedsValueFlowStrategy SKIntent after NCR replacement: %s, and with previousIntent: %@");
    outlined destroy of PhoneCallNLIntent?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_43_3();
    v22(v21);
  }

  v23 = v0[65];
  v38 = v0[58];
  v37 = v0[56];
  v35 = v0[62];
  v36 = v0[54];
  v24 = (*(*(*(v0[63] + 8) + 8) + 8))(v0[47]);
  v25 = OUTLINED_FUNCTION_36_2();
  v27 = v26(v25);
  v28 = ParameterResolutionRecord.intent.getter();
  CallingIntentNeedsValueFlowStrategy.mergePreviousIntentIntoCurrentOne(previousIntent:callingIntent:)(v28);

  v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMd, &_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMR);
  v39[0] = v24;
  v39[1] = v27;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v38(v37, v36);
  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_8_1();

  return v33();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  v35 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[69];
  v2 = v0[60];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = OUTLINED_FUNCTION_43_3();
  v2(v4);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[69];
    v9 = OUTLINED_FUNCTION_86_1();
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_36();
    v34[0] = v11;
    *v9 = 136315394;
    v0[37] = v8;
    v12 = v8;
    OUTLINED_FUNCTION_21_10();
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v34);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    ParameterResolutionRecord.intent.getter();
    v17 = OUTLINED_FUNCTION_67_2();
    v18(v17);
    *(v9 + 14) = v15;
    *v10 = v15;
    OUTLINED_FUNCTION_75_2(&dword_0, v19, v20, "#CallingIntentNeedsValueFlowStrategy SKIntent after NCR replacement: %s, and with previousIntent: %@");
    outlined destroy of PhoneCallNLIntent?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_12_3();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_43_3();
    v22(v21);
  }

  v23 = v0[66];
  v24 = (*(*(*(v0[67] + 8) + 8) + 8))(v0[47]);
  v25 = OUTLINED_FUNCTION_20_0();
  v27 = v26(v25);
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMd, &_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMR);
  v34[0] = v24;
  v34[1] = v27;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_8_1();

  return v32();
}

void CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 336);
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v4 = OUTLINED_FUNCTION_25_0();
  v6 = v5(v4);
  Input.parse.getter();
  (*(*v6 + 192))(v1);

  v7 = *(v2 + 8);
  *(v0 + 464) = v7;
  *(v0 + 472) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = OUTLINED_FUNCTION_55();
  v7(v8);
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v46, static Logger.siriPhone);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v48))
    {
      v49 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v49);
      OUTLINED_FUNCTION_14_1(&dword_0, v50, v51, "#CallingIntentNeedsValueFlowStrategy Received unsupported parse type. Skipping..");
      OUTLINED_FUNCTION_12_3();
    }

    v52 = *(v0 + 352);

    *v52 = xmmword_42D060;
    *(v52 + 16) = 2;
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_42();
    v55 = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v53, v54, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_147(v55);
    OUTLINED_FUNCTION_66_6();
    PhoneError.logged()(v56);
    outlined destroy of PhoneError(v52);
    swift_willThrow();
    goto LABEL_29;
  }

  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v9 = OUTLINED_FUNCTION_55();
  v11 = *(v10(v9) + 16);

  if (v11 || (OUTLINED_FUNCTION_9_23(), v12 = PhoneCallNLIntent.getPersons()(), v13 = specialized Array.count.getter(v12), , v13) || (__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v14 = OUTLINED_FUNCTION_55(), v16 = *(v15(v14) + 16), , v16))
  {
    v137 = v7;
    v17 = *(v0 + 424);
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    v20 = *(v0 + 384);
    v21 = *(v0 + 328);
    v138 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((*(v0 + 336) + 224), *(*(v0 + 336) + 248));
    type metadata accessor for SiriKitEvent();
    v22 = ParameterResolutionRecord.intent.getter();
    v23 = [v22 typeName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = *(v18 + 16);
    *(v0 + 480) = v24;
    *(v0 + 488) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v17, v21, v20);
    outlined init with copy of SignalProviding(v0 + 16, v0 + 96);
    v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v26 = swift_allocObject();
    v26[1] = vextq_s8(v138, v138, 8uLL);
    (*(v18 + 32))(&v26->i8[v25], v17, v20);
    outlined init with take of SPHConversation((v0 + 96), v26->i64 + ((v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    OUTLINED_FUNCTION_9_23();
    if (PhoneCallNLIntent.isGroupFaceTimeCall()())
    {
      __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
      v27 = OUTLINED_FUNCTION_33_4();
      v28(v27);
      __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
      ParameterResolutionRecord.app.getter();
      v29 = DeviceState.isGroupFaceTimeDeviceUnsupported(app:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 256));
      if (v29)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v30 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v32))
        {
          v33 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v33);
          OUTLINED_FUNCTION_14_1(&dword_0, v34, v35, "#CallingIntentNeedsValueFlowStrategy Group FaceTime is unsupported for mac, homepod and watch");
          OUTLINED_FUNCTION_12_3();
        }

LABEL_27:
        v62 = *(v0 + 352);

        OUTLINED_FUNCTION_55();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_42();
        v65 = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v63, v64, &protocol conformance descriptor for PhoneError);
        OUTLINED_FUNCTION_147(v65);
        OUTLINED_FUNCTION_66_6();
        PhoneError.logged()(v66);
        outlined destroy of PhoneError(v62);
        swift_willThrow();
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_29:

        OUTLINED_FUNCTION_11();
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_9_23();
    if (PhoneCallNLIntent.isEmergencyContactCall()())
    {
      OUTLINED_FUNCTION_9_23();
      if (PhoneCallNLIntent.isFaceTimeCall()() || (ParameterResolutionRecord.app.getter(), v36 = App.isFirstParty()(), , !v36))
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v57 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v57, static Logger.siriPhone);
        v31 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v58))
        {
          v59 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v59);
          OUTLINED_FUNCTION_14_1(&dword_0, v60, v61, "#CallingIntentNeedsValueFlowStrategy FaceTime/3rd-party emergency contact calling is unsupported");
          OUTLINED_FUNCTION_12_3();
        }

        goto LABEL_27;
      }
    }

    Input.parse.getter();
    v37 = OUTLINED_FUNCTION_55();
    v39 = v38(v37);
    if (v39 == enum case for Parse.NLv3IntentOnly(_:))
    {
      __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
      v40 = OUTLINED_FUNCTION_36_2();
      v41(v40);
      ParameterResolutionRecord.app.getter();
      OUTLINED_FUNCTION_48_8();
      v43 = v42;
      *(v0 + 496) = v42;

      outlined destroy of SKTransformer(v0 + 216);
      if (!v43)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v105 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v105, static Logger.siriPhone);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v107))
        {
          v108 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v108);
          OUTLINED_FUNCTION_14_1(&dword_0, v109, v110, "#CallingIntentNeedsValueFlowStrategy SiriKit conversion failed for NLv3.");
          OUTLINED_FUNCTION_12_3();
        }

        v111 = *(v0 + 448);
        v112 = *(v0 + 432);
        v113 = *(v0 + 352);

        OUTLINED_FUNCTION_92();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_42();
        v116 = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v114, v115, &protocol conformance descriptor for PhoneError);
        OUTLINED_FUNCTION_74_3(v116);
        OUTLINED_FUNCTION_66_6();
        PhoneError.logged()(v117);
        outlined destroy of PhoneError(v113);
        swift_willThrow();
        (v137)(v111, v112);
        goto LABEL_28;
      }

      *(v0 + 504) = swift_getAssociatedConformanceWitness();
      v44 = v43;
      CallingIntentNeedsValueFlowStrategy.updateINIntent(currentINIntent:resolveRecord:)();

      v45 = swift_task_alloc();
      *(v0 + 512) = v45;
      *v45 = v0;
      OUTLINED_FUNCTION_51_10(v45);
      goto LABEL_58;
    }

    if (v39 == enum case for Parse.NLv4IntentOnly(_:) || v39 == enum case for Parse.uso(_:))
    {
      (v137)(*(v0 + 448), *(v0 + 432));
      __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
      v70 = OUTLINED_FUNCTION_36_2();
      v71(v70);
      ParameterResolutionRecord.app.getter();
      OUTLINED_FUNCTION_48_8();
      v73 = v72;
      *(v0 + 528) = v72;

      outlined destroy of SKTransformer(v0 + 136);
      if (!v73)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v132 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v132, static Logger.siriPhone);
        v31 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v133))
        {
          v134 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v134);
          OUTLINED_FUNCTION_14_1(&dword_0, v135, v136, "#CallingIntentNeedsValueFlowStrategy SiriKit conversion failed for NLv4/USO.");
          OUTLINED_FUNCTION_12_3();
        }

        goto LABEL_27;
      }

      v74 = v3[7];
      __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
      v75 = *(v74 + 56);
      v76 = v73;
      v77 = OUTLINED_FUNCTION_92();
      v75(v77);
      OUTLINED_FUNCTION_40_9();
      v79 = (*(v78 + 232))();

      if (v79)
      {
        v80 = *(v0 + 376);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        if ((*(AssociatedConformanceWitness + 136))(v80, AssociatedConformanceWitness))
        {
          __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
          v82 = OUTLINED_FUNCTION_25_0();
          v83(v82);
          __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
          ParameterResolutionRecord.app.getter();
          v84 = DeviceState.isGroupFaceTimeDeviceUnsupported(app:)();

          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          if (v84)
          {
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
            }

            v85 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v85, static Logger.siriPhone);
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = OUTLINED_FUNCTION_65_0();
              *v88 = 0;
              _os_log_impl(&dword_0, v86, v87, "#CallingIntentNeedsValueFlowStrategy Group FaceTime is unsupported for mac, homepod and watch", v88, 2u);
              OUTLINED_FUNCTION_26_0(v88);
            }

            v89 = *(v0 + 352);

            OUTLINED_FUNCTION_92();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_42();
            v92 = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v90, v91, &protocol conformance descriptor for PhoneError);
            OUTLINED_FUNCTION_74_3(v92);
            OUTLINED_FUNCTION_66_6();
            PhoneError.logged()(v93);
            outlined destroy of PhoneError(v89);
            swift_willThrow();

            goto LABEL_28;
          }
        }
      }

      *(v0 + 536) = swift_getAssociatedConformanceWitness();
      v118 = v76;
      CallingIntentNeedsValueFlowStrategy.updateINIntent(currentINIntent:resolveRecord:)();

      v119 = swift_task_alloc();
      *(v0 + 544) = v119;
      *v119 = v0;
      OUTLINED_FUNCTION_51_10(v119);
LABEL_58:
      OUTLINED_FUNCTION_42_5();

      __asm { BRAA            X4, X16 }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v94 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v94, static Logger.siriPhone);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v96))
    {
      v97 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v97);
      OUTLINED_FUNCTION_14_1(&dword_0, v98, v99, "#CallingIntentNeedsValueFlowStrategy Pass-thru expected, as SiriKit will call us for other types of parses");
      OUTLINED_FUNCTION_12_3();
    }

    type metadata accessor for IntentPromptAnswer();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
    v104 = OUTLINED_FUNCTION_55();
    v137(v104);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v122 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v122, static Logger.siriPhone);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v124))
    {
      v125 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v125);
      OUTLINED_FUNCTION_14_1(&dword_0, v126, v127, "#CallingIntentNeedsValueFlowStrategy contacts, resolved persons, and smsGroups were empty at prompt. IntentPromptAnswer = nil, reprompt.");
      OUTLINED_FUNCTION_12_3();
    }

    type metadata accessor for IntentPromptAnswer();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  }

  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_8_1();
LABEL_30:
  OUTLINED_FUNCTION_42_5();

  __asm { BRAA            X1, X16 }
}