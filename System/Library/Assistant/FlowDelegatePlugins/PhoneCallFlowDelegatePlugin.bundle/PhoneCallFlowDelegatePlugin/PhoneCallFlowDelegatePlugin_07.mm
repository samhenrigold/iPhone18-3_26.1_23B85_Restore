uint64_t specialized static AppSelectionSignalsGatheringHelper.triggerSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:smartAppSelection:eligibleAppsFinder:skIntent:)(void *a1, uint8_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a7;
  v51 = a6;
  v49 = a2;
  v52 = a9;
  v53 = a3;
  v12 = type metadata accessor for AppResolver();
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a8 - 8);
  __chkstk_darwin(v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v54 = v15;
  v55 = &v48 - v21;
  v22 = *(v15 + 16);
  v22(v20);
  v23 = static AppSelectionSignalsGatheringHelper.getShowedForcedAppDisambiguationList(sharedGlobals:)(a1);
  if (a4)
  {
    v24 = a4;
  }

  else
  {
    outlined init with copy of SignalProviding(a1, &v59);
    v25 = [objc_opt_self() clientWithIdentifier:112];
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    type metadata accessor for DiagnosticLogPermission();
    v27 = swift_allocObject();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v24 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(&v59, v26, v27);
  }

  outlined init with copy of SignalProviding(a1, &v59);
  type metadata accessor for AppUsageProvider();
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v28 = swift_allocObject();

  AppResolver.init(appResolutionRules:)();
  type metadata accessor for PhoneAppResolutionHelper(0);
  v29 = swift_allocObject();
  (v22)(v18, v55, a8);
  v30 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(&v59, v18, v24, &v56, v28, v14, v29, a8, v52);
  if (v23[2])
  {
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);
    (*(v32 + 152))(&v56, v31, v32);
    v33 = *(&v57 + 1);
    v34 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
    (*(v34 + 32))(&v59, v33, v34);
    if (v59)
    {
      v35 = *(&v59 + 1);
      v36 = v62;
      v37 = v61;
      __swift_destroy_boxed_opaque_existential_1(&v56);
      if (v37 == 4)
      {
        v38 = App.appIdentifier.getter();
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xE000000000000000;
        }

        static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(a1, v49, v53, v30, v23, v40, v41);

        v63 = v35;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v63, &_sShySSGMd, &_sShySSGMR);
        v56 = v60;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v56, &_sSSSgMd, &_sSSSgMR);
        v64[0] = v36;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_sShySSGMd, &_sShySSGMR);

        return (*(v54 + 8))(v55, a8);
      }

      v63 = v35;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v63, &_sShySSGMd, &_sShySSGMR);
      v56 = v60;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v56, &_sSSSgMd, &_sSSSgMR);
      v64[0] = v36;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, &_sShySSGMd, &_sShySSGMR);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v56);
    }
  }

  else
  {
  }

  v42 = v53;
  v43 = v53[3];
  v44 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v43);
  PhoneCallNLIntent.applicationId.getter(v43, v44);
  if (v45)
  {

    if ((*(*v24 + 128))(v46))
    {
      static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(a1, v49, v42, v30);
    }
  }

  return (*(v54 + 8))(v55, a8);
}

uint64_t partial apply for closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(a1, v11, v4, (v1 + 4), v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory()
{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory);
  }

  return result;
}

uint64_t partial apply for closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(a1, v4, v5, (v1 + 4), v6, (v1 + 10), v7);
}

uint64_t key path setter for AppSelectionState.forcedDisambiguationShadowPrediction : AppSelectionState(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of AppResolverResult?(a1, &v8 - v5);
  return (*(**a2 + 96))(v6);
}

uint64_t AppSelectionState.forcedDisambiguationShadowPrediction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  swift_beginAccess();
  return outlined init with copy of AppResolverResult?(v1 + v3, a1);
}

uint64_t outlined init with copy of AppResolverResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference17AppResolverResultOSgMd, &_s13SiriInference17AppResolverResultOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppSelectionState.forcedDisambiguationShadowPrediction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  OUTLINED_FUNCTION_0_26(a1);
  outlined assign with take of AppResolverResult?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AppSelectionState.__allocating_init(forcedDisambiguationPrediction:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  v4 = type metadata accessor for AppResolverResult();
  v5 = __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_0_26(v5);
  outlined assign with take of AppResolverResult?(a1, v2 + v3);
  swift_endAccess();
  return v2;
}

uint64_t AppSelectionState.init(forcedDisambiguationPrediction:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin17AppSelectionState_forcedDisambiguationShadowPrediction;
  v4 = type metadata accessor for AppResolverResult();
  v5 = __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  OUTLINED_FUNCTION_0_26(v5);
  outlined assign with take of AppResolverResult?(a1, v1 + v3);
  swift_endAccess();
  return v1;
}

void type metadata completion function for AppSelectionState(uint64_t a1)
{
  type metadata accessor for AppResolverResult?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AppResolverResult?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AppResolverResult?)
  {
    type metadata accessor for AppResolverResult();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AppResolverResult?);
    }
  }
}

void AppSelectionUserPersonaCollector.getUserPersona(candidateApps:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = _swiftEmptyArrayStorage;
  while (v2 != v3)
  {
    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_27;
      }
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v7 = App.appIdentifier.getter();
    v9 = v8;

    ++v3;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v12;
      }

      v10 = v5[2];
      if (v10 >= v5[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v13;
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v7;
      v11[5] = v9;
      v3 = v6;
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  if (v2)
  {
    v15 = 0;
    while (v2 != v15)
    {
      if (v4)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_29;
        }
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_28;
      }

      v16 = App.isFirstParty()();

      ++v15;
      if (!v16)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    v17 = dispatch_group_create();
    dispatch_group_enter(v17);
    type metadata accessor for SignalGatherer();
    swift_allocObject();

    SignalGatherer.init(signals:candidateAppBundleIds:)();
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = v14;
    v18[4] = v17;

    v19 = v17;
    dispatch thunk of SignalGatherer.gatherValuesAndTimings(completion:)();

    OS_dispatch_group.wait()();

    swift_beginAccess();
  }
}

void closure #3 in AppSelectionUserPersonaCollector.getUserPersona(candidateApps:)(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v46 = a4;
  v45 = type metadata accessor for SignalGatheringResults();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  __chkstk_darwin(v16);
  v18 = v40 - v17;
  outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(a1, v40 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "#AppSelectionUserPersonaCollector#getUserPersona gathering user persona signal value failed", v22, 2u);
    }

    outlined destroy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(v18);
  }

  else
  {
    v43 = v7;
    (*(v10 + 32))(v15, v18, v9);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    (*(v10 + 16))(v12, v15, v9);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v42 = v10;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v40[1] = a2;
      v28 = v10;
      v29 = v27;
      v40[0] = swift_slowAlloc();
      v47[0] = v40[0];
      *v29 = 136315138;
      SignalGatherer.ValuesWithTimings.values.getter();
      type metadata accessor for SignalValue();
      v30 = Dictionary.description.getter();
      v41 = a3;
      v32 = v31;

      v33 = *(v28 + 8);
      v33(v12, v9);
      v34 = v30;
      v35 = v33;
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v32, v47);
      a3 = v41;

      *(v29 + 4) = v36;
      _os_log_impl(&dword_0, v24, v25, "#AppSelectionUserPersonaCollector#getUserPersona gathered user persona value: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40[0]);
    }

    else
    {

      v35 = *(v10 + 8);
      v35(v12, v9);
    }

    v37 = v43;
    SignalGatherer.ValuesWithTimings.values.getter();

    v38 = v44;
    SignalGatheringResults.init(values:candidateAppBundleIds:)();
    to = 0;
    if (one-time initialization token for userPersonaKey != -1)
    {
      swift_once();
    }

    SignalGatheringResults.extract(name:for:to:)(static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey, 0, &to);
    (*(v37 + 8))(v38, v45);
    v35(v15, v9);
    v39 = to;
    swift_beginAccess();
    *(a3 + 16) = v39;
  }

  dispatch_group_leave(v46);
}

uint64_t outlined init with copy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<SignalGatherer.ValuesWithTimings, SignalGathererError>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0 || Array.count.getter() <= a1)
  {
    v6 = 1;
  }

  else
  {
    Array.subscript.getter();
    v6 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v6, 1, a3);
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 < 0 || Array.count.getter() <= a1)
  {
    v9 = *(*(a4 - 8) + 16);

    return v9(a5, a2, a4);
  }

  else
  {

    return Array.subscript.getter();
  }
}

uint64_t Array<A>.hasQueryableContactInformation.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of SignalProviding(i, v30);
    OUTLINED_FUNCTION_3(v30);
    v3 = OUTLINED_FUNCTION_1_1();
    v5 = v4(v3);
    if (v6)
    {
      OUTLINED_FUNCTION_2_27(v5, v6);
      OUTLINED_FUNCTION_0_27();
      if (v9)
      {
        v7 = v8;
      }

      if (v7)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3(v30);
    v10 = OUTLINED_FUNCTION_1_1();
    v12 = v11(v10);
    if (v13)
    {
      OUTLINED_FUNCTION_2_27(v12, v13);
      OUTLINED_FUNCTION_0_27();
      if (v9)
      {
        v14 = v15;
      }

      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3(v30);
    v16 = OUTLINED_FUNCTION_1_1();
    v18 = v17(v16);
    if (v19)
    {
      OUTLINED_FUNCTION_2_27(v18, v19);
      OUTLINED_FUNCTION_0_27();
      if (v9)
      {
        v20 = v21;
      }

      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_3(v30);
    v22 = OUTLINED_FUNCTION_1_1();
    v24 = v23(v22);
    if (v25)
    {
      OUTLINED_FUNCTION_2_27(v24, v25);
      OUTLINED_FUNCTION_0_27();
      if (v9)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
      if (v28)
      {
        return 1;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    if (!--v1)
    {
      return 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return 1;
}

uint64_t AssistantProperties.countryCode.getter()
{
  v0 = _AFPreferencesCountryCode();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t static Transformer<>.transformer<A>(intentType:sharedGlobals:previousIntent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  outlined init with copy of SignalProviding(a2, v10);
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(v10, (v7 + 4));
  v7[9] = a3;
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  return Transformer.init(transform:)();
}

uint64_t Transformer<>.VoiceTriggerAudioRouteBehavior.init<A>(for:isEmergencyCallIntent:sharedGlobals:)(uint64_t a1, char a2, void *a3)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#VoiceTriggerAudioRouteBehavior heySiriAudioRoute is enabled for INAnswerCallIntent.", v8, 2u);
    }

    v9 = 0;
  }

  else
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    v9 = 2;
    if (swift_dynamicCastMetatype() && (a2 & 1) != 0)
    {
      v10 = a3[3];
      v11 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v10);
      (*(v11 + 8))(v16, v10, v11);
      v12 = a3[3];
      v13 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v12);
      v14 = (*(v13 + 112))(v12, v13);
      v9 = static Transformer<>.VoiceTriggerAudioRouteBehavior.chooseBehaviorForEmergencyCall(deviceState:currentRequest:)(v16, v14);

      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t static Transformer<>.VoiceTriggerAudioRouteBehavior.chooseBehaviorForEmergencyCall(deviceState:currentRequest:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioDestination();
  v99 = *(v4 - 8);
  __chkstk_darwin(v4);
  v94 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSg_ADtMd, &_s13SiriUtilities16AudioDestinationVSg_ADtMR);
  __chkstk_darwin(v98);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v95 = &v91 - v14;
  __chkstk_darwin(v15);
  v101 = &v91 - v16;
  __chkstk_darwin(v17);
  v19 = &v91 - v18;
  __chkstk_darwin(v20);
  v22 = &v91 - v21;
  __chkstk_darwin(v23);
  v25 = &v91 - v24;
  __chkstk_darwin(v26);
  v28 = &v91 - v27;
  if (a2)
  {
    CurrentRequest.audioDestination.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v91 - v27, 1, 1, v4);
  }

  v100 = v19;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v93 = v12;
  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.siriPhone);
  outlined init with copy of AudioDestination?(v28, v25);
  v102 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v96 = v4;
  if (v33)
  {
    v91 = v7;
    v92 = v28;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v104 = v35;
    *v34 = 136315138;
    outlined init with copy of AudioDestination?(v25, v22);
    OUTLINED_FUNCTION_14_3(v22);
    if (v51)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v22, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
      v38 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v36 = AudioDestination.aceValue.getter();
      v38 = v37;
      (*(v99 + 8))(v22, v4);
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v25, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v104);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v31, v32, "#VoiceTriggerAudioRouteBehavior audioDestination = %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_26_0(v35);
    OUTLINED_FUNCTION_26_0(v34);

    v7 = v91;
    v28 = v92;
  }

  else
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v25, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = dispatch thunk of DeviceState.isPhone.getter();
  v41 = v100;
  v42 = v101;
  if ((v40 & 1) == 0)
  {
    goto LABEL_33;
  }

  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (DeviceState.isAnyCar.getter(v43, v44))
  {
    goto LABEL_33;
  }

  static AudioDestination.builtInSpeaker.getter();
  v45 = v96;
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v96);
  v46 = v97;
  v47 = v98;
  v48 = *(v98 + 48);
  outlined init with copy of AudioDestination?(v28, v97);
  outlined init with copy of AudioDestination?(v41, v46 + v48);
  OUTLINED_FUNCTION_14_3(v46);
  if (v51)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v41, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    OUTLINED_FUNCTION_14_3(v46 + v48);
    v49 = v95;
    if (v51)
    {
      v50 = v46;
      goto LABEL_28;
    }
  }

  else
  {
    outlined init with copy of AudioDestination?(v46, v42);
    OUTLINED_FUNCTION_14_3(v46 + v48);
    if (!v51)
    {
      v67 = v99;
      v68 = v94;
      (*(v99 + 32))(v94, v46 + v48, v45);
      OUTLINED_FUNCTION_1_35();
      lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination(v69, v70, &protocol conformance descriptor for AudioDestination);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *(v67 + 8);
      v72(v68, v45);
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v73, v74, v75);
      v72(v42, v45);
      v47 = v98;
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v76, v77, v78);
      v49 = v95;
      if (v71)
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v41, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    (*(v99 + 8))(v42, v45);
    v49 = v95;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v46, &_s13SiriUtilities16AudioDestinationVSg_ADtMd, &_s13SiriUtilities16AudioDestinationVSg_ADtMR);
LABEL_23:
  static AudioDestination.builtInReceiver.getter();
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v45);
  v52 = *(v47 + 48);
  outlined init with copy of AudioDestination?(v28, v7);
  outlined init with copy of AudioDestination?(v49, &v7[v52]);
  OUTLINED_FUNCTION_14_3(v7);
  if (!v51)
  {
    v53 = v93;
    outlined init with copy of AudioDestination?(v7, v93);
    OUTLINED_FUNCTION_14_3(&v7[v52]);
    if (!v54)
    {
      v79 = v99;
      v80 = v94;
      (*(v99 + 32))(v94, &v7[v52], v45);
      OUTLINED_FUNCTION_1_35();
      lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination(v81, v82, &protocol conformance descriptor for AudioDestination);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v79 + 8);
      v84(v80, v45);
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v85, v86, v87);
      v84(v53, v45);
      OUTLINED_FUNCTION_2_28();
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v88, v89, v90);
      if (v83)
      {
        goto LABEL_40;
      }

LABEL_33:
      v55 = 0;
      goto LABEL_34;
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v49, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    (*(v99 + 8))(v53, v45);
LABEL_32:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v7, &_s13SiriUtilities16AudioDestinationVSg_ADtMd, &_s13SiriUtilities16AudioDestinationVSg_ADtMR);
    goto LABEL_33;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v49, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  OUTLINED_FUNCTION_14_3(&v7[v52]);
  if (!v51)
  {
    goto LABEL_32;
  }

  v50 = v7;
LABEL_28:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v50, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
LABEL_40:
  v55 = 1;
LABEL_34:
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v104 = v59;
    *v58 = 136315138;
    v103 = v55;
    type metadata accessor for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior(0, v60, v61, v62);
    v63 = String.init<A>(describing:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v104);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_0, v56, v57, "#VoiceTriggerAudioRouteBehavior chose %s for HS-initiated emergency call", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_26_0(v59);
    OUTLINED_FUNCTION_26_0(v58);
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v28, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  return v55;
}

void closure #1 in static Transformer<>.transformer<A>(intentType:sharedGlobals:previousIntent:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = PhoneCallNLIntent.isEmergencyCall()();
  outlined init with copy of SignalProviding(a3, v91);
  v10 = Transformer<>.VoiceTriggerAudioRouteBehavior.init<A>(for:isEmergencyCallIntent:sharedGlobals:)(a2, v9, v91);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  (*(v12 + 8))(v91, v11, v12);
  __swift_project_boxed_opaque_existential_1(v91, v92);
  if (DeviceState.isVoiceTrigger.getter())
  {
    v13 = 1;
  }

  else
  {
    if (!a4 || (v14 = [a4 _metadata]) == 0)
    {
      v89 = 0;
      goto LABEL_8;
    }

    v15 = v14;
    v16 = [v14 triggerMethod];

    v13 = v16 == 30;
  }

  v89 = v13;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v91);
  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  (*(v18 + 152))(v91, v17, v18);
  v19 = v92;
  v20 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v21 = (*(v20 + 24))(v19, v20);
  if (v21)
  {
    v22 = (*(*v21 + 104))(v21);
  }

  else
  {
    v22 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v91);
  v23 = a3[3];
  v24 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v23);
  v25 = &dword_54B000;
  if ((*(v24 + 112))(v23, v24))
  {
    if (CurrentRequest.isInAmbient.getter())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.siriPhone);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v91[0] = v30;
        *v29 = 136315138;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v31 = String.init<A>(describing:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v91);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_0, v27, v28, "#%s Request is made in ambient mode. Routing to HS audio route.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
      }

      v34 = _INCallAudioRouteHeySiriAudioRoute;

      goto LABEL_35;
    }
  }

  v88 = v10;
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  switch((*(v36 + 48))(v35, v36))
  {
    case 1u:
    case 2u:
    case 3u:
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_22;
      }

      break;
    case 4u:
      break;
    default:

LABEL_22:
      v25 = &dword_54B000;
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.siriPhone);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v91[0] = v42;
        *v41 = 136315138;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v43 = String.init<A>(describing:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v91);
        v25 = &dword_54B000;

        *(v41 + 4) = v45;
        v46 = "#%s Speakerphone specified in intent";
LABEL_33:
        _os_log_impl(&dword_0, v39, v40, v46, v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
      }

      goto LABEL_34;
  }

  v25 = &dword_54B000;
  switch(v22)
  {
    case 1:
    case 2:
    case 3:
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_29;
    case 4:
LABEL_44:
      if (v88 != 1)
      {
        if (!v88 && v89)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          __swift_project_value_buffer(v63, static Logger.siriPhone);
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v64, v65))
          {
            goto LABEL_69;
          }

          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v91[0] = v67;
          *v66 = 136315138;
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
          v68 = String.init<A>(describing:)();
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v91);
          v25 = &dword_54B000;

          *(v66 + 4) = v70;
          v71 = "#%s HeySiriAudioRoute: User used HS for this request or the initial request";
          goto LABEL_68;
        }

LABEL_63:
        v80 = a3[3];
        v81 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, v80);
        (*(v81 + 8))(v91, v80, v81);
        v82 = v92;
        v83 = v93;
        __swift_project_boxed_opaque_existential_1(v91, v92);
        LOBYTE(v82) = DeviceState.isTriggerlessFollowup.getter(v82, v83);
        __swift_destroy_boxed_opaque_existential_1(v91);
        if ((v82 & 1) == 0)
        {
          v34 = 0;
          v25 = &dword_54B000;
          goto LABEL_35;
        }

        v25 = &dword_54B000;
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v84 = type metadata accessor for Logger();
        __swift_project_value_buffer(v84, static Logger.siriPhone);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v64, v65))
        {
LABEL_69:

          v34 = _INCallAudioRouteHeySiriAudioRoute;
          goto LABEL_35;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v91[0] = v67;
        *v66 = 136315138;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v85 = String.init<A>(describing:)();
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v91);
        v25 = &dword_54B000;

        *(v66 + 4) = v87;
        v71 = "#%s Triggerless follow-up to call announcement: Using HeySiriAudioRoute instead of default to force audio route to headphones w/o IED.";
LABEL_68:
        _os_log_impl(&dword_0, v64, v65, v71, v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);

        goto LABEL_69;
      }

      if (!v89)
      {
        goto LABEL_63;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.siriPhone);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v91[0] = v42;
        *v41 = 136315138;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v77 = String.init<A>(describing:)();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v91);
        v25 = &dword_54B000;

        *(v41 + 4) = v79;
        v46 = "#%s Speakerphone AudioRoute: User used HS for this request or the initial request";
        goto LABEL_33;
      }

LABEL_34:

      v34 = 1;
LABEL_35:
      if (*(v25 + 369) != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.siriPhone);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v91[0] = swift_slowAlloc();
        *v55 = 136315394;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
        v56 = String.init<A>(describing:)();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v91);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2080;
        if (!v34)
        {
          v61 = 0xE700000000000000;
          v62 = 0x4E574F4E4B4E55;
LABEL_56:
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, v91);

          *(v55 + 14) = v75;
          _os_log_impl(&dword_0, v53, v54, "#%s --> %s", v55, 0x16u);
          swift_arrayDestroy();

          goto LABEL_57;
        }

        BackingType = INCallAudioRouteGetBackingType();
        switch(BackingType)
        {
          case 4:
            v60 = @"HEY_SIRI_AUDIO_ROUTE";
            break;
          case 3:
            v60 = @"BLUETOOTH_AUDIO_ROUTE";
            break;
          case 2:
            v60 = @"SPEAKERPHONE_AUDIO_ROUTE";
            break;
          default:
            v60 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
            goto LABEL_55;
        }

        v72 = v60;
LABEL_55:
        v73 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v74;

        goto LABEL_56;
      }

LABEL_57:

      *a5 = v34;
      return;
    default:

LABEL_29:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      __swift_project_value_buffer(v48, static Logger.siriPhone);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_34;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v91[0] = v42;
      *v41 = 136315138;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGmMR);
      v49 = String.init<A>(describing:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v91);
      v25 = &dword_54B000;

      *(v41 + 4) = v51;
      v46 = "#%s Speakerphone is specified in the initial request";
      goto LABEL_33;
  }
}

uint64_t outlined init with copy of AudioDestination?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior)
  {
    v4 = type metadata accessor for Transformer<>.VoiceTriggerAudioRouteBehavior(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Transformer<PhoneCallNLIntent, INCallAudioRoute><>.VoiceTriggerAudioRouteBehavior);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Transformer<>.VoiceTriggerAudioRouteBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall AudioSessionManager.allowAppToInitiateRecordingTemporarily(appIdentifier:)(Swift::String appIdentifier)
{
  object = appIdentifier._object;
  countAndFlagsBits = appIdentifier._countAndFlagsBits;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v10);
    _os_log_impl(&dword_0, v4, v5, "#AudioSessionManager: set allowAppToInitiateRecordingTemporarily for bundleId %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    outlined bridged method (mbgnn) of @objc AVSystemController.allowApp(toInitiateRecordingTemporarily:)(countAndFlagsBits, object, v8);
  }

  else
  {
    __break(1u);
  }
}

id outlined bridged method (mbgnn) of @objc AVSystemController.allowApp(toInitiateRecordingTemporarily:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 allowAppToInitiateRecordingTemporarily:v4];

  return v5;
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

void BargeInCapablePromptForConfirmationFlow.__allocating_init<A>(itemToConfirm:strategy:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v27 = v1;
  v28 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v26 = v7;
  OUTLINED_FUNCTION_9_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = *(v0 + 80);
  OUTLINED_FUNCTION_9_1();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v15, *(v0 + 88), *(v0 + 96));
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v22);
  v24 = &v26 - v23;
  *(&v26 - v23) = 0;
  swift_storeEnumTagMultiPayload();
  (*(v17 + 16))(v21, v8, v15);
  (*(v10 + 16))(v14, v6, v4);
  v25 = v27;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v27, v29);
  (*(v0 + 208))(v24, v21, v14, v29, v4, v28);
  __swift_destroy_boxed_opaque_existential_1(v25);
  (*(v10 + 8))(v6, v4);
  (*(v17 + 8))(v26, v15);
  OUTLINED_FUNCTION_65();
}

uint64_t BargeInCapableSection.makeOutput()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v0[18] = OUTLINED_FUNCTION_45();
  v8 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = BargeInCapableSection.makeOutput();

  return v8(v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v20 = v0;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v0 + 2), (v0 + 7));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  v2 = type metadata accessor for AceOutput();
  v3 = swift_dynamicCast();
  v4 = v0[18];
  if (v3)
  {
    v5 = v0[17];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))(v5, v4, v2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[18], 1, 1, v2);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v0 + 2), (v0 + 12));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v18[0] = v11;
      *v10 = 136315138;
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      swift_getDynamicType();
      v12 = _typeName(_:qualified:)();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v8, v1, "#BargeInCapableSection Does not support output of type %s, returning empty AceOutput", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_26_0(v11);
      OUTLINED_FUNCTION_26_0(v10);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    v19 = 0;
    memset(v18, 0, sizeof(v18));
    AceOutput.init(commands:flowActivity:)();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  OUTLINED_FUNCTION_8_1();

  return v16();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

void BargeInCapablePromptForConfirmationFlow.exitValue.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  OUTLINED_FUNCTION_74_2();
  v3 = v2;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_74_2();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_74_2();
  v12 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v11, v9, *(v10 + 96));
  OUTLINED_FUNCTION_9_1();
  v33 = v13;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_12_5();
  v16 = __chkstk_darwin(v15);
  v18 = (&v32 - v17);
  v19 = *(v3 + 184);
  v19(v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    *v1 = *v18;
    *(v1 + 8) = 1;
    v22 = enum case for PromptResult.error<A>(_:);
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_23_1();
    (*(v23 + 104))(v1, v22);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_23_1();
    (*(v21 + 32))(v1, v18);
  }

  else
  {
    v32 = 0x800000000042B760;
    (v19)();
    OUTLINED_FUNCTION_21_4();
    swift_getWitnessTable();
    v24 = String.init<A>(describing:)();
    *v7 = 0xD000000000000027;
    v7[1] = v32;
    v7[2] = v24;
    v7[3] = v25;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_13();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_0(v26, v27, &protocol conformance descriptor for PhoneError);
    v28 = swift_allocError();
    PhoneError.logged()(v29);
    outlined destroy of PhoneError(v7);
    *v1 = v28;
    *(v1 + 8) = 0;
    v30 = enum case for PromptResult.error<A>(_:);
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_23_1();
    (*(v31 + 104))(v1, v30);
    (*(v33 + 8))(v18, v12);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t key path setter for BargeInCapablePromptForConfirmationFlow.sections : <A, B>BargeInCapablePromptForConfirmationFlow<A, B>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a2 + 136);
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t BargeInCapablePromptForConfirmationFlow.sections.getter()
{
  OUTLINED_FUNCTION_2_0();
  swift_beginAccess();
}

uint64_t key path setter for BargeInCapablePromptForConfirmationFlow.state : <A, B>BargeInCapablePromptForConfirmationFlow<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return BargeInCapablePromptForConfirmationFlow.state.setter(v8);
}

void BargeInCapablePromptForConfirmationFlow.state.willset(uint64_t a1)
{
  v3 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = *(v4 + 16);
  v11(v9, a1, v3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v14 = 136315138;
    v11(v6, v9, v3);
    v15 = *(v4 + 8);
    v15(v9, v3);
    BargeInCapablePromptForConfirmationFlow.State.description.getter();
    v17 = v16;
    v19 = v18;
    v15(v6, v3);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "#BargeInCapablePromptForConfirmationFlow state = %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }
}

uint64_t BargeInCapablePromptForConfirmationFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 144);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, *(v6 + 80), *(v3 + 88), *(v3 + 96));
  OUTLINED_FUNCTION_23_1();
  return (*(v7 + 16))(a1, &v1[v5]);
}

uint64_t BargeInCapablePromptForConfirmationFlow.state.setter(uint64_t a1)
{
  BargeInCapablePromptForConfirmationFlow.state.willset(a1);
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 144);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v6, v7, *(v5 + 96));
  OUTLINED_FUNCTION_23_1();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t BargeInCapablePromptForConfirmationFlow.__allocating_init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_69();
  BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(v11, v12, a3, a4, a5, a6);
  return v10;
}

uint64_t BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(*v7 + 136);
  *(v7 + v12) = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_41_0();
  v14 = *(v13 + 144);
  v16 = v15[10];
  v35 = v15[11];
  v36 = v15[12];
  v17 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v16, v35, v36);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7 + v14, a1, v17);
  OUTLINED_FUNCTION_41_0();
  v20 = *(v16 - 8);
  (*(v20 + 16))(v7 + *(v19 + 104), a2, v16);
  OUTLINED_FUNCTION_41_0();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a4, v7 + *(v21 + 112));
  v22 = (*(a6 + 24))(a2, a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v20 + 8))(a2, v16);
  (*(v18 + 8))(a1, v17);
  swift_beginAccess();
  *(v7 + v12) = v22;

  implicit closure #1 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(a3, v16, v35, a5, v36, a6);
  OUTLINED_FUNCTION_41_0();
  v24 = (v7 + *(v23 + 120));
  *v24 = v25;
  v24[1] = v26;
  v27 = implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(a3, v16, v35, a5, v36, a6);
  v29 = v28;
  OUTLINED_FUNCTION_40();
  (*(v30 + 8))(a3, a5);
  OUTLINED_FUNCTION_41_0();
  v32 = (v7 + *(v31 + 128));
  *v32 = v27;
  v32[1] = v29;
  return v7;
}

uint64_t (*implicit closure #1 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v14 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v13);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  *(v16 + 6) = a6;
  (*(v11 + 32))(&v16[v15], v14, a4);
  return partial apply for implicit closure #2 in implicit closure #1 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:);
}

void *implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v14 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v13);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  *(v16 + 6) = a6;
  (*(v11 + 32))(&v16[v15], v14, a4);
  return &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:);
}

uint64_t implicit closure #4 in implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 40) + **(a9 + 40));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = closure #2 in ActionableCallControlFlow.execute();

  return v19(a1, a2, a3, a4, a5, a6, a7, v21, a9);
}

void BargeInCapablePromptForConfirmationFlow.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v75 = v2;
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  v6 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v4, v5, *(v3 + 96));
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v71 = (v10 - v11);
  __chkstk_darwin(v12);
  v14 = (&v67 - v13);
  type metadata accessor for ActionForInput();
  OUTLINED_FUNCTION_9_1();
  v73 = v16;
  v74 = v15;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  v22 = &v67 - v21;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v23 = type metadata accessor for Logger();
  v72 = __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v76 = v27;
    *v26 = 136315138;
    *(v26 + 4) = OUTLINED_FUNCTION_45_5();
    _os_log_impl(&dword_0, v24, v25, "#BargeInCapablePromptForConfirmationFlow %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_26_0(v27);
    OUTLINED_FUNCTION_26_0(v26);
  }

  OUTLINED_FUNCTION_73_0();
  v29 = *(v28 + 184);
  v69 = v28 + 184;
  v29();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = v29;
  if (EnumCaseMultiPayload == 5)
  {
    v68 = v6;
    OUTLINED_FUNCTION_73_0();
    v41 = *(v40 + 160);
    v41();

    v43 = *((v41)(v42) + 16);

    OUTLINED_FUNCTION_73_0();
    v45 = *(v1 + *(v44 + 120));
    v41();
    if (!v43)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_71_0();
    if (v43 > v46)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v47 = (v1 + 32 * v43);
    v48 = *v47;
    v49 = v47[1];
    v50 = v47[2];
    v51 = v47[3];

    v45(v75, v48, v49, v50, v51, 0);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v68 = v22;
      v31 = *v14;
      OUTLINED_FUNCTION_73_0();
      v33 = *(v1 + *(v32 + 120));
      (*(v32 + 160))();
      if ((v31 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_71_0();
        if (v31 < v34)
        {
          v35 = (v1 + 32 * v31);
          v36 = v35[4];
          v37 = v35[5];
          v39 = v35[6];
          v38 = v35[7];

          v22 = v68;
          v33(v75, v36, v37, v39, v38, 1);

          goto LABEL_14;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    static ActionForInput.ignore()();
    (*(v8 + 8))(v14, v6);
  }

LABEL_14:
  static ActionForInput.handle()();
  v52 = static ActionForInput.== infix(_:_:)();
  v53 = v74;
  v54 = *(v73 + 8);
  v54(v19, v74);
  if (v52 & 1) != 0 || (static ActionForInput.cancel()(), v55 = static ActionForInput.== infix(_:_:)(), v54(v19, v53), (v55))
  {
    v56 = type metadata accessor for Input();
    swift_getTupleTypeMetadata2();
    v57 = swift_allocBox();
    OUTLINED_FUNCTION_40();
    v60 = (*(v58 + 16))(v59, v75, v56);
    (v70)(v60);
    v61 = v71;
    *v71 = v57;
    swift_storeEnumTagMultiPayload();
    BargeInCapablePromptForConfirmationFlow.state.setter(v61);
    v62 = 1;
  }

  else
  {
    v62 = 0;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v76 = v66;
    *v65 = 136315394;
    *(v65 + 4) = OUTLINED_FUNCTION_45_5();
    *(v65 + 12) = 1024;
    *(v65 + 14) = v62;
    _os_log_impl(&dword_0, v63, v64, "#BargeInCapablePromptForConfirmationFlow %s => %{BOOL}d", v65, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_26_0(v66);
    OUTLINED_FUNCTION_26_0(v65);
  }

  v54(v22, v53);
  OUTLINED_FUNCTION_65();
}

uint64_t BargeInCapablePromptForConfirmationFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_47_0();
  type metadata accessor for BargeInCapablePromptForConfirmationFlow(0, v3, v4, *(v2 + 96));
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t BargeInCapablePromptForConfirmationFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[6] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for PhoneError(0);
  v1[7] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[8] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v6 = *(v5 + 88);
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_88_0();
  v1[10] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[11] = v8;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for Input();
  v1[14] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[15] = v10;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  v1[18] = *(v11 + 80);
  OUTLINED_FUNCTION_49_1();
  v13 = *(v12 + 96);
  v1[19] = v13;
  v15 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v14, v6, v13);
  v1[20] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[21] = v16;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

void BargeInCapablePromptForConfirmationFlow.execute()()
{
  v75 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[5];
    OUTLINED_FUNCTION_86_1();
    v73 = OUTLINED_FUNCTION_46_4();
    v74[0] = v73;
    *v0 = 136315394;
    *(v0 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, v74);
    *(v0 + 12) = 2080;
    (*(*v5 + 184))();
    BargeInCapablePromptForConfirmationFlow.State.description.getter();
    v7 = v6;
    v9 = v8;

    v10 = OUTLINED_FUNCTION_69();
    v11(v10);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v74);

    *(v0 + 14) = v12;
    _os_log_impl(&dword_0, v3, v4, "#BargeInCapablePromptForConfirmationFlow %s state = %s", v0, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v73);
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_0();
  v14 = *(v13 + 184);
  v14();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      (*(v1[21] + 16))(v1[24], v1[25], v1[20]);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v1[27] = v15;
      *v15 = v16;
      v15[1] = BargeInCapablePromptForConfirmationFlow.execute();
      OUTLINED_FUNCTION_15_11();

      BargeInCapablePromptForConfirmationFlow.executeSection(idx:)();
      return;
    case 1u:
    case 5u:
      (*(v1[21] + 8))(v1[25], v1[20]);
      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_24;
    case 2u:
      v18 = v1[23];
      v19 = *(v1[21] + 16);
      v19(v18, v1[25], v1[20]);
      v1[29] = *v18;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v21 = swift_projectBox();
      v22 = *(TupleTypeMetadata2 + 48);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 5)
        {

LABEL_23:
          v46 = v1[26];
          v48 = v1[20];
          v47 = v1[21];
          v49 = v1[8];
          OUTLINED_FUNCTION_2_0();
          v1[2] = v50;
          type metadata accessor for BargeInCapablePromptForConfirmationFlow(255, v51, v52, v53);
          swift_getMetatypeMetadata();
          v54 = String.init<A>(describing:)();
          v56 = v55;
          v14();
          BargeInCapablePromptForConfirmationFlow.State.description.getter();
          v58 = v57;
          v60 = v59;
          (*(v47 + 8))(v46, v48);
          *v49 = v54;
          v49[1] = v56;
          v49[2] = v58;
          v49[3] = v60;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_20_13();
          _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_0(v61, v62, &protocol conformance descriptor for PhoneError);
          swift_allocError();
          PhoneError.logged()(v63);
          outlined destroy of PhoneError(v49);
          swift_willThrow();
          v64 = OUTLINED_FUNCTION_3_18();
          v65(v64);
          OUTLINED_FUNCTION_22_4();
          swift_errorRetain();
          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_72_0();
          v67 = *(v66 + 112);
          v68 = type metadata accessor for StartCallCATsSimple(0);
          OUTLINED_FUNCTION_85(v68);
          v69 = OUTLINED_FUNCTION_83_0();
          OUTLINED_FUNCTION_43_7(v69);
          OUTLINED_FUNCTION_87_0();
          OUTLINED_FUNCTION_70_0();
          (*(v70 + 112))();
          OUTLINED_FUNCTION_84();
          v1[3] = v67;
          type metadata accessor for SimpleOutputFlowAsync();
          static ExecuteResponse.complete<A>(next:)();

LABEL_24:
          OUTLINED_FUNCTION_1_36();

          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_15_11();

          __asm { BRAA            X1, X16 }
        }

        v24 = v1[5];
        (*(v1[15] + 16))(v1[17], v21, v1[14]);
        OUTLINED_FUNCTION_2_0();
        v26 = *(v25 + 160);
        v26();

        v28 = *((v26)(v27) + 16);

        OUTLINED_FUNCTION_2_0();
        v26();
        if (v28)
        {
          OUTLINED_FUNCTION_71_0();
          if (v28 <= v29)
          {
            v30 = v24 + 32 * v28;
            v1[30] = *(v30 + 8);
            v1[31] = *(v30 + 24);

            OUTLINED_FUNCTION_11_19();
            swift_task_alloc();
            OUTLINED_FUNCTION_25();
            v1[32] = v31;
            *v31 = v32;
            v31[1] = BargeInCapablePromptForConfirmationFlow.execute();
            OUTLINED_FUNCTION_56_1();
            goto LABEL_19;
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v33 = v1[22];
      v35 = v1[15];
      v34 = v1[16];
      v36 = v1[14];
      v37 = v1[5];
      v19(v33, v21 + v22, v1[20]);
      v38 = *v33;
      (*(v35 + 16))(v34, v21, v36);
      OUTLINED_FUNCTION_2_0();
      (*(v39 + 160))();
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_71_0();
      if (v38 < v40)
      {
        v41 = v37 + 32 * v38;
        v1[34] = *(v41 + 40);
        v1[35] = *(v41 + 56);

        OUTLINED_FUNCTION_11_19();
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v1[36] = v42;
        *v42 = v43;
        v42[1] = BargeInCapablePromptForConfirmationFlow.execute();
        OUTLINED_FUNCTION_56_1();
LABEL_19:
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X7, X16 }
      }

LABEL_30:
      __break(1u);
      return;
    default:
      goto LABEL_23;
  }
}

uint64_t BargeInCapablePromptForConfirmationFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  (*(v12[21] + 8))(v12[25], v12[20]);
  OUTLINED_FUNCTION_1_36();
  v23 = v13;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, v23, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v12 = OUTLINED_FUNCTION_3_18();
  v13(v12);
  OUTLINED_FUNCTION_22_4();
  swift_errorRetain();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_72_0();
  v14 = type metadata accessor for StartCallCATsSimple(0);
  OUTLINED_FUNCTION_85(v14);
  v15 = OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_43_7(v15);
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_70_0();
  (*(v16 + 112))();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_67_0();
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_1_36();
  v27 = v17;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  (*(v12[15] + 8))(v12[17], v12[14]);

  v13 = OUTLINED_FUNCTION_3_18();
  v14(v13);
  OUTLINED_FUNCTION_22_4();
  swift_errorRetain();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_72_0();
  v15 = type metadata accessor for StartCallCATsSimple(0);
  OUTLINED_FUNCTION_85(v15);
  v16 = OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_43_7(v16);
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_70_0();
  (*(v17 + 112))();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_67_0();
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_1_36();
  v28 = v18;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  (*(v12[15] + 8))(v12[16], v12[14]);

  v13 = OUTLINED_FUNCTION_3_18();
  v14(v13);
  OUTLINED_FUNCTION_22_4();
  swift_errorRetain();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_72_0();
  v15 = type metadata accessor for StartCallCATsSimple(0);
  OUTLINED_FUNCTION_85(v15);
  v16 = OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_43_7(v16);
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_70_0();
  (*(v17 + 112))();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_67_0();
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_1_36();
  v28 = v18;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t BargeInCapablePromptForConfirmationFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_75_0();
  v20 = v17[15];
  v36 = v17[14];
  v37 = v17[17];
  v21 = v17[13];
  v23 = v17[10];
  v22 = v17[11];
  v24 = OUTLINED_FUNCTION_48_6();
  v25(v24);
  swift_storeEnumTagMultiPayload();
  BargeInCapablePromptForConfirmationFlow.state.setter(v19);
  static ExecuteResponse.complete()();
  (*(v22 + 8))(v21, v23);
  (*(v20 + 8))(v37, v36);

  (*(v16 + 8))(a13, v18);
  OUTLINED_FUNCTION_1_36();
  v38 = v26;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, v38, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_75_0();
  v20 = v17[15];
  v36 = v17[14];
  v37 = v17[16];
  v21 = v17[11];
  v22 = v17[12];
  v23 = v17[10];
  v24 = OUTLINED_FUNCTION_48_6();
  v25(v24);
  swift_storeEnumTagMultiPayload();
  BargeInCapablePromptForConfirmationFlow.state.setter(v19);
  static ExecuteResponse.complete()();
  (*(v21 + 8))(v22, v23);
  (*(v20 + 8))(v37, v36);

  (*(v16 + 8))(a13, v18);
  OUTLINED_FUNCTION_1_36();
  v38 = v26;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, v38, a14, a15, a16);
}

void BargeInCapablePromptForConfirmationFlow.State.description.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_9_1();
  v40 = v4;
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_9_1();
  v42 = v9;
  v43 = v8;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v41 = v11 - v10;
  OUTLINED_FUNCTION_9_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_12_5();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = (&v39 - v20);
  v22 = *(v13 + 16);
  v22(&v39 - v20, v0, v2, v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v21;
      OUTLINED_FUNCTION_53_8();
      _StringGuts.grow(_:)(32);

      *&v45 = 0xD00000000000001DLL;
      *(&v45 + 1) = 0x8000000000458510;
      goto LABEL_5;
    case 2u:
      v40 = *v21;
      v28 = v43;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v30 = swift_projectBox();
      v31 = *(TupleTypeMetadata2 + 48);
      v33 = v41;
      v32 = v42;
      (*(v42 + 16))(v41, v30, v28);
      (v22)(v17, v30 + v31, v2);
      OUTLINED_FUNCTION_53_8();
      _StringGuts.grow(_:)(32);
      v34._countAndFlagsBits = 0x657669656365722ELL;
      v34._object = 0xEF287475706E4964;
      String.append(_:)(v34);
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 0x6F6976657270202CLL;
      v36._object = 0xEC000000203A7375;
      String.append(_:)(v36);
      OUTLINED_FUNCTION_21_4();
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      OUTLINED_FUNCTION_6_5();
      (*(v13 + 8))(v17, v2);
      (*(v32 + 8))(v33, v28);

      break;
    case 3u:
      (*(v40 + 32))(v7, v21, v3);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      v24._countAndFlagsBits = 0x74656C706D6F632ELL;
      v24._object = 0xEA00000000002865;
      String.append(_:)(v24);
      swift_getWitnessTable();
      OUTLINED_FUNCTION_69();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      OUTLINED_FUNCTION_6_5();
      v25 = OUTLINED_FUNCTION_69();
      v26(v25);
      break;
    case 4u:
      v37 = *v21;
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      v38._countAndFlagsBits = 0x28726F7272652ELL;
      v38._object = 0xE700000000000000;
      String.append(_:)(v38);
      v44 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5();

      break;
    case 5u:
      break;
    default:
      v23 = *v21;
      OUTLINED_FUNCTION_53_8();
      _StringGuts.grow(_:)(17);

      strcpy(&v45, ".section(idx: ");
      HIBYTE(v45) = -18;
LABEL_5:
      v44 = v23;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      OUTLINED_FUNCTION_6_5();
      break;
  }

  OUTLINED_FUNCTION_65();
}

uint64_t BargeInCapablePromptForConfirmationFlow.executeSection(idx:)()
{
  OUTLINED_FUNCTION_15();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = type metadata accessor for BargeInError();
  v1[23] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[24] = v5;
  v1[25] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_49_1();
  v9 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v7, v8, *(v6 + 96));
  v1[26] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[27] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate();
  v1[30] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[31] = v12;
  v1[32] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for AceOutput();
  v1[33] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[34] = v14;
  v1[35] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[21];
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 160);
  v0[36] = v3;
  v0[37] = (v2 + 160) & 0xFFFFFFFFFFFFLL | 0x280E000000000000;
  result = v3();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v0[21];
  if (*(result + 16) <= v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result + 32 * v5;
  v0[38] = *(v6 + 40);
  v0[39] = *(v6 + 56);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[40] = v7;
  *v7 = v8;
  v7[1] = BargeInCapablePromptForConfirmationFlow.executeSection(idx:);

  return BargeInCapableSection.makeOutput()();
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
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
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
  *(v3 + 344) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 104));
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

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
  *(v5 + 400) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t BargeInCapablePromptForConfirmationFlow.executeSection(idx:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v14 = *(v12 + 328);
  OUTLINED_FUNCTION_64_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (OUTLINED_FUNCTION_62_5(v15, v16, v17, &type metadata for InferredBargeInError))
  {

LABEL_5:

    OUTLINED_FUNCTION_18_7();
    BargeInCapablePromptForConfirmationFlow.state.setter(v14);
    static ExecuteResponse.ongoing(requireInput:)();
    OUTLINED_FUNCTION_6_16();

    OUTLINED_FUNCTION_8_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_39_9();
  *(v12 + 152) = v14;
  swift_errorRetain();
  if (OUTLINED_FUNCTION_25_6())
  {
    OUTLINED_FUNCTION_66_4();
    v18 = OUTLINED_FUNCTION_52_4();
    v19(v18);
    goto LABEL_5;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_51_0(v21))
  {
    v22 = OUTLINED_FUNCTION_65_3();
    *v22 = 134217984;
    *(v22 + 4) = v13;
    OUTLINED_FUNCTION_37_8(&dword_0, v23, v24, "#BargeInCapablePromptForConfirmationFlow error executing section %ld");
    OUTLINED_FUNCTION_26_0(v22);
  }

  OUTLINED_FUNCTION_26_9();
  swift_willThrow();

  OUTLINED_FUNCTION_11();
LABEL_11:
  OUTLINED_FUNCTION_16();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  (*(v12[31] + 8))(v12[32], v12[30]);
  v14 = OUTLINED_FUNCTION_15_18();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1(v12 + 13);
  __swift_destroy_boxed_opaque_existential_1(v12 + 2);
  v16 = v12[43];
  OUTLINED_FUNCTION_64_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (OUTLINED_FUNCTION_62_5(v17, v18, v19, &type metadata for InferredBargeInError))
  {

LABEL_5:

    OUTLINED_FUNCTION_18_7();
    BargeInCapablePromptForConfirmationFlow.state.setter(v16);
    static ExecuteResponse.ongoing(requireInput:)();
    OUTLINED_FUNCTION_6_16();

    OUTLINED_FUNCTION_8_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_39_9();
  v12[19] = v16;
  swift_errorRetain();
  if (OUTLINED_FUNCTION_25_6())
  {
    OUTLINED_FUNCTION_66_4();
    v20 = OUTLINED_FUNCTION_52_4();
    v21(v20);
    goto LABEL_5;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_51_0(v23))
  {
    v24 = OUTLINED_FUNCTION_65_3();
    *v24 = 134217984;
    *(v24 + 4) = v13;
    OUTLINED_FUNCTION_37_8(&dword_0, v25, v26, "#BargeInCapablePromptForConfirmationFlow error executing section %ld");
    OUTLINED_FUNCTION_26_0(v24);
  }

  OUTLINED_FUNCTION_26_9();
  swift_willThrow();

  OUTLINED_FUNCTION_11();
LABEL_11:
  OUTLINED_FUNCTION_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();

  v14 = OUTLINED_FUNCTION_15_18();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v12 + 64));
  v16 = *(v12 + 400);
  OUTLINED_FUNCTION_64_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (OUTLINED_FUNCTION_62_5(v17, v18, v19, &type metadata for InferredBargeInError))
  {

LABEL_5:

    OUTLINED_FUNCTION_18_7();
    BargeInCapablePromptForConfirmationFlow.state.setter(v16);
    static ExecuteResponse.ongoing(requireInput:)();
    OUTLINED_FUNCTION_6_16();

    OUTLINED_FUNCTION_8_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_39_9();
  *(v12 + 152) = v16;
  swift_errorRetain();
  if (OUTLINED_FUNCTION_25_6())
  {
    OUTLINED_FUNCTION_66_4();
    v20 = OUTLINED_FUNCTION_52_4();
    v21(v20);
    goto LABEL_5;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_51_0(v23))
  {
    v24 = OUTLINED_FUNCTION_65_3();
    *v24 = 134217984;
    *(v24 + 4) = v13;
    OUTLINED_FUNCTION_37_8(&dword_0, v25, v26, "#BargeInCapablePromptForConfirmationFlow error executing section %ld");
    OUTLINED_FUNCTION_26_0(v24);
  }

  OUTLINED_FUNCTION_26_9();
  swift_willThrow();

  OUTLINED_FUNCTION_11();
LABEL_11:
  OUTLINED_FUNCTION_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

char *BargeInCapablePromptForConfirmationFlow.deinit()
{
  v1 = *v0;
  OUTLINED_FUNCTION_33_0();
  v3 = *(v1 + 80);
  (*(*(v3 - 8) + 8))(&v0[*(v2 + 104)], v3);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v4 + 112)]);
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
  v6 = *(v5 + 144);
  OUTLINED_FUNCTION_33_0();
  type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(0, v3, v8, *(v7 + 96));
  OUTLINED_FUNCTION_23_1();
  (*(v9 + 8))(&v0[v6]);
  return v0;
}

uint64_t BargeInCapablePromptForConfirmationFlow.__deallocating_deinit()
{
  BargeInCapablePromptForConfirmationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance BargeInCapablePromptForConfirmationFlow<A, B>(uint64_t a1)
{
  v6 = (*(**v1 + 232) + **(**v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5Tm(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      type metadata accessor for CNContactStore(0, a2, a3);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for App();
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BargeInCapableSection(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for BargeInCapableSection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for BargeInCapablePromptForConfirmationFlow(void *a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v3 = type metadata accessor for BargeInCapablePromptForConfirmationFlow.State(319, v2, a1[11], a1[12]);
    if (v5 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t type metadata completion function for BargeInCapablePromptForConfirmationFlow.State(uint64_t a1)
{
  result = type metadata accessor for (idx: Int)();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptResult();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Error();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *type metadata accessor for (idx: Int)()
{
  result = lazy cache variable for type metadata for (idx: Int);
  if (!lazy cache variable for type metadata for (idx: Int))
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &lazy cache variable for type metadata for (idx: Int));
  }

  return result;
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SABaseCommand.aceId.getter(void *a1)
{
  v1 = [a1 aceId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_76_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v9 + 16) = v10;
  *v10 = v11;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_31_0();

  return implicit closure #4 in implicit closure #3 in BargeInCapablePromptForConfirmationFlow.init<A>(state:itemToConfirm:strategy:sharedGlobals:)(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_40();
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void OUTLINED_FUNCTION_26_9()
{
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;

  return outlined bridged method (pb) of @objc SABaseCommand.aceId.getter(v0);
}

void OUTLINED_FUNCTION_37_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_38_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_39_9()
{
}

uint64_t OUTLINED_FUNCTION_40_6()
{

  return static ExecuteResponse.ongoing(requireInput:)();
}

unint64_t OUTLINED_FUNCTION_45_5()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, (v0 - 88));
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_64_2()
{
  *(v1 + 144) = v0;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_4()
{
}

uint64_t OUTLINED_FUNCTION_82()
{

  return BargeInCapablePromptForConfirmationFlow.state.setter(v0);
}

uint64_t OUTLINED_FUNCTION_84()
{
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return type metadata accessor for PromptResult();
}

void BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = type metadata accessor for AudioSource();
  OUTLINED_FUNCTION_7();
  v68 = v8;
  __chkstk_darwin(v9);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
  __chkstk_darwin(v67);
  v69 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = &v60 - v16;
  __chkstk_darwin(v17);
  v72 = (&v60 - v18);
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for InputOrigin();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  __chkstk_darwin(v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v60 - v29;
  if (a1)
  {
    v66 = v14;
    v64 = a2;
    v31 = one-time initialization token for siriPhone;

    if (v31 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v61 = v34;
      v62 = v4;
      v63 = a3;
      v35 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v73 = v60;
      *v35 = 136315394;
      CurrentRequest.inputOrigin.getter();
      v36 = InputOrigin.rawValue.getter();
      v38 = v37;
      (*(v24 + 8))(v30, v22);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v73);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      CurrentRequest.audioSource.getter();
      v40 = v71;
      if (__swift_getEnumTagSinglePayload(v21, 1, v71) == 1)
      {
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v21, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        v41 = 0xE300000000000000;
        v42 = 6369134;
      }

      else
      {
        v42 = AudioSource.aceValue.getter();
        v41 = v47;
        (*(v68 + 8))(v21, v40);
      }

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v73);

      *(v35 + 14) = v48;
      _os_log_impl(&dword_0, v33, v61, "#TipKitDiscoverabilitySending InputOrigin: %s, AudioSource: %s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_8();

      a3 = v63;
    }

    else
    {
    }

    v49 = v72;
    CurrentRequest.inputOrigin.getter();
    v50 = InputOrigin.isVoiceTrigger.getter();
    (*(v24 + 8))(v27, v22);
    v51 = v66;
    if ((v50 & 1) == 0)
    {
      goto LABEL_29;
    }

    CurrentRequest.audioSource.getter();
    v52 = v70;
    static AudioSource.bluetoothDoAPDevice.getter();
    v53 = v71;
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v71);
    v54 = *(v67 + 48);
    v55 = v69;
    outlined init with copy of AudioSource?(v49, v69);
    outlined init with copy of AudioSource?(v52, v55 + v54);
    OUTLINED_FUNCTION_4_1(v55);
    if (v56)
    {
      OUTLINED_FUNCTION_3_19(v52);
      OUTLINED_FUNCTION_3_19(v49);
      OUTLINED_FUNCTION_4_1(v55 + v54);
      if (v56)
      {
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v55, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
LABEL_28:
        (*(a3 + 8))(0, v64, a3);
        goto LABEL_29;
      }
    }

    else
    {
      outlined init with copy of AudioSource?(v55, v51);
      OUTLINED_FUNCTION_4_1(v55 + v54);
      if (!v56)
      {
        v57 = v68;
        v58 = v65;
        (*(v68 + 32))(v65, v55 + v54, v53);
        lazy protocol witness table accessor for type AudioSource and conformance AudioSource();
        LODWORD(v67) = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v57 + 8);
        v59(v58, v53);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v70, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v72, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        v59(v51, v53);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v55, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        if ((v67 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_3_19(v70);
      OUTLINED_FUNCTION_3_19(v49);
      (*(v68 + 8))(v51, v53);
    }

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v55, &_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
LABEL_29:

    return;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.siriPhone);
  v72 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v72, v44, "#TipKitDiscoverabilitySending Cannot find CurrentRequest, not donating to Biome", v45, 2u);
    OUTLINED_FUNCTION_1_8();
  }

  v46 = v72;
}

void BiomeEventSending.logEventForHangUp(intentResponse:device:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a1 code] == &dword_0 + 3 && objc_msgSend(a1, "hungUpCallType") == &dword_4 + 3 && (__swift_project_boxed_opaque_existential_1(a2, a2[3]), (DeviceState.isStandaloneIOS.getter() & 1) != 0))
  {
    v8 = *(a4 + 8);

    v8(1, a3, a4);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, oslog, v10, "#TipKitDiscoverabilitySending Only need to log tip for hang up on an active call", v11, 2u);
      OUTLINED_FUNCTION_1_8();
    }
  }
}

unint64_t PhoneDiscoverabilityEvent.identifier.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000025;
  }
}

id one-time initialization function for instance()
{
  result = variable initialization expression of BiomeEventSender.discoverabilitySource();
  static BiomeEventSender.instance = result;
  return result;
}

{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000014, 0x8000000000456D50);
  static SiriPhoneDefaults.instance = result;
  return result;
}

uint64_t *BiomeEventSender.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for instance);
  }

  return &static BiomeEventSender.instance;
}

id static BiomeEventSender.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for instance);
  }

  v1 = static BiomeEventSender.instance;

  return v1;
}

Swift::Void __swiftcall BiomeEventSender.donateTipKitEvent(_:)(PhoneCallFlowDelegatePlugin::PhoneDiscoverabilityEvent a1)
{
  v2 = v1;
  v3 = a1;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_1_37();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12 | 0x8000000000000000;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v12 | 0x8000000000000000, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v5, v6, "#BiomeEventSender Donating %s event to discoverabilitySignal", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {

    OUTLINED_FUNCTION_1_37();
    if (v11)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v13 = v17 | 0x8000000000000000;
  }

  v18 = objc_allocWithZone(BMDiscoverabilitySignals);
  v19 = @nonobjc BMDiscoverabilitySignals.init(contentIdentifier:context:osBuild:userInfo:)(v3, v13, 0, 0, 0, 0, 0, 0xF000000000000000);
  [v2 sendEvent:v19];
}

id @nonobjc BMDiscoverabilitySignals.init(contentIdentifier:context:osBuild:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

  if (a6)
  {
LABEL_4:
    v15 = String._bridgeToObjectiveC()();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:isa];

  return v17;
}

unint64_t lazy protocol witness table accessor for type PhoneDiscoverabilityEvent and conformance PhoneDiscoverabilityEvent()
{
  result = lazy protocol witness table cache variable for type PhoneDiscoverabilityEvent and conformance PhoneDiscoverabilityEvent;
  if (!lazy protocol witness table cache variable for type PhoneDiscoverabilityEvent and conformance PhoneDiscoverabilityEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneDiscoverabilityEvent and conformance PhoneDiscoverabilityEvent);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneDiscoverabilityEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t BurstNotificationSearchManager.init(sharedGlobals:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of SignalProviding(a1, a2);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v5 + 32);
  a2[8] = &type metadata for BurstVoicemailFinder;
  a2[9] = &protocol witness table for BurstVoicemailFinder;
  a2[5] = swift_allocObject();
  v6(v4, v5);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_5();
  v9(v8, v7);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BurstNotificationSearchManager.init(sharedGlobals:voicemailFinder:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of SPHConversation(a1, a3);

  return outlined init with take of SPHConversation(a2, a3 + 40);
}

uint64_t BurstNotificationSearchManager.findIncomingNotifications(after:)()
{
  *(v1 + 136) = v0;
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_6_17(v2);

  return BurstNotificationSearchManager.submitNotificationsSearch(after:)(v3, v4);
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  return _swift_task_switch(BurstNotificationSearchManager.findIncomingNotifications(after:), 0, 0);
}

{
  v86 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_74:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, static Logger.siriPhone);
  v0[20] = v2;

  v79 = v2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = OUTLINED_FUNCTION_42();
    v7 = swift_slowAlloc();
    v84 = v7;
    *v6 = 136315138;
    v8 = specialized Array.count.getter(v5);
    if (v8)
    {
      v9 = v8;
      v85 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v78 = v7;
      v80 = v6;
      v11 = 0;
      v12 = v0;
      v13 = v0[19];
      v14 = v13 & 0xC000000000000001;
      v15 = v13 + 32;
      do
      {
        if (v14)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(v15 + 8 * v11);
        }

        v17 = v16;
        ++v11;
        v18 = [v16 dictionary];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_7_15();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_7_15();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v9 != v11);
      v0 = v12;
      v6 = v80;
      v7 = v78;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19NSMutableDictionaryCSgMd, &_sSo19NSMutableDictionaryCSgMR);
    v19 = Array.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v84);

    *(v6 + 4) = v22;
    _os_log_impl(&dword_0, v3, v4, "#BurstNotificationSearchManager notifications: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  v81 = v0;
  v23 = v0[19];
  v85 = _swiftEmptyArrayStorage;
  v24 = specialized Array.count.getter(v23);
  v25 = 0;
  v82 = v23 & 0xC000000000000001;
  v0 = (v23 & 0xFFFFFFFFFFFFFF8);
  v26 = v23 + 32;
  while (v24 != v25)
  {
    if (v82)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= v0[2])
      {
        goto LABEL_71;
      }

      v27 = *(v26 + 8 * v25);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v29 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v27, &selRef_announcementType);
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v31)
    {
      if (v29 == v32 && v31 == v33)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {

          goto LABEL_28;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_7_15();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_7_15();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

LABEL_28:
    ++v25;
  }

  v36 = v85;
  v37 = specialized Array.count.getter(v85);
  v38 = 0;
  v0 = (v36 & 0xC000000000000001);
  v39 = _swiftEmptyArrayStorage;
LABEL_31:
  v81[21] = v39;
  while (v37 != v38)
  {
    if (v0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_73;
      }

      v40 = *(v36 + 8 * v38 + 32);
    }

    v41 = v40;
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_72;
    }

    v43 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v40, &selRef_notificationId);
    v45 = v44;

    ++v38;
    if (v45)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v49;
      }

      v47 = v39[2];
      if (v47 >= v39[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v50;
      }

      v39[2] = v47 + 1;
      v48 = &v39[2 * v47];
      v48[4] = v43;
      v48[5] = v45;
      v38 = v42;
      goto LABEL_31;
    }
  }

  if (v39[2])
  {
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "#BurstNotificationSearchManager Found voicemail notifications. Searching for INCallRecords corresponding to notification identifiers.", v53, 2u);
      OUTLINED_FUNCTION_26_0(v53);
    }

    v54 = v81[17];

    v55 = v54[9];
    __swift_project_boxed_opaque_existential_1(v54 + 5, v54[8]);
    v83 = (*(v55 + 8) + **(v55 + 8));
    v56 = swift_task_alloc();
    v81[22] = v56;
    *v56 = v81;
    v57 = OUTLINED_FUNCTION_6_17(v56);

    return v83(v57);
  }

  else
  {
    v58 = v81[17];

    outlined init with copy of BurstNotificationSearchManager(v58, (v81 + 2));
    v59 = v79;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_42();
      v62 = OUTLINED_FUNCTION_32_0();
      v85 = v62;
      *v39 = 136315138;
      v63 = v81[5];
      v64 = v81[6];
      __swift_project_boxed_opaque_existential_1(v81 + 2, v63);
      (*(v64 + 8))(v63, v64);
      __swift_project_boxed_opaque_existential_1(v81 + 12, v81[15]);
      v65 = DeviceState.idiom.getter();
      switch(v65)
      {
        case 1:
          v66 = @"PHONE";
          goto LABEL_62;
        case 2:
          v66 = @"PAD";
          goto LABEL_62;
        case 3:
          v66 = @"WATCH";
          goto LABEL_62;
        case 4:
          v66 = @"HOME_POD";
          goto LABEL_62;
        case 5:
          v66 = @"CARPLAY";
          goto LABEL_62;
        case 6:
          v66 = @"APPLE_TV";
          goto LABEL_62;
        case 7:
          v66 = @"MAC";
LABEL_62:
          v67 = v66;
          break;
        default:
          v66 = [NSString stringWithFormat:@"(unknown: %i)", v65];
          break;
      }

      v68 = v66;
      __swift_destroy_boxed_opaque_existential_1(v81 + 12);
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      outlined destroy of BurstNotificationSearchManager((v81 + 2));
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v85);

      *(v39 + 4) = v59;
      _os_log_impl(&dword_0, v60, v61, "#BurstNotificationSearchManager No voicemail notifications, or unsupported platform. Idiom: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_26_0(v62);
      OUTLINED_FUNCTION_26_0(v39);
    }

    else
    {

      outlined destroy of BurstNotificationSearchManager((v81 + 2));
    }

    specialized Array.count.getter(v81[19]);
    v72 = OUTLINED_FUNCTION_5();
    v73 = specialized BidirectionalCollection.last.getter(v72);

    if (v73)
    {
      v74 = outlined bridged method (ob) of @objc SANotificationObject.notificationId.getter(v73);
      v76 = v75;
    }

    else
    {
      v74 = 0;
      v76 = 0;
    }

    v77 = v81[1];

    return v77(_swiftEmptyArrayStorage, v59, v74, v76);
  }
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v1 = v0;
  *(v0 + 184) = v2;

  return _swift_task_switch(BurstNotificationSearchManager.findIncomingNotifications(after:), 0, 0);
}

{
  v31 = v0;
  v1 = v0[23];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_32_0();
    v30 = v4;
    *v1 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v5 = Array.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v30);

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_6_7(&dword_0, v8, v9, "#BurstNotificationSearchManager Found voicemails to announce: %s");
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_26_0(v4);
    OUTLINED_FUNCTION_26_0(v1);
  }

  v10 = v0[19];
  v11 = specialized Array.count.getter(v10);
  specialized BidirectionalCollection.last.getter(v10);
  OUTLINED_FUNCTION_5();

  if (v2)
  {
    v12 = outlined bridged method (ob) of @objc SANotificationObject.notificationId.getter(v2);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[23];
    v18 = OUTLINED_FUNCTION_42();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;

    AnnounceVoicemailReadingState.IncomingNotificationsUpdate.description.getter(v17, v11, v12, v14);
    v21 = v20;
    v29 = v12;
    v22 = v11;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, &v30);
    v11 = v22;
    v12 = v29;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_0, v15, v16, "#BurstNotificationSearchManager Update: %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_26_0(v19);
    OUTLINED_FUNCTION_26_0(v18);
  }

  v26 = v0[23];
  v27 = v0[1];

  return v27(v26, v11, v12, v14);
}

uint64_t BurstNotificationSearchManager.submitNotificationsSearch(after:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(BurstNotificationSearchManager.submitNotificationsSearch(after:), 0, 0);
}

uint64_t BurstNotificationSearchManager.submitNotificationsSearch(after:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SANotificationsSearch, SANotificationsSearch_ptr);

  v4 = SANotificationsSearch.init(after:isOnDeviceSearch:)(v3, v1, 1);
  v0[11] = v4;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 32))(v5, v6);
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAOnDeviceNotificationsSearchCompleted, SAOnDeviceNotificationsSearchCompleted_ptr);
  *v9 = v0;
  v9[1] = BurstNotificationSearchManager.submitNotificationsSearch(after:);

  return AceServiceInvokerAsync.submit<A>(_:)(v4, v7, v10, v8);
}

{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (v0)
  {
    v5 = BurstNotificationSearchManager.submitNotificationsSearch(after:);
  }

  else
  {
    v5 = BurstNotificationSearchManager.submitNotificationsSearch(after:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v7 = v0;
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  result = outlined bridged method (pb) of @objc SAOnDeviceNotificationsSearchCompleted.notifications.getter(v1);
  if (result)
  {

    v3 = *(v0 + 112);

    v6 = specialized Array._copyToContiguousArray()();
    specialized MutableCollection<>.sort(by:)(&v6);
    if (v3)
    {
    }

    else
    {

      v4 = v6;
      v5 = *(v0 + 8);

      return v5(v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v16 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_5();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_32_0();
    v15[0] = v6;
    *v1 = 136315138;
    *(v0 + 56) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v15);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_6_7(&dword_0, v10, v11, "#BurstNotificationSearchManager Encountered error submitting SANotificationsSearch: %s. Returning no notifications found.");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v1);
  }

  v15[0] = specialized Array._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(v15);

  v12 = v15[0];
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t protocol witness for BurstNotificationSearchManagerProtocol.findIncomingNotifications(after:) in conformance BurstNotificationSearchManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for BurstNotificationSearchManagerProtocol.findIncomingNotifications(after:) in conformance BurstNotificationSearchManager;

  return BurstNotificationSearchManager.findIncomingNotifications(after:)();
}

uint64_t protocol witness for BurstNotificationSearchManagerProtocol.findIncomingNotifications(after:) in conformance BurstNotificationSearchManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28();
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v133 = a1;
  v147 = type metadata accessor for Date();
  __chkstk_darwin(v147);
  v144 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v130 - v8;
  __chkstk_darwin(v10);
  v137 = &v130 - v11;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v132 = &v130 - v14;
  __chkstk_darwin(v15);
  v141 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v130 = a4;
    v131 = &v130 - v17;
    v136 = v18;
    v20 = 0;
    v146 = (v16 + 8);
    v21 = _swiftEmptyArrayStorage;
    v22 = &unk_548000;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v134 = v23;
      if (v24 < v19)
      {
        v145 = v19;
        v25 = *v141;
        v143 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 v22[246]];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v148 = v27;
        v32 = v131;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = [v28 v22[246]];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v132;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v140) = static Date.< infix(_:_:)();
        v36 = *v146;
        v37 = v35;
        v38 = v147;
        (*v146)(v37, v147);
        v138 = v36;
        (v36)(v32, v38);

        v135 = 8 * v31;
        a4 = v25 + 8 * v31 + 16;
        v39 = (v31 + 2);
        v24 = v143;
        v22 = &unk_548000;
        v40 = v145;
        v139 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v143 = v24;
          v42 = *(a4 - 8);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 v22[246]];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v148 = v41;
          v47 = v136;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = [v44 v22[246]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v137;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LODWORD(v49) = static Date.< infix(_:_:)() & 1;
          v51 = v50;
          v52 = v147;
          v53 = v138;
          (v138)(v51, v147);
          (v53)(v47, v52);

          a4 += 8;
          v24 = v143 + 1;
          v41 = v148;
          v39 = (v148 + 1);
          v22 = &unk_548000;
          v21 = v139;
          v40 = v145;
          if ((v140 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v140)
        {
          v54 = v134;
          if (v24 < v134)
          {
            goto LABEL_127;
          }

          if (v134 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v135;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v141;
                if (!*v141)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v141[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v134))
        {
          goto LABEL_126;
        }

        if (v24 - v134 < v130)
        {
          v62 = v130 + v134;
          if (__OFADD__(v134, v130))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v141[1];
          }

          if (v62 >= v134)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v139 = v21;
            v145 = *v141;
            v63 = v145 + 8 * v24 - 8;
            v64 = (v134 - v24);
            v135 = v62;
LABEL_33:
            v143 = v24;
            v65 = *(v145 + 8 * v24);
            v138 = v64;
            v66 = v64;
            v140 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 v22[246]];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v72 = [v69 v22[246]];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v148 = v68;
              a4 = v66;
              v74 = v144;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v73) = static Date.< infix(_:_:)();
              v75 = *v146;
              v76 = v74;
              v77 = v147;
              (*v146)(v76, v147);
              v75(v9, v77);

              if ((v73 & 1) == 0)
              {
                v22 = &unk_548000;
LABEL_41:
                v24 = v143 + 1;
                v63 = v140 + 8;
                v64 = (v138 - 1);
                if (v143 + 1 == v135)
                {
                  v24 = v135;
                  v21 = v139;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v145)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              v66 = (v66 + 1);
              v22 = &unk_548000;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v134)
      {
        goto LABEL_125;
      }

      v143 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v21 = v120;
      }

      v79 = *(v21 + 16);
      a4 = v79 + 1;
      v80 = v143;
      if (v79 >= *(v21 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v80 = v143;
        v21 = v121;
      }

      *(v21 + 16) = a4;
      v81 = v21 + 32;
      v82 = (v21 + 32 + 16 * v79);
      *v82 = v134;
      v82[1] = v80;
      v148 = *v133;
      if (!v148)
      {
        goto LABEL_139;
      }

      if (v79)
      {
        break;
      }

LABEL_92:
      v19 = v141[1];
      v20 = v143;
      if (v143 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v83 = a4 - 1;
      v84 = (v81 + 16 * (a4 - 1));
      v85 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v86 = *(v21 + 32);
        v87 = *(v21 + 40);
        v96 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        v89 = v96;
LABEL_63:
        if (v89)
        {
          goto LABEL_112;
        }

        v101 = *v85;
        v100 = v85[1];
        v102 = __OFSUB__(v100, v101);
        v103 = v100 - v101;
        v104 = v102;
        if (v102)
        {
          goto LABEL_115;
        }

        v105 = v84[1];
        v106 = v105 - *v84;
        if (__OFSUB__(v105, *v84))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v103, v106))
        {
          goto LABEL_120;
        }

        if (v103 + v106 >= v88)
        {
          if (v88 < v106)
          {
            v83 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v108 = *v85;
      v107 = v85[1];
      v96 = __OFSUB__(v107, v108);
      v103 = v107 - v108;
      v104 = v96;
LABEL_78:
      if (v104)
      {
        goto LABEL_117;
      }

      v110 = *v84;
      v109 = v84[1];
      v96 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v96)
      {
        goto LABEL_119;
      }

      if (v111 < v103)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v83 - 1 >= a4)
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
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
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*v141)
      {
        goto LABEL_136;
      }

      v115 = v21;
      a4 = v81 + 16 * (v83 - 1);
      v116 = *a4;
      v117 = v81 + 16 * v83;
      v21 = *(v117 + 8);
      v118 = v142;
      specialized _merge<A>(low:mid:high:buffer:by:)((*v141 + 8 * *a4), (*v141 + 8 * *v117), (*v141 + 8 * v21), v148);
      v142 = v118;
      if (v118)
      {
        goto LABEL_105;
      }

      if (v21 < v116)
      {
        goto LABEL_107;
      }

      v119 = *(v115 + 16);
      if (v83 > v119)
      {
        goto LABEL_108;
      }

      *a4 = v116;
      *(a4 + 8) = v21;
      if (v83 >= v119)
      {
        goto LABEL_109;
      }

      a4 = v119 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v117 + 16), v119 - 1 - v83, (v81 + 16 * v83));
      v21 = v115;
      *(v115 + 16) = v119 - 1;
      v22 = &unk_548000;
      if (v119 <= 2)
      {
        goto LABEL_92;
      }
    }

    v90 = v81 + 16 * a4;
    v91 = *(v90 - 64);
    v92 = *(v90 - 56);
    v96 = __OFSUB__(v92, v91);
    v93 = v92 - v91;
    if (v96)
    {
      goto LABEL_110;
    }

    v95 = *(v90 - 48);
    v94 = *(v90 - 40);
    v96 = __OFSUB__(v94, v95);
    v88 = v94 - v95;
    v89 = v96;
    if (v96)
    {
      goto LABEL_111;
    }

    v97 = v85[1];
    v98 = v97 - *v85;
    if (__OFSUB__(v97, *v85))
    {
      goto LABEL_113;
    }

    v96 = __OFADD__(v88, v98);
    v99 = v88 + v98;
    if (v96)
    {
      goto LABEL_116;
    }

    if (v99 >= v93)
    {
      v113 = *v84;
      v112 = v84[1];
      v96 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v96)
      {
        goto LABEL_124;
      }

      if (v88 < v114)
      {
        v83 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_95:
  a4 = *v133;
  if (!*v133)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v123 = (v21 + 16);
  v122 = *(v21 + 16);
  while (v122 >= 2)
  {
    if (!*v141)
    {
      goto LABEL_137;
    }

    v124 = v21;
    v21 += 16 * v122;
    v125 = *v21;
    v126 = &v123[2 * v122];
    v127 = *(v126 + 1);
    v128 = v142;
    specialized _merge<A>(low:mid:high:buffer:by:)((*v141 + 8 * *v21), (*v141 + 8 * *v126), (*v141 + 8 * v127), a4);
    v142 = v128;
    if (v128)
    {
      break;
    }

    if (v127 < v125)
    {
      goto LABEL_121;
    }

    if (v122 - 2 >= *v123)
    {
      goto LABEL_122;
    }

    *v21 = v125;
    *(v21 + 8) = v127;
    v129 = *v123 - v122;
    if (*v123 < v122)
    {
      goto LABEL_123;
    }

    v122 = *v123 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v126 + 16, v129, v126);
    *v123 = v122;
    v21 = v124;
  }

LABEL_105:
}

id specialized _merge<A>(low:mid:high:buffer:by:)(void **a1, void **a2, void **a3, void **a4)
{
  v63 = type metadata accessor for Date();
  __chkstk_darwin(v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v59 = &v56 - v13;
  __chkstk_darwin(v14);
  i = (&v56 - v15);
  v16 = a2 - a1;
  v62 = (v17 + 8);
  v18 = a3 - a2;
  if (v16 < v18)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v19 = &a4[v16];
    v20 = &unk_548000;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[246]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      result = [v26 v20[246]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v31) = static Date.< infix(_:_:)();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 1;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 1;
      v19 = v64;
      a3 = v65;
      v20 = &unk_548000;
    }

    v36 = a4++;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v19 = &a4[v18];
  v38 = &unk_548000;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = a2 - 1;
  v40 = a3 - 1;
  v66 = a2;
  for (i = a2 - 1; v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 1;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[246]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    result = [v45 v38[246]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v47) = static Date.< infix(_:_:)();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v11, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &unk_548000;
      if (v65 + 1 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != v65 + 1)
    {
      *v65 = *v42;
    }

    v40 = v52 - 1;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &unk_548000;
  }

LABEL_31:
  v54 = v19 - a4;
  if (a2 != a4 || a2 >= &a4[v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return &dword_0 + 1;
}

uint64_t outlined bridged method (ob) of @objc SANotificationObject.notificationId.getter(void *a1)
{
  v2 = [a1 notificationId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t getEnumTagSinglePayload for BurstNotificationSearchManager(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for BurstNotificationSearchManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized BurstVoicemailFinding.find(identifiers:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = specialized BurstVoicemailFinding.find(identifiers:);

  return BurstVoicemailFinder.fetchVoicemails()();
}

uint64_t specialized BurstVoicemailFinding.find(identifiers:)()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

void specialized BurstVoicemailFinding.find(identifiers:)()
{
  v50 = v0;
  v1 = *(v0 + 32);

  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v2);
  v49 = _swiftEmptyArrayStorage;
  v4 = specialized Array.count.getter(v1);
  v5 = 0;
  v45 = v1 & 0xFFFFFFFFFFFFFF8;
  v47 = v1 & 0xC000000000000001;
  v6 = v1 + 32;
LABEL_2:
  while (v5 != v4)
  {
    if (v47)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v45 + 16))
      {
        goto LABEL_35;
      }

      v7 = *(v6 + 8 * v5);
    }

    v8 = v7;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v10 = [v7 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (*(v3 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(v3 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v16);
        if (*v17 != v11 || v17[1] != v13)
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v14 = v16 + 1;
          if ((v19 & 1) == 0)
          {
            continue;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_2;
      }
    }
  }

  v6 = v44;

  v3 = v49;
  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_19;
  }

LABEL_36:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_19:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v23 = 136315394;
    v24 = Array.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v49);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = specialized Array.count.getter(v3);
    if (v27)
    {
      v28 = v27;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v28 < 0)
      {
        __break(1u);
        return;
      }

      v43 = v22;
      v46 = v21;
      v29 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v30 = *(v3 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = [v30 identifier];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = _swiftEmptyArrayStorage[2];
        if (v36 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v29;
        _swiftEmptyArrayStorage[2] = v36 + 1;
        v37 = &_swiftEmptyArrayStorage[2 * v36];
        v37[4] = v33;
        v37[5] = v35;
      }

      while (v28 != v29);
      v6 = v44;
      v21 = v46;
      v22 = v43;
    }

    v38 = Array.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v49);

    *(v23 + 14) = v41;
    _os_log_impl(&dword_0, v21, v22, "#BurstVoicemailFinder Looking for %s identifiers, found %s.", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v48);
    OUTLINED_FUNCTION_26_0(v23);
  }

  v42 = *(v6 + 8);

  v42(v3);
}

uint64_t BurstVoicemailFinding.find(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v8 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = BurstVoicemailFinding.find(identifiers:);

  return v8(a2, a3);
}

uint64_t BurstVoicemailFinding.find(identifiers:)()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v6 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v6;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    specialized Set._Variant.insert(_:)();
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSaySo11INCallGroupCG_GTt0g5(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v9;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        specialized Set._Variant.insert(_:)();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t BurstVoicemailFinder.fetchVoicemails()()
{
  *(v1 + 576) = v0;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v2, v3, v4);
}

{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  NSNumber.init(BOOLeanLiteral:)(0);
  OUTLINED_FUNCTION_66_0();
  v17.is_nil = 16;
  v3.super.super.isa = INSearchCallHistoryIntent.__allocating_init(__dateCreated:recipient:callCapabilities:callTypes:unseen:)(v16, v17, v1, v2, v18).super.super.isa;
  *(v0 + 584) = v3;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy((v0 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  *(v0 + 480) = &type metadata for PhoneCallFeatureFlags;
  *(v0 + 488) = &protocol witness table for PhoneCallFeatureFlags;
  v4 = swift_allocObject();
  *(v0 + 456) = v4;
  memcpy((v4 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation((v0 + 456), v0 + 416);
  outlined init with copy of PhoneCallFeatureFlags(v0 + 16, v0 + 208);
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));
  OUTLINED_FUNCTION_1_38();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v5 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    OUTLINED_FUNCTION_1_38();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v5 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      OUTLINED_FUNCTION_1_38();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v5 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v5 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v6 = *(v0 + 576);
  v7 = *v5;
  *(v0 + 592) = *v5;

  static Signpost.begin(_:)();
  *(v0 + 536) = v8;
  *(v0 + 544) = v9;
  *(v0 + 552) = v10;
  *(v0 + 560) = v11;
  outlined init with copy of SignalProviding(v6, v0 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21HandleIntentSubmitterCySo08INSearchb7HistoryG0CSo0ibjG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin21HandleIntentSubmitterCySo08INSearchb7HistoryG0CSo0ibjG8ResponseCGMR);
  v12 = swift_allocObject();
  *(v0 + 600) = v12;
  outlined init with take of SPHConversation((v0 + 496), v12 + 16);
  v13 = swift_task_alloc();
  *(v0 + 608) = v13;
  *v13 = v0;
  v13[1] = BurstVoicemailFinder.fetchVoicemails();

  return specialized HandleIntentSubmitter.submit(app:intent:)(v7, v3.super.super.isa);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  *(v5 + 616) = v0;

  if (!v0)
  {
    *(v5 + 624) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 624);
  if (v1 && (v2 = v1, outlined bridged method (ob) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(v2)))
  {
  }

  else
  {
  }

  v3 = *(v0 + 584);
  Signpost.OpenSignpost.end()();

  v4 = OUTLINED_FUNCTION_3_20();

  return v5(v4);
}

{
  v14 = v0;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[77];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[71] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "#BurstVoicemailFinder Encountered error submitting HandleIntent: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v10 = v0[73];
  Signpost.OpenSignpost.end()();

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

INSearchCallHistoryIntent __swiftcall INSearchCallHistoryIntent.__allocating_init(__dateCreated:recipient:callCapabilities:callTypes:unseen:)(INDateComponentsRange_optional __dateCreated, INPerson_optional recipient, __C::INCallCapabilityOptions callCapabilities, __C::INCallRecordTypeOptions callTypes, NSNumber_optional unseen)
{
  v6 = *&__dateCreated.is_nil;
  isa = __dateCreated.value.super.isa;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDateCreated:__dateCreated.value.super.isa recipient:*&__dateCreated.is_nil callCapabilities:recipient.value.super.isa callTypes:*&recipient.is_nil unseen:callCapabilities.rawValue];

  return v8;
}

uint64_t protocol witness for BurstVoicemailFinding.find(identifiers:) in conformance BurstVoicemailFinder(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for BurstVoicemailFinding.find(identifiers:) in conformance BurstVoicemailFinder;

  return specialized BurstVoicemailFinding.find(identifiers:)(a1);
}

uint64_t protocol witness for BurstVoicemailFinding.fetchVoicemails() in conformance BurstVoicemailFinder()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for BurstVoicemailFinding.fetchVoicemails() in conformance BurstVoicemailFinder;

  return BurstVoicemailFinder.fetchVoicemails()();
}

{
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

uint64_t specialized HandleIntentSubmitter.submit(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(specialized HandleIntentSubmitter.submit(app:intent:), 0, 0);
}

uint64_t specialized HandleIntentSubmitter.submit(app:intent:)()
{
  v33 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  *(v0 + 96) = __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315650;
    *(v0 + 56) = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21HandleIntentSubmitterCySo08INSearchb7HistoryG0CSo0ibjG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin21HandleIntentSubmitterCySo08INSearchb7HistoryG0CSo0ibjG8ResponseCGMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v32);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 64) = v8;
    type metadata accessor for App();
    lazy protocol witness table accessor for type App and conformance App();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v32);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = [v7 typeName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

    *(v9 + 24) = v21;
    _os_log_impl(&dword_0, v4, v5, "#%s Submitting single HandleIntent for app: %s, intent: %s", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  v22 = *(v0 + 88);
  HandleIntentSubmitter.applyAppToIntent(app:intent:)(*(v0 + 72), *(v0 + 80));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
  OUTLINED_FUNCTION_66_0();
  v26 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v23, v24, v25);
  *(v0 + 104) = v26;
  v27 = v22[5];
  v28 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v27);
  v29 = swift_task_alloc();
  *(v0 + 112) = v29;
  v30 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntentCompleted, SAIntentGroupHandleIntentCompleted_ptr);
  *v29 = v0;
  v29[1] = specialized HandleIntentSubmitter.submit(app:intent:);

  return AceServiceInvokerAsync.submit<A>(_:)(v26, v27, v30, v28);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  specialized HandleIntentSubmitter.makeIntentResponse(from:)(v1);

  v3 = OUTLINED_FUNCTION_3_20();

  return v4(v3);
}

{
  v16 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[11];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v0[5] = v3;
    v15[0] = v5;
    *v4 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21HandleIntentSubmitterCySo08INSearchb7HistoryG0CSo0ibjG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin21HandleIntentSubmitterCySo08INSearchb7HistoryG0CSo0ibjG8ResponseCGMR);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v15);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v15);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_0, v1, v2, "#%s makeIntentResponse threw an error: %s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v12 = v0[13];
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

void HandleIntentSubmitter.applyAppToIntent(app:intent:)(int a1, id a2)
{
  v3 = [a2 _metadata];
  if (v3)
  {
    v4 = v3;
    [v3 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _INPBIntentMetadata, _INPBIntentMetadata_ptr);
    if (swift_dynamicCast())
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = App.appIdentifier.getter();
  if (v7)
  {
    v8 = v7;
    if (!v5)
    {

      goto LABEL_16;
    }

    v9 = v6;
    v10 = v5;
    _StringGuts.grow(_:)(21);

    v11._countAndFlagsBits = v9;
    v11._object = v8;
    String.append(_:)(v11);

    v12 = String._bridgeToObjectiveC()();

    [v10 setLaunchId:v12];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v10 = v5;
  }

  v13 = v10;
  App.systemExtensionBundleId.getter();
  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v13 setSystemExtensionBundleId:v15];

LABEL_16:
  [a2 _setMetadata:v5];
}

id specialized HandleIntentSubmitter.makeIntentResponse(from:)(void *a1)
{
  result = [a1 intentResponse];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = [result typeName];

  result = [a1 intentResponse];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  isa = [result data];

  if (isa)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v7, v9);
  }

  v10 = INIntentResponseCreate();

  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t outlined bridged method (ob) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(void *a1)
{
  v2 = [a1 callRecords];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t BusinessCompositionFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  (*(v9 + 16))(v12 - v11, a1, v7);
  outlined init with copy of SignalProviding(a2, v17);
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  v15 = (*(v2 + 144))(v13, v17, &type metadata for PhoneCallFlowFactory, &protocol witness table for PhoneCallFlowFactory, v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v9 + 8))(a1, v7);
  return v15;
}

uint64_t BusinessCompositionFlow.__allocating_init(parse:sharedGlobals:phoneCallFactoryType:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_29_1();
  v0 = swift_allocObject();
  BusinessCompositionFlow.init(parse:sharedGlobals:phoneCallFactoryType:startCallCATsSimple:)();
  return v0;
}

uint64_t BusinessCompositionFlow.init(parse:sharedGlobals:phoneCallFactoryType:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_29_1();
  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v7 + 32))(v1 + v6, v5);
  outlined init with take of SPHConversation(v4, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals);
  v8 = v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state;
  *v8 = 0;
  *(v8 + 8) = 2;
  v9 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_phoneCallFactoryType);
  *v9 = v3;
  v9[1] = v2;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_startCallCATsSimple) = v0;
  return v1;
}

uint64_t BusinessCompositionFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_7();
  (*(v12 + 16))(v10, a1, v4);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = &full type metadata for AppSelectionUserPersonaCollector;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v16 = 136315394;
    outlined copy of BusinessCompositionFlow.State(*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state + 8));
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = Input.description.getter();
    v22 = v21;
    (*(v6 + 8))(v10, v4);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v33);
    v15 = &full type metadata for AppSelectionUserPersonaCollector;

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v13, v14, "#BusinessCompositionFlow entering on with state: %s, input: %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v24 = v2 + v15[106];
  v25 = *(v24 + 8) == 2 && *v24 == 0;
  v26 = v25;
  if (!v25)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_9_18();
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v27, v28, "#BusinessCompositionFlow ignoring focus since flow is not in initiated state", v31, 2u);
      OUTLINED_FUNCTION_8();
    }
  }

  return v26;
}

uint64_t BusinessCompositionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[23] = v2;
  v1[24] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[25] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[26] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v5);
  v1[27] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for PhoneError(0);
  v1[28] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  v83 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    OUTLINED_FUNCTION_13_14();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v6 = swift_slowAlloc();
    v82[0] = v6;
    *v5 = 136315138;
    v7 = *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state);
    v8 = *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state + 8);
    *(v0 + 136) = v7;
    *(v0 + 144) = v8;
    outlined copy of BusinessCompositionFlow.State(v7, v8);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v82);

    *(v5 + 4) = v11;
    OUTLINED_FUNCTION_24_12(&dword_0, v12, v3, "#BusinessCompositionFlow entering execute with state: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v13 = *(v0 + 192);
  v14 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals;
  *(v0 + 264) = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals;
  v15 = v13 + v14;
  v16 = *(v13 + v14 + 24);
  v17 = *(v13 + v14 + 32);
  __swift_project_boxed_opaque_existential_1((v13 + v14), v16);
  v18 = (*(v17 + 72))(v16, v17);
  v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_parse;
  *(v0 + 272) = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_parse;
  (*(*v18 + 192))(v13 + v19);

  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v23 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v24 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_9_18();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_1(v26);
      OUTLINED_FUNCTION_14_1(&dword_0, v27, v28, "#BusinessCompositionFlow parse is not .uso and/or failed to transform parse to NLIntent, cannot redirect to composition resolution flow");
      OUTLINED_FUNCTION_8();
    }

    v29 = *(v0 + 248);

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_39();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v30, v31, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_14_16();
    v22 = swift_allocError();
    PhoneError.logged()(v32);
    outlined destroy of PhoneError(v29);
    swift_willThrow();
LABEL_16:
    v42 = *(v0 + 224);
    OUTLINED_FUNCTION_22_5(*(v0 + 192));
    outlined consume of BusinessCompositionFlow.State(v15, v17);
    *(v0 + 152) = v22;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v44 = *(v0 + 232);
      v43 = *(v0 + 240);
      v15 = *(v0 + 224);
      v45 = *(v0 + 200);
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v15);
      outlined init with take of PhoneError(v45, v43);
      outlined init with copy of PhoneError(v43, v44);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v51 = *(v0 + 232);
      v50 = *(v0 + 240);
      if (EnumCaseMultiPayload == 24)
      {
        outlined destroy of PhoneError(*(v0 + 232));
        static ExecuteResponse.complete()();

        outlined destroy of PhoneError(v50);
LABEL_26:
        OUTLINED_FUNCTION_21_5();

        OUTLINED_FUNCTION_11();

        return v59();
      }

      outlined destroy of PhoneError(*(v0 + 240));
      outlined destroy of PhoneError(v51);
    }

    else
    {
      OUTLINED_FUNCTION_36_9();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v42, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
    }

    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      v54 = OUTLINED_FUNCTION_38_6();
      *v15 = 138412290;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v55;
      *v54 = v55;
      OUTLINED_FUNCTION_24_12(&dword_0, v56, v53, "#BusinessCompositionFlow ERROR - %@. Falling back to MainFlow");
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v57 = OUTLINED_FUNCTION_18_8();
    v58(v57);
    OUTLINED_FUNCTION_40_7();
    static ExecuteResponse.complete(next:)();

    goto LABEL_26;
  }

  v20 = *(v0 + 192);
  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  v21 = v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state;
  v22 = *(v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state);
  if (!*(v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state + 8))
  {

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    v35 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v38 = swift_slowAlloc();
      v82[0] = v38;
      *v37 = 134218242;
      *(v37 + 4) = specialized Array.count.getter(v22);
      *(v37 + 12) = 2080;
      type metadata accessor for CompositionResolutionEntity();
      v39 = Array.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v82);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_0, v33, v34, "#BusinessCompositionFlow resolution completed with %ld entities %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    BusinessCompositionFlow.createMainFlow(entities:phoneCallNLIntent:)(v22, (v0 + 16));
    outlined consume of BusinessCompositionFlow.State(v22, 0);
    static ExecuteResponse.complete(next:)();
LABEL_30:

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_26;
  }

  if (*(v20 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state + 8) == 1)
  {
    swift_willThrow();
    swift_errorRetain();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_16;
  }

  switch(v22)
  {
    case 1:
      v70 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v71 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v71, v72))
      {
        OUTLINED_FUNCTION_9_18();
        v73 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_1(v73);
        OUTLINED_FUNCTION_14_1(&dword_0, v74, v75, "#BusinessCompositionFlow unexpected state: resolutionInProgress");
        OUTLINED_FUNCTION_8();
      }

      v76 = *(v0 + 248);

      *v76 = 0x7469736F706D6F43;
      v76[1] = 0xEF776F6C466E6F69;
      v76[2] = 0xD000000000000014;
      v76[3] = 0x8000000000458650;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_39();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v77, v78, &protocol conformance descriptor for PhoneError);
      OUTLINED_FUNCTION_14_16();
      v22 = swift_allocError();
      PhoneError.logged()(v79);
      outlined destroy of PhoneError(v76);
      swift_willThrow();
      goto LABEL_9;
    case 2:
      type metadata accessor for PhoneCallCommonCATsSimple(0);
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      OUTLINED_FUNCTION_40_7();
      static DialogPhase.canceled.getter();
      outlined init with copy of SignalProviding(v15, v0 + 96);
      type metadata accessor for DialogOutputFactory(0);
      OUTLINED_FUNCTION_12_8();
      swift_allocObject();
      v61 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
      v62 = (*(*v61 + 112))(v61);

      *(v0 + 168) = v62;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      goto LABEL_30;
    case 3:
      v63 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v64 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v64, v65))
      {
        OUTLINED_FUNCTION_9_18();
        v66 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_1(v66);
        OUTLINED_FUNCTION_14_1(&dword_0, v67, v68, "#BusinessCompositionFlow returns feature is disabled, start to render an error dialog");
        OUTLINED_FUNCTION_8();
      }

      v69 = swift_task_alloc();
      *(v0 + 280) = v69;
      *v69 = v0;
      v69[1] = BusinessCompositionFlow.execute();

      result = BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()();
      break;
    default:
      *v21 = 1;
      *(v21 + 8) = 2;
      *(v0 + 176) = BusinessCompositionFlow.createCompositionResolutionFlow(phoneCallNLIntent:)((v0 + 16));

      v80 = OUTLINED_FUNCTION_33_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type ConditionalFlow<CompositionResolutionResponse> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyAA29CompositionResolutionResponseCGMd, &_s11SiriKitFlow011ConditionalC0CyAA29CompositionResolutionResponseCGMR, &protocol conformance descriptor for ConditionalFlow<A>);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));

      goto LABEL_26;
  }

  return result;
}

{
  OUTLINED_FUNCTION_23_0();
  v0[20] = v0[37];
  type metadata accessor for SimpleOutputFlowAsync();
  static ExecuteResponse.complete<A>(next:)();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_23_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[36];
  v4 = v0[28];
  OUTLINED_FUNCTION_22_5(v0[24]);
  outlined consume of BusinessCompositionFlow.State(v1, v2);
  v0[19] = v3;
  v5 = (v0 + 19);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v7 = v0[29];
    v6 = v0[30];
    v5 = v0[28];
    v8 = v0[25];
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
    outlined init with take of PhoneError(v8, v6);
    outlined init with copy of PhoneError(v6, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v0[29];
    v13 = v0[30];
    if (EnumCaseMultiPayload == 24)
    {
      outlined destroy of PhoneError(v0[29]);
      static ExecuteResponse.complete()();

      outlined destroy of PhoneError(v13);
      goto LABEL_9;
    }

    outlined destroy of PhoneError(v0[30]);
    outlined destroy of PhoneError(v14);
  }

  else
  {
    OUTLINED_FUNCTION_36_9();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
  }

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_13_14();
    swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_38_6();
    *v5 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v18;
    *v17 = v18;
    OUTLINED_FUNCTION_24_12(&dword_0, v19, v16, "#BusinessCompositionFlow ERROR - %@. Falling back to MainFlow");
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v20 = OUTLINED_FUNCTION_18_8();
  v21(v20);
  OUTLINED_FUNCTION_40_7();
  static ExecuteResponse.complete(next:)();

LABEL_9:
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_11();

  return v22();
}

uint64_t BusinessCompositionFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v5 + 288) = v1;

  if (v1)
  {
    v8 = BusinessCompositionFlow.execute();
  }

  else
  {
    *(v5 + 296) = a1;
    v8 = BusinessCompositionFlow.execute();
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t closure #1 in BusinessCompositionFlow.execute()(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow26CompositionResolutionErrorOSgMd, &_s11SiriKitFlow26CompositionResolutionErrorOSgMR);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for CompositionResolutionError();
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v9 = *a1;
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA29CompositionResolutionResponseCGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA29CompositionResolutionResponseCGMR);
  v15[0] = v9;

  v10 = BusinessCompositionFlow.extractResolutionResult(anyResolutionResult:)(v15);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_sypSgMd, &_sypSgMR);
  v11 = a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state;
  v12 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state);
  *v11 = v10;
  v13 = *(v11 + 8);
  *(v11 + 8) = 0;
  return outlined consume of BusinessCompositionFlow.State(v12, v13);
}

uint64_t BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v0;
  v2 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v2);
  v1[14] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v1[17] = *(v4 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v5 + 184) = v0;

  if (v0)
  {
    v8 = BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest();
  }

  else
  {
    *(v5 + 192) = v3;
    v8 = BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest();
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  v19 = v0[24];
  __swift_project_boxed_opaque_existential_1((v5 + v0[20]), *(v5 + v0[20] + 24));
  v6 = OUTLINED_FUNCTION_29_12();
  v7(v6);
  v8 = v0[5];
  v9 = v0[7];
  v10 = __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v0[11] = v8;
  v0[12] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  (*(v4 + 16))(v2, v1, v3);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v19;
  (*(v4 + 32))(v13 + v12, v2, v3);
  type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();

  v14 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v15 = OUTLINED_FUNCTION_33_4();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v17 = v0[1];

  return v17(v14);
}

{
  (*(v0[16] + 8))(v0[19], v0[15]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()(uint64_t a1)
{
  v2 = v1[13];
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v3 = *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_startCallCATsSimple);
  type metadata accessor for SirikitDeviceState();
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals;
  v1[20] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals;
  __swift_project_boxed_opaque_existential_1((v2 + v4), *(v2 + v4 + 24));
  v5 = OUTLINED_FUNCTION_33_4();
  v6(v5);
  v7 = SirikitDeviceState.__allocating_init(from:)();
  v1[21] = v7;
  v10 = (*(*v3 + class metadata base offset for StartCallCATsSimple) + **(*v3 + class metadata base offset for StartCallCATsSimple));
  v8 = swift_task_alloc();
  v1[22] = v8;
  *v8 = v1;
  v8[1] = BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest();

  return v10(v7, 0);
}

uint64_t closure #1 in BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(closure #1 in BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest(), 0, 0);
}

uint64_t closure #1 in BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[9];
  v2 = (v0[8] + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 136))(v3, v4);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v1;
  v8 = *(v6 + 8);
  v9 = v1;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = closure #1 in BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest();
  v14 = v0[10];
  v15 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v7, v14, v5, v8, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t BusinessCompositionFlow.createBusinessEntity(businessName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  type metadata accessor for UsoEntityBuilder_common_LocalBusiness();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  UsoEntityBuilder_common_LocalBusiness.init()();
  dispatch thunk of UsoEntityBuilder_common_LocalBusiness.setName(value:)();
  v6 = static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v10 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_9_18();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_LocalBusinessCmMd, &_s12SiriOntology30UsoEntity_common_LocalBusinessCmMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_LocalBusinessCmmMd, &_s12SiriOntology30UsoEntity_common_LocalBusinessCmmMR);
    v17 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_37_9(v17, v18);
    OUTLINED_FUNCTION_1_39();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v19, v20, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_14_16();
    swift_allocError();
    v7 = v5;
    PhoneError.logged()(v21);
    outlined destroy of PhoneError(v5);
    swift_willThrow();
  }

  return v7;
}

uint64_t BusinessCompositionFlow.createPersonEntity()()
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_4();
  v3 = v2 - v1;
  type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  v4 = static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v8 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_9_18();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonCmMd, &_s12SiriOntology23UsoEntity_common_PersonCmMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonCmmMd, &_s12SiriOntology23UsoEntity_common_PersonCmmMR);
    v15 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_37_9(v15, v16);
    OUTLINED_FUNCTION_1_39();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v17, v18, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_14_16();
    swift_allocError();
    v5 = v3;
    PhoneError.logged()(v19);
    outlined destroy of PhoneError(v3);
    swift_willThrow();
  }

  return v5;
}

uint64_t BusinessCompositionFlow.updateNLContext()()
{
  v0 = type metadata accessor for PommesContext.Source();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  NLContextUpdate.init()();
  (*(v2 + 104))(v6, enum case for PommesContext.Source.pluginDefined(_:), v0);
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  type metadata accessor for PommesContext();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  return NLContextUpdate.pommesContext.setter();
}

NSObject *BusinessCompositionFlow.createCompositionResolutionFlow(phoneCallNLIntent:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = v49 - v7;
  v9 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = OUTLINED_FUNCTION_29_12();
  v18 = v17(v16);
  specialized Collection.first.getter(v18, v55);

  if (!v56)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(v55, v56);
  v19 = OUTLINED_FUNCTION_29_12();
  v21 = v20(v19);
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v55);
  if (!v23)
  {
LABEL_10:
    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    OUTLINED_FUNCTION_14_16();
    swift_allocError();
    *v31 = xmmword_426250;
    *(v31 + 16) = 2;
    swift_willThrow();
    return v18;
  }

  v53 = v15;
  v24 = v3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v25, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v18, v26);
  v51 = v11;
  v52 = v9;
  if (v27)
  {
    OUTLINED_FUNCTION_13_14();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v29 = swift_slowAlloc();
    v55[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v55);
    _os_log_impl(&dword_0, v18, v26, "#BusinessCompositionFlow preparing to start a composition resolution flow for %s with location guard", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v30 = BusinessCompositionFlow.createBusinessEntity(businessName:)(v21, v23);

  if (!v2)
  {
    v50 = BusinessCompositionFlow.createPersonEntity()();
    BusinessCompositionFlow.updateNLContext()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_426260;
    v49[1] = v33;
    v34 = (v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals);
    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals), *(v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals + 24));
    v35 = OUTLINED_FUNCTION_26_10();
    v36(v35);
    v37 = v56;
    v38 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    *(v33 + 32) = (*(v38 + 112))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v39 = OUTLINED_FUNCTION_26_10();
    v40(v39);
    v41 = v56;
    v42 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v43 = v52;
    (*(v51 + 16))(v8, v53, v52);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    v47 = SiriEnvironment.currentRequest.getter();

    v48 = (*(v42 + 120))(v30, v50, 0, v8, v47, v41, v42);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v58 = v48;
    type metadata accessor for GuardFlow();
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    v54 = GuardFlow.init(preconditionFlows:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA29CompositionResolutionResponseCGMd, &_s11SiriKitFlow08AnyValueC0CyAA29CompositionResolutionResponseCGMR);
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<CompositionResolutionResponse> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA29CompositionResolutionResponseCGMd, &_s11SiriKitFlow08AnyValueC0CyAA29CompositionResolutionResponseCGMR, &protocol conformance descriptor for AnyValueFlow<A>);
    v18 = Flow.guarded<A>(by:)();

    (*(v51 + 8))(v53, v52);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return v18;
}

uint64_t BusinessCompositionFlow.createMainFlow(entities:phoneCallNLIntent:)(uint64_t a1, void *a2)
{
  v4 = v2;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_41_5();
  v13 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v15 + 16))(v18 - v17, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_parse, v13);
  if (!specialized Array.count.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_9_18();
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v31, v32, "#BusinessCompositionFlow no entities found.", v35, 2u);
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_14;
  }

  BusinessCompositionFlow.constructCallParse(with:phoneCallNLIntent:)(a1, a2, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v13) != 1)
  {
    (*(v15 + 8))(v19, v13);
    (*(v15 + 32))(v19, v3, v13);
LABEL_14:
    v28 = (*(*(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_phoneCallFactoryType + 8) + 8))(v19, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals);
    (*(v15 + 8))(v19, v13);
    return v28;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_9_18();
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v21, v22, "#BusinessCompositionFlow failed to construct a new parse after receiving composition resolution result", v25, 2u);
    OUTLINED_FUNCTION_8();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_39();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v26, v27, &protocol conformance descriptor for PhoneError);
  OUTLINED_FUNCTION_14_16();
  swift_allocError();
  v28 = v10;
  PhoneError.logged()(v29);
  outlined destroy of PhoneError(v10);
  swift_willThrow();
  (*(v15 + 8))(v19, v13);
  return v28;
}

_BYTE *BusinessCompositionFlow.extractResolutionResult(anyResolutionResult:)(uint64_t a1)
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow26CompositionResolutionErrorOSgMd, &_s11SiriKitFlow26CompositionResolutionErrorOSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_41_5();
  v9 = type metadata accessor for CompositionResolutionError();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v72 - v17;
  outlined init with copy of Any?(a1, v78);
  if (!v78[3])
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA29CompositionResolutionResponseCGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA29CompositionResolutionResponseCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);
    v34 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v35 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_9_18();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_44(&dword_0, v37, v38, "#BusinessCompositionFlow failed to get CompositionResolutionResponse from the composition resolution flow");
      OUTLINED_FUNCTION_8();
    }

    *v6 = 1;
    OUTLINED_FUNCTION_33_4();
    goto LABEL_16;
  }

  if (!v78[5])
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
    v44 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v45 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_9_18();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_44(&dword_0, v47, v48, "#BusinessCompositionFlow location guard flow failed.");
      OUTLINED_FUNCTION_8();
    }

    OUTLINED_FUNCTION_33_4();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_39();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v39, v40, &protocol conformance descriptor for PhoneError);
    OUTLINED_FUNCTION_14_16();
    swift_allocError();
    PhoneError.logged()(v41);
    outlined destroy of PhoneError(v6);
    swift_willThrow();
    return v6;
  }

  v19 = v11;
  CompositionResolutionResponse.error.getter();
  if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow26CompositionResolutionErrorOSgMd, &_s11SiriKitFlow26CompositionResolutionErrorOSgMR);
    v6 = CompositionResolutionResponse.entities.getter();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_13_14();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v24 = swift_slowAlloc();
      v78[0] = v24;
      *v23 = 136315138;
      type metadata accessor for CompositionResolutionEntity();
      v25 = Array.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v78);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_30_3();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    (*(v11 + 32))(v18, v1, v9);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v49, static Logger.siriPhone);
    v50 = v11 + 16;
    v77 = *(v11 + 16);
    v77(v15, v18, v9);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_13_14();
      v55 = swift_slowAlloc();
      v74 = v55;
      OUTLINED_FUNCTION_12_17();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v55 = 136315138;
      OUTLINED_FUNCTION_8_20();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v56, v57, &protocol conformance descriptor for CompositionResolutionError);
      v73 = v51;
      v58 = Error.localizedDescription.getter();
      v76 = v50;
      v60 = v59;
      HIDWORD(v72) = v52;
      v61 = *(v19 + 8);
      v62 = OUTLINED_FUNCTION_43_8();
      v61(v62);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v78);

      v65 = v73;
      v64 = v74;
      *(v74 + 1) = v63;
      v66 = v61;
      _os_log_impl(&dword_0, v65, BYTE4(v72), "#BusinessCompositionFlow composition resolution failed with error: %s", v64, 0xCu);
      v6 = v75;
      __swift_destroy_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    else
    {

      v67 = *(v19 + 8);
      v6 = (v19 + 8);
      v66 = v67;
      v68 = OUTLINED_FUNCTION_43_8();
      (v67)(v68);
    }

    OUTLINED_FUNCTION_8_20();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(v69, v70, &protocol conformance descriptor for CompositionResolutionError);
    OUTLINED_FUNCTION_14_16();
    swift_allocError();
    v77(v71, v18, v9);
    swift_willThrow();

    v66(v18, v9);
  }

  return v6;
}

uint64_t BusinessCompositionFlow.constructCallParse(with:phoneCallNLIntent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v122 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_13(&v100 - v7);
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v110 = v9;
  v111 = v8;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v11 - v10);
  v107 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v106 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v103 = v14 - v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13(&v100 - v17);
  v115 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v104 = v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_13(v21 - v20);
  v22 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v23 = OUTLINED_FUNCTION_21(v22);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v121 = v25 - v24;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_7();
  v124 = v27;
  v125 = v26;
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_12_5();
  v101 = v28 - v29;
  __chkstk_darwin(v30);
  v123 = &v100 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_21(v32);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  v120 = &v100 - v34;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7();
  v118 = v36;
  v119 = v35;
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_4();
  v117 = v38 - v37;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_7();
  v113 = v40;
  v114 = v39;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_4();
  v112 = v42 - v41;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  v43 = UsoTaskBuilder_call_common_PhoneCall.init()();
  type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  UsoEntityBuilder_common_PhoneCall.init()();
  v44 = specialized Array.count.getter(a1);
  if (v44)
  {
    v45 = v44;
    if (v44 < 1)
    {
      __break(1u);
      OUTLINED_FUNCTION_0_6();
      swift_once();
      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Logger.siriPhone);
      swift_errorRetain();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        OUTLINED_FUNCTION_13_14();
        swift_slowAlloc();
        v70 = OUTLINED_FUNCTION_38_6();
        *v3 = 138412290;
        swift_errorRetain();
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v3 + 4) = v71;
        *v70 = v71;
        OUTLINED_FUNCTION_24_12(&dword_0, v72, v69, "#BusinessCompositionFlow encountered error while constructing call parse %@");
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      v98 = v122;
      (*(v124 + 8))(v45, v125);
      v97 = type metadata accessor for Parse();
      v94 = v98;
      v95 = 1;
      v96 = 1;
      return __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    }

    v46 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v46;
      type metadata accessor for UsoEntityBuilder_common_Person();
      OUTLINED_FUNCTION_12_8();
      swift_allocObject();
      UsoEntityBuilder_common_Person.init()();
      CompositionResolutionEntity.usoEntity.getter();
      static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:)();

      dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();
    }

    while (v45 != v46);
  }

  v47 = v43;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v48 = v116[3];
  v49 = v116[4];
  __swift_project_boxed_opaque_existential_1(v116, v48);
  v50 = (*(v49 + 48))(v48, v49);
  v51 = v123;
  switch(v50)
  {
    case 1:
    case 2:
    case 3:
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_11;
      }

      break;
    case 4:
      break;
    default:

LABEL_11:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      v54 = __swift_project_value_buffer(v53, static Logger.siriPhone);
      v55 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      v56 = OUTLINED_FUNCTION_28_3();
      if (os_log_type_enabled(v56, v57))
      {
        OUTLINED_FUNCTION_9_18();
        v58 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_1(v58);
        _os_log_impl(&dword_0, v55, v54, "#BusinessCompositionFlow found speakerphone attribute - adding it to new parse", v49, 2u);
        OUTLINED_FUNCTION_8();
      }

      type metadata accessor for UsoEntityBuilder_applePhoneCall_PhoneCallAttribute();
      OUTLINED_FUNCTION_12_8();
      swift_allocObject();
      UsoEntityBuilder_applePhoneCall_PhoneCallAttribute.init()();
      v60 = v112;
      v59 = v113;
      v61 = v114;
      (*(v113 + 104))(v112, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounSpeakerphone(_:), v114);
      dispatch thunk of UsoEntityBuilder_applePhoneCall_PhoneCallAttribute.setDefinedValue(value:)();
      (*(v59 + 8))(v60, v61);

      dispatch thunk of UsoEntityBuilder_common_PhoneCall.addAttributes(value:)();

      break;
  }

  v62 = v117;
  UsoIdentifier.init(value:appBundleId:namespace:probability:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  (*(v118 + 8))(v62, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_426260;
  *(v63 + 32) = v47;
  v64 = type metadata accessor for UsoBuilderOptions();
  v65 = v120;
  __swift_storeEnumTagSinglePayload(v120, 1, 1, v64);

  v66 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserStatedTask.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_UserStatedTask.task.setter();
  v121 = v47;
  v73 = v102;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v124 + 16))(v101, v51, v125);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  v74 = v105;
  Siri_Nlu_External_UserParse.init()();
  Siri_Nlu_External_UserParse.probability.setter();
  v75 = Siri_Nlu_External_UserParse.userDialogActs.modify();
  v77 = v76;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v78 = *(*v77 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v78);
  v79 = *v77;
  *(v79 + 16) = v78 + 1;
  v80 = v104;
  (*(v104 + 16))(v79 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v78, v73, v115);
  v75(v126, 0);
  v120 = v66;
  v81 = v106;
  v82 = v107;
  (*(v106 + 16))(v103, v74, v107);
  v83 = enum case for Siri_Nlu_External_Parser.ParserIdentifier.overrides(_:);
  v84 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  OUTLINED_FUNCTION_23_1();
  (*(v85 + 104))(v108, v83, v84);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v84);
  v89 = v109;
  USOParse.init(userParse:parserIdentifier:appBundleId:)();

  (*(v81 + 8))(v74, v82);
  (*(v80 + 8))(v73, v115);
  (*(v124 + 8))(v123, v125);
  v90 = v122;
  (*(v110 + 32))(v122, v89, v111);
  v91 = enum case for Parse.uso(_:);
  v92 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v93 + 104))(v90, v91, v92);
  OUTLINED_FUNCTION_23_3();
  v97 = v92;
  return __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
}

uint64_t BusinessCompositionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BusinessCompositionFlow(0);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(&lazy protocol witness table cache variable for type BusinessCompositionFlow and conformance BusinessCompositionFlow, type metadata accessor for BusinessCompositionFlow, &protocol conformance descriptor for BusinessCompositionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t BusinessCompositionFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_sharedGlobals));
  outlined consume of BusinessCompositionFlow.State(*(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state), *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23BusinessCompositionFlow_state + 8));

  return v0;
}

uint64_t BusinessCompositionFlow.__deallocating_deinit()
{
  BusinessCompositionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance BusinessCompositionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance BusinessCompositionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BusinessCompositionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t outlined copy of BusinessCompositionFlow.State(uint64_t result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t outlined consume of BusinessCompositionFlow.State(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t outlined init with take of PhoneError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PhoneError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:);

  return closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)(v0);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t type metadata accessor for BusinessCompositionFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for BusinessCompositionFlow;
  if (!type metadata singleton initialization cache for BusinessCompositionFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for BusinessCompositionFlow(uint64_t a1)
{
  result = type metadata accessor for Parse();
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

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin019BusinessCompositionC0C5State33_BD9E7021EB16E449DE0D6EA2DFCCC853LLO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for BusinessCompositionFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BusinessCompositionFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for BusinessCompositionFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ParseError and conformance ParseError()
{
  result = lazy protocol witness table cache variable for type ParseError and conformance ParseError;
  if (!lazy protocol witness table cache variable for type ParseError and conformance ParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseError and conformance ParseError);
  }

  return result;
}

uint64_t partial apply for closure #1 in BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_21(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in BusinessCompositionFlow.makeOutputFlowForUnsupportedRequest()(v3, v7, v8, v0 + v6);
}

uint64_t OUTLINED_FUNCTION_36_9()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[2] = 0;
  v2[3] = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return swift_slowAlloc();
}

id static StartCallViewBuilders.makeCallCancelSlotConfirmationButtonsBuilder(intent:templatingService:sharedGlobals:app:intentResolutionResult:isDirectInvocation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#StartCallViewBuilders Providing CallCancelSlotConfirmationButtonsBuilder", v16, 2u);
  }

  v17 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v17);
  (*(v18 + 8))(v17, v18);
  outlined init with copy of SignalProviding(a3, a7 + 80);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6 & 1;
  v19 = a1;

  return a5;
}

uint64_t CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 8);
  outlined init with copy of CallCancelSlotConfirmationButtonsBuilder(v4, v20);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  OUTLINED_FUNCTION_0_28(v9, v10, v11, v12, v13, v14, v15, v16, v19);
  v9[19] = a1;
  v17 = *(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

  v17(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:), v9);
}

uint64_t closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t *a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 32);
  if (v7)
  {
    swift_errorRetain();
  }

  else
  {
    v11 = a1[2];
    v10 = a1[3];
    v12 = a1[1];

    v6 = closure #1 in closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:)(v6, v12, v11, v10, a4, a5);
  }

  a2(v6, v7 & 1);

  return outlined consume of Result<[INPerson], Error>(v6, v7 & 1);
}

uint64_t closure #1 in closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [objc_allocWithZone(SASTItemGroup) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_427BB0;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_426260;

  *(v11 + 32) = CallCancelSlotConfirmationButtonsBuilder.getConfirmButtonCommand()();
  *(v10 + 32) = SASTButtonItem.init(label:commands:centered:)(a1, a2, v11, 1);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_426260;

  *(v12 + 32) = CallCancelSlotConfirmationButtonsBuilder.getDenyButtonCommand()();
  *(v10 + 40) = SASTButtonItem.init(label:commands:centered:)(a3, a4, v12, 1);
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v10, v9);
  type metadata accessor for SiriKitAceViewBuilder();
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addButtonGroup(buttonGroup:)();

  v13 = dispatch thunk of SiriKitAceViewBuilder.build()();

  return v13;
}

id CallCancelSlotConfirmationButtonsBuilder.getConfirmButtonCommand()()
{
  v1 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72) == 1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v4 = CommonDirectAction.identifier.getter();
    v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v4, v5);
    v7 = CommonDirectAction.userData.getter();
    v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
    v9 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)((v0 + 16));

    outlined destroy of CommonDirectAction(v3);
    return v9;
  }

  else
  {
    if (one-time initialization token for confirmUtterance != -1)
    {
      swift_once();
    }

    return static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)();
  }
}

id CallCancelSlotConfirmationButtonsBuilder.getDenyButtonCommand()()
{
  v1 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72) == 1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v4 = CommonDirectAction.identifier.getter();
    v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v4, v5);
    v7 = CommonDirectAction.userData.getter();
    v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
    v9 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)((v0 + 16));

    outlined destroy of CommonDirectAction(v3);
    return v9;
  }

  else
  {
    if (one-time initialization token for cancelUtterance != -1)
    {
      swift_once();
    }

    return static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)();
  }
}

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  outlined init with copy of Result<TemplatingResult, Error>(v1, &v12 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v9;
  }

  (*(v4 + 32))(v6, v9, v3);
  a1(&v13, v6);
  v10 = v13;
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t CallCancelSlotConfirmationButtonsBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_40(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_0_28(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v13 = *(*v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 128);

  v13(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForCar(utteranceViews:_:), v5);
}

uint64_t closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(partial apply for closure #1 in closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForCar(utteranceViews:_:));
  v5 = v4;
  a2(v3, v4 & 1);
  return outlined consume of Result<[INPerson], Error>(v3, v5 & 1);
}

void closure #1 in closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = TemplatingResult.print.getter();
  if (v11[2])
  {
    v26 = a2;
    v12 = v11[4];
    v13 = v11[5];

    v14 = CallCancelSlotConfirmationButtonsBuilder.makeConfirmOption(label:)(v12, v13, &SAUIConfirmationOptionConfirmationOptionTypeCONFIRMValue, &SAUIConfirmationOptionIconTypeNewCallValue, CallCancelSlotConfirmationButtonsBuilder.getConfirmButtonCommand());

    v15 = [*(a1 + 64) itemToConfirm];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    if (swift_dynamicCast())
    {
      v16 = v27[5];
    }

    else
    {
      v16 = 0;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v27);
    v17 = static PhonePerson.make(phonePerson:options:locale:)(v16, 0, v10);
    (*(v8 + 8))(v10, v7);
    if (v17)
    {

      dispatch thunk of DialogPerson.fullName.getter();

      v18 = type metadata accessor for SpeakableString();
      if (__swift_getEnumTagSinglePayload(v6, 1, v18) != 1)
      {
        v19 = SpeakableString.print.getter();
        v20 = v21;
        (*(*(v18 - 8) + 8))(v6, v18);
        goto LABEL_10;
      }

      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }

    v19 = 0;
    v20 = 0;
LABEL_10:
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAPhoneCallConfirmationSnippet, SAPhoneCallConfirmationSnippet_ptr);
    v22 = v14;
    v23 = SAPhoneCallConfirmationSnippet.init(confirmOption:confirmationDisplayText:)(v22, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_426260;
    *(v24 + 32) = v23;

    *v26 = v24;
    return;
  }

  __break(1u);
}

uint64_t CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_40(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_0_28(v5, v6, v7, v8, v9, v10, v11, v12, v15);
  v13 = *(*v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

  v13(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:), v5);
}

uint64_t closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t *a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 32);
  if (v6)
  {
    swift_errorRetain();
  }

  else
  {
    v8 = a1[2];
    v7 = a1[3];
    v9 = a1[1];

    v5 = closure #1 in closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(v5, v9, v8, v7);
  }

  a2(v5, v6 & 1);

  return outlined consume of Result<[INPerson], Error>(v5, v6 & 1);
}

void *closure #1 in closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = CallCancelSlotConfirmationButtonsBuilder.makeConfirmOption(label:)(a1, a2, &SAUIConfirmationOptionConfirmationOptionTypeCONFIRMValue, &SAUIConfirmationOptionIconTypeNewCallValue, CallCancelSlotConfirmationButtonsBuilder.getConfirmButtonCommand());
  v7 = CallCancelSlotConfirmationButtonsBuilder.makeConfirmOption(label:)(a3, a4, &SAUIConfirmationOptionConfirmationOptionTypeDENYValue, &SAUIConfirmationOptionIconTypeCancelValue, CallCancelSlotConfirmationButtonsBuilder.getDenyButtonCommand());
  v8 = CallCancelSlotConfirmationButtonsBuilder.makeCompactConfirmationView(denyOption:confirmOption:)(v7, v6);
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_426260;
    v10[4] = v9;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#CallCancelSlotConfirmationButtonsBuilder Failed to build compact confirmation view", v14, 2u);
    }

    v10 = _swiftEmptyArrayStorage;
    v6 = v7;
    v7 = v12;
  }

  return v10;
}

id CallCancelSlotConfirmationButtonsBuilder.makeConfirmOption(label:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_426260;

  *(v14 + 32) = a5(v15);
  return SAUIConfirmationOption.init(label:type:iconType:commands:)(a1, a2, v8, v10, v11, v13, v14);
}

id CallCancelSlotConfirmationButtonsBuilder.makeCompactConfirmationView(denyOption:confirmOption:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Image();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#CallCancelSlotConfirmationButtonsBuilder Making compact call confirmation view snippet.", v13, 2u);
  }

  v14 = [*(v2 + 64) itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v38 = a2;
  v39 = v7;
  v15 = a1;
  v40 = v6;
  v16 = v41;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_0, v17, v18, "#CallCancelSlotConfirmationButtonsBuilder Person to confirm: %@", v19, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v22 = DeviceState.isStandaloneIOS.getter();
  v23 = *(v3 + 40);
  v24 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v23);
  v25 = DeviceState.isAuthenticatedForPhone.getter(v23, v24);
  INPerson.buildDisplayImage(supportsCompactView:isDeviceLocked:)(v22 & 1, (v25 & 1) == 0, v9);
  v26 = static PhoneCasinoFactory.makeConfirmationCardSection(person:image:sharedGlobals:)(v16, v9, (v3 + 80));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_426260;
  *(v27 + 32) = v26;
  v28 = *v3;
  v29 = *(v3 + 56);
  v30 = v26;
  v31 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v29, [v28 preferredCallProvider], (v3 + 16));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v32 = SAUISash.init(app:)(v31);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOptions, SAUIConfirmationOptions_ptr);
  v33 = v38;
  v34 = v15;
  v35 = SAUIConfirmationOptions.init(denyOption:confirmOption:)(v15, v33);
  v36 = static SACardSnippet.makeFromCardSectionsWithConfirmationOptions(cardSections:intent:sash:confirmationOptions:)(v27, v28, v32, v35);

  (*(v39 + 8))(v9, v40);
  return v36;
}

uint64_t getEnumTagSinglePayload for CallCancelSlotConfirmationButtonsBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CallCancelSlotConfirmationButtonsBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of CommonDirectAction(uint64_t a1)
{
  v2 = type metadata accessor for CommonDirectAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t outlined init with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DestinationTypeSlotTemplating.init(deviceState:catFamily:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with take of PhoneCallFeatureFlagProviding(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t CallCapabilitySlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v14 = __chkstk_darwin(v13 - 8).n128_u64[0];
  v16 = v26 - v15;
  v17 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INCallCapability(0);
  if (swift_dynamicCast())
  {
    v18 = v26[1];
  }

  else
  {
    v18 = [a5 callCapability];
  }

  v19 = *(v8 + 40);
  if (v18)
  {
    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v21 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        v21 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_12;
      }

      v21 = @"AUDIO_CALL";
    }

    v22 = v21;
LABEL_12:
    v23 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SpeakableString.init(print:speak:)();
  v24 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  (*(*v19 + class metadata base offset for StartCallCATs + 64))(v16, a7, a8);
  return outlined destroy of SpeakableString?(v16);
}

uint64_t CallCapabilitySlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v41 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v42 = v23;
  v43 = v22;
  __chkstk_darwin(v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v38 - v28;
  v30 = [a4 unsupportedReason];
  if (v30 == &dword_0 + 1)
  {
    return (*(**(v10 + 40) + class metadata base offset for StartCallCATs + 1600))(a8, a9);
  }

  if (v30 == &dword_0 + 2)
  {
    type metadata accessor for AppInfoBuilder();
    swift_initStackObject();
    OUTLINED_FUNCTION_0_29();
    AppInfoBuilder.getAppName(_:requestedLocale:)(v41, v21);
    (*(v18 + 8))(v21, v16);
    SpeakableString.init(print:speak:)();
    v35 = *(v10 + 40);
    v37 = v42;
    v36 = v43;
    (*(v42 + 16))(v15, v25, v43);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v36);
    (*(*v35 + class metadata base offset for StartCallCATs + 1568))(v15, v39, v40);
    outlined destroy of SpeakableString?(v15);
    return (*(v37 + 8))(v25, v36);
  }

  else if (v30 == &dword_0 + 3)
  {
    type metadata accessor for AppInfoBuilder();
    swift_initStackObject();
    OUTLINED_FUNCTION_0_29();
    AppInfoBuilder.getAppName(_:requestedLocale:)(v41, v21);
    (*(v18 + 8))(v21, v16);
    SpeakableString.init(print:speak:)();
    v31 = *(v10 + 40);
    v33 = v42;
    v32 = v43;
    (*(v42 + 16))(v15, v29, v43);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v32);
    (*(*v31 + class metadata base offset for StartCallCATs + 1536))(v15, v39, v40);
    outlined destroy of SpeakableString?(v15);
    return (*(v33 + 8))(v29, v32);
  }

  else
  {
    return (*(**(v10 + 40) + class metadata base offset for StartCallCATs + 1504))(a8, a9);
  }
}

uint64_t getEnumTagSinglePayload for CallCapabilitySlotTemplating(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for CallCapabilitySlotTemplating(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Transformer<>.transformer(sharedGlobals:previousIntent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of SignalProviding(a1, v6);
  v4 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v6, v4 + 16);
  *(v4 + 56) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallCapability(0);
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:app:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v156 = a4;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = OUTLINED_FUNCTION_8_8();
  v8(v7);
  __swift_project_boxed_opaque_existential_1(v165, v166);
  OUTLINED_FUNCTION_8_8();
  if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v165, v166), OUTLINED_FUNCTION_8_8(), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    HIDWORD(v155) = 1;
  }

  else
  {
    v9 = v166;
    v10 = v167;
    __swift_project_boxed_opaque_existential_1(v165, v166);
    HIDWORD(v155) = DeviceState.isAnyCar.getter(v9, v10);
  }

  OUTLINED_FUNCTION_3_21();
  LODWORD(v158) = PhoneCallNLIntent.hasVideoCallSemantic()();
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 152))(&v162, v11, v12);
  v13 = v163;
  v14 = v164;
  __swift_project_boxed_opaque_existential_1(&v162, v163);
  if (a3)
  {
    v15 = App.appIdentifier.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  (*(v14 + 16))(v168, v15, v17, v13, v14);
  v19 = v168[0];
  v18 = v168[1];
  v20 = *(&v169 + 1);
  v21 = v171;

  __swift_destroy_boxed_opaque_existential_1(&v162);
  v23 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v24 = v23;
  v25 = v21;
  v26 = v168;
  (*(v22 + 152))(&v162, v24, v22);
  v27 = v163;
  v28 = v164;
  __swift_project_boxed_opaque_existential_1(&v162, v163);
  v29 = (*(v28 + 24))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v162);
  if (v19)
  {
    v173 = v169;
    v174 = v18;

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v174, &_sShySSGMd, &_sShySSGMR);
    v175 = v173;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v175, &_sSSSgMd, &_sSSSgMR);
    v176 = v25;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v176, &_sShySSGMd, &_sShySSGMR);
  }

  if (v158)
  {
    v26 = v29;
    __swift_project_boxed_opaque_existential_1(v165, v166);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      OUTLINED_FUNCTION_3_21();
      LOBYTE(v31) = v30;
      if (!PhoneCallNLIntent.hasAudioCallSemantic()())
      {
        OUTLINED_FUNCTION_7_16();
        if (!v34)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v91 = OUTLINED_FUNCTION_9_19();
        v92 = OUTLINED_FUNCTION_12_1(v91, static Logger.siriPhone);
        v93 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_10_0(v93))
        {
          goto LABEL_64;
        }

        v94 = swift_slowAlloc();
        *v94 = 0;
        v95 = "Not setting callCapability because it's a Mac which may not have a camera to make video calls.";
        goto LABEL_63;
      }
    }
  }

  OUTLINED_FUNCTION_3_21();
  v33 = v32;
  if (PhoneCallNLIntent.hasAudioCallSemantic()())
  {
    OUTLINED_FUNCTION_7_16();
    if (!v34)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v35 = OUTLINED_FUNCTION_9_19();
    v36 = OUTLINED_FUNCTION_12_1(v35, static Logger.siriPhone);
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_5_21(v37))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_14_17();
      *v33 = 136315138;
      *&v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMR);
      v39 = OUTLINED_FUNCTION_16_19(v38);
      OUTLINED_FUNCTION_15_19(v39, v40, v41, v42, v43, v44, v45, v46, v154, v155, v156, v157, v19, v158, v160, v161);
      OUTLINED_FUNCTION_17_9();
      *(v33 + 4) = v26;
      OUTLINED_FUNCTION_1_41();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_1_8();
    }

LABEL_19:
    v52 = 0;
    v53 = 1;
    goto LABEL_65;
  }

  v54 = HIDWORD(v155);
  if (!(BYTE4(v155) & 1 | ((v158 & 1) == 0)))
  {
    OUTLINED_FUNCTION_7_16();
    if (!v34)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v74 = OUTLINED_FUNCTION_9_19();
    v75 = OUTLINED_FUNCTION_12_1(v74, static Logger.siriPhone);
    v76 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_5_21(v76))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_14_17();
      *v33 = 136315138;
      *&v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMR);
      v78 = OUTLINED_FUNCTION_16_19(v77);
      OUTLINED_FUNCTION_15_19(v78, v79, v80, v81, v82, v83, v84, v85, v154, v155, v156, v157, v19, v158, v160, v161);
      OUTLINED_FUNCTION_17_9();
      *(v33 + 4) = v54;
      OUTLINED_FUNCTION_1_41();
      _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_1_8();
    }

    goto LABEL_33;
  }

  if (!v29)
  {
    goto LABEL_40;
  }

  v55 = *(*v29 + 128);

  if (v55(v56))
  {
    OUTLINED_FUNCTION_7_16();
    if (!v34)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v57 = OUTLINED_FUNCTION_9_19();
    v58 = OUTLINED_FUNCTION_12_1(v57, static Logger.siriPhone);
    v59 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_5_21(v59))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_14_17();
      *v29 = 136315138;
      *&v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMR);
      v61 = OUTLINED_FUNCTION_16_19(v60);
      OUTLINED_FUNCTION_15_19(v61, v62, v63, v64, v65, v66, v67, v68, v154, v155, v156, v157, v19, v20, v160, v161);
      OUTLINED_FUNCTION_17_9();
      *(v29 + 4) = v54;
      OUTLINED_FUNCTION_1_41();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_1_8();
    }

    goto LABEL_19;
  }

  v96 = *(*v29 + 152);

  if (!(BYTE4(v155) & 1 | ((v96(v97) & 1) == 0)))
  {
    OUTLINED_FUNCTION_7_16();
    if (!v34)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v114 = OUTLINED_FUNCTION_9_19();
    v115 = OUTLINED_FUNCTION_12_1(v114, static Logger.siriPhone);
    v116 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_5_21(v116))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_18();
      OUTLINED_FUNCTION_14_17();
      *v29 = 136315138;
      *&v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMR);
      v118 = OUTLINED_FUNCTION_16_19(v117);
      OUTLINED_FUNCTION_15_19(v118, v119, v120, v121, v122, v123, v124, v125, v154, v155, v156, v157, v19, v20, v160, v161);
      OUTLINED_FUNCTION_17_9();
      *(v29 + 4) = v54;
      OUTLINED_FUNCTION_1_41();
      _os_log_impl(v126, v127, v128, v129, v130, 0xCu);
      OUTLINED_FUNCTION_2_30();
      OUTLINED_FUNCTION_1_8();
    }

LABEL_33:
    v52 = 0;
    v53 = 2;
    goto LABEL_65;
  }

LABEL_40:
  OUTLINED_FUNCTION_3_21();
  LOBYTE(v31) = v98;
  if (PhoneCallNLIntent.isRedialOrCallBack()())
  {
    OUTLINED_FUNCTION_7_16();
    if (!v34)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v99 = OUTLINED_FUNCTION_9_19();
    v92 = OUTLINED_FUNCTION_12_1(v99, static Logger.siriPhone);
    v100 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v100))
    {
      goto LABEL_64;
    }

    v94 = swift_slowAlloc();
    *v94 = 0;
    v95 = "Not setting callCapability because this is a redial or call_back request that doesn't specify audio or video filter.";
  }

  else
  {
    if (v19)
    {

      LOBYTE(v31) = v19;
      if (App.isFaceTime()())
      {
        v172 = v169;
        if (v170 == 3)
        {
          v101 = one-time initialization token for siriPhone;

          v102 = v18;

          if (v101 != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v103 = OUTLINED_FUNCTION_9_19();
          v104 = OUTLINED_FUNCTION_12_1(v103, static Logger.siriPhone);
          v105 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_5_21(v105))
          {
            OUTLINED_FUNCTION_42();
            v161 = OUTLINED_FUNCTION_6_18();
            *v19 = 136315138;
            *&v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMR);
            v106 = String.init<A>(describing:)();
            v159 = v25;
            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v161);

            *(v19 + 4) = v108;
            OUTLINED_FUNCTION_1_41();
            _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
            OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_1_8();

            v177 = v102;
            OUTLINED_FUNCTION_11_20();
            v162 = v172;
            _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v162, &_sSSSgMd, &_sSSSgMR);
            v178 = v159;
          }

          else
          {

            v177 = v102;
            OUTLINED_FUNCTION_11_20();
            v162 = v172;
            _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v162, &_sSSSgMd, &_sSSSgMR);
            v178 = v25;
          }

          _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v178, &_sShySSGMd, &_sShySSGMR);
          goto LABEL_19;
        }

        v177 = v18;

        v31 = &_sShySSGMR;
        OUTLINED_FUNCTION_11_20();
        v162 = v172;
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v162, &_sSSSgMd, &_sSSSgMR);
        v178 = v25;
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v178, &_sShySSGMd, &_sShySSGMR);
      }
    }

    OUTLINED_FUNCTION_7_16();
    if (!v34)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v131 = OUTLINED_FUNCTION_9_19();
    v92 = OUTLINED_FUNCTION_12_1(v131, static Logger.siriPhone);
    v132 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v132))
    {
      goto LABEL_64;
    }

    v94 = swift_slowAlloc();
    *v94 = 0;
    v95 = "Not setting callCapability because the user has not specified one or specified video on a audio only device.";
  }

LABEL_63:
  _os_log_impl(&dword_0, v92, v31, v95, v94, 2u);

LABEL_64:

  v53 = 0;
  v52 = 1;
LABEL_65:
  if (*(a1 + 2952) != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v133 = type metadata accessor for Logger();
  v134 = OUTLINED_FUNCTION_12_1(v133, static Logger.siriPhone);
  v135 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_5_21(v135))
  {
    v136 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *v136 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGmMR);
    v137 = String.init<A>(describing:)();
    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v161);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2080;
    if (v52)
    {
      v140 = 0xE700000000000000;
      v141 = 0x4E574F4E4B4E55;
LABEL_77:
      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v140, &v161);

      *(v136 + 14) = v147;
      OUTLINED_FUNCTION_1_41();
      _os_log_impl(v148, v149, v150, v151, v152, 0x16u);
      swift_arrayDestroy();

      OUTLINED_FUNCTION_1_8();
      goto LABEL_78;
    }

    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v143 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        v143 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        goto LABEL_76;
      }

      v143 = @"AUDIO_CALL";
    }

    v144 = v143;
LABEL_76:
    v145 = v143;
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v146;

    goto LABEL_77;
  }

LABEL_78:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v168, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);

  *v156 = v53;
  return __swift_destroy_boxed_opaque_existential_1(v165);
}

uint64_t UsoVocIdentifier.init(usoIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v68 = a2;
  v69 = a4;
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7();
  v60[0] = v6;
  v60[1] = v5;
  __chkstk_darwin(v5);
  v61 = v60 - v7;
  type metadata accessor for UsoIdentifier.NluComponent();
  OUTLINED_FUNCTION_7();
  v66 = v9;
  v67 = v8;
  __chkstk_darwin(v8);
  v62 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v11);
  v13 = v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_12_5();
  v64 = (v15 - v16);
  __chkstk_darwin(v17);
  v19 = v60 - v18;
  __chkstk_darwin(v20);
  v22 = v60 - v21;
  v23 = type metadata accessor for IdentifierAppBundle();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_12_5();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v32 = v60 - v31;
  UsoIdentifier.appBundleSemantic.getter();
  (*(v25 + 104))(v29, enum case for IdentifierAppBundle.abSiriNL(_:), v23);
  v33 = static IdentifierAppBundle.== infix(_:_:)();
  v34 = *(v25 + 8);
  v34(v29, v23);
  v35 = v32;
  v36 = a1;
  v34(v35, v23);
  v37 = v68;
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

  UsoIdentifier.sourceComponent.getter();
  v38 = v66;
  v39 = v67;
  (*(v66 + 104))(v19, enum case for UsoIdentifier.NluComponent.spanMatchVocFile(_:), v67);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v39);
  v40 = *(v65 + 48);
  outlined init with copy of UsoIdentifier.NluComponent?(v22, v13);
  outlined init with copy of UsoIdentifier.NluComponent?(v19, &v13[v40]);
  OUTLINED_FUNCTION_8_21(v13);
  if (v42)
  {
    OUTLINED_FUNCTION_9_20(v19);
    OUTLINED_FUNCTION_9_20(v22);
    OUTLINED_FUNCTION_8_21(&v13[v40]);
    if (v42)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      goto LABEL_12;
    }

LABEL_10:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
    goto LABEL_20;
  }

  v41 = v64;
  outlined init with copy of UsoIdentifier.NluComponent?(v13, v64);
  OUTLINED_FUNCTION_8_21(&v13[v40]);
  if (v42)
  {
    OUTLINED_FUNCTION_9_20(v19);
    OUTLINED_FUNCTION_9_20(v22);
    (*(v38 + 8))(v41, v39);
    goto LABEL_10;
  }

  v43 = &v13[v40];
  v44 = v62;
  (*(v38 + 32))(v62, v43, v39);
  lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
  LODWORD(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v38 + 8);
  v45(v44, v39);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v45(v64, v39);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v46 = UsoIdentifier.namespace.getter();
  v48 = v47;
  v49 = (*(v63 + 8))(v37);
  if (!v48)
  {

    goto LABEL_20;
  }

  if (v46 != v49 || v48 != v50)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_24;
    }

LABEL_20:
    type metadata accessor for UsoIdentifier();
    OUTLINED_FUNCTION_23_1();
    (*(v53 + 8))(v36);
    goto LABEL_21;
  }

LABEL_24:
  v57 = UsoIdentifier.value.getter();
  v58 = v61;
  (*(v63 + 24))(v57);
  type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_23_1();
  (*(v59 + 8))(v36);
  if (!__swift_getEnumTagSinglePayload(v58, 1, v37))
  {
    v55 = v69;
    (*(*(v37 - 8) + 32))(v69, v58, v37);
    v54 = 0;
    return __swift_storeEnumTagSinglePayload(v55, v54, 1, v37);
  }

  (*(v60[0] + 8))(v58);
LABEL_21:
  v54 = 1;
  v55 = v69;
  return __swift_storeEnumTagSinglePayload(v55, v54, 1, v37);
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::PhoneSetting_optional __swiftcall CallControlUsoIdentifiers.PhoneSetting.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CallControlUsoIdentifiers.PhoneSetting.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t CallControlUsoIdentifiers.PhoneSetting.rawValue.getter(char a1)
{
  result = 0x6172656D6163;
  switch(a1)
  {
    case 1:
      result = 0x6C6F765F6C6C6163;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x5F6C6172656E6567;
      break;
    case 5:
      result = 1684828008;
      break;
    case 6:
      result = 0x74756D5F666C6573;
      break;
    case 7:
      result = 0x6D6E755F666C6573;
      break;
    case 8:
      result = 0x7072656B61657073;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::PhoneSetting_optional protocol witness for RawRepresentable.init(rawValue:) in conformance CallControlUsoIdentifiers.PhoneSetting@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::PhoneSetting_optional *a2@<X8>)
{
  result.value = CallControlUsoIdentifiers.PhoneSetting.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CallControlUsoIdentifiers.PhoneSetting@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlUsoIdentifiers.PhoneSetting.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::PhoneSetting_optional protocol witness for UsoVocIdentifier.init(rawValue:) in conformance CallControlUsoIdentifiers.PhoneSetting@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::PhoneSetting_optional *a2@<X8>)
{
  result.value = CallControlUsoIdentifiers.PhoneSetting.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

BOOL CallControlUsoIdentifiers.AppName.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CallControlUsoIdentifiers.AppName.init(rawValue:), v2);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CallControlUsoIdentifiers.AppName@<W0>(_BYTE *a1@<X8>)
{
  result = CallControlUsoIdentifiers.AppName.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CallControlUsoIdentifiers.AppName@<X0>(void *a1@<X8>)
{
  result = CallControlUsoIdentifiers.AppName.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for UsoVocIdentifier.init(rawValue:) in conformance CallControlUsoIdentifiers.AppName@<W0>(_BYTE *a1@<X8>)
{
  result = CallControlUsoIdentifiers.AppName.init(rawValue:)();
  *a1 = result;
  return result;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::FloatSettingName_optional __swiftcall CallControlUsoIdentifiers.FloatSettingName.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CallControlUsoIdentifiers.FloatSettingName.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t CallControlUsoIdentifiers.FloatSettingName.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x707954616964656DLL;
  }

  if (a1 == 1)
  {
    return 0x6563696F76;
  }

  return 0x656D756C6F76;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::FloatSettingName_optional protocol witness for RawRepresentable.init(rawValue:) in conformance CallControlUsoIdentifiers.FloatSettingName@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::FloatSettingName_optional *a2@<X8>)
{
  result.value = CallControlUsoIdentifiers.FloatSettingName.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CallControlUsoIdentifiers.FloatSettingName@<X0>(uint64_t *a1@<X8>)
{
  result = CallControlUsoIdentifiers.FloatSettingName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::FloatSettingName_optional protocol witness for UsoVocIdentifier.init(rawValue:) in conformance CallControlUsoIdentifiers.FloatSettingName@<W0>(uint64_t a1@<X0>, PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers::FloatSettingName_optional *a2@<X8>)
{
  result.value = CallControlUsoIdentifiers.FloatSettingName.init(rawValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

BOOL CallControlUsoIdentifiers.BoolSettingName.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CallControlUsoIdentifiers.BoolSettingName.init(rawValue:), v2);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CallControlUsoIdentifiers.BoolSettingName@<W0>(_BYTE *a1@<X8>)
{
  result = CallControlUsoIdentifiers.BoolSettingName.init(rawValue:)();
  *a1 = result;
  return result;
}

BOOL protocol witness for UsoVocIdentifier.init(rawValue:) in conformance CallControlUsoIdentifiers.BoolSettingName@<W0>(_BYTE *a1@<X8>)
{
  result = CallControlUsoIdentifiers.BoolSettingName.init(rawValue:)();
  *a1 = result;
  return result;
}

double one-time initialization function for identifierTypeRegistry()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pXpGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pXpGMR);
  v0 = swift_allocObject();
  *&result = 4;
  *(v0 + 16) = xmmword_42BF10;
  *(v0 + 32) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(v0 + 40) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(v0 + 48) = &type metadata for CallControlUsoIdentifiers.FloatSettingName;
  *(v0 + 56) = &protocol witness table for CallControlUsoIdentifiers.FloatSettingName;
  *(v0 + 64) = &type metadata for CallControlUsoIdentifiers.BoolSettingName;
  *(v0 + 72) = &protocol witness table for CallControlUsoIdentifiers.BoolSettingName;
  *(v0 + 80) = &type metadata for CallControlUsoIdentifiers.AppName;
  *(v0 + 88) = &protocol witness table for CallControlUsoIdentifiers.AppName;
  static CallControlUsoIdentifiers.identifierTypeRegistry = v0;
  return result;
}

PhoneCallFlowDelegatePlugin::CallControlUsoIdentifiers __swiftcall CallControlUsoIdentifiers.init(usoIdentifiers:)(Swift::OpaquePointer usoIdentifiers)
{
  rawValue = usoIdentifiers._rawValue;
  v1 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7();
  v62 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v76 = v4 - v5;
  __chkstk_darwin(v6);
  v8 = v60 - v7;
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  v9.namespaceToIdentifierMap._rawValue = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for identifierTypeRegistry != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v10 = static CallControlUsoIdentifiers.identifierTypeRegistry;
    v67 = *(&dword_10 + static CallControlUsoIdentifiers.identifierTypeRegistry);
    if (!v67)
    {
      break;
    }

    v11 = 0;
    v12 = rawValue[2];
    v64 = static CallControlUsoIdentifiers.identifierTypeRegistry + 8;
    v74 = v62 + 8;
    v75 = v62 + 16;
    v65 = v12;
    v66 = static CallControlUsoIdentifiers.identifierTypeRegistry;
    v61 = v1;
    while (v11 < *(v10 + 2))
    {
      v71 = v9.namespaceToIdentifierMap._rawValue;
      v70 = v11;
      v13 = *&v64[4 * v11 + 2];
      v14 = *(v13 + 8);
      v73 = *&v64[4 * v11];
      v15 = v73;
      v79 = v13;
      v68 = v14(v73);
      v69 = v16;
      if (v12)
      {
        v17 = rawValue + ((*(v62 + 80) + 32) & ~*(v62 + 80));
        v18 = *(v62 + 72);
        v77 = *(v62 + 16);
        v78 = v18;
        v72 = v15 - 8;
        v19 = _swiftEmptyArrayStorage;
        do
        {
          v80 = v19;
          v20 = v77;
          v77(v8, v17, v1);
          v21 = v8;
          v22 = v76;
          v20(v76, v21, v1);
          v23 = type metadata accessor for Optional();
          OUTLINED_FUNCTION_7();
          v25 = v24;
          __chkstk_darwin(v26);
          v28 = v60 - v27;
          UsoVocIdentifier.init(usoIdentifier:)(v22, v15, v79, v60 - v27);
          if (__swift_getEnumTagSinglePayload(v28, 1, v15) == 1)
          {
            v29 = OUTLINED_FUNCTION_6_19();
            v30(v29);
            (*(v25 + 8))(v28, v23);
            v8 = v21;
            v19 = v80;
          }

          else
          {
            *&v81[3] = v73;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
            (*(*(v15 - 8) + 32))(boxed_opaque_existential_1, v28, v15);
            v32 = OUTLINED_FUNCTION_6_19();
            v33(v32);
            outlined init with take of SPHConversation(v81, &v82);
            v19 = v80;
            v8 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v19 = v35;
            }

            v34 = v19[2];
            if (v34 >= v19[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v19 = v36;
            }

            v19[2] = v34 + 1;
            outlined init with take of SPHConversation(&v82, &v19[5 * v34 + 4]);
          }

          v17 += v78;
          --v12;
        }

        while (v12);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v37 = v19[2];
      if (v37)
      {
        v81[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = v81[0];
        v39 = (v19 + 4);
        do
        {
          outlined init with copy of SignalProviding(v39, &v82);
          v40 = v84;
          __swift_project_boxed_opaque_existential_1(&v82, v83);
          v41 = OUTLINED_FUNCTION_40_0();
          v43 = v42(v41, v40);
          v45 = v44;
          __swift_destroy_boxed_opaque_existential_1(&v82);
          v81[0] = v38;
          v46 = v38[2];
          if (v46 >= v38[3] >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v38 = v81[0];
          }

          v38[2] = v46 + 1;
          v47 = &v38[2 * v46];
          v47[4] = v43;
          v47[5] = v45;
          v39 += 40;
          --v37;
        }

        while (v37);

        v1 = v61;
      }

      else
      {

        v38 = _swiftEmptyArrayStorage;
      }

      v11 = v70 + 1;
      v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v38);
      v49 = v71;
      swift_isUniquelyReferenced_nonNull_native();
      *&v82 = v49;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v68, v69);

      v9.namespaceToIdentifierMap._rawValue = v82;
      v10 = v66;
      v12 = v65;
      if (v11 == v67)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_25:

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.siriPhone);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v82 = v54;
    *v53 = 136315138;

    v55 = Dictionary.description.getter();
    v57 = v56;

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v82);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_0, v51, v52, "#CallControlUsoIdentifiers %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  return v9;
}